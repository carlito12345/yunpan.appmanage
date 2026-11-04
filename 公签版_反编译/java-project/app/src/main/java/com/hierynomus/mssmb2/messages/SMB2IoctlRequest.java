package com.hierynomus.mssmb2.messages;

import com.hierynomus.mssmb2.SMB2Dialect;
import com.hierynomus.mssmb2.SMB2FileId;
import com.hierynomus.mssmb2.SMB2MessageCommandCode;
import com.hierynomus.mssmb2.SMB2MultiCreditPacket;
import com.hierynomus.smb.SMBBuffer;
import com.hierynomus.smbj.io.ByteChunkProvider;

/* loaded from: classes.dex */
public class SMB2IoctlRequest extends SMB2MultiCreditPacket {
    private final long controlCode;
    private final SMB2FileId fileId;
    private final boolean fsctl;
    private final ByteChunkProvider inputData;
    private long maxOutputResponse;

    public SMB2IoctlRequest(SMB2Dialect sMB2Dialect, long j10, long j11, long j12, SMB2FileId sMB2FileId, ByteChunkProvider byteChunkProvider, boolean z, int i10) {
        super(57, sMB2Dialect, SMB2MessageCommandCode.SMB2_IOCTL, j10, j11, Math.max(byteChunkProvider.bytesLeft(), i10));
        this.controlCode = j12;
        this.fileId = sMB2FileId;
        this.inputData = byteChunkProvider;
        this.fsctl = z;
        this.maxOutputResponse = i10;
    }

    public long getControlCode() {
        return this.controlCode;
    }

    @Override // com.hierynomus.mssmb2.SMB2Packet
    public void writeTo(SMBBuffer sMBBuffer) {
        sMBBuffer.putUInt16(this.structureSize);
        sMBBuffer.putReserved2();
        sMBBuffer.putUInt32(this.controlCode);
        this.fileId.write(sMBBuffer);
        int iBytesLeft = this.inputData.bytesLeft();
        if (iBytesLeft > 0) {
            sMBBuffer.putUInt32(120);
            sMBBuffer.putUInt32(iBytesLeft);
        } else {
            sMBBuffer.putUInt32(0L);
            sMBBuffer.putUInt32(0L);
        }
        sMBBuffer.putUInt32(0L);
        sMBBuffer.putUInt32(0L);
        sMBBuffer.putUInt32(0L);
        sMBBuffer.putUInt32(this.maxOutputResponse);
        sMBBuffer.putUInt32(this.fsctl ? 1L : 0L);
        sMBBuffer.putReserved4();
        while (this.inputData.bytesLeft() > 0) {
            this.inputData.writeChunk(sMBBuffer);
        }
    }
}
