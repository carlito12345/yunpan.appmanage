package j1;

import java.io.ByteArrayInputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public class b extends InputStream implements DataInput {

    /* renamed from: e, reason: collision with root package name */
    public static final ByteOrder f9620e = ByteOrder.LITTLE_ENDIAN;

    /* renamed from: f, reason: collision with root package name */
    public static final ByteOrder f9621f = ByteOrder.BIG_ENDIAN;

    /* renamed from: a, reason: collision with root package name */
    public final DataInputStream f9622a;

    /* renamed from: b, reason: collision with root package name */
    public ByteOrder f9623b;

    /* renamed from: c, reason: collision with root package name */
    public int f9624c;

    /* renamed from: d, reason: collision with root package name */
    public byte[] f9625d;

    public b(byte[] bArr) {
        this(new ByteArrayInputStream(bArr), ByteOrder.BIG_ENDIAN);
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.f9622a.available();
    }

    @Override // java.io.InputStream
    public final void mark(int i10) {
        throw new UnsupportedOperationException("Mark is currently unsupported");
    }

    public final void r(int i10) throws IOException {
        int i11 = 0;
        while (i11 < i10) {
            DataInputStream dataInputStream = this.f9622a;
            int i12 = i10 - i11;
            int iSkip = (int) dataInputStream.skip(i12);
            if (iSkip <= 0) {
                if (this.f9625d == null) {
                    this.f9625d = new byte[8192];
                }
                iSkip = dataInputStream.read(this.f9625d, 0, Math.min(8192, i12));
                if (iSkip == -1) {
                    throw new EOFException(g.b.i("Reached EOF while skipping ", i10, " bytes."));
                }
            }
            i11 += iSkip;
        }
        this.f9624c += i11;
    }

    @Override // java.io.InputStream
    public final int read() {
        this.f9624c++;
        return this.f9622a.read();
    }

    @Override // java.io.DataInput
    public final boolean readBoolean() {
        this.f9624c++;
        return this.f9622a.readBoolean();
    }

    @Override // java.io.DataInput
    public final byte readByte() throws IOException {
        this.f9624c++;
        int i10 = this.f9622a.read();
        if (i10 >= 0) {
            return (byte) i10;
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public final char readChar() {
        this.f9624c += 2;
        return this.f9622a.readChar();
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
    public final void readFully(byte[] bArr, int i10, int i11) throws IOException {
        this.f9624c += i11;
        this.f9622a.readFully(bArr, i10, i11);
    }

    @Override // java.io.DataInput
    public final int readInt() throws IOException {
        this.f9624c += 4;
        DataInputStream dataInputStream = this.f9622a;
        int i10 = dataInputStream.read();
        int i11 = dataInputStream.read();
        int i12 = dataInputStream.read();
        int i13 = dataInputStream.read();
        if ((i10 | i11 | i12 | i13) < 0) {
            throw new EOFException();
        }
        ByteOrder byteOrder = this.f9623b;
        if (byteOrder == f9620e) {
            return (i13 << 24) + (i12 << 16) + (i11 << 8) + i10;
        }
        if (byteOrder == f9621f) {
            return (i10 << 24) + (i11 << 16) + (i12 << 8) + i13;
        }
        throw new IOException("Invalid byte order: " + this.f9623b);
    }

    @Override // java.io.DataInput
    public final String readLine() {
        return null;
    }

    @Override // java.io.DataInput
    public final long readLong() throws IOException {
        this.f9624c += 8;
        DataInputStream dataInputStream = this.f9622a;
        int i10 = dataInputStream.read();
        int i11 = dataInputStream.read();
        int i12 = dataInputStream.read();
        int i13 = dataInputStream.read();
        int i14 = dataInputStream.read();
        int i15 = dataInputStream.read();
        int i16 = dataInputStream.read();
        int i17 = dataInputStream.read();
        if ((i10 | i11 | i12 | i13 | i14 | i15 | i16 | i17) < 0) {
            throw new EOFException();
        }
        ByteOrder byteOrder = this.f9623b;
        if (byteOrder == f9620e) {
            return (i17 << 56) + (i16 << 48) + (i15 << 40) + (i14 << 32) + (i13 << 24) + (i12 << 16) + (i11 << 8) + i10;
        }
        if (byteOrder == f9621f) {
            return (i10 << 56) + (i11 << 48) + (i12 << 40) + (i13 << 32) + (i14 << 24) + (i15 << 16) + (i16 << 8) + i17;
        }
        throw new IOException("Invalid byte order: " + this.f9623b);
    }

    @Override // java.io.DataInput
    public final short readShort() throws IOException {
        this.f9624c += 2;
        DataInputStream dataInputStream = this.f9622a;
        int i10 = dataInputStream.read();
        int i11 = dataInputStream.read();
        if ((i10 | i11) < 0) {
            throw new EOFException();
        }
        ByteOrder byteOrder = this.f9623b;
        if (byteOrder == f9620e) {
            return (short) ((i11 << 8) + i10);
        }
        if (byteOrder == f9621f) {
            return (short) ((i10 << 8) + i11);
        }
        throw new IOException("Invalid byte order: " + this.f9623b);
    }

    @Override // java.io.DataInput
    public final String readUTF() {
        this.f9624c += 2;
        return this.f9622a.readUTF();
    }

    @Override // java.io.DataInput
    public final int readUnsignedByte() {
        this.f9624c++;
        return this.f9622a.readUnsignedByte();
    }

    @Override // java.io.DataInput
    public final int readUnsignedShort() throws IOException {
        this.f9624c += 2;
        DataInputStream dataInputStream = this.f9622a;
        int i10 = dataInputStream.read();
        int i11 = dataInputStream.read();
        if ((i10 | i11) < 0) {
            throw new EOFException();
        }
        ByteOrder byteOrder = this.f9623b;
        if (byteOrder == f9620e) {
            return (i11 << 8) + i10;
        }
        if (byteOrder == f9621f) {
            return (i10 << 8) + i11;
        }
        throw new IOException("Invalid byte order: " + this.f9623b);
    }

    @Override // java.io.InputStream
    public final void reset() {
        throw new UnsupportedOperationException("Reset is currently unsupported");
    }

    @Override // java.io.DataInput
    public final int skipBytes(int i10) {
        throw new UnsupportedOperationException("skipBytes is currently unsupported");
    }

    public b(InputStream inputStream) {
        this(inputStream, ByteOrder.BIG_ENDIAN);
    }

    public b(InputStream inputStream, ByteOrder byteOrder) {
        this.f9623b = ByteOrder.BIG_ENDIAN;
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        this.f9622a = dataInputStream;
        dataInputStream.mark(0);
        this.f9624c = 0;
        this.f9623b = byteOrder;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = this.f9622a.read(bArr, i10, i11);
        this.f9624c += i12;
        return i12;
    }

    @Override // java.io.DataInput
    public final void readFully(byte[] bArr) throws IOException {
        this.f9624c += bArr.length;
        this.f9622a.readFully(bArr);
    }
}
