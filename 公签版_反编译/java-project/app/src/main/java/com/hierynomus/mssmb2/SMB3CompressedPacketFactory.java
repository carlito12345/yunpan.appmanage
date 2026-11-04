package com.hierynomus.mssmb2;

import com.hierynomus.protocol.transport.PacketFactory;

/* loaded from: classes.dex */
public class SMB3CompressedPacketFactory implements PacketFactory<SMB3CompressedPacketData> {
    @Override // com.hierynomus.protocol.transport.PacketFactory
    public boolean canHandle(byte[] bArr) {
        return bArr.length >= 4 && bArr[0] == -4 && bArr[1] == 83 && bArr[2] == 77 && bArr[3] == 66;
    }

    @Override // com.hierynomus.protocol.transport.PacketFactory
    public SMB3CompressedPacketData read(byte[] bArr) {
        return new SMB3CompressedPacketData(bArr);
    }
}
