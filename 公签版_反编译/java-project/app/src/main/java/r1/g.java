package r1;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: h, reason: collision with root package name */
    public static final g f13441h = new g(1, 2, 3, null, -1, -1);

    /* renamed from: a, reason: collision with root package name */
    public final int f13442a;

    /* renamed from: b, reason: collision with root package name */
    public final int f13443b;

    /* renamed from: c, reason: collision with root package name */
    public final int f13444c;

    /* renamed from: d, reason: collision with root package name */
    public final byte[] f13445d;

    /* renamed from: e, reason: collision with root package name */
    public final int f13446e;

    /* renamed from: f, reason: collision with root package name */
    public final int f13447f;

    /* renamed from: g, reason: collision with root package name */
    public int f13448g;

    static {
        org.bouncycastle.jcajce.provider.digest.a.m(0, 1, 2, 3, 4);
        u1.f0.B(5);
    }

    public g(int i10, int i11, int i12, byte[] bArr, int i13, int i14) {
        this.f13442a = i10;
        this.f13443b = i11;
        this.f13444c = i12;
        this.f13445d = bArr;
        this.f13446e = i13;
        this.f13447f = i14;
    }

    public static String a(int i10) {
        return i10 != -1 ? i10 != 1 ? i10 != 2 ? da.b.a(i10, "Undefined color range ") : "Limited range" : "Full range" : "Unset color range";
    }

    public static String b(int i10) {
        return i10 != -1 ? i10 != 6 ? i10 != 1 ? i10 != 2 ? da.b.a(i10, "Undefined color space ") : "BT601" : "BT709" : "BT2020" : "Unset color space";
    }

    public static String c(int i10) {
        return i10 != -1 ? i10 != 10 ? i10 != 1 ? i10 != 2 ? i10 != 3 ? i10 != 6 ? i10 != 7 ? da.b.a(i10, "Undefined color transfer ") : "HLG" : "ST2084 PQ" : "SDR SMPTE 170M" : "sRGB" : "Linear" : "Gamma 2.2" : "Unset color transfer";
    }

    public static boolean e(g gVar) {
        int i10;
        int i11;
        int i12;
        int i13;
        if (gVar == null) {
            return true;
        }
        int i14 = gVar.f13442a;
        return (i14 == -1 || i14 == 1 || i14 == 2) && ((i10 = gVar.f13443b) == -1 || i10 == 2) && (((i11 = gVar.f13444c) == -1 || i11 == 3) && gVar.f13445d == null && (((i12 = gVar.f13447f) == -1 || i12 == 8) && ((i13 = gVar.f13446e) == -1 || i13 == 8)));
    }

    public static boolean f(g gVar) {
        int i10;
        return gVar != null && ((i10 = gVar.f13444c) == 7 || i10 == 6);
    }

    public static int g(int i10) {
        if (i10 == 1) {
            return 1;
        }
        if (i10 != 9) {
            return (i10 == 4 || i10 == 5 || i10 == 6 || i10 == 7) ? 2 : -1;
        }
        return 6;
    }

    public static int h(int i10) {
        if (i10 == 1) {
            return 3;
        }
        if (i10 == 4) {
            return 10;
        }
        if (i10 == 13) {
            return 2;
        }
        if (i10 == 16) {
            return 6;
        }
        if (i10 != 18) {
            return (i10 == 6 || i10 == 7) ? 3 : -1;
        }
        return 7;
    }

    public final boolean d() {
        return (this.f13442a == -1 || this.f13443b == -1 || this.f13444c == -1) ? false : true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || g.class != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        return this.f13442a == gVar.f13442a && this.f13443b == gVar.f13443b && this.f13444c == gVar.f13444c && Arrays.equals(this.f13445d, gVar.f13445d) && this.f13446e == gVar.f13446e && this.f13447f == gVar.f13447f;
    }

    public final int hashCode() {
        if (this.f13448g == 0) {
            this.f13448g = ((((Arrays.hashCode(this.f13445d) + ((((((527 + this.f13442a) * 31) + this.f13443b) * 31) + this.f13444c) * 31)) * 31) + this.f13446e) * 31) + this.f13447f;
        }
        return this.f13448g;
    }

    public final String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder("ColorInfo(");
        sb2.append(b(this.f13442a));
        sb2.append(", ");
        sb2.append(a(this.f13443b));
        sb2.append(", ");
        sb2.append(c(this.f13444c));
        sb2.append(", ");
        sb2.append(this.f13445d != null);
        sb2.append(", ");
        String str2 = "NA";
        int i10 = this.f13446e;
        if (i10 != -1) {
            str = i10 + "bit Luma";
        } else {
            str = "NA";
        }
        sb2.append(str);
        sb2.append(", ");
        int i11 = this.f13447f;
        if (i11 != -1) {
            str2 = i11 + "bit Chroma";
        }
        return g.b.l(str2, ")", sb2);
    }
}
