package com.hierynomus.mssmb2.messages;

import com.hierynomus.mssmb2.SMB2Packet;
import com.hierynomus.protocol.commons.buffer.Buffer;
import com.hierynomus.smb.SMBBuffer;

/* loaded from: classes.dex */
public class SMB2WriteResponse extends SMB2Packet {
    private int bytesWritten;

    public int getBytesWritten() {
        return this.bytesWritten;
    }

    @Override // com.hierynomus.mssmb2.SMB2Packet
    public void readMessage(SMBBuffer sMBBuffer) throws Buffer.BufferException {
        sMBBuffer.skip(2);
        sMBBuffer.skip(2);
        this.bytesWritten = sMBBuffer.readUInt32AsInt();
        sMBBuffer.skip(4);
        sMBBuffer.skip(2);
        sMBBuffer.skip(2);
    }
}
