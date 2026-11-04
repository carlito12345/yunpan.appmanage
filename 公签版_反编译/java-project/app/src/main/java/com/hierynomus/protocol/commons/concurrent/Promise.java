package com.hierynomus.protocol.commons.concurrent;

import java.lang.Throwable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public class Promise<V, T extends Throwable> {
    private final Condition cond;
    private final ReentrantLock lock;
    private final Logger logger;
    private final String name;
    private T pendingEx;
    private V val;
    private final ExceptionWrapper<T> wrapper;

    public Promise(String str, ExceptionWrapper<T> exceptionWrapper) {
        this(str, exceptionWrapper, null);
    }

    public void clear() {
        this.lock.lock();
        try {
            this.pendingEx = null;
            deliver(null);
        } finally {
            this.lock.unlock();
        }
    }

    public void deliver(V v10) {
        this.lock.lock();
        try {
            this.logger.debug("Setting << {} >> to `{}`", this.name, v10);
            this.val = v10;
            this.cond.signalAll();
        } finally {
            this.lock.unlock();
        }
    }

    public void deliverError(Throwable th2) {
        this.lock.lock();
        try {
            this.pendingEx = (T) this.wrapper.wrap(th2);
            this.cond.signalAll();
        } finally {
            this.lock.unlock();
        }
    }

    public AFuture<V> future() {
        return new PromiseBackedFuture(this);
    }

    public boolean hasWaiters() {
        this.lock.lock();
        try {
            return this.lock.hasWaiters(this.cond);
        } finally {
            this.lock.unlock();
        }
    }

    public boolean inError() {
        this.lock.lock();
        try {
            return this.pendingEx != null;
        } finally {
            this.lock.unlock();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0011  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean isDelivered() {
        boolean z;
        this.lock.lock();
        try {
            if (this.pendingEx == null) {
                z = this.val != null;
            }
            return z;
        } finally {
            this.lock.unlock();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0012  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean isFulfilled() {
        boolean z;
        this.lock.lock();
        try {
            if (this.pendingEx == null) {
                z = this.val != null;
            }
            return z;
        } finally {
            this.lock.unlock();
        }
    }

    public void lock() {
        this.lock.lock();
    }

    public V retrieve() {
        return tryRetrieve(0L, TimeUnit.SECONDS);
    }

    public String toString() {
        return this.name;
    }

    public V tryRetrieve(long j10, TimeUnit timeUnit) {
        this.lock.lock();
        try {
            try {
                T t10 = this.pendingEx;
                if (t10 != null) {
                    throw t10;
                }
                V v10 = this.val;
                if (v10 != null) {
                    this.lock.unlock();
                    return v10;
                }
                this.logger.debug("Awaiting << {} >>", this.name);
                if (j10 == 0) {
                    while (this.val == null && this.pendingEx == null) {
                        this.cond.await();
                    }
                } else if (!this.cond.await(j10, timeUnit)) {
                    this.lock.unlock();
                    return null;
                }
                T t11 = this.pendingEx;
                if (t11 != null) {
                    this.logger.error("<< {} >> woke to: {}", this.name, t11);
                    throw this.pendingEx;
                }
                V v11 = this.val;
                this.lock.unlock();
                return v11;
            } catch (InterruptedException e7) {
                throw this.wrapper.wrap(e7);
            }
        } catch (Throwable th2) {
            this.lock.unlock();
            throw th2;
        }
    }

    public void unlock() {
        this.lock.unlock();
    }

    public Promise(String str, ExceptionWrapper<T> exceptionWrapper, ReentrantLock reentrantLock) {
        this.logger = LoggerFactory.getLogger(getClass());
        this.name = str;
        this.wrapper = exceptionWrapper;
        reentrantLock = reentrantLock == null ? new ReentrantLock() : reentrantLock;
        this.lock = reentrantLock;
        this.cond = reentrantLock.newCondition();
    }

    public V retrieve(long j10, TimeUnit timeUnit) throws Throwable {
        V vTryRetrieve = tryRetrieve(j10, timeUnit);
        if (vTryRetrieve != null) {
            return vTryRetrieve;
        }
        throw this.wrapper.wrap(new TimeoutException("Timeout expired"));
    }
}
