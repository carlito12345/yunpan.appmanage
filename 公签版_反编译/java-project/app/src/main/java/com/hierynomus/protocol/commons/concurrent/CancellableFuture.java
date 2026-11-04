package com.hierynomus.protocol.commons.concurrent;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* loaded from: classes.dex */
public class CancellableFuture<V> extends AFuture<V> {
    private final CancelCallback callback;
    private final AtomicBoolean cancelled = new AtomicBoolean(false);
    private final ReentrantReadWriteLock lock = new ReentrantReadWriteLock();
    private final AFuture<V> wrappedFuture;

    public interface CancelCallback {
        void cancel();
    }

    public CancellableFuture(AFuture<V> aFuture, CancelCallback cancelCallback) {
        this.wrappedFuture = aFuture;
        this.callback = cancelCallback;
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        this.lock.writeLock().lock();
        try {
            if (!isDone() && !this.cancelled.getAndSet(true)) {
                this.callback.cancel();
                return true;
            }
            return false;
        } finally {
        }
    }

    @Override // java.util.concurrent.Future
    public V get() {
        return this.wrappedFuture.get();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        this.lock.readLock().lock();
        try {
            return this.cancelled.get();
        } finally {
            this.lock.readLock().unlock();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001e  */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean isDone() {
        boolean z;
        this.lock.readLock().lock();
        try {
            if (!this.cancelled.get()) {
                z = this.wrappedFuture.isDone();
            }
            return z;
        } finally {
            this.lock.readLock().unlock();
        }
    }

    @Override // java.util.concurrent.Future
    public V get(long j10, TimeUnit timeUnit) {
        return this.wrappedFuture.get(j10, timeUnit);
    }
}
