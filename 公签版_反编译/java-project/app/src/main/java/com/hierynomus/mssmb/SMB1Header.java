package com.hierynomus.mssmb;

import com.hierynomus.protocol.commons.buffer.Buffer;
import com.hierynomus.smb.SMBBuffer;
import com.hierynomus.smb.SMBHeader;

/* loaded from: classes.dex */
public class SMB1Header implements SMBHeader {
    private int headerStartPosition;
    private int messageEndPosition;

    @Override // com.hierynomus.smb.SMBHeader
    public int getHeaderStartPosition() {
        return this.headerStartPosition;
    }

    @Override // com.hierynomus.smb.SMBHeader
    public int getMessageEndPosition() {
        return this.messageEndPosition;
    }

    @Override // com.hierynomus.smb.SMBHeader
    public void readFrom(Buffer<?> buffer) {
        throw new UnsupportedOperationException("Receiving SMBv1 messages not supported in SMBJ");
    }

    public void setMessageEndPosition(int i10) {
        this.messageEndPosition = i10;
    }

    @Override // com.hierynomus.smb.SMBHeader
    public void writeTo(SMBBuffer sMBBuffer) {
        this.headerStartPosition = sMBBuffer.wpos();
        sMBBuffer.putRawBytes(new byte[]{-1, 83, 77, 66});
        sMBBuffer.putByte((byte) 114);
        sMBBuffer.putUInt32(0L);
        sMBBuffer.putByte((byte) 24);
        sMBBuffer.putUInt16(51283);
        sMBBuffer.putUInt16(0);
        sMBBuffer.putUInt64(0L);
        sMBBuffer.putReserved2();
        sMBBuffer.putUInt16(0);
        sMBBuffer.putUInt16(0);
        sMBBuffer.putUInt16(0);
        sMBBuffer.putUInt16(0);
    }
}
