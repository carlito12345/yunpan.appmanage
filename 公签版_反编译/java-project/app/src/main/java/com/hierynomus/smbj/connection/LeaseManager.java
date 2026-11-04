package com.hierynomus.smbj.connection;

import a2.n;
import com.hierynomus.mssmb2.LeaseKey;
import com.hierynomus.mssmb2.messages.SMB2LeaseBreakAcknowledgment;
import com.hierynomus.mssmb2.messages.SMB2LeaseBreakNotification;
import com.hierynomus.smbfs.SmbPath;
import com.hierynomus.smbj.share.Directory;
import j$.util.concurrent.ConcurrentHashMap;
import j$.util.concurrent.ConcurrentMap$EL;
import java.io.Closeable;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public class LeaseManager implements Closeable {
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) LeaseManager.class);
    private final ConcurrentMap<LeaseKey, LeaseEntry> byKey = new ConcurrentHashMap();
    private final ConcurrentMap<String, LeaseKey> byPath = new ConcurrentHashMap();
    private final ExecutorService breakExecutor = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.hierynomus.smbj.connection.LeaseManager.1
        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, "smbj-lease-break");
            thread.setDaemon(true);
            return thread;
        }
    });
    private final AtomicInteger breaksHandled = new AtomicInteger(0);

    public static int epochDelta(int i10, int i11) {
        if (i10 == i11) {
            return 0;
        }
        if (i10 > i11) {
            return i10 - i11;
        }
        if (i11 - i10 > 32767) {
            return (65536 - i11) + i10;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ LeaseKey lambda$leaseKeyForPath$0(String str) {
        return LeaseKey.random();
    }

    private static String normalize(String str) {
        return str == null ? "" : str.replace('/', SmbPath.SEPARATOR).toLowerCase(Locale.ROOT);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.breakExecutor.shutdownNow();
        Iterator<LeaseEntry> it = this.byKey.values().iterator();
        while (it.hasNext()) {
            Directory cacheDirectory = it.next().getCacheDirectory();
            if (cacheDirectory != null) {
                cacheDirectory.closeSilently();
            }
        }
        this.byKey.clear();
        this.byPath.clear();
    }

    public void dispatchBreak(final SMB2LeaseBreakNotification sMB2LeaseBreakNotification) {
        this.breakExecutor.execute(new Runnable() { // from class: com.hierynomus.smbj.connection.LeaseManager.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    LeaseManager.this.onBreak(sMB2LeaseBreakNotification);
                } catch (Throwable th2) {
                    LeaseManager.logger.error("Lease-break handling failed for {}", sMB2LeaseBreakNotification.getLeaseKey(), th2);
                }
            }
        });
    }

    public int getBreaksHandled() {
        return this.breaksHandled.get();
    }

    public LeaseEntry getByPath(String str) {
        LeaseKey leaseKey = this.byPath.get(normalize(str));
        if (leaseKey == null) {
            return null;
        }
        return this.byKey.get(leaseKey);
    }

    public LeaseKey leaseKeyForExistingPath(String str) {
        return this.byPath.get(normalize(str));
    }

    public LeaseKey leaseKeyForPath(String str) {
        return (LeaseKey) ConcurrentMap$EL.computeIfAbsent(this.byPath, normalize(str), new n(1));
    }

    public LeaseEntry lookup(LeaseKey leaseKey) {
        return this.byKey.get(leaseKey);
    }

    public void onBreak(SMB2LeaseBreakNotification sMB2LeaseBreakNotification) {
        LeaseEntry leaseEntry = this.byKey.get(sMB2LeaseBreakNotification.getLeaseKey());
        if (leaseEntry == null) {
            logger.debug("Lease break for unknown key {}, ignoring", sMB2LeaseBreakNotification.getLeaseKey());
            return;
        }
        int iEpochDelta = epochDelta(sMB2LeaseBreakNotification.getNewEpoch(), leaseEntry.getEpoch());
        if (sMB2LeaseBreakNotification.getNewEpoch() != 0 && iEpochDelta <= 0) {
            logger.debug("Stale lease break (newEpoch {} <= stored {}), ignoring", Integer.valueOf(sMB2LeaseBreakNotification.getNewEpoch()), Integer.valueOf(leaseEntry.getEpoch()));
            return;
        }
        leaseEntry.invalidateCache();
        leaseEntry.setGrantedState(sMB2LeaseBreakNotification.getNewLeaseState());
        if (sMB2LeaseBreakNotification.getNewEpoch() != 0) {
            leaseEntry.setEpoch(sMB2LeaseBreakNotification.getNewEpoch());
        }
        leaseEntry.setBroken(true);
        if (sMB2LeaseBreakNotification.isAckRequired() && leaseEntry.getSession() != null) {
            leaseEntry.getSession().send(new SMB2LeaseBreakAcknowledgment(leaseEntry.getDialect(), leaseEntry.getSession().getSessionId(), leaseEntry.getTreeId(), sMB2LeaseBreakNotification.getLeaseKey(), sMB2LeaseBreakNotification.getNewLeaseState()));
            logger.debug("Acknowledged lease break for {} -> state {}", sMB2LeaseBreakNotification.getLeaseKey(), Long.valueOf(sMB2LeaseBreakNotification.getNewLeaseState()));
        }
        this.breaksHandled.incrementAndGet();
    }

    public void register(LeaseEntry leaseEntry) {
        this.byKey.put(leaseEntry.getLeaseKey(), leaseEntry);
        this.byPath.putIfAbsent(normalize(leaseEntry.getPath()), leaseEntry.getLeaseKey());
    }

    public void unregister(LeaseKey leaseKey) {
        this.byKey.remove(leaseKey);
    }
}
