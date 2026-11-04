package u1;

import j$.nio.charset.StandardCharsets;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
import u7.j0;

/* loaded from: classes.dex */
public final class q {

    /* renamed from: d, reason: collision with root package name */
    public static final char[] f15262d = {'\r', '\n'};

    /* renamed from: e, reason: collision with root package name */
    public static final char[] f15263e = {'\n'};

    /* renamed from: f, reason: collision with root package name */
    public static final j0 f15264f = j0.j(5, StandardCharsets.US_ASCII, StandardCharsets.UTF_8, StandardCharsets.UTF_16, StandardCharsets.UTF_16BE, StandardCharsets.UTF_16LE);

    /* renamed from: g, reason: collision with root package name */
    public static final AtomicBoolean f15265g = new AtomicBoolean();

    /* renamed from: a, reason: collision with root package name */
    public byte[] f15266a;

    /* renamed from: b, reason: collision with root package name */
    public int f15267b;

    /* renamed from: c, reason: collision with root package name */
    public int f15268c;

    public q() {
        this.f15266a = f0.f15207b;
    }

    public static int b(int i10, int i11, int i12, int i13) {
        byte b10 = (byte) i12;
        return d.b.t((byte) 0, nh.b.j(((i10 & 7) << 2) | ((i11 & 48) >> 4)), nh.b.j(((((byte) i11) & 15) << 4) | ((b10 & 60) >> 2)), nh.b.j(((b10 & 3) << 6) | (((byte) i13) & 63)));
    }

    public static int e(Charset charset) {
        a9.o.l(f15264f.contains(charset), "Unsupported charset: %s", charset);
        return (charset.equals(StandardCharsets.UTF_8) || charset.equals(StandardCharsets.US_ASCII)) ? 1 : 2;
    }

    public static boolean f(byte b10) {
        return (b10 & 192) == 128;
    }

    public final int A() {
        return (B() << 21) | (B() << 14) | (B() << 7) | B();
    }

    public final int B() {
        g(1);
        byte[] bArr = this.f15266a;
        int i10 = this.f15267b;
        this.f15267b = i10 + 1;
        return bArr[i10] & 255;
    }

    public final int C() {
        g(4);
        byte[] bArr = this.f15266a;
        int i10 = this.f15267b;
        int i11 = i10 + 1;
        this.f15267b = i11;
        int i12 = (bArr[i10] & 255) << 8;
        this.f15267b = i10 + 2;
        int i13 = (bArr[i11] & 255) | i12;
        this.f15267b = i10 + 4;
        return i13;
    }

    public final long D() {
        g(4);
        byte[] bArr = this.f15266a;
        int i10 = this.f15267b;
        this.f15267b = i10 + 1;
        this.f15267b = i10 + 2;
        long j10 = ((bArr[i10] & 255) << 24) | ((bArr[r3] & 255) << 16);
        this.f15267b = i10 + 3;
        long j11 = j10 | ((bArr[r8] & 255) << 8);
        this.f15267b = i10 + 4;
        return (bArr[r3] & 255) | j11;
    }

    public final int E() {
        g(3);
        byte[] bArr = this.f15266a;
        int i10 = this.f15267b;
        int i11 = i10 + 1;
        this.f15267b = i11;
        int i12 = (bArr[i10] & 255) << 16;
        int i13 = i10 + 2;
        this.f15267b = i13;
        int i14 = ((bArr[i11] & 255) << 8) | i12;
        this.f15267b = i10 + 3;
        return (bArr[i13] & 255) | i14;
    }

    public final int F() {
        int iO = o();
        if (iO >= 0) {
            return iO;
        }
        throw new IllegalStateException(da.b.a(iO, "Top bit not zero: "));
    }

    public final int G() {
        long j10 = 0;
        for (int i10 = 0; i10 < 9; i10++) {
            if (this.f15267b == this.f15268c) {
                throw new IllegalStateException("Attempting to read a byte over the limit.");
            }
            long jB = B();
            j10 |= (127 & jB) << (i10 * 7);
            if ((jB & 128) == 0) {
                break;
            }
        }
        return d.b.h(j10);
    }

    public final long H() {
        long jV = v();
        if (jV >= 0) {
            return jV;
        }
        throw new IllegalStateException(ta.q.j(jV, "Top bit not zero: "));
    }

    public final int I() {
        g(2);
        byte[] bArr = this.f15266a;
        int i10 = this.f15267b;
        int i11 = i10 + 1;
        this.f15267b = i11;
        int i12 = (bArr[i10] & 255) << 8;
        this.f15267b = i10 + 2;
        return (bArr[i11] & 255) | i12;
    }

    public final long J() {
        int i10;
        g(1);
        long j10 = this.f15266a[this.f15267b];
        int i11 = 7;
        while (true) {
            if (i11 < 0) {
                break;
            }
            if (((1 << i11) & j10) != 0) {
                i11--;
            } else if (i11 < 6) {
                j10 &= r6 - 1;
                i10 = 7 - i11;
            } else if (i11 == 7) {
                i10 = 1;
            }
        }
        i10 = 0;
        if (i10 == 0) {
            throw new NumberFormatException(ta.q.j(j10, "Invalid UTF-8 sequence first byte: "));
        }
        g(i10);
        for (int i12 = 1; i12 < i10; i12++) {
            if ((this.f15266a[this.f15267b + i12] & 192) != 128) {
                throw new NumberFormatException(ta.q.j(j10, "Invalid UTF-8 sequence continuation byte: "));
            }
            j10 = (j10 << 6) | (r4 & 63);
        }
        this.f15267b += i10;
        return j10;
    }

    public final Charset K() {
        if (a() >= 3) {
            byte[] bArr = this.f15266a;
            int i10 = this.f15267b;
            if (bArr[i10] == -17 && bArr[i10 + 1] == -69 && bArr[i10 + 2] == -65) {
                this.f15267b = i10 + 3;
                return StandardCharsets.UTF_8;
            }
        }
        if (a() < 2) {
            return null;
        }
        byte[] bArr2 = this.f15266a;
        int i11 = this.f15267b;
        byte b10 = bArr2[i11];
        if (b10 == -2 && bArr2[i11 + 1] == -1) {
            this.f15267b = i11 + 2;
            return StandardCharsets.UTF_16BE;
        }
        if (b10 != -1 || bArr2[i11 + 1] != -2) {
            return null;
        }
        this.f15267b = i11 + 2;
        return StandardCharsets.UTF_16LE;
    }

    public final void L(int i10) {
        byte[] bArr = this.f15266a;
        if (bArr.length < i10) {
            bArr = new byte[i10];
        }
        M(i10, bArr);
    }

    public final void M(int i10, byte[] bArr) {
        this.f15266a = bArr;
        this.f15268c = i10;
        this.f15267b = 0;
    }

    public final void N(int i10) {
        a9.o.k(i10 >= 0 && i10 <= this.f15266a.length);
        this.f15268c = i10;
    }

    public final void O(int i10) {
        a9.o.k(i10 >= 0 && i10 <= this.f15268c);
        this.f15267b = i10;
    }

    public final void P(int i10) {
        O(this.f15267b + i10);
    }

    public final int a() {
        return Math.max(this.f15268c - this.f15267b, 0);
    }

    public final void c(int i10) {
        byte[] bArr = this.f15266a;
        if (i10 > bArr.length) {
            this.f15266a = Arrays.copyOf(bArr, i10);
        }
    }

    public final int d() {
        return this.f15267b;
    }

    public final void g(int i10) {
        if (!f15265g.get() || a() >= i10) {
            return;
        }
        StringBuilder sbN = g.b.n("bytesNeeded= ", i10, ", bytesLeft=");
        sbN.append(a());
        throw new IndexOutOfBoundsException(sbN.toString());
    }

    public final char h(int i10, ByteOrder byteOrder) {
        byte b10;
        byte b11;
        g(2);
        if (byteOrder == ByteOrder.BIG_ENDIAN) {
            byte[] bArr = this.f15266a;
            int i11 = this.f15267b + i10;
            b10 = bArr[i11];
            b11 = bArr[i11 + 1];
        } else {
            byte[] bArr2 = this.f15266a;
            int i12 = this.f15267b + i10;
            b10 = bArr2[i12 + 1];
            b11 = bArr2[i12];
        }
        return (char) ((b10 << 8) | (b11 & 255));
    }

    public final int i(Charset charset) {
        int codePoint;
        int iB;
        a9.o.l(f15264f.contains(charset), "Unsupported charset: %s", charset);
        if (a() < e(charset)) {
            throw new IndexOutOfBoundsException("position=" + this.f15267b + ", limit=" + this.f15268c);
        }
        int i10 = 1;
        if (charset.equals(StandardCharsets.US_ASCII)) {
            byte b10 = this.f15266a[this.f15267b];
            if ((b10 & 128) != 0) {
                return 0;
            }
            codePoint = b10 & 255;
        } else if (charset.equals(StandardCharsets.UTF_8)) {
            byte b11 = this.f15266a[this.f15267b];
            int i11 = (b11 & 128) == 0 ? 1 : ((b11 & 224) == 192 && a() >= 2 && f(this.f15266a[this.f15267b + 1])) ? 2 : ((this.f15266a[this.f15267b] & 240) == 224 && a() >= 3 && f(this.f15266a[this.f15267b + 1]) && f(this.f15266a[this.f15267b + 2])) ? 3 : ((this.f15266a[this.f15267b] & 248) == 240 && a() >= 4 && f(this.f15266a[this.f15267b + 1]) && f(this.f15266a[this.f15267b + 2]) && f(this.f15266a[this.f15267b + 3])) ? 4 : 0;
            if (i11 == 1) {
                iB = this.f15266a[this.f15267b] & 255;
            } else if (i11 == 2) {
                byte[] bArr = this.f15266a;
                int i12 = this.f15267b;
                iB = b(0, 0, bArr[i12], bArr[i12 + 1]);
            } else if (i11 == 3) {
                byte[] bArr2 = this.f15266a;
                int i13 = this.f15267b;
                iB = b(0, bArr2[i13] & 15, bArr2[i13 + 1], bArr2[i13 + 2]);
            } else {
                if (i11 != 4) {
                    return 0;
                }
                byte[] bArr3 = this.f15266a;
                int i14 = this.f15267b;
                iB = b(bArr3[i14], bArr3[i14 + 1], bArr3[i14 + 2], bArr3[i14 + 3]);
            }
            i10 = i11;
            codePoint = iB;
        } else {
            ByteOrder byteOrder = charset.equals(StandardCharsets.UTF_16LE) ? ByteOrder.LITTLE_ENDIAN : ByteOrder.BIG_ENDIAN;
            char cH = h(0, byteOrder);
            if (!Character.isHighSurrogate(cH) || a() < 4) {
                codePoint = cH;
                i10 = 2;
            } else {
                codePoint = Character.toCodePoint(cH, h(2, byteOrder));
                i10 = 4;
            }
        }
        return (codePoint << 8) | i10;
    }

    public final int j() {
        if (a() >= 4) {
            int iO = o();
            this.f15267b -= 4;
            return iO;
        }
        throw new IndexOutOfBoundsException("position=" + this.f15267b + ", limit=" + this.f15268c);
    }

    public final int k() {
        g(1);
        return this.f15266a[this.f15267b] & 255;
    }

    public final void l(int i10, int i11, byte[] bArr) {
        g(i11);
        System.arraycopy(this.f15266a, this.f15267b, bArr, i10, i11);
        this.f15267b += i11;
    }

    public final char m(Charset charset, char[] cArr) {
        int i10;
        if (a() < e(charset) || (i10 = i(charset)) == 0) {
            return (char) 0;
        }
        long j10 = i10 >>> 8;
        a9.o.j("out of range: %s", (j10 >> 32) == 0, j10);
        int i11 = (int) j10;
        if (Character.isSupplementaryCodePoint(i11)) {
            return (char) 0;
        }
        long j11 = i11;
        char c7 = (char) j11;
        a9.o.j("Out of range: %s", ((long) c7) == j11, j11);
        for (char c10 : cArr) {
            if (c10 == c7) {
                this.f15267b = d.b.h(i10 & 255) + this.f15267b;
                return c7;
            }
        }
        return (char) 0;
    }

    public final float n() {
        return Float.intBitsToFloat(o());
    }

    public final int o() {
        g(4);
        byte[] bArr = this.f15266a;
        int i10 = this.f15267b;
        int i11 = i10 + 1;
        this.f15267b = i11;
        int i12 = (bArr[i10] & 255) << 24;
        int i13 = i10 + 2;
        this.f15267b = i13;
        int i14 = ((bArr[i11] & 255) << 16) | i12;
        int i15 = i10 + 3;
        this.f15267b = i15;
        int i16 = i14 | ((bArr[i13] & 255) << 8);
        this.f15267b = i10 + 4;
        return (bArr[i15] & 255) | i16;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00a8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String p(Charset charset) {
        int i10;
        a9.o.l(f15264f.contains(charset), "Unsupported charset: %s", charset);
        if (a() == 0) {
            return null;
        }
        Charset charset2 = StandardCharsets.US_ASCII;
        if (!charset.equals(charset2)) {
            K();
        }
        if (charset.equals(StandardCharsets.UTF_8) || charset.equals(charset2)) {
            i10 = 1;
        } else {
            if (!charset.equals(StandardCharsets.UTF_16) && !charset.equals(StandardCharsets.UTF_16LE) && !charset.equals(StandardCharsets.UTF_16BE)) {
                throw new IllegalArgumentException("Unsupported charset: " + charset);
            }
            i10 = 2;
        }
        int i11 = this.f15267b;
        while (true) {
            int i12 = this.f15268c;
            if (i11 >= i12 - (i10 - 1)) {
                i11 = i12;
                break;
            }
            if (charset.equals(StandardCharsets.UTF_8) || charset.equals(StandardCharsets.US_ASCII)) {
                byte b10 = this.f15266a[i11];
                String str = f0.f15206a;
                if (b10 == 10 || b10 == 13) {
                    break;
                }
                if (charset.equals(StandardCharsets.UTF_16) || charset.equals(StandardCharsets.UTF_16BE)) {
                    byte[] bArr = this.f15266a;
                    if (bArr[i11] == 0) {
                        byte b11 = bArr[i11 + 1];
                        String str2 = f0.f15206a;
                        if (b11 == 10 || b11 == 13) {
                            break;
                        }
                        if (charset.equals(StandardCharsets.UTF_16LE)) {
                            byte[] bArr2 = this.f15266a;
                            if (bArr2[i11 + 1] == 0) {
                                byte b12 = bArr2[i11];
                                String str3 = f0.f15206a;
                                if (b12 == 10 || b12 == 13) {
                                    break;
                                }
                            } else {
                                continue;
                            }
                        }
                        i11 += i10;
                    }
                }
            }
        }
        String strZ = z(charset, i11 - this.f15267b);
        if (this.f15267b != this.f15268c && m(charset, f15262d) == '\r') {
            m(charset, f15263e);
        }
        return strZ;
    }

    public final int q() {
        g(4);
        byte[] bArr = this.f15266a;
        int i10 = this.f15267b;
        int i11 = i10 + 1;
        this.f15267b = i11;
        int i12 = bArr[i10] & 255;
        int i13 = i10 + 2;
        this.f15267b = i13;
        int i14 = ((bArr[i11] & 255) << 8) | i12;
        int i15 = i10 + 3;
        this.f15267b = i15;
        int i16 = i14 | ((bArr[i13] & 255) << 16);
        this.f15267b = i10 + 4;
        return ((bArr[i15] & 255) << 24) | i16;
    }

    public final long r() {
        g(8);
        byte[] bArr = this.f15266a;
        int i10 = this.f15267b;
        this.f15267b = i10 + 1;
        this.f15267b = i10 + 2;
        long j10 = (bArr[i10] & 255) | ((bArr[r3] & 255) << 8);
        this.f15267b = i10 + 3;
        long j11 = j10 | ((bArr[r8] & 255) << 16);
        this.f15267b = i10 + 4;
        long j12 = j11 | ((bArr[r3] & 255) << 24);
        this.f15267b = i10 + 5;
        long j13 = j12 | ((bArr[r8] & 255) << 32);
        this.f15267b = i10 + 6;
        long j14 = j13 | ((bArr[r3] & 255) << 40);
        this.f15267b = i10 + 7;
        long j15 = j14 | ((bArr[r8] & 255) << 48);
        this.f15267b = i10 + 8;
        return ((bArr[r3] & 255) << 56) | j15;
    }

    public final long s() {
        g(4);
        byte[] bArr = this.f15266a;
        int i10 = this.f15267b;
        this.f15267b = i10 + 1;
        this.f15267b = i10 + 2;
        long j10 = (bArr[i10] & 255) | ((bArr[r3] & 255) << 8);
        this.f15267b = i10 + 3;
        long j11 = j10 | ((bArr[r8] & 255) << 16);
        this.f15267b = i10 + 4;
        return ((bArr[r3] & 255) << 24) | j11;
    }

    public final int t() {
        int iQ = q();
        if (iQ >= 0) {
            return iQ;
        }
        throw new IllegalStateException(da.b.a(iQ, "Top bit not zero: "));
    }

    public final int u() {
        g(2);
        byte[] bArr = this.f15266a;
        int i10 = this.f15267b;
        int i11 = i10 + 1;
        this.f15267b = i11;
        int i12 = bArr[i10] & 255;
        this.f15267b = i10 + 2;
        return ((bArr[i11] & 255) << 8) | i12;
    }

    public final long v() {
        g(8);
        byte[] bArr = this.f15266a;
        int i10 = this.f15267b;
        this.f15267b = i10 + 1;
        this.f15267b = i10 + 2;
        long j10 = ((bArr[i10] & 255) << 56) | ((bArr[r3] & 255) << 48);
        this.f15267b = i10 + 3;
        long j11 = j10 | ((bArr[r8] & 255) << 40);
        this.f15267b = i10 + 4;
        long j12 = j11 | ((bArr[r3] & 255) << 32);
        this.f15267b = i10 + 5;
        long j13 = j12 | ((bArr[r8] & 255) << 24);
        this.f15267b = i10 + 6;
        long j14 = j13 | ((bArr[r3] & 255) << 16);
        this.f15267b = i10 + 7;
        long j15 = j14 | ((bArr[r8] & 255) << 8);
        this.f15267b = i10 + 8;
        return (bArr[r3] & 255) | j15;
    }

    public final String w() {
        if (a() == 0) {
            return null;
        }
        int i10 = this.f15267b;
        while (i10 < this.f15268c && this.f15266a[i10] != 0) {
            i10++;
        }
        byte[] bArr = this.f15266a;
        int i11 = this.f15267b;
        String str = f0.f15206a;
        String str2 = new String(bArr, i11, i10 - i11, StandardCharsets.UTF_8);
        this.f15267b = i10;
        if (i10 < this.f15268c) {
            this.f15267b = i10 + 1;
        }
        return str2;
    }

    public final String x(int i10) {
        g(i10);
        if (i10 == 0) {
            return "";
        }
        int i11 = this.f15267b;
        int i12 = (i11 + i10) - 1;
        int i13 = (i12 >= this.f15268c || this.f15266a[i12] != 0) ? i10 : i10 - 1;
        byte[] bArr = this.f15266a;
        String str = f0.f15206a;
        String str2 = new String(bArr, i11, i13, StandardCharsets.UTF_8);
        this.f15267b += i10;
        return str2;
    }

    public final short y() {
        g(2);
        byte[] bArr = this.f15266a;
        int i10 = this.f15267b;
        int i11 = i10 + 1;
        this.f15267b = i11;
        int i12 = (bArr[i10] & 255) << 8;
        this.f15267b = i10 + 2;
        return (short) ((bArr[i11] & 255) | i12);
    }

    public final String z(Charset charset, int i10) {
        g(i10);
        String str = new String(this.f15266a, this.f15267b, i10, charset);
        this.f15267b += i10;
        return str;
    }

    public q(int i10) {
        this.f15266a = new byte[i10];
        this.f15268c = i10;
    }

    public q(byte[] bArr) {
        this.f15266a = bArr;
        this.f15268c = bArr.length;
    }

    public q(byte[] bArr, int i10) {
        this.f15266a = bArr;
        this.f15268c = i10;
    }
}
