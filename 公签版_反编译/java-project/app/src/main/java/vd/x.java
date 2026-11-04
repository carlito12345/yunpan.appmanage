package vd;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import org.bouncycastle.crypto.hpke.HPKE;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public final class x implements DataOutput, DataInput, AutoCloseable {
    public static final Logger l = LoggerFactory.getLogger((Class<?>) x.class);

    /* renamed from: a, reason: collision with root package name */
    public final s f16947a;

    /* renamed from: b, reason: collision with root package name */
    public long f16948b;

    /* renamed from: c, reason: collision with root package name */
    public final int f16949c;

    /* renamed from: d, reason: collision with root package name */
    public final int f16950d;

    /* renamed from: e, reason: collision with root package name */
    public final int f16951e;

    /* renamed from: f, reason: collision with root package name */
    public final int f16952f;

    /* renamed from: g, reason: collision with root package name */
    public final int f16953g = 0;

    /* renamed from: h, reason: collision with root package name */
    public final byte[] f16954h = new byte[8];

    /* renamed from: i, reason: collision with root package name */
    public final fd.z f16955i = null;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f16956j;

    /* renamed from: k, reason: collision with root package name */
    public t f16957k;

    public x(s sVar) throws IllegalAccessException, r, IllegalArgumentException, InvocationTargetException {
        this.f16950d = 0;
        this.f16947a = sVar;
        try {
            g0 g0VarA = sVar.A();
            try {
                this.f16949c = 17;
                this.f16950d = 1;
                r().M();
                this.f16951e = g0VarA.K() - 70;
                this.f16952f = g0VarA.L() - 70;
                if (g0VarA.N(16384)) {
                    this.f16956j = true;
                    this.f16951e = Math.min(((wc.a) g0VarA.J()).I - 70, g0VarA.A() ? 65465 : 16777145);
                }
                if (g0VarA.N(32768) && !g0VarA.A()) {
                    this.f16952f = Math.min(((wc.a) g0VarA.J()).H - 70, 65465);
                }
                this.f16948b = 0L;
                g0VarA.close();
            } catch (Throwable th2) {
                if (g0VarA != null) {
                    try {
                        g0VarA.close();
                    } catch (Throwable th3) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                        } catch (Exception unused) {
                        }
                    }
                }
                throw th2;
            }
        } catch (vc.c e7) {
            throw r.c(e7);
        }
    }

    @Override // java.lang.AutoCloseable
    public final synchronized void close() {
        try {
            t tVar = this.f16957k;
            if (tVar != null) {
                try {
                    tVar.M();
                    this.f16957k = null;
                } catch (vc.c e7) {
                    throw r.c(e7);
                }
            }
            s sVar = this.f16947a;
            sVar.f16900b = 0L;
            sVar.f16902d = 0L;
        } catch (Throwable th2) {
            s sVar2 = this.f16947a;
            sVar2.f16900b = 0L;
            sVar2.f16902d = 0L;
            throw th2;
        }
    }

    public final synchronized t r() {
        t tVar = this.f16957k;
        if (tVar != null && tVar.L()) {
            t tVar2 = this.f16957k;
            tVar2.r();
            return tVar2;
        }
        s sVar = this.f16947a;
        t tVarM = sVar.M(sVar.f16905g.f(), this.f16949c, this.f16950d, 7, this.f16953g);
        tVarM.r();
        this.f16957k = tVarM;
        return tVarM;
    }

    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.DataInput
    public final boolean readBoolean() throws q {
        if (read(this.f16954h, 0, 1) >= 0) {
            return this.f16954h[0] != 0;
        }
        throw new q();
    }

    @Override // java.io.DataInput
    public final byte readByte() throws q {
        if (read(this.f16954h, 0, 1) >= 0) {
            return this.f16954h[0];
        }
        throw new q();
    }

    @Override // java.io.DataInput
    public final char readChar() throws q {
        if (read(this.f16954h, 0, 2) >= 0) {
            return (char) ge.a.a(0, this.f16954h);
        }
        throw new q();
    }

    @Override // java.io.DataInput
    public final double readDouble() throws q {
        if (read(this.f16954h, 0, 8) < 0) {
            throw new q();
        }
        byte[] bArr = this.f16954h;
        return Double.longBitsToDouble(((ge.a.c(0, bArr) & 4294967295L) << 32) | (4294967295L & ge.a.c(4, bArr)));
    }

    @Override // java.io.DataInput
    public final float readFloat() throws q {
        if (read(this.f16954h, 0, 4) >= 0) {
            return Float.intBitsToFloat(ge.a.c(0, this.f16954h));
        }
        throw new q();
    }

    @Override // java.io.DataInput
    public final void readFully(byte[] bArr) throws Throwable {
        readFully(bArr, 0, bArr.length);
    }

    @Override // java.io.DataInput
    public final int readInt() throws q {
        if (read(this.f16954h, 0, 4) >= 0) {
            return ge.a.c(0, this.f16954h);
        }
        throw new q();
    }

    @Override // java.io.DataInput
    public final String readLine() {
        StringBuffer stringBuffer = new StringBuffer();
        boolean z = false;
        int i10 = -1;
        while (!z) {
            i10 = read(this.f16954h, 0, 1) == -1 ? -1 : this.f16954h[0] & 255;
            if (i10 != -1 && i10 != 10) {
                if (i10 != 13) {
                    stringBuffer.append((char) i10);
                } else {
                    long j10 = this.f16948b;
                    if ((read(this.f16954h, 0, 1) == -1 ? -1 : this.f16954h[0] & 255) != 10) {
                        this.f16948b = j10;
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
    public final long readLong() throws q {
        if (read(this.f16954h, 0, 8) < 0) {
            throw new q();
        }
        byte[] bArr = this.f16954h;
        return ((ge.a.c(0, bArr) & 4294967295L) << 32) | (4294967295L & ge.a.c(4, bArr));
    }

    @Override // java.io.DataInput
    public final short readShort() throws q {
        if (read(this.f16954h, 0, 2) >= 0) {
            return ge.a.a(0, this.f16954h);
        }
        throw new q();
    }

    @Override // java.io.DataInput
    public final String readUTF() throws Throwable {
        int unsignedShort = readUnsignedShort();
        byte[] bArr = new byte[unsignedShort];
        read(bArr, 0, unsignedShort);
        try {
            return ge.a.e(unsignedShort, bArr);
        } catch (IOException e7) {
            throw new r("", e7);
        }
    }

    @Override // java.io.DataInput
    public final int readUnsignedByte() throws q {
        if (read(this.f16954h, 0, 1) >= 0) {
            return this.f16954h[0] & 255;
        }
        throw new q();
    }

    @Override // java.io.DataInput
    public final int readUnsignedShort() throws q {
        if (read(this.f16954h, 0, 2) >= 0) {
            return ge.a.a(0, this.f16954h) & HPKE.aead_EXPORT_ONLY;
        }
        throw new q();
    }

    @Override // java.io.DataInput
    public final int skipBytes(int i10) {
        if (i10 <= 0) {
            return 0;
        }
        this.f16948b += i10;
        return i10;
    }

    @Override // java.io.DataOutput
    public final void write(int i10) throws Throwable {
        byte[] bArr = this.f16954h;
        bArr[0] = (byte) i10;
        write(bArr, 0, 1);
    }

    @Override // java.io.DataOutput
    public final void writeBoolean(boolean z) throws Throwable {
        byte[] bArr = this.f16954h;
        bArr[0] = z ? (byte) 1 : (byte) 0;
        write(bArr, 0, 1);
    }

    @Override // java.io.DataOutput
    public final void writeByte(int i10) throws Throwable {
        byte[] bArr = this.f16954h;
        bArr[0] = (byte) i10;
        write(bArr, 0, 1);
    }

    @Override // java.io.DataOutput
    public final void writeBytes(String str) throws Throwable {
        byte[] bytes = str.getBytes();
        write(bytes, 0, bytes.length);
    }

    @Override // java.io.DataOutput
    public final void writeChar(int i10) throws Throwable {
        short s8 = (short) i10;
        byte[] bArr = this.f16954h;
        bArr[0] = (byte) ((s8 >> 8) & 255);
        bArr[1] = (byte) (s8 & 255);
        write(bArr, 0, 2);
    }

    @Override // java.io.DataOutput
    public final void writeChars(String str) throws Throwable {
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
    public final void writeDouble(double d10) throws Throwable {
        byte[] bArr = this.f16954h;
        long jDoubleToLongBits = Double.doubleToLongBits(d10);
        ge.a.f((int) (jDoubleToLongBits & 4294967295L), 4, bArr);
        ge.a.f((int) ((jDoubleToLongBits >> 32) & 4294967295L), 0, bArr);
        write(this.f16954h, 0, 8);
    }

    @Override // java.io.DataOutput
    public final void writeFloat(float f10) throws Throwable {
        ge.a.f(Float.floatToIntBits(f10), 0, this.f16954h);
        write(this.f16954h, 0, 4);
    }

    @Override // java.io.DataOutput
    public final void writeInt(int i10) throws Throwable {
        ge.a.f(i10, 0, this.f16954h);
        write(this.f16954h, 0, 4);
    }

    @Override // java.io.DataOutput
    public final void writeLong(long j10) throws Throwable {
        byte[] bArr = this.f16954h;
        ge.a.f((int) (j10 & 4294967295L), 4, bArr);
        ge.a.f((int) ((j10 >> 32) & 4294967295L), 0, bArr);
        write(this.f16954h, 0, 8);
    }

    @Override // java.io.DataOutput
    public final void writeShort(int i10) throws Throwable {
        short s8 = (short) i10;
        byte[] bArr = this.f16954h;
        bArr[0] = (byte) ((s8 >> 8) & 255);
        bArr[1] = (byte) (s8 & 255);
        write(bArr, 0, 2);
    }

    @Override // java.io.DataOutput
    public final void writeUTF(String str) throws Throwable {
        char c7;
        int length = str.length();
        int i10 = 0;
        int i11 = 0;
        while (true) {
            c7 = 2047;
            int i12 = 3;
            if (i10 >= length) {
                break;
            }
            char cCharAt = str.charAt(i10);
            if (cCharAt <= 127) {
                i12 = 1;
            } else if (cCharAt <= 2047) {
                i12 = 2;
            }
            i11 += i12;
            i10++;
        }
        byte[] bArr = new byte[i11];
        writeShort(i11);
        int length2 = str.length();
        int i13 = 0;
        int i14 = 0;
        while (i13 < i11 && i14 < length2) {
            char cCharAt2 = str.charAt(i14);
            if (cCharAt2 >= 1 && cCharAt2 <= 127) {
                bArr[i13] = (byte) cCharAt2;
                i13++;
            } else if (cCharAt2 > c7) {
                if (i11 - i13 < 3) {
                    break;
                }
                bArr[i13] = (byte) (((cCharAt2 >> '\f') & 15) | 224);
                int i15 = i13 + 2;
                bArr[i13 + 1] = (byte) (((cCharAt2 >> 6) & 63) | 128);
                i13 += 3;
                bArr[i15] = (byte) ((cCharAt2 & '?') | 128);
            } else {
                if (i11 - i13 < 2) {
                    break;
                }
                int i16 = i13 + 1;
                bArr[i13] = (byte) (((cCharAt2 >> 6) & 31) | 192);
                i13 += 2;
                bArr[i16] = (byte) ((cCharAt2 & '?') | 128);
            }
            i14++;
            c7 = 2047;
        }
        write(bArr, 0, i11);
    }

    public final int read(byte[] bArr, int i10, int i11) throws Throwable {
        String str;
        Throwable th2;
        String str2;
        Throwable th3;
        int i12;
        int i13;
        long j10;
        byte[] bArr2 = bArr;
        String str3 = "addSuppressed";
        if (i11 <= 0) {
            return 0;
        }
        long j11 = this.f16948b;
        try {
            t tVarR = r();
            try {
                g0 g0Var = tVarR.f16913f;
                g0Var.r();
                try {
                    int i14 = i10;
                    fd.p pVar = new fd.p(g0Var.J(), bArr2, i14);
                    int i15 = i11;
                    while (true) {
                        int i16 = this.f16951e;
                        int i17 = i15 > i16 ? i16 : i15;
                        boolean zO = g0Var.O();
                        l lVar = l.NO_RETRY;
                        if (zO) {
                            try {
                                ld.a aVar = new ld.a(g0Var.J(), tVarR.K(), bArr2, i14);
                                aVar.D = this.f16948b;
                                aVar.B = i17;
                                aVar.E = i15 - i14;
                                try {
                                    i12 = ((ld.b) g0Var.Q(aVar, null, lVar)).D;
                                } catch (r e7) {
                                    if (e7.f16897a != -1073741807) {
                                        throw e7;
                                    }
                                    l.debug("Reached end of file", (Throwable) e7);
                                    i12 = -1;
                                }
                                str2 = str3;
                                i13 = i17;
                            } catch (Throwable th4) {
                                th3 = th4;
                                str2 = str3;
                                try {
                                    g0Var.close();
                                    str = str2;
                                    throw th3;
                                } catch (Throwable th5) {
                                    try {
                                        str = str2;
                                        try {
                                            try {
                                                Throwable.class.getDeclaredMethod(str, Throwable.class).invoke(th3, th5);
                                                throw th3;
                                            } catch (Exception unused) {
                                                throw th3;
                                            }
                                        } catch (Throwable th6) {
                                            th = th6;
                                            th2 = th;
                                            try {
                                                tVarR.M();
                                                throw th2;
                                            } catch (Throwable th7) {
                                                try {
                                                    Throwable.class.getDeclaredMethod(str, Throwable.class).invoke(th2, th7);
                                                    throw th2;
                                                } catch (Exception unused2) {
                                                    throw th2;
                                                }
                                            }
                                        }
                                    } catch (Exception unused3) {
                                        str = str2;
                                        throw th3;
                                    } catch (Throwable th8) {
                                        th = th8;
                                        str = str2;
                                        th2 = th;
                                        tVarR.M();
                                        throw th2;
                                    }
                                }
                            }
                        } else {
                            str2 = str3;
                            int i18 = i17;
                            fd.o oVar = new fd.o(g0Var.J(), tVarR.J(), this.f16948b, i18);
                            if (this.f16956j) {
                                i13 = i18;
                                oVar.O = i13 & 65535;
                                oVar.N = 65535 & (i13 >> 16);
                            } else {
                                i13 = i18;
                            }
                            try {
                                g0Var.Q(oVar, pVar, lVar);
                                i12 = pVar.O;
                            } catch (vc.c e10) {
                                throw r.c(e10);
                            }
                        }
                        try {
                            if (i12 <= 0) {
                                long j12 = this.f16948b - j11;
                                if (j12 <= 0) {
                                    j12 = -1;
                                }
                                int i19 = (int) j12;
                                g0Var.close();
                                tVarR.M();
                                return i19;
                            }
                            try {
                                j10 = this.f16948b + i12;
                                this.f16948b = j10;
                                i15 -= i12;
                                i14 += i12;
                                pVar.M += i12;
                                if (i15 <= 0 || i12 != i13) {
                                    break;
                                }
                                bArr2 = bArr;
                                str3 = str2;
                            } catch (Throwable th9) {
                                th = th9;
                                th3 = th;
                                g0Var.close();
                                str = str2;
                                throw th3;
                            }
                        } catch (Throwable th10) {
                            th2 = th10;
                            str = str2;
                            tVarR.M();
                            throw th2;
                        }
                    }
                    int i20 = (int) (j10 - j11);
                    g0Var.close();
                    tVarR.M();
                    return i20;
                } catch (Throwable th11) {
                    th = th11;
                    str2 = str3;
                }
            } catch (Throwable th12) {
                th = th12;
                str = "addSuppressed";
            }
        } catch (vc.c e11) {
            throw r.c(e11);
        }
    }

    @Override // java.io.DataInput
    public final void readFully(byte[] bArr, int i10, int i11) throws Throwable {
        int i12 = 0;
        do {
            int i13 = read(bArr, i10 + i12, i11 - i12);
            if (i13 < 0) {
                throw new q();
            }
            i12 += i13;
        } while (i12 < i11);
    }

    @Override // java.io.DataOutput
    public final void write(byte[] bArr) throws Throwable {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.DataOutput
    public final void write(byte[] bArr, int i10, int i11) throws Throwable {
        String str;
        Throwable th2;
        String str2;
        Throwable th3;
        long j10;
        int i12;
        char c7 = 0;
        int i13 = 1;
        String str3 = "addSuppressed";
        if (i11 <= 0) {
            return;
        }
        try {
            t tVarR = r();
            try {
                g0 g0Var = tVarR.f16913f;
                g0Var.r();
                int i14 = i10;
                int i15 = i11;
                while (true) {
                    try {
                        int i16 = this.f16952f;
                        int i17 = i15 > i16 ? i16 : i15;
                        boolean zO = g0Var.O();
                        l lVar = l.NO_RETRY;
                        if (zO) {
                            try {
                                ld.a aVar = new ld.a(g0Var.J(), tVarR.K());
                                aVar.D = this.f16948b;
                                aVar.E = (i15 - i17) - i14;
                                aVar.z = bArr;
                                aVar.A = i14;
                                aVar.B = i17;
                                l[] lVarArr = new l[i13];
                                lVarArr[c7] = lVar;
                                j10 = ((ld.c) g0Var.Q(aVar, null, lVarArr)).D;
                                str2 = str3;
                                i12 = i15;
                            } catch (Throwable th4) {
                                th3 = th4;
                                str2 = str3;
                                try {
                                    g0Var.close();
                                    str = str2;
                                    throw th3;
                                } catch (Throwable th5) {
                                    try {
                                        str = str2;
                                        try {
                                            try {
                                                Throwable.class.getDeclaredMethod(str, Throwable.class).invoke(th3, th5);
                                                throw th3;
                                            } catch (Exception unused) {
                                                throw th3;
                                            }
                                        } catch (Throwable th6) {
                                            th = th6;
                                            th2 = th;
                                            try {
                                                tVarR.M();
                                                throw th2;
                                            } catch (Throwable th7) {
                                                try {
                                                    Throwable.class.getDeclaredMethod(str, Throwable.class).invoke(th2, th7);
                                                    throw th2;
                                                } catch (Exception unused2) {
                                                    throw th2;
                                                }
                                            }
                                        }
                                    } catch (Exception unused3) {
                                        str = str2;
                                        throw th3;
                                    } catch (Throwable th8) {
                                        th = th8;
                                        str = str2;
                                        th2 = th;
                                        tVarR.M();
                                        throw th2;
                                    }
                                }
                            }
                        } else {
                            str2 = str3;
                            i12 = i15;
                            try {
                                g0Var.Q(new fd.y(g0Var.J(), tVarR.J(), this.f16948b, (i15 - i17) - i14, bArr, i14, i17), this.f16955i, lVar);
                                j10 = this.f16955i.L;
                            } catch (Throwable th9) {
                                th = th9;
                                th3 = th;
                                g0Var.close();
                                str = str2;
                                throw th3;
                            }
                        }
                        this.f16948b += j10;
                        i15 = (int) (i12 - j10);
                        i14 = (int) (i14 + j10);
                        if (i15 <= 0) {
                            try {
                                g0Var.close();
                                tVarR.M();
                                return;
                            } catch (Throwable th10) {
                                th2 = th10;
                                str = str2;
                                tVarR.M();
                                throw th2;
                            }
                        }
                        str3 = str2;
                        c7 = 0;
                        i13 = 1;
                    } catch (Throwable th11) {
                        th = th11;
                        str2 = str3;
                    }
                }
            } catch (Throwable th12) {
                th = th12;
                str = "addSuppressed";
            }
        } catch (vc.c e7) {
            throw r.c(e7);
        }
    }
}
