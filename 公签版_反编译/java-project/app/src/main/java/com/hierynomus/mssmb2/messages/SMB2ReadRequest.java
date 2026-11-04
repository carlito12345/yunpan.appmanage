package com.hierynomus.mssmb2.messages;

import com.hierynomus.mssmb2.SMB2Dialect;
import com.hierynomus.mssmb2.SMB2FileId;
import com.hierynomus.mssmb2.SMB2MessageCommandCode;
import com.hierynomus.mssmb2.SMB2MultiCreditPacket;
import com.hierynomus.smb.SMBBuffer;

/* loaded from: classes.dex */
public class SMB2ReadRequest extends SMB2MultiCreditPacket {
    private final SMB2FileId fileId;
    private final long offset;

    public SMB2ReadRequest(SMB2Dialect sMB2Dialect, SMB2FileId sMB2FileId, long j10, long j11, long j12, int i10) {
        super(49, sMB2Dialect, SMB2MessageCommandCode.SMB2_READ, j10, j11, i10);
        this.fileId = sMB2FileId;
        this.offset = j12;
    }

    @Override // com.hierynomus.mssmb2.SMB2Packet
    public void writeTo(SMBBuffer sMBBuffer) {
        sMBBuffer.putUInt16(this.structureSize);
        sMBBuffer.putByte((byte) 0);
        sMBBuffer.putByte((byte) 0);
        sMBBuffer.putUInt32(getPayloadSize());
        sMBBuffer.putUInt64(this.offset);
        this.fileId.write(sMBBuffer);
        sMBBuffer.putUInt32(1L);
        sMBBuffer.putUInt32(0L);
        sMBBuffer.putUInt32(0L);
        sMBBuffer.putUInt16(0);
        sMBBuffer.putUInt16(0);
        sMBBuffer.putByte((byte) 0);
    }
}
