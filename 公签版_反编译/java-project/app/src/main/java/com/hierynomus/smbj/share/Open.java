package com.hierynomus.smbj.share;

import com.hierynomus.mssmb2.SMB2Dialect;
import com.hierynomus.mssmb2.SMB2FileId;
import com.hierynomus.mssmb2.SMB2LockFlag;
import com.hierynomus.mssmb2.messages.submodule.SMB2LockElement;
import com.hierynomus.smbj.common.SmbPath;
import com.hierynomus.smbj.share.OperationBuckets;
import com.hierynomus.smbj.share.Share;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public class Open<S extends Share> implements Closeable {
    protected SMB2FileId fileId;
    protected SmbPath name;
    protected S share;
    protected final Logger logger = LoggerFactory.getLogger(getClass());
    private OperationBuckets operationBuckets = new OperationBuckets();

    public final class LockBuilder {
        private List<SMB2LockElement> elements = new ArrayList();

        public LockBuilder() {
        }

        private Open<S>.LockBuilder addElement(long j10, long j11, Set<SMB2LockFlag> set) {
            this.elements.add(new SMB2LockElement(j10, j11, set));
            return this;
        }

        public Open<S>.LockBuilder exclusiveLock(long j10, long j11) {
            return exclusiveLock(j10, j11, false);
        }

        public void send() {
            Open.this.lockRequest(this.elements);
        }

        public Open<S>.LockBuilder sharedLock(long j10, long j11) {
            return sharedLock(j10, j11, false);
        }

        public Open<S>.LockBuilder unlock(long j10, long j11) {
            return addElement(j10, j11, EnumSet.of(SMB2LockFlag.SMB2_LOCKFLAG_UNLOCK));
        }

        public Open<S>.LockBuilder exclusiveLock(long j10, long j11, boolean z) {
            EnumSet enumSetOf = EnumSet.of(SMB2LockFlag.SMB2_LOCKFLAG_EXCLUSIVE_LOCK);
            if (z) {
                enumSetOf.add(SMB2LockFlag.SMB2_LOCKFLAG_FAIL_IMMEDIATELY);
            }
            return addElement(j10, j11, enumSetOf);
        }

        public Open<S>.LockBuilder sharedLock(long j10, long j11, boolean z) {
            EnumSet enumSetOf = EnumSet.of(SMB2LockFlag.SMB2_LOCKFLAG_SHARED_LOCK);
            if (z) {
                enumSetOf.add(SMB2LockFlag.SMB2_LOCKFLAG_FAIL_IMMEDIATELY);
            }
            return addElement(j10, j11, enumSetOf);
        }
    }

    public Open(SMB2FileId sMB2FileId, SmbPath smbPath, S s8) {
        this.fileId = sMB2FileId;
        this.name = smbPath;
        this.share = s8;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.share.closeFileId(this.fileId);
    }

    public void closeSilently() {
        try {
            close();
        } catch (Exception e7) {
            this.logger.warn("{} close failed for {},{},{}", getClass().getSimpleName(), this.name, this.share, this.fileId, e7);
        }
    }

    public SMB2FileId getFileId() {
        return this.fileId;
    }

    public void lockRequest(List<SMB2LockElement> list) {
        short sequenceNumber;
        int index;
        SMB2Dialect dialect = this.share.getDialect();
        SMB2Dialect sMB2Dialect = SMB2Dialect.SMB_2_0_2;
        if (dialect != sMB2Dialect) {
            OperationBuckets.OperationBucket operationBucketTakeFreeBucket = this.operationBuckets.takeFreeBucket();
            sequenceNumber = operationBucketTakeFreeBucket.getSequenceNumber();
            index = operationBucketTakeFreeBucket.getIndex();
        } else {
            sequenceNumber = 0;
            index = 0;
        }
        this.share.sendLockRequest(this.fileId, sequenceNumber, index, list);
        if (this.share.getDialect() != sMB2Dialect) {
            this.operationBuckets.freeBucket(index);
        }
    }

    public Open<S>.LockBuilder requestLock() {
        return new LockBuilder();
    }
}
