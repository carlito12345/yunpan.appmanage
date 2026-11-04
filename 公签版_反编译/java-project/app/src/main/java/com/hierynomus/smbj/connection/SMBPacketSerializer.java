package com.hierynomus.smbj.connection;

import com.hierynomus.protocol.transport.PacketSerializer;
import com.hierynomus.smb.SMBBuffer;
import com.hierynomus.smb.SMBPacket;

/* loaded from: classes.dex */
public class SMBPacketSerializer implements PacketSerializer<SMBPacket<?, ?>, SMBBuffer> {
    @Override // com.hierynomus.protocol.transport.PacketSerializer
    public SMBBuffer write(SMBPacket<?, ?> sMBPacket) {
        SMBBuffer sMBBuffer = new SMBBuffer();
        sMBPacket.write(sMBBuffer);
        return sMBBuffer;
    }
}
