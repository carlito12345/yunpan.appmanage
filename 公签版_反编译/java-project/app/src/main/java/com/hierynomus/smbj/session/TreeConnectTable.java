package com.hierynomus.smbj.session;

import com.hierynomus.smbj.share.Share;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* loaded from: classes.dex */
class TreeConnectTable {
    private ReentrantReadWriteLock lock = new ReentrantReadWriteLock();
    private Map<Long, Share> lookupById = new HashMap();
    private Map<String, Share> lookupByShareName = new HashMap();

    public void closed(long j10) {
        this.lock.writeLock().lock();
        try {
            Share shareRemove = this.lookupById.remove(Long.valueOf(j10));
            if (shareRemove != null) {
                this.lookupByShareName.remove(shareRemove.getTreeConnect().getShareName());
            }
        } finally {
            this.lock.writeLock().unlock();
        }
    }

    public Collection<Share> getOpenTreeConnects() {
        this.lock.readLock().lock();
        try {
            return new ArrayList(this.lookupById.values());
        } finally {
            this.lock.readLock().unlock();
        }
    }

    public Share getTreeConnect(long j10) {
        this.lock.readLock().lock();
        try {
            return this.lookupById.get(Long.valueOf(j10));
        } finally {
            this.lock.readLock().unlock();
        }
    }

    public void register(Share share) {
        this.lock.writeLock().lock();
        try {
            this.lookupById.put(Long.valueOf(share.getTreeConnect().getTreeId()), share);
            this.lookupByShareName.put(share.getTreeConnect().getShareName(), share);
        } finally {
            this.lock.writeLock().unlock();
        }
    }

    public Share getTreeConnect(String str) {
        this.lock.readLock().lock();
        try {
            return this.lookupByShareName.get(str);
        } finally {
            this.lock.readLock().unlock();
        }
    }
}
