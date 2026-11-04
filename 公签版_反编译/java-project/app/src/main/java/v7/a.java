package v7;

import java.math.RoundingMode;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final String f16636a;

    /* renamed from: b, reason: collision with root package name */
    public final char[] f16637b;

    /* renamed from: c, reason: collision with root package name */
    public final int f16638c;

    /* renamed from: d, reason: collision with root package name */
    public final int f16639d;

    /* renamed from: e, reason: collision with root package name */
    public final int f16640e;

    /* renamed from: f, reason: collision with root package name */
    public final int f16641f;

    /* renamed from: g, reason: collision with root package name */
    public final byte[] f16642g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean[] f16643h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f16644i;

    public a(String str, char[] cArr, byte[] bArr, boolean z) {
        str.getClass();
        this.f16636a = str;
        cArr.getClass();
        this.f16637b = cArr;
        try {
            int iL = com.bumptech.glide.d.L(cArr.length, RoundingMode.UNNECESSARY);
            this.f16639d = iL;
            int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(iL);
            int i10 = 1 << (3 - iNumberOfTrailingZeros);
            this.f16640e = i10;
            this.f16641f = iL >> iNumberOfTrailingZeros;
            this.f16638c = cArr.length - 1;
            this.f16642g = bArr;
            boolean[] zArr = new boolean[i10];
            for (int i11 = 0; i11 < this.f16641f; i11++) {
                zArr[com.bumptech.glide.d.m(i11 * 8, this.f16639d, RoundingMode.CEILING)] = true;
            }
            this.f16643h = zArr;
            this.f16644i = z;
        } catch (ArithmeticException e7) {
            throw new IllegalArgumentException("Illegal alphabet length " + cArr.length, e7);
        }
    }

    public final int a(char c7) throws d {
        if (c7 > 127) {
            throw new d(g.b.e(c7, new StringBuilder("Unrecognized character: 0x")));
        }
        byte b10 = this.f16642g[c7];
        if (b10 != -1) {
            return b10;
        }
        if (c7 <= ' ' || c7 == 127) {
            throw new d(g.b.e(c7, new StringBuilder("Unrecognized character: 0x")));
        }
        throw new d("Unrecognized character: " + c7);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f16644i == aVar.f16644i && Arrays.equals(this.f16637b, aVar.f16637b);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f16637b) + (this.f16644i ? 1231 : 1237);
    }

    public final String toString() {
        return this.f16636a;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public a(String str, char[] cArr) {
        byte[] bArr = new byte[128];
        Arrays.fill(bArr, (byte) -1);
        for (int i10 = 0; i10 < cArr.length; i10++) {
            char c7 = cArr[i10];
            if (c7 < 128) {
                if (bArr[c7] == -1) {
                    bArr[c7] = (byte) i10;
                } else {
                    throw new IllegalArgumentException(android.support.v4.media.session.b.y("Duplicate character: %s", Character.valueOf(c7)));
                }
            } else {
                throw new IllegalArgumentException(android.support.v4.media.session.b.y("Non-ASCII character: %s", Character.valueOf(c7)));
            }
        }
        this(str, cArr, bArr, false);
    }
}
