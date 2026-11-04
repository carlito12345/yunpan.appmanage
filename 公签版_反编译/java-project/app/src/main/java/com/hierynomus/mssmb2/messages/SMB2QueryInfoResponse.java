package com.hierynomus.mssmb2.messages;

import com.hierynomus.mssmb2.SMB2Packet;
import com.hierynomus.protocol.commons.buffer.Buffer;
import com.hierynomus.smb.SMBBuffer;

/* loaded from: classes.dex */
public class SMB2QueryInfoResponse extends SMB2Packet {
    byte[] outputBuffer;

    public byte[] getOutputBuffer() {
        return this.outputBuffer;
    }

    @Override // com.hierynomus.mssmb2.SMB2Packet
    public void readMessage(SMBBuffer sMBBuffer) throws Buffer.BufferException {
        sMBBuffer.skip(2);
        int uInt16 = sMBBuffer.readUInt16();
        int uInt32AsInt = sMBBuffer.readUInt32AsInt();
        sMBBuffer.rpos(uInt16);
        this.outputBuffer = sMBBuffer.readRawBytes(uInt32AsInt);
    }
}
