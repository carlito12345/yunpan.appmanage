package com.hierynomus.mssmb;

import com.hierynomus.smb.SMBBuffer;
import com.hierynomus.smb.SMBPacket;

/* loaded from: classes.dex */
public class SMB1Packet extends SMBPacket<SMB1PacketData, SMB1Header> {
    public SMB1Packet() {
        super(new SMB1Header());
    }

    public void writeTo(SMBBuffer sMBBuffer) {
        throw new UnsupportedOperationException("Sending SMBv1 messages not supported in SMBJ");
    }

    @Override // com.hierynomus.smb.SMBPacket
    public void read(SMB1PacketData sMB1PacketData) {
        throw new UnsupportedOperationException("Receiving SMBv1 messages not supported in SMBJ");
    }

    @Override // com.hierynomus.protocol.Packet
    public final void write(SMBBuffer sMBBuffer) {
        this.buffer = sMBBuffer;
        ((SMB1Header) this.header).writeTo(sMBBuffer);
        writeTo(sMBBuffer);
    }
}
