package com.hierynomus.smbj.connection.packet;

import com.hierynomus.mssmb2.SMB2PacketData;
import com.hierynomus.protocol.commons.buffer.Buffer;
import com.hierynomus.protocol.transport.TransportException;
import com.hierynomus.smb.SMBPacketData;

/* loaded from: classes.dex */
public class SMB2CompoundedPacketHandler extends SMB2PacketHandler {
    @Override // com.hierynomus.smbj.connection.packet.SMB2PacketHandler, com.hierynomus.smbj.connection.packet.AbstractIncomingPacketHandler
    public boolean canHandle(SMBPacketData<?> sMBPacketData) {
        return super.canHandle(sMBPacketData) && ((SMB2PacketData) sMBPacketData).isCompounded();
    }

    @Override // com.hierynomus.smbj.connection.packet.SMB2PacketHandler
    public void doSMB2Handle(SMB2PacketData sMB2PacketData) throws TransportException {
        do {
            this.next.handle(sMB2PacketData);
            try {
                sMB2PacketData = sMB2PacketData.next();
            } catch (Buffer.BufferException e7) {
                throw new TransportException("Missing compounded message data", e7);
            }
        } while (sMB2PacketData != null);
    }
}
