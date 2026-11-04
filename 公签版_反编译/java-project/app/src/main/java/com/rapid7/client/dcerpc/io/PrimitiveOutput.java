package com.rapid7.client.dcerpc.io;

import com.rapid7.client.dcerpc.io.ndr.Alignment;
import java.io.DataOutput;
import java.io.IOException;
import java.io.OutputStream;
import v7.i;
import v7.k;

/* loaded from: classes.dex */
public class PrimitiveOutput {
    private final DataOutput dataOut;
    private final i dataOutStream;

    public PrimitiveOutput(OutputStream outputStream) {
        if (outputStream == null) {
            throw new IllegalArgumentException("Invalid OutputStream: null");
        }
        i iVar = new i(outputStream);
        this.dataOutStream = iVar;
        this.dataOut = new k(iVar);
    }

    public void align(Alignment alignment) throws IOException {
        if (alignment == Alignment.ONE) {
            return;
        }
        pad(((alignment.getOffByOneAlignment() + this.dataOutStream.f16653a) & (alignment.getOffByOneAlignment() ^ (-1))) - this.dataOutStream.f16653a);
    }

    public long getCount() {
        return this.dataOutStream.f16653a;
    }

    public void pad(long j10) throws IOException {
        while (true) {
            long j11 = j10 - 1;
            if (j10 <= 0) {
                return;
            }
            writeByte(0);
            j10 = j11;
        }
    }

    public void write(int i10) throws IOException {
        this.dataOut.write(i10);
    }

    public void writeBoolean(boolean z) throws IOException {
        this.dataOut.writeBoolean(z);
    }

    public void writeByte(int i10) throws IOException {
        this.dataOut.writeByte(i10);
    }

    public void writeBytes(String str) throws IOException {
        this.dataOut.writeBytes(str);
    }

    public void writeChar(int i10) throws IOException {
        this.dataOut.writeChar(i10);
    }

    public void writeChars(String str) throws IOException {
        this.dataOut.writeChars(str);
    }

    public void writeDouble(double d10) throws IOException {
        this.dataOut.writeDouble(d10);
    }

    public void writeFloat(float f10) throws IOException {
        this.dataOut.writeFloat(f10);
    }

    public void writeInt(int i10) {
        this.dataOut.writeInt(i10);
    }

    public void writeLong(long j10) throws IOException {
        this.dataOut.writeLong(j10);
    }

    public void writeShort(int i10) {
        this.dataOut.writeShort(i10);
    }

    public void write(byte[] bArr) throws IOException {
        this.dataOut.write(bArr);
    }

    public void writeInt(long j10) {
        writeInt((int) j10);
    }

    public void write(byte[] bArr, int i10, int i11) throws IOException {
        this.dataOut.write(bArr, i10, i11);
    }
}
