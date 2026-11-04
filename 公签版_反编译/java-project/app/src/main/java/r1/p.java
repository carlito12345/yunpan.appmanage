package r1;

import android.text.TextUtils;
import ha.jd;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.UUID;

/* loaded from: classes.dex */
public final class p {
    public final int A;
    public final float B;
    public final byte[] C;
    public final int D;
    public final g E;
    public final int F;
    public final int G;
    public final int H;
    public final int I;
    public final int J;
    public final int K;
    public final int L;
    public final int M;
    public final int N;
    public final int O;
    public final int P;
    public int Q;

    /* renamed from: a, reason: collision with root package name */
    public final String f13510a;

    /* renamed from: b, reason: collision with root package name */
    public final String f13511b;

    /* renamed from: c, reason: collision with root package name */
    public final u7.g0 f13512c;

    /* renamed from: d, reason: collision with root package name */
    public final String f13513d;

    /* renamed from: e, reason: collision with root package name */
    public final int f13514e;

    /* renamed from: f, reason: collision with root package name */
    public final int f13515f;

    /* renamed from: g, reason: collision with root package name */
    public final int f13516g;

    /* renamed from: h, reason: collision with root package name */
    public final int f13517h;

    /* renamed from: i, reason: collision with root package name */
    public final int f13518i;

    /* renamed from: j, reason: collision with root package name */
    public final int f13519j;

    /* renamed from: k, reason: collision with root package name */
    public final String f13520k;
    public final d0 l;

    /* renamed from: m, reason: collision with root package name */
    public final String f13521m;

    /* renamed from: n, reason: collision with root package name */
    public final String f13522n;

    /* renamed from: o, reason: collision with root package name */
    public final String f13523o;

    /* renamed from: p, reason: collision with root package name */
    public final int f13524p;

    /* renamed from: q, reason: collision with root package name */
    public final int f13525q;
    public final List r;

    /* renamed from: s, reason: collision with root package name */
    public final l f13526s;

    /* renamed from: t, reason: collision with root package name */
    public final long f13527t;

    /* renamed from: u, reason: collision with root package name */
    public final boolean f13528u;

    /* renamed from: v, reason: collision with root package name */
    public final int f13529v;

    /* renamed from: w, reason: collision with root package name */
    public final int f13530w;

    /* renamed from: x, reason: collision with root package name */
    public final int f13531x;

    /* renamed from: y, reason: collision with root package name */
    public final int f13532y;
    public final float z;

    static {
        new o().a();
        u1.f0.B(0);
        u1.f0.B(1);
        u1.f0.B(2);
        u1.f0.B(3);
        u1.f0.B(4);
        org.bouncycastle.jcajce.provider.digest.a.m(5, 6, 7, 8, 9);
        org.bouncycastle.jcajce.provider.digest.a.m(10, 11, 12, 13, 14);
        org.bouncycastle.jcajce.provider.digest.a.m(15, 16, 17, 18, 19);
        org.bouncycastle.jcajce.provider.digest.a.m(20, 21, 22, 23, 24);
        org.bouncycastle.jcajce.provider.digest.a.m(25, 26, 27, 28, 29);
        org.bouncycastle.jcajce.provider.digest.a.m(30, 31, 32, 33, 34);
        u1.f0.B(35);
        u1.f0.B(36);
        u1.f0.B(37);
    }

    public p(o oVar) throws MissingResourceException {
        boolean z;
        String str;
        this.f13510a = oVar.f13480a;
        String strH = u1.f0.H(oVar.f13483d);
        this.f13513d = strH;
        if (oVar.f13482c.isEmpty() && oVar.f13481b != null) {
            this.f13512c = u7.g0.r(new q(strH, oVar.f13481b));
            this.f13511b = oVar.f13481b;
        } else if (!oVar.f13482c.isEmpty() && oVar.f13481b == null) {
            u7.g0 g0Var = oVar.f13482c;
            this.f13512c = g0Var;
            Iterator it = g0Var.iterator();
            while (true) {
                if (!it.hasNext()) {
                    str = ((q) g0Var.get(0)).f13550b;
                    break;
                }
                q qVar = (q) it.next();
                if (TextUtils.equals(qVar.f13549a, strH)) {
                    str = qVar.f13550b;
                    break;
                }
            }
            this.f13511b = str;
        } else if (oVar.f13482c.isEmpty() && oVar.f13481b == null) {
            z = true;
            a9.o.t(z);
            this.f13512c = oVar.f13482c;
            this.f13511b = oVar.f13481b;
        } else {
            for (int i10 = 0; i10 < oVar.f13482c.size(); i10++) {
                if (((q) oVar.f13482c.get(i10)).f13550b.equals(oVar.f13481b)) {
                    z = true;
                    break;
                }
            }
            z = false;
            a9.o.t(z);
            this.f13512c = oVar.f13482c;
            this.f13511b = oVar.f13481b;
        }
        this.f13514e = oVar.f13484e;
        a9.o.s("Auxiliary track type must only be set to a value other than AUXILIARY_TRACK_TYPE_UNDEFINED only when ROLE_FLAG_AUXILIARY is set", oVar.f13486g == 0 || (oVar.f13485f & 32768) != 0);
        this.f13515f = oVar.f13485f;
        this.f13516g = oVar.f13486g;
        int i11 = oVar.f13487h;
        this.f13517h = i11;
        int i12 = oVar.f13488i;
        this.f13518i = i12;
        this.f13519j = i12 != -1 ? i12 : i11;
        this.f13520k = oVar.f13489j;
        this.l = oVar.f13490k;
        this.f13521m = oVar.l;
        this.f13522n = oVar.f13491m;
        this.f13523o = oVar.f13492n;
        this.f13524p = oVar.f13493o;
        this.f13525q = oVar.f13494p;
        List list = oVar.f13495q;
        this.r = list == null ? Collections.emptyList() : list;
        l lVar = oVar.r;
        this.f13526s = lVar;
        this.f13527t = oVar.f13496s;
        this.f13528u = oVar.f13497t;
        this.f13529v = oVar.f13498u;
        this.f13530w = oVar.f13499v;
        this.f13531x = oVar.f13500w;
        this.f13532y = oVar.f13501x;
        this.z = oVar.f13502y;
        int i13 = oVar.z;
        this.A = i13 == -1 ? 0 : i13;
        float f10 = oVar.A;
        this.B = f10 == -1.0f ? 1.0f : f10;
        this.C = oVar.B;
        this.D = oVar.C;
        this.E = oVar.D;
        this.F = oVar.E;
        this.G = oVar.F;
        this.H = oVar.G;
        this.I = oVar.H;
        int i14 = oVar.I;
        this.J = i14 == -1 ? 0 : i14;
        int i15 = oVar.J;
        this.K = i15 != -1 ? i15 : 0;
        this.L = oVar.K;
        this.M = oVar.L;
        this.N = oVar.M;
        this.O = oVar.N;
        int i16 = oVar.O;
        if (i16 != 0 || lVar == null) {
            this.P = i16;
        } else {
            this.P = 1;
        }
    }

    public static String d(p pVar) {
        String str;
        String str2;
        int i10;
        int i11;
        if (pVar == null) {
            return "null";
        }
        bd.c cVar = new bd.c(String.valueOf(','));
        StringBuilder sbM = g.b.m("id=");
        sbM.append(pVar.f13510a);
        sbM.append(", mimeType=");
        sbM.append(pVar.f13523o);
        String str3 = pVar.f13522n;
        if (str3 != null) {
            sbM.append(", container=");
            sbM.append(str3);
        }
        String str4 = pVar.f13521m;
        if (str4 != null) {
            sbM.append(", primaryGroupId=");
            sbM.append(str4);
        }
        int i12 = pVar.f13519j;
        if (i12 != -1) {
            sbM.append(", bitrate=");
            sbM.append(i12);
        }
        String str5 = pVar.f13520k;
        if (str5 != null) {
            sbM.append(", codecs=");
            sbM.append(str5);
        }
        l lVar = pVar.f13526s;
        if (lVar != null) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (int i13 = 0; i13 < lVar.f13469d; i13++) {
                UUID uuid = lVar.f13466a[i13].f13462b;
                if (uuid.equals(f.f13435b)) {
                    linkedHashSet.add("cenc");
                } else if (uuid.equals(f.f13436c)) {
                    linkedHashSet.add("clearkey");
                } else if (uuid.equals(f.f13438e)) {
                    linkedHashSet.add("playready");
                } else if (uuid.equals(f.f13437d)) {
                    linkedHashSet.add("widevine");
                } else if (uuid.equals(f.f13434a)) {
                    linkedHashSet.add("universal");
                } else {
                    linkedHashSet.add("unknown (" + uuid + ")");
                }
            }
            sbM.append(", drm=[");
            cVar.d(sbM, linkedHashSet.iterator());
            sbM.append(']');
        }
        int i14 = pVar.f13529v;
        if (i14 != -1 && (i11 = pVar.f13530w) != -1) {
            sbM.append(", res=");
            sbM.append(i14);
            sbM.append("x");
            sbM.append(i11);
        }
        int i15 = pVar.f13531x;
        if (i15 != -1 && (i10 = pVar.f13532y) != -1) {
            sbM.append(", decRes=");
            sbM.append(i15);
            sbM.append("x");
            sbM.append(i10);
        }
        float f10 = pVar.B;
        double d10 = f10;
        int i16 = w7.b.f17624a;
        Double.isNaN(d10);
        if (Math.copySign(d10 - 1.0d, 1.0d) > 0.001d && d10 != 1.0d && (!Double.isNaN(d10) || !Double.isNaN(1.0d))) {
            sbM.append(", par=");
            Object[] objArr = {Float.valueOf(f10)};
            String str6 = u1.f0.f15206a;
            sbM.append(String.format(Locale.US, "%.3f", objArr));
        }
        g gVar = pVar.E;
        if (gVar != null) {
            int i17 = gVar.f13447f;
            int i18 = gVar.f13446e;
            if ((i18 != -1 && i17 != -1) || gVar.d()) {
                sbM.append(", color=");
                if (gVar.d()) {
                    String strB = g.b(gVar.f13442a);
                    String strA = g.a(gVar.f13443b);
                    String strC = g.c(gVar.f13444c);
                    Locale locale = Locale.US;
                    str2 = strB + "/" + strA + "/" + strC;
                } else {
                    str2 = "NA/NA/NA";
                }
                sbM.append(str2 + "/" + ((i18 == -1 || i17 == -1) ? "NA/NA" : i18 + "/" + i17));
            }
        }
        float f11 = pVar.z;
        if (f11 != -1.0f) {
            sbM.append(", fps=");
            sbM.append(f11);
        }
        int i19 = pVar.F;
        if (i19 != -1) {
            sbM.append(", maxSubLayers=");
            sbM.append(i19);
        }
        int i20 = pVar.G;
        if (i20 != -1) {
            sbM.append(", channels=");
            sbM.append(i20);
        }
        int i21 = pVar.H;
        if (i21 != -1) {
            sbM.append(", sample_rate=");
            sbM.append(i21);
        }
        String str7 = pVar.f13513d;
        if (str7 != null) {
            sbM.append(", language=");
            sbM.append(str7);
        }
        u7.g0 g0Var = pVar.f13512c;
        if (!g0Var.isEmpty()) {
            sbM.append(", labels=[");
            cVar.d(sbM, u7.q.t(g0Var, new jd(19)).iterator());
            sbM.append("]");
        }
        int i22 = pVar.f13514e;
        if (i22 != 0) {
            sbM.append(", selectionFlags=[");
            String str8 = u1.f0.f15206a;
            ArrayList arrayList = new ArrayList();
            if ((i22 & 4) != 0) {
                arrayList.add("auto");
            }
            if ((i22 & 1) != 0) {
                arrayList.add("default");
            }
            if ((i22 & 2) != 0) {
                arrayList.add("forced");
            }
            cVar.d(sbM, arrayList.iterator());
            sbM.append("]");
        }
        int i23 = pVar.f13515f;
        if (i23 != 0) {
            sbM.append(", roleFlags=[");
            String str9 = u1.f0.f15206a;
            ArrayList arrayList2 = new ArrayList();
            if ((i23 & 1) != 0) {
                arrayList2.add("main");
            }
            if ((i23 & 2) != 0) {
                arrayList2.add("alt");
            }
            if ((i23 & 4) != 0) {
                arrayList2.add("supplementary");
            }
            if ((i23 & 8) != 0) {
                arrayList2.add("commentary");
            }
            if ((i23 & 16) != 0) {
                arrayList2.add("dub");
            }
            if ((i23 & 32) != 0) {
                arrayList2.add("emergency");
            }
            if ((i23 & 64) != 0) {
                arrayList2.add("caption");
            }
            if ((i23 & 128) != 0) {
                arrayList2.add("subtitle");
            }
            if ((i23 & 256) != 0) {
                arrayList2.add("sign");
            }
            if ((i23 & 512) != 0) {
                arrayList2.add("describes-video");
            }
            if ((i23 & 1024) != 0) {
                arrayList2.add("describes-music");
            }
            if ((i23 & 2048) != 0) {
                arrayList2.add("enhanced-intelligibility");
            }
            if ((i23 & 4096) != 0) {
                arrayList2.add("transcribes-dialog");
            }
            if ((i23 & 8192) != 0) {
                arrayList2.add("easy-read");
            }
            if ((i23 & 16384) != 0) {
                arrayList2.add("trick-play");
            }
            if ((i23 & 32768) != 0) {
                arrayList2.add("auxiliary");
            }
            cVar.d(sbM, arrayList2.iterator());
            sbM.append("]");
        }
        if ((32768 & i23) != 0) {
            sbM.append(", auxiliaryTrackType=");
            String str10 = u1.f0.f15206a;
            int i24 = pVar.f13516g;
            if (i24 == 0) {
                str = "undefined";
            } else if (i24 == 1) {
                str = "original";
            } else if (i24 == 2) {
                str = "depth-linear";
            } else if (i24 == 3) {
                str = "depth-inverse";
            } else {
                if (i24 != 4) {
                    throw new IllegalStateException("Unsupported auxiliary track type");
                }
                str = "depth metadata";
            }
            sbM.append(str);
        }
        return sbM.toString();
    }

    public final o a() {
        return new o(this);
    }

    public final int b() {
        int i10;
        int i11 = this.f13529v;
        if (i11 == -1 || (i10 = this.f13530w) == -1) {
            return -1;
        }
        return i11 * i10;
    }

    public final boolean c(p pVar) {
        List list = this.r;
        if (list.size() != pVar.r.size()) {
            return false;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (!Arrays.equals((byte[]) list.get(i10), (byte[]) pVar.r.get(i10))) {
                return false;
            }
        }
        return true;
    }

    public final boolean equals(Object obj) {
        int i10;
        if (this == obj) {
            return true;
        }
        if (obj == null || p.class != obj.getClass()) {
            return false;
        }
        p pVar = (p) obj;
        int i11 = this.Q;
        return (i11 == 0 || (i10 = pVar.Q) == 0 || i11 == i10) && this.f13514e == pVar.f13514e && this.f13515f == pVar.f13515f && this.f13516g == pVar.f13516g && this.f13517h == pVar.f13517h && this.f13518i == pVar.f13518i && this.f13524p == pVar.f13524p && this.f13527t == pVar.f13527t && this.f13529v == pVar.f13529v && this.f13530w == pVar.f13530w && this.f13531x == pVar.f13531x && this.f13532y == pVar.f13532y && this.A == pVar.A && this.D == pVar.D && this.F == pVar.F && this.G == pVar.G && this.H == pVar.H && this.I == pVar.I && this.J == pVar.J && this.K == pVar.K && this.L == pVar.L && this.N == pVar.N && this.O == pVar.O && this.P == pVar.P && Float.compare(this.z, pVar.z) == 0 && Float.compare(this.B, pVar.B) == 0 && Objects.equals(this.f13510a, pVar.f13510a) && Objects.equals(this.f13511b, pVar.f13511b) && this.f13512c.equals(pVar.f13512c) && Objects.equals(this.f13520k, pVar.f13520k) && Objects.equals(this.f13521m, pVar.f13521m) && Objects.equals(this.f13522n, pVar.f13522n) && Objects.equals(this.f13523o, pVar.f13523o) && Objects.equals(this.f13513d, pVar.f13513d) && Arrays.equals(this.C, pVar.C) && Objects.equals(this.l, pVar.l) && Objects.equals(this.E, pVar.E) && Objects.equals(this.f13526s, pVar.f13526s) && c(pVar);
    }

    public final int hashCode() {
        if (this.Q == 0) {
            String str = this.f13510a;
            int iHashCode = (527 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.f13511b;
            int iHashCode2 = (this.f13512c.hashCode() + ((iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31)) * 31;
            String str3 = this.f13513d;
            int iHashCode3 = (((((((((((iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.f13514e) * 31) + this.f13515f) * 31) + this.f13516g) * 31) + this.f13517h) * 31) + this.f13518i) * 31;
            String str4 = this.f13520k;
            int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
            d0 d0Var = this.l;
            int iHashCode5 = (iHashCode4 + (d0Var == null ? 0 : d0Var.hashCode())) * 961;
            String str5 = this.f13521m;
            int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
            String str6 = this.f13522n;
            int iHashCode7 = (iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
            String str7 = this.f13523o;
            this.Q = ((((((((((((((((((((((Float.floatToIntBits(this.B) + ((((Float.floatToIntBits(this.z) + ((((((((((((((iHashCode7 + (str7 != null ? str7.hashCode() : 0)) * 31) + this.f13524p) * 31) + ((int) this.f13527t)) * 31) + this.f13529v) * 31) + this.f13530w) * 31) + this.f13531x) * 31) + this.f13532y) * 31)) * 31) + this.A) * 31)) * 31) + this.D) * 31) + this.F) * 31) + this.G) * 31) + this.H) * 31) + this.I) * 31) + this.J) * 31) + this.K) * 31) + this.L) * 31) + this.N) * 31) + this.O) * 31) + this.P;
        }
        return this.Q;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Format(");
        sb2.append(this.f13510a);
        sb2.append(", ");
        sb2.append(this.f13511b);
        sb2.append(", ");
        sb2.append(this.f13522n);
        sb2.append(", ");
        sb2.append(this.f13523o);
        sb2.append(", ");
        sb2.append(this.f13520k);
        sb2.append(", ");
        sb2.append(this.f13519j);
        sb2.append(", ");
        sb2.append(this.f13513d);
        sb2.append(", [");
        sb2.append(this.f13529v);
        sb2.append(", ");
        sb2.append(this.f13530w);
        sb2.append(", ");
        sb2.append(this.z);
        sb2.append(", ");
        sb2.append(this.E);
        sb2.append("], [");
        sb2.append(this.G);
        sb2.append(", ");
        return android.support.v4.media.session.a.s(sb2, this.H, "])");
    }
}
