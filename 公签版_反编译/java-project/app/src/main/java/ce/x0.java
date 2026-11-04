package ce;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import org.bouncycastle.crypto.hpke.HPKE;

/* loaded from: classes.dex */
public final class x0 implements DataOutput, DataInput {

    /* renamed from: a, reason: collision with root package name */
    public final t0 f3216a;

    /* renamed from: b, reason: collision with root package name */
    public long f3217b;

    /* renamed from: d, reason: collision with root package name */
    public final int f3219d;

    /* renamed from: e, reason: collision with root package name */
    public final int f3220e;

    /* renamed from: f, reason: collision with root package name */
    public final int f3221f = 0;

    /* renamed from: g, reason: collision with root package name */
    public final byte[] f3222g = new byte[8];

    /* renamed from: h, reason: collision with root package name */
    public final o0 f3223h = null;

    /* renamed from: c, reason: collision with root package name */
    public final int f3218c = 17;

    public x0(t0 t0Var) {
        this.f3216a = t0Var;
        t0Var.z(17, 0, 128, 0);
        b1 b1Var = t0Var.f3187n.f3035f.f3233h;
        this.f3219d = b1Var.A - 70;
        this.f3220e = b1Var.z - 70;
        this.f3217b = 0L;
    }

    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.DataInput
    public final boolean readBoolean() throws r0 {
        byte[] bArr = this.f3222g;
        if (read(bArr, 0, 1) >= 0) {
            return bArr[0] != 0;
        }
        throw new r0("EOF");
    }

    @Override // java.io.DataInput
    public final byte readByte() throws r0 {
        byte[] bArr = this.f3222g;
        if (read(bArr, 0, 1) >= 0) {
            return bArr[0];
        }
        throw new r0("EOF");
    }

    @Override // java.io.DataInput
    public final char readChar() throws r0 {
        byte[] bArr = this.f3222g;
        if (read(bArr, 0, 2) >= 0) {
            return (char) a9.o.A(0, bArr);
        }
        throw new r0("EOF");
    }

    @Override // java.io.DataInput
    public final double readDouble() throws r0 {
        if (read(this.f3222g, 0, 8) >= 0) {
            return Double.longBitsToDouble(((a9.o.C(0, r0) & 4294967295L) << 32) | (4294967295L & a9.o.C(4, r0)));
        }
        throw new r0("EOF");
    }

    @Override // java.io.DataInput
    public final float readFloat() throws r0 {
        byte[] bArr = this.f3222g;
        if (read(bArr, 0, 4) >= 0) {
            return Float.intBitsToFloat(a9.o.C(0, bArr));
        }
        throw new r0("EOF");
    }

    @Override // java.io.DataInput
    public final void readFully(byte[] bArr) throws r0 {
        readFully(bArr, 0, bArr.length);
    }

    @Override // java.io.DataInput
    public final int readInt() throws r0 {
        byte[] bArr = this.f3222g;
        if (read(bArr, 0, 4) >= 0) {
            return a9.o.C(0, bArr);
        }
        throw new r0("EOF");
    }

    @Override // java.io.DataInput
    public final String readLine() {
        StringBuffer stringBuffer = new StringBuffer();
        boolean z = false;
        int i10 = -1;
        while (!z) {
            byte[] bArr = this.f3222g;
            i10 = read(bArr, 0, 1) == -1 ? -1 : bArr[0] & 255;
            if (i10 != -1 && i10 != 10) {
                if (i10 != 13) {
                    stringBuffer.append((char) i10);
                } else {
                    long j10 = this.f3217b;
                    byte[] bArr2 = this.f3222g;
                    if ((read(bArr2, 0, 1) == -1 ? -1 : bArr2[0] & 255) != 10) {
                        this.f3217b = j10;
                    }
                }
            }
            z = true;
        }
        if (i10 == -1 && stringBuffer.length() == 0) {
            return null;
        }
        return stringBuffer.toString();
    }

    @Override // java.io.DataInput
    public final long readLong() throws r0 {
        if (read(this.f3222g, 0, 8) >= 0) {
            return ((a9.o.C(0, r0) & 4294967295L) << 32) | (4294967295L & a9.o.C(4, r0));
        }
        throw new r0("EOF");
    }

    @Override // java.io.DataInput
    public final short readShort() throws r0 {
        byte[] bArr = this.f3222g;
        if (read(bArr, 0, 2) >= 0) {
            return a9.o.A(0, bArr);
        }
        throw new r0("EOF");
    }

    @Override // java.io.DataInput
    public final String readUTF() throws r0 {
        int unsignedShort = readUnsignedShort();
        byte[] bArr = new byte[unsignedShort];
        read(bArr, 0, unsignedShort);
        try {
            return a9.o.E(unsignedShort, bArr);
        } catch (IOException e7) {
            throw new r0("", e7);
        }
    }

    @Override // java.io.DataInput
    public final int readUnsignedByte() throws r0 {
        byte[] bArr = this.f3222g;
        if (read(bArr, 0, 1) >= 0) {
            return bArr[0] & 255;
        }
        throw new r0("EOF");
    }

    @Override // java.io.DataInput
    public final int readUnsignedShort() throws r0 {
        byte[] bArr = this.f3222g;
        if (read(bArr, 0, 2) >= 0) {
            return a9.o.A(0, bArr) & HPKE.aead_EXPORT_ONLY;
        }
        throw new r0("EOF");
    }

    @Override // java.io.DataInput
    public final int skipBytes(int i10) {
        if (i10 <= 0) {
            return 0;
        }
        this.f3217b += i10;
        return i10;
    }

    @Override // java.io.DataOutput
    public final void write(int i10) throws r0 {
        byte[] bArr = this.f3222g;
        bArr[0] = (byte) i10;
        write(bArr, 0, 1);
    }

    @Override // java.io.DataOutput
    public final void writeBoolean(boolean z) throws r0 {
        byte b10 = z ? (byte) 1 : (byte) 0;
        byte[] bArr = this.f3222g;
        bArr[0] = b10;
        write(bArr, 0, 1);
    }

    @Override // java.io.DataOutput
    public final void writeByte(int i10) throws r0 {
        byte[] bArr = this.f3222g;
        bArr[0] = (byte) i10;
        write(bArr, 0, 1);
    }

    @Override // java.io.DataOutput
    public final void writeBytes(String str) throws r0 {
        byte[] bytes = str.getBytes();
        write(bytes, 0, bytes.length);
    }

    @Override // java.io.DataOutput
    public final void writeChar(int i10) throws r0 {
        short s8 = (short) i10;
        byte[] bArr = this.f3222g;
        bArr[0] = (byte) ((s8 >> 8) & 255);
        bArr[1] = (byte) (s8 & 255);
        write(bArr, 0, 2);
    }

    @Override // java.io.DataOutput
    public final void writeChars(String str) throws r0 {
        int length = str.length();
        int i10 = length * 2;
        byte[] bArr = new byte[i10];
        char[] cArr = new char[length];
        str.getChars(0, length, cArr, 0);
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            int i13 = i11 + 1;
            char c7 = cArr[i12];
            bArr[i11] = (byte) (c7 >>> '\b');
            i11 += 2;
            bArr[i13] = (byte) c7;
        }
        write(bArr, 0, i10);
    }

    @Override // java.io.DataOutput
    public final void writeDouble(double d10) throws r0 {
        long jDoubleToLongBits = Double.doubleToLongBits(d10);
        byte[] bArr = this.f3222g;
        a9.o.G((int) (jDoubleToLongBits & 4294967295L), 4, bArr);
        a9.o.G((int) ((jDoubleToLongBits >> 32) & 4294967295L), 0, bArr);
        write(bArr, 0, 8);
    }

    @Override // java.io.DataOutput
    public final void writeFloat(float f10) throws r0 {
        int iFloatToIntBits = Float.floatToIntBits(f10);
        byte[] bArr = this.f3222g;
        a9.o.G(iFloatToIntBits, 0, bArr);
        write(bArr, 0, 4);
    }

    @Override // java.io.DataOutput
    public final void writeInt(int i10) throws r0 {
        byte[] bArr = this.f3222g;
        a9.o.G(i10, 0, bArr);
        write(bArr, 0, 4);
    }

    @Override // java.io.DataOutput
    public final void writeLong(long j10) throws r0 {
        byte[] bArr = this.f3222g;
        a9.o.G((int) (j10 & 4294967295L), 4, bArr);
        a9.o.G((int) ((j10 >> 32) & 4294967295L), 0, bArr);
        write(bArr, 0, 8);
    }

    @Override // java.io.DataOutput
    public final void writeShort(int i10) throws r0 {
        short s8 = (short) i10;
        byte[] bArr = this.f3222g;
        bArr[0] = (byte) ((s8 >> 8) & 255);
        bArr[1] = (byte) (s8 & 255);
        write(bArr, 0, 2);
    }

    @Override // java.io.DataOutput
    public final void writeUTF(String str) throws r0 {
        int i10;
        int length = str.length();
        int i11 = 0;
        int i12 = 0;
        while (true) {
            i10 = 3;
            if (i11 >= length) {
                break;
            }
            char cCharAt = str.charAt(i11);
            if (cCharAt <= 127) {
                i10 = 1;
            } else if (cCharAt <= 2047) {
                i10 = 2;
            }
            i12 += i10;
            i11++;
        }
        byte[] bArr = new byte[i12];
        writeShort(i12);
        try {
            int length2 = str.length();
            int i13 = 0;
            int i14 = 0;
            while (i13 < i12 && i14 < length2) {
                char cCharAt2 = str.charAt(i14);
                if (cCharAt2 >= 1 && cCharAt2 <= 127) {
                    bArr[i13] = (byte) cCharAt2;
                    i13++;
                } else if (cCharAt2 > 2047) {
                    if (i12 - i13 < i10) {
                        break;
                    }
                    bArr[i13] = (byte) (((cCharAt2 >> '\f') & 15) | 224);
                    int i15 = i13 + 2;
                    bArr[i13 + 1] = (byte) (((cCharAt2 >> 6) & 63) | 128);
                    i13 += 3;
                    bArr[i15] = (byte) ((cCharAt2 & '?') | 128);
                } else {
                    if (i12 - i13 < 2) {
                        break;
                    }
                    int i16 = i13 + 1;
                    bArr[i13] = (byte) (((cCharAt2 >> 6) & 31) | 192);
                    i13 += 2;
                    bArr[i16] = (byte) ((cCharAt2 & '?') | 128);
                }
                i14++;
                i10 = 3;
            }
            write(bArr, 0, i12);
        } catch (IOException e7) {
            throw new r0("", e7);
        }
    }

    public final int read(byte[] bArr, int i10, int i11) throws r0 {
        int i12;
        int i13;
        long j10;
        if (i11 <= 0) {
            return 0;
        }
        long j11 = this.f3217b;
        t0 t0Var = this.f3216a;
        if (!t0Var.v()) {
            t0Var.z(this.f3218c, 0, 128, this.f3221f);
        }
        e0 e0Var = new e0(bArr, i10);
        do {
            i12 = this.f3219d;
            if (i11 <= i12) {
                i12 = i11;
            }
            t0Var.F(new d0(t0Var.f3189q, i12, this.f3217b), e0Var);
            i13 = e0Var.I;
            if (i13 > 0) {
                j10 = this.f3217b + i13;
                this.f3217b = j10;
                i11 -= i13;
                e0Var.G += i13;
                if (i11 <= 0) {
                    break;
                }
            } else {
                long j12 = this.f3217b - j11;
                if (j12 <= 0) {
                    j12 = -1;
                }
                return (int) j12;
            }
        } while (i13 == i12);
        return (int) (j10 - j11);
    }

    @Override // java.io.DataInput
    public final void readFully(byte[] bArr, int i10, int i11) throws r0 {
        int i12 = 0;
        do {
            int i13 = read(bArr, i10 + i12, i11 - i12);
            if (i13 < 0) {
                throw new r0("EOF");
            }
            i12 += i13;
            this.f3217b += i13;
        } while (i12 < i11);
    }

    @Override // java.io.DataOutput
    public final void write(byte[] bArr) throws r0 {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.DataOutput
    public final void write(byte[] bArr, int i10, int i11) throws r0 {
        if (i11 <= 0) {
            return;
        }
        t0 t0Var = this.f3216a;
        if (!t0Var.v()) {
            t0Var.z(this.f3218c, 0, 128, this.f3221f);
        }
        int i12 = i10;
        int i13 = i11;
        do {
            int i14 = this.f3220e;
            int i15 = i13 > i14 ? i14 : i13;
            n0 n0Var = new n0(t0Var.f3189q, this.f3217b, i13 - i15, bArr, i12, i15);
            o0 o0Var = this.f3223h;
            t0Var.F(n0Var, o0Var);
            long j10 = this.f3217b;
            long j11 = o0Var.F;
            this.f3217b = j10 + j11;
            i13 = (int) (i13 - j11);
            i12 = (int) (i12 + j11);
        } while (i13 > 0);
    }
}
