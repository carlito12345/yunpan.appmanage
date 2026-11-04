package com.hierynomus.mssmb2.messages;

import com.hierynomus.mssmb2.SMB2Dialect;
import com.hierynomus.mssmb2.SMB2FileId;
import com.hierynomus.mssmb2.SMB2MessageCommandCode;
import com.hierynomus.mssmb2.SMB2MultiCreditPacket;
import com.hierynomus.smb.SMBBuffer;
import com.hierynomus.smbj.io.ByteChunkProvider;

/* loaded from: classes.dex */
public class SMB2WriteRequest extends SMB2MultiCreditPacket {
    private final ByteChunkProvider byteProvider;
    private final SMB2FileId fileId;

    public SMB2WriteRequest(SMB2Dialect sMB2Dialect, SMB2FileId sMB2FileId, long j10, long j11, ByteChunkProvider byteChunkProvider, int i10) {
        super(49, sMB2Dialect, SMB2MessageCommandCode.SMB2_WRITE, j10, j11, Math.min(i10, byteChunkProvider.bytesLeft()));
        this.fileId = sMB2FileId;
        this.byteProvider = byteChunkProvider;
    }

    @Override // com.hierynomus.mssmb2.SMB2Packet
    public void writeTo(SMBBuffer sMBBuffer) {
        sMBBuffer.putUInt16(this.structureSize);
        sMBBuffer.putUInt16(112);
        sMBBuffer.putUInt32(getPayloadSize());
        sMBBuffer.putUInt64(this.byteProvider.getOffset());
        this.fileId.write(sMBBuffer);
        sMBBuffer.putUInt32(0L);
        sMBBuffer.putUInt32(Math.max(0, this.byteProvider.bytesLeft() - getPayloadSize()));
        sMBBuffer.putUInt16(0);
        sMBBuffer.putUInt16(0);
        sMBBuffer.putUInt32(0L);
        this.byteProvider.writeChunks(sMBBuffer, getCreditsAssigned());
    }
}
