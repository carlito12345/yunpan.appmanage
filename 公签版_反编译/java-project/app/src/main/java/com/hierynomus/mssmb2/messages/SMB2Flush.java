package com.hierynomus.mssmb2.messages;

import com.hierynomus.mssmb2.SMB2Dialect;
import com.hierynomus.mssmb2.SMB2FileId;
import com.hierynomus.mssmb2.SMB2MessageCommandCode;
import com.hierynomus.mssmb2.SMB2Packet;
import com.hierynomus.protocol.commons.buffer.Buffer;
import com.hierynomus.smb.SMBBuffer;

/* loaded from: classes.dex */
public class SMB2Flush extends SMB2Packet {
    private SMB2FileId fileId;

    public SMB2Flush() {
    }

    @Override // com.hierynomus.mssmb2.SMB2Packet
    public void readMessage(SMBBuffer sMBBuffer) throws Buffer.BufferException {
        sMBBuffer.readUInt16();
        sMBBuffer.skip(2);
    }

    @Override // com.hierynomus.mssmb2.SMB2Packet
    public void writeTo(SMBBuffer sMBBuffer) {
        sMBBuffer.putUInt16(this.structureSize);
        sMBBuffer.putReserved2();
        sMBBuffer.putReserved4();
        this.fileId.write(sMBBuffer);
    }

    public SMB2Flush(SMB2Dialect sMB2Dialect, SMB2FileId sMB2FileId, long j10, long j11) {
        super(24, sMB2Dialect, SMB2MessageCommandCode.SMB2_FLUSH, j10, j11);
        this.fileId = sMB2FileId;
    }
}
