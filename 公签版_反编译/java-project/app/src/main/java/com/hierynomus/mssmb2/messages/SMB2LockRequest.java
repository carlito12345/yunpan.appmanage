package com.hierynomus.mssmb2.messages;

import com.hierynomus.mssmb2.SMB2Dialect;
import com.hierynomus.mssmb2.SMB2FileId;
import com.hierynomus.mssmb2.SMB2MessageCommandCode;
import com.hierynomus.mssmb2.SMB2Packet;
import com.hierynomus.mssmb2.messages.submodule.SMB2LockElement;
import com.hierynomus.protocol.commons.EnumWithValue;
import com.hierynomus.smb.SMBBuffer;
import java.util.List;

/* loaded from: classes.dex */
public class SMB2LockRequest extends SMB2Packet {
    private final SMB2FileId fileId;
    private final List<SMB2LockElement> lockElements;
    private final int lockSequenceIndex;
    private final short lockSequenceNumber;

    public SMB2LockRequest(SMB2Dialect sMB2Dialect, long j10, long j11, short s8, int i10, SMB2FileId sMB2FileId, List<SMB2LockElement> list) {
        super(48, sMB2Dialect, SMB2MessageCommandCode.SMB2_LOCK, j10, j11);
        if (s8 < 0 || s8 > 15) {
            throw new IllegalArgumentException("Only 4-bit integer value is allowed for lockSequenceNumber.");
        }
        this.lockSequenceNumber = s8;
        if (i10 < 0 || i10 > 64) {
            throw new IllegalArgumentException("Only value between 0 to 64 (inclusive) is allowed for lockSequenceIndex.");
        }
        this.lockSequenceIndex = i10;
        this.fileId = sMB2FileId;
        this.lockElements = list;
    }

    private int getLsnAndLsi() {
        return (this.lockSequenceIndex << 4) + this.lockSequenceNumber;
    }

    @Override // com.hierynomus.mssmb2.SMB2Packet
    public void writeTo(SMBBuffer sMBBuffer) {
        sMBBuffer.putUInt16(this.structureSize);
        sMBBuffer.putUInt16(this.lockElements.size());
        sMBBuffer.putUInt32(getLsnAndLsi());
        this.fileId.write(sMBBuffer);
        for (SMB2LockElement sMB2LockElement : this.lockElements) {
            sMBBuffer.putUInt64(sMB2LockElement.getOffset());
            sMBBuffer.putUInt64(sMB2LockElement.getLength());
            sMBBuffer.putUInt32(EnumWithValue.EnumUtils.toLong(sMB2LockElement.getLockFlags()));
            sMBBuffer.putReserved4();
        }
    }
}
