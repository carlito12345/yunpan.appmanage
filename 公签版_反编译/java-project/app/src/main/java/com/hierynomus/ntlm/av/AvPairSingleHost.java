package com.hierynomus.ntlm.av;

import com.hierynomus.protocol.commons.buffer.Buffer;

/* loaded from: classes.dex */
public class AvPairSingleHost extends AvPair<byte[]> {
    private byte[] machineID;

    public AvPairSingleHost() {
        super(AvId.MsvAvSingleHost);
    }

    @Override // com.hierynomus.ntlm.av.AvPair
    public /* bridge */ /* synthetic */ AvPair<byte[]> read(Buffer buffer) {
        return read2((Buffer<?>) buffer);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.hierynomus.ntlm.av.AvPair
    public void write(Buffer<?> buffer) {
        buffer.putUInt16((int) this.avId.getValue());
        buffer.putUInt16(48);
        buffer.putUInt32(48L);
        buffer.putUInt32(0L);
        buffer.putRawBytes((byte[]) this.value);
        buffer.putRawBytes(this.machineID);
    }

    public AvPairSingleHost(byte[] bArr, byte[] bArr2) {
        super(AvId.MsvAvSingleHost, bArr);
        this.machineID = bArr2;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [T, byte[]] */
    @Override // com.hierynomus.ntlm.av.AvPair
    /* renamed from: read, reason: avoid collision after fix types in other method */
    public AvPair<byte[]> read2(Buffer<?> buffer) throws Buffer.BufferException {
        buffer.readUInt16();
        buffer.readUInt32();
        buffer.skip(4);
        this.value = buffer.readRawBytes(8);
        this.machineID = buffer.readRawBytes(32);
        return this;
    }
}
