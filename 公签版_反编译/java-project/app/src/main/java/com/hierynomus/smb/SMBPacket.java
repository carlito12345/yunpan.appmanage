package com.hierynomus.smb;

import com.hierynomus.protocol.Packet;
import com.hierynomus.smb.SMBHeader;
import com.hierynomus.smb.SMBPacketData;

/* loaded from: classes.dex */
public abstract class SMBPacket<D extends SMBPacketData<H>, H extends SMBHeader> implements Packet<SMBBuffer> {
    protected SMBBuffer buffer;
    protected H header;

    public SMBPacket(H h7) {
        this.header = h7;
    }

    public SMBBuffer getBuffer() {
        return this.buffer;
    }

    public H getHeader() {
        return this.header;
    }

    public abstract void read(D d10);

    @Override // com.hierynomus.protocol.Packet
    public final void read(SMBBuffer sMBBuffer) {
        throw new UnsupportedOperationException("Call read(D extends PacketData<H>) instead of this method");
    }
}
