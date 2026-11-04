package com.rapid7.client.dcerpc.io;

import com.rapid7.client.dcerpc.io.ndr.Alignment;
import java.io.DataInput;
import java.io.EOFException;
import java.io.InputStream;
import v7.h;
import v7.j;

/* loaded from: classes.dex */
class PrimitiveInput {
    private final DataInput dataIn;
    private final h dataInStream;

    public PrimitiveInput(InputStream inputStream) {
        if (inputStream == null) {
            throw new IllegalArgumentException("Invalid InputStream: null");
        }
        h hVar = new h(inputStream);
        this.dataInStream = hVar;
        this.dataIn = new j(hVar);
    }

    public void align(Alignment alignment) {
        if (alignment == Alignment.ONE) {
            return;
        }
        long offByOneAlignment = ((alignment.getOffByOneAlignment() + this.dataInStream.f16651a) & (alignment.getOffByOneAlignment() ^ (-1))) - this.dataInStream.f16651a;
        while (true) {
            long j10 = offByOneAlignment - 1;
            if (offByOneAlignment <= 0) {
                return;
            }
            readByte();
            offByOneAlignment = j10;
        }
    }

    public void fullySkipBytes(int i10) {
        if (i10 != this.dataIn.skipBytes(i10)) {
            throw new EOFException();
        }
    }

    public long getCount() {
        return this.dataInStream.f16651a;
    }

    public boolean readBoolean() {
        return this.dataIn.readBoolean();
    }

    public byte readByte() {
        return this.dataIn.readByte();
    }

    public char readChar() {
        return this.dataIn.readChar();
    }

    public double readDouble() {
        return this.dataIn.readDouble();
    }

    public float readFloat() {
        return this.dataIn.readFloat();
    }

    public void readFully(byte[] bArr) {
        this.dataIn.readFully(bArr);
    }

    public int readInt() {
        return this.dataIn.readInt();
    }

    public long readLong() {
        return this.dataIn.readLong();
    }

    public short readShort() {
        return this.dataIn.readShort();
    }

    public char readUnsignedByte() {
        return (char) this.dataIn.readUnsignedByte();
    }

    public long readUnsignedInt() {
        return readInt() & 4294967295L;
    }

    public int readUnsignedShort() {
        return this.dataIn.readUnsignedShort();
    }

    public void readFully(byte[] bArr, int i10, int i11) {
        this.dataIn.readFully(bArr, i10, i11);
    }
}
