package com.hierynomus.smbj.connection.packet;

import com.hierynomus.smb.SMBPacketData;

/* loaded from: classes.dex */
public abstract class AbstractIncomingPacketHandler implements IncomingPacketHandler {
    protected IncomingPacketHandler next;

    public abstract boolean canHandle(SMBPacketData<?> sMBPacketData);

    public abstract void doHandle(SMBPacketData<?> sMBPacketData);

    @Override // com.hierynomus.smbj.connection.packet.IncomingPacketHandler
    public void handle(SMBPacketData<?> sMBPacketData) {
        if (canHandle(sMBPacketData)) {
            doHandle(sMBPacketData);
        } else {
            this.next.handle(sMBPacketData);
        }
    }

    @Override // com.hierynomus.smbj.connection.packet.IncomingPacketHandler
    public IncomingPacketHandler setNext(IncomingPacketHandler incomingPacketHandler) {
        this.next = incomingPacketHandler;
        return this;
    }
}
