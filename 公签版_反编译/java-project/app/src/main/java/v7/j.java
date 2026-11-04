package v7;

import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public final class j extends FilterInputStream implements DataInput {
    public j(h hVar) {
        super(hVar);
    }

    public final byte r() throws IOException {
        int i10 = ((FilterInputStream) this).in.read();
        if (-1 != i10) {
            return (byte) i10;
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public final boolean readBoolean() {
        return readUnsignedByte() != 0;
    }

    @Override // java.io.DataInput
    public final byte readByte() {
        return (byte) readUnsignedByte();
    }

    @Override // java.io.DataInput
    public final char readChar() {
        return (char) readUnsignedShort();
    }

    @Override // java.io.DataInput
    public final double readDouble() {
        return Double.longBitsToDouble(readLong());
    }

    @Override // java.io.DataInput
    public final float readFloat() {
        return Float.intBitsToFloat(readInt());
    }

    @Override // java.io.DataInput
    public final void readFully(byte[] bArr) throws IOException {
        int i10 = g.f16650a;
        g.b(this, bArr, 0, bArr.length);
    }

    @Override // java.io.DataInput
    public final int readInt() throws IOException {
        byte bR = r();
        byte bR2 = r();
        return d.b.t(r(), r(), bR2, bR);
    }

    @Override // java.io.DataInput
    public final String readLine() {
        throw new UnsupportedOperationException("readLine is not supported");
    }

    @Override // java.io.DataInput
    public final long readLong() throws IOException {
        byte bR = r();
        byte bR2 = r();
        byte bR3 = r();
        byte bR4 = r();
        byte bR5 = r();
        return ((bR2 & 255) << 8) | ((bR4 & 255) << 24) | ((r() & 255) << 40) | ((r() & 255) << 56) | ((r() & 255) << 48) | ((bR5 & 255) << 32) | ((bR3 & 255) << 16) | (bR & 255);
    }

    @Override // java.io.DataInput
    public final short readShort() {
        return (short) readUnsignedShort();
    }

    @Override // java.io.DataInput
    public final String readUTF() {
        return new DataInputStream(((FilterInputStream) this).in).readUTF();
    }

    @Override // java.io.DataInput
    public final int readUnsignedByte() throws IOException {
        int i10 = ((FilterInputStream) this).in.read();
        if (i10 >= 0) {
            return i10;
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public final int readUnsignedShort() throws IOException {
        return d.b.t((byte) 0, (byte) 0, r(), r());
    }

    @Override // java.io.DataInput
    public final int skipBytes(int i10) {
        return (int) ((FilterInputStream) this).in.skip(i10);
    }

    @Override // java.io.DataInput
    public final void readFully(byte[] bArr, int i10, int i11) throws IOException {
        g.b(this, bArr, i10, i11);
    }
}
