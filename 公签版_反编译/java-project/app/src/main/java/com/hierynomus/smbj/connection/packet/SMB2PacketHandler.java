package com.hierynomus.smbj.connection.packet;

import com.hierynomus.mssmb2.SMB2PacketData;
import com.hierynomus.smb.SMBPacketData;

/* loaded from: classes.dex */
public abstract class SMB2PacketHandler extends AbstractIncomingPacketHandler {
    @Override // com.hierynomus.smbj.connection.packet.AbstractIncomingPacketHandler
    public boolean canHandle(SMBPacketData<?> sMBPacketData) {
        return sMBPacketData instanceof SMB2PacketData;
    }

    @Override // com.hierynomus.smbj.connection.packet.AbstractIncomingPacketHandler
    public void doHandle(SMBPacketData<?> sMBPacketData) {
        doSMB2Handle((SMB2PacketData) sMBPacketData);
    }

    public abstract void doSMB2Handle(SMB2PacketData sMB2PacketData);
}
