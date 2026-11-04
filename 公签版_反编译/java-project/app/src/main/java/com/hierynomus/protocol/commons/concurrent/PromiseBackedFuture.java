package com.hierynomus.protocol.commons.concurrent;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class PromiseBackedFuture<V> extends AFuture<V> {
    private Promise<V, ?> promise;

    public PromiseBackedFuture(Promise<V, ?> promise) {
        this.promise = promise;
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public V get() throws ExecutionException {
        try {
            return this.promise.retrieve();
        } catch (Throwable th2) {
            throw new ExecutionException(th2);
        }
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.promise.isDelivered();
    }

    @Override // java.util.concurrent.Future
    public V get(long j10, TimeUnit timeUnit) throws ExecutionException {
        try {
            return this.promise.retrieve(j10, timeUnit);
        } catch (Throwable th2) {
            throw new ExecutionException(th2);
        }
    }
}
