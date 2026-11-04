package com.hierynomus.smb;

import com.hierynomus.protocol.PacketData;
import com.hierynomus.smb.SMBHeader;

/* loaded from: classes.dex */
public abstract class SMBPacketData<H extends SMBHeader> implements PacketData<SMBBuffer> {
    protected SMBBuffer dataBuffer;
    private H header;

    public SMBPacketData(H h7, byte[] bArr) {
        this(h7, new SMBBuffer(bArr));
    }

    public H getHeader() {
        return this.header;
    }

    public void readHeader() {
        this.header.readFrom(this.dataBuffer);
    }

    public SMBPacketData(H h7, SMBBuffer sMBBuffer) {
        this.header = h7;
        this.dataBuffer = sMBBuffer;
        readHeader();
    }

    @Override // com.hierynomus.protocol.PacketData
    public SMBBuffer getDataBuffer() {
        return this.dataBuffer;
    }

    public SMBPacketData(H h7) {
        this.header = h7;
    }
}
