package com.rapid7.client.dcerpc.io;

import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import java.io.InputStream;
import java.rmi.UnmarshalException;

/* loaded from: classes.dex */
public class PacketInput extends PrimitiveInput {
    public PacketInput(InputStream inputStream) {
        super(inputStream);
    }

    @Override // com.rapid7.client.dcerpc.io.PrimitiveInput
    public /* bridge */ /* synthetic */ void align(Alignment alignment) {
        super.align(alignment);
    }

    @Override // com.rapid7.client.dcerpc.io.PrimitiveInput
    public /* bridge */ /* synthetic */ void fullySkipBytes(int i10) {
        super.fullySkipBytes(i10);
    }

    @Override // com.rapid7.client.dcerpc.io.PrimitiveInput
    public /* bridge */ /* synthetic */ long getCount() {
        return super.getCount();
    }

    @Override // com.rapid7.client.dcerpc.io.PrimitiveInput
    public /* bridge */ /* synthetic */ boolean readBoolean() {
        return super.readBoolean();
    }

    @Override // com.rapid7.client.dcerpc.io.PrimitiveInput
    public /* bridge */ /* synthetic */ byte readByte() {
        return super.readByte();
    }

    @Override // com.rapid7.client.dcerpc.io.PrimitiveInput
    public /* bridge */ /* synthetic */ char readChar() {
        return super.readChar();
    }

    @Override // com.rapid7.client.dcerpc.io.PrimitiveInput
    public /* bridge */ /* synthetic */ double readDouble() {
        return super.readDouble();
    }

    @Override // com.rapid7.client.dcerpc.io.PrimitiveInput
    public /* bridge */ /* synthetic */ float readFloat() {
        return super.readFloat();
    }

    @Override // com.rapid7.client.dcerpc.io.PrimitiveInput
    public /* bridge */ /* synthetic */ void readFully(byte[] bArr) {
        super.readFully(bArr);
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnmarshalException */
    public int readIndex(String str) throws UnmarshalException {
        long unsignedInt = readUnsignedInt();
        if (unsignedInt <= 2147483647L) {
            return (int) unsignedInt;
        }
        throw new UnmarshalException(String.format("%s %d > %d", str, Long.valueOf(unsignedInt), Integer.MAX_VALUE));
    }

    @Override // com.rapid7.client.dcerpc.io.PrimitiveInput
    public /* bridge */ /* synthetic */ int readInt() {
        return super.readInt();
    }

    @Override // com.rapid7.client.dcerpc.io.PrimitiveInput
    public /* bridge */ /* synthetic */ long readLong() {
        return super.readLong();
    }

    public byte[] readRawBytes(int i10) {
        byte[] bArr = new byte[i10];
        readRawBytes(bArr);
        return bArr;
    }

    public int readReferentID() {
        return readInt();
    }

    @Override // com.rapid7.client.dcerpc.io.PrimitiveInput
    public /* bridge */ /* synthetic */ short readShort() {
        return super.readShort();
    }

    public <T extends Unmarshallable> T readUnmarshallable(T t10) {
        t10.unmarshalPreamble(this);
        t10.unmarshalEntity(this);
        t10.unmarshalDeferrals(this);
        return t10;
    }

    @Override // com.rapid7.client.dcerpc.io.PrimitiveInput
    public /* bridge */ /* synthetic */ char readUnsignedByte() {
        return super.readUnsignedByte();
    }

    @Override // com.rapid7.client.dcerpc.io.PrimitiveInput
    public /* bridge */ /* synthetic */ long readUnsignedInt() {
        return super.readUnsignedInt();
    }

    @Override // com.rapid7.client.dcerpc.io.PrimitiveInput
    public /* bridge */ /* synthetic */ int readUnsignedShort() {
        return super.readUnsignedShort();
    }

    @Override // com.rapid7.client.dcerpc.io.PrimitiveInput
    public /* bridge */ /* synthetic */ void readFully(byte[] bArr, int i10, int i11) {
        super.readFully(bArr, i10, i11);
    }

    public void readRawBytes(byte[] bArr) {
        readFully(bArr, 0, bArr.length);
    }
}
