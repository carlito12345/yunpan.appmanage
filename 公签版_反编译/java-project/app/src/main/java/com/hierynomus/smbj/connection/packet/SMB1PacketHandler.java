package com.hierynomus.smbj.connection.packet;

import com.hierynomus.mssmb.SMB1NotSupportedException;
import com.hierynomus.mssmb.SMB1PacketData;
import com.hierynomus.smb.SMBPacketData;

/* loaded from: classes.dex */
public class SMB1PacketHandler extends AbstractIncomingPacketHandler {
    @Override // com.hierynomus.smbj.connection.packet.AbstractIncomingPacketHandler
    public boolean canHandle(SMBPacketData<?> sMBPacketData) {
        return sMBPacketData instanceof SMB1PacketData;
    }

    @Override // com.hierynomus.smbj.connection.packet.AbstractIncomingPacketHandler
    public void doHandle(SMBPacketData<?> sMBPacketData) throws SMB1NotSupportedException {
        throw new SMB1NotSupportedException();
    }
}
