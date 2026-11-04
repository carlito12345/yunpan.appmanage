package com.hierynomus.smbfs;

import com.hierynomus.smbj.share.DiskShare;
import java.nio.file.ClosedWatchServiceException;
import java.nio.file.WatchKey;
import java.nio.file.WatchService;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
class SmbWatchService implements WatchService {
    private static final long POLL_INTERVAL_MILLIS = 10;
    private final SmbFileSystem fileSystem;
    private final DiskShare share;
    private final List<SmbWatchKey> watchKeys = new CopyOnWriteArrayList();
    private final AtomicBoolean closed = new AtomicBoolean(false);

    public SmbWatchService(DiskShare diskShare, SmbFileSystem smbFileSystem) {
        this.share = diskShare;
        this.fileSystem = smbFileSystem;
    }

    private void requireOpen() {
        if (this.closed.get()) {
            throw new ClosedWatchServiceException();
        }
    }

    @Override // java.nio.file.WatchService, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.closed.compareAndSet(false, true)) {
            Iterator<SmbWatchKey> it = this.watchKeys.iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
        }
    }

    public SmbFileSystem getFileSystem() {
        return this.fileSystem;
    }

    public DiskShare getShare() {
        return this.share;
    }

    @Override // java.nio.file.WatchService
    public WatchKey poll() {
        requireOpen();
        for (SmbWatchKey smbWatchKey : this.watchKeys) {
            if (smbWatchKey.isReady()) {
                return smbWatchKey;
            }
        }
        return null;
    }

    public WatchKey register(SmbPath smbPath) {
        requireOpen();
        SmbWatchKey smbWatchKey = new SmbWatchKey(smbPath, this);
        this.watchKeys.add(smbWatchKey);
        return smbWatchKey;
    }

    @Override // java.nio.file.WatchService
    public WatchKey take() throws InterruptedException {
        requireOpen();
        while (true) {
            for (SmbWatchKey smbWatchKey : this.watchKeys) {
                if (smbWatchKey.isReady()) {
                    return smbWatchKey;
                }
            }
            if (this.closed.get()) {
                throw new ClosedWatchServiceException();
            }
            TimeUnit.MILLISECONDS.sleep(POLL_INTERVAL_MILLIS);
        }
    }

    public void unregister(SmbWatchKey smbWatchKey) {
        this.watchKeys.remove(smbWatchKey);
    }

    @Override // java.nio.file.WatchService
    public WatchKey poll(long j10, TimeUnit timeUnit) throws InterruptedException {
        requireOpen();
        long millis = timeUnit.toMillis(j10) + System.currentTimeMillis();
        do {
            for (SmbWatchKey smbWatchKey : this.watchKeys) {
                if (smbWatchKey.isReady()) {
                    return smbWatchKey;
                }
            }
            TimeUnit.MILLISECONDS.sleep(POLL_INTERVAL_MILLIS);
            if (System.currentTimeMillis() >= millis) {
                return null;
            }
        } while (!this.closed.get());
        return null;
    }
}
