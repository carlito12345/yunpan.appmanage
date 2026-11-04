package com.hierynomus.smbj.share;

import com.hierynomus.smbj.common.SMBRuntimeException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* loaded from: classes.dex */
class OperationBuckets {
    private List<OperationBucket> buckets = new ArrayList();
    private ReentrantReadWriteLock lock = new ReentrantReadWriteLock();

    public class OperationBucket {
        private final int index;
        private boolean free = false;
        private short sequenceNumber = 0;

        public OperationBucket(int i10) {
            this.index = i10;
        }

        public static /* synthetic */ short access$112(OperationBucket operationBucket, int i10) {
            short s8 = (short) (operationBucket.sequenceNumber + i10);
            operationBucket.sequenceNumber = s8;
            return s8;
        }

        public int getIndex() {
            return this.index;
        }

        public short getSequenceNumber() {
            return this.sequenceNumber;
        }
    }

    public void freeBucket(int i10) {
        this.lock.writeLock().lock();
        try {
            OperationBucket operationBucket = this.buckets.get(i10 - 1);
            operationBucket.free = true;
            OperationBucket.access$112(operationBucket, 1);
        } finally {
            this.lock.writeLock().unlock();
        }
    }

    public OperationBucket takeFreeBucket() {
        this.lock.writeLock().lock();
        try {
            for (OperationBucket operationBucket : this.buckets) {
                if (operationBucket.free) {
                    operationBucket.free = false;
                    return operationBucket;
                }
            }
            if (this.buckets.size() >= 64) {
                throw new SMBRuntimeException("No OperationBucket found which is free");
            }
            OperationBucket operationBucket2 = new OperationBucket(this.buckets.size() + 1);
            this.buckets.add(operationBucket2);
            return operationBucket2;
        } finally {
            this.lock.writeLock().unlock();
        }
    }
}
