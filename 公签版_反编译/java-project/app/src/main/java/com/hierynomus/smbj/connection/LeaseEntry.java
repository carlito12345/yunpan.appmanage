package com.hierynomus.smbj.connection;

import com.hierynomus.mssmb2.LeaseKey;
import com.hierynomus.mssmb2.SMB2Dialect;
import com.hierynomus.mssmb2.SMB2FileId;
import com.hierynomus.smbj.session.Session;
import com.hierynomus.smbj.share.Directory;
import com.hierynomus.smbj.share.LeasedDirectoryCache;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class LeaseEntry {
    private volatile boolean broken;
    private volatile Directory cacheDirectory;
    private volatile SMB2Dialect dialect;
    private volatile int epoch;
    private volatile SMB2FileId fileId;
    private volatile boolean granted;
    private volatile long grantedState;
    private final LeaseKey leaseKey;
    private final LeaseKey parentLeaseKey;
    private final String path;
    private final long requestedState;
    private volatile Session session;
    private volatile long treeId;
    private final AtomicInteger cacheGeneration = new AtomicInteger(0);
    private final LeasedDirectoryCache cache = new LeasedDirectoryCache();

    public LeaseEntry(LeaseKey leaseKey, LeaseKey leaseKey2, long j10, String str) {
        this.leaseKey = leaseKey;
        this.parentLeaseKey = leaseKey2;
        this.requestedState = j10;
        this.path = str;
    }

    public LeasedDirectoryCache getCache() {
        return this.cache;
    }

    public Directory getCacheDirectory() {
        return this.cacheDirectory;
    }

    public int getCacheGeneration() {
        return this.cacheGeneration.get();
    }

    public SMB2Dialect getDialect() {
        return this.dialect;
    }

    public int getEpoch() {
        return this.epoch;
    }

    public SMB2FileId getFileId() {
        return this.fileId;
    }

    public long getGrantedState() {
        return this.grantedState;
    }

    public LeaseKey getLeaseKey() {
        return this.leaseKey;
    }

    public LeaseKey getParentLeaseKey() {
        return this.parentLeaseKey;
    }

    public String getPath() {
        return this.path;
    }

    public long getRequestedState() {
        return this.requestedState;
    }

    public Session getSession() {
        return this.session;
    }

    public long getTreeId() {
        return this.treeId;
    }

    public int invalidateCache() {
        this.cache.invalidateAll();
        Directory directory = this.cacheDirectory;
        this.cacheDirectory = null;
        if (directory != null) {
            directory.closeSilently();
        }
        return this.cacheGeneration.incrementAndGet();
    }

    public boolean isBroken() {
        return this.broken;
    }

    public boolean isGranted() {
        return this.granted;
    }

    public void setBroken(boolean z) {
        this.broken = z;
    }

    public void setCacheDirectory(Directory directory) {
        this.cacheDirectory = directory;
    }

    public void setEpoch(int i10) {
        this.epoch = i10;
    }

    public void setFileId(SMB2FileId sMB2FileId) {
        this.fileId = sMB2FileId;
    }

    public void setGranted(boolean z) {
        this.granted = z;
    }

    public void setGrantedState(long j10) {
        this.grantedState = j10;
    }

    public void setOwner(Session session, long j10, SMB2Dialect sMB2Dialect) {
        this.session = session;
        this.treeId = j10;
        this.dialect = sMB2Dialect;
    }
}
