package com.hierynomus.smbj.connection;

import com.hierynomus.smbj.common.SMBRuntimeException;
import g.b;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
public class SequenceWindow {
    private static final long MAX_WAIT = 5000;
    static final int PREFERRED_MINIMUM_CREDITS = 512;
    private AtomicLong lowestAvailable = new AtomicLong(0);
    private Semaphore available = new Semaphore(1);

    public static class NoopSemaphore extends Semaphore {
        public NoopSemaphore() {
            super(1);
        }

        @Override // java.util.concurrent.Semaphore
        public int availablePermits() {
            return Integer.MAX_VALUE;
        }

        @Override // java.util.concurrent.Semaphore
        public void release(int i10) {
        }

        @Override // java.util.concurrent.Semaphore
        public boolean tryAcquire() {
            return true;
        }

        @Override // java.util.concurrent.Semaphore
        public boolean tryAcquire(int i10) {
            return true;
        }

        @Override // java.util.concurrent.Semaphore
        public boolean tryAcquire(int i10, long j10, TimeUnit timeUnit) {
            return true;
        }

        @Override // java.util.concurrent.Semaphore
        public boolean tryAcquire(long j10, TimeUnit timeUnit) {
            return true;
        }
    }

    private long[] range(long j10, long j11) {
        int i10 = (int) (j11 - j10);
        long[] jArr = new long[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            jArr[i11] = i11 + j10;
        }
        return jArr;
    }

    public int available() {
        return this.available.availablePermits();
    }

    public void creditsGranted(int i10) {
        this.available.release(i10);
    }

    public void disableCredits() {
        this.available = new NoopSemaphore();
    }

    public long get() {
        return get(1)[0];
    }

    public long[] get(int i10) {
        try {
            if (this.available.tryAcquire(i10, 5000L, TimeUnit.MILLISECONDS)) {
                long j10 = i10;
                long andAdd = this.lowestAvailable.getAndAdd(j10);
                return range(andAdd, j10 + andAdd);
            }
            throw new SMBRuntimeException("Not enough credits (" + this.available.availablePermits() + " available) to hand out " + i10 + " sequence numbers");
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            StringBuilder sbN = b.n("Got interrupted waiting for ", i10, " to be available. Credits available at this moment: ");
            sbN.append(this.available.availablePermits());
            throw new SMBRuntimeException(sbN.toString());
        }
    }
}
