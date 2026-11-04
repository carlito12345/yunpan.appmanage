package r1;

import android.text.TextUtils;
import j$.util.Objects;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class b0 {
    public static final b0 B = new b0(new a0());
    public final u7.g0 A;

    /* renamed from: a, reason: collision with root package name */
    public final CharSequence f13395a;

    /* renamed from: b, reason: collision with root package name */
    public final CharSequence f13396b;

    /* renamed from: c, reason: collision with root package name */
    public final CharSequence f13397c;

    /* renamed from: d, reason: collision with root package name */
    public final CharSequence f13398d;

    /* renamed from: e, reason: collision with root package name */
    public final CharSequence f13399e;

    /* renamed from: f, reason: collision with root package name */
    public final byte[] f13400f;

    /* renamed from: g, reason: collision with root package name */
    public final Integer f13401g;

    /* renamed from: h, reason: collision with root package name */
    public final Integer f13402h;

    /* renamed from: i, reason: collision with root package name */
    public final Integer f13403i;

    /* renamed from: j, reason: collision with root package name */
    public final Integer f13404j;

    /* renamed from: k, reason: collision with root package name */
    public final Boolean f13405k;
    public final Integer l;

    /* renamed from: m, reason: collision with root package name */
    public final Integer f13406m;

    /* renamed from: n, reason: collision with root package name */
    public final Integer f13407n;

    /* renamed from: o, reason: collision with root package name */
    public final Integer f13408o;

    /* renamed from: p, reason: collision with root package name */
    public final Integer f13409p;

    /* renamed from: q, reason: collision with root package name */
    public final Integer f13410q;
    public final Integer r;

    /* renamed from: s, reason: collision with root package name */
    public final CharSequence f13411s;

    /* renamed from: t, reason: collision with root package name */
    public final CharSequence f13412t;

    /* renamed from: u, reason: collision with root package name */
    public final CharSequence f13413u;

    /* renamed from: v, reason: collision with root package name */
    public final Integer f13414v;

    /* renamed from: w, reason: collision with root package name */
    public final Integer f13415w;

    /* renamed from: x, reason: collision with root package name */
    public final CharSequence f13416x;

    /* renamed from: y, reason: collision with root package name */
    public final CharSequence f13417y;
    public final Integer z;

    static {
        org.bouncycastle.jcajce.provider.digest.a.m(0, 1, 2, 3, 4);
        org.bouncycastle.jcajce.provider.digest.a.m(5, 6, 8, 9, 10);
        org.bouncycastle.jcajce.provider.digest.a.m(11, 12, 13, 14, 15);
        org.bouncycastle.jcajce.provider.digest.a.m(16, 17, 18, 19, 20);
        org.bouncycastle.jcajce.provider.digest.a.m(21, 22, 23, 24, 25);
        org.bouncycastle.jcajce.provider.digest.a.m(26, 27, 28, 29, 30);
        org.bouncycastle.jcajce.provider.digest.a.m(31, 32, 33, 34, 1000);
    }

    public b0(a0 a0Var) {
        Boolean boolValueOf = a0Var.f13381k;
        Integer numValueOf = a0Var.f13380j;
        Integer numValueOf2 = a0Var.f13393y;
        int i10 = 1;
        int i11 = 0;
        if (boolValueOf != null) {
            if (!boolValueOf.booleanValue()) {
                numValueOf = -1;
            } else if (numValueOf == null || numValueOf.intValue() == -1) {
                if (numValueOf2 != null) {
                    switch (numValueOf2.intValue()) {
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                        case 13:
                        case 14:
                        case 15:
                        case 16:
                        case 17:
                        case 18:
                        case 19:
                        case 31:
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                            break;
                        case 20:
                        case 26:
                        case 27:
                        case 28:
                        case 29:
                        case 30:
                        default:
                            i10 = 0;
                            break;
                        case 21:
                            i10 = 2;
                            break;
                        case 22:
                            i10 = 3;
                            break;
                        case 23:
                            i10 = 4;
                            break;
                        case 24:
                            i10 = 5;
                            break;
                        case 25:
                            i10 = 6;
                            break;
                    }
                    i11 = i10;
                }
                numValueOf = Integer.valueOf(i11);
            }
        } else if (numValueOf != null) {
            boolean z = numValueOf.intValue() != -1;
            boolValueOf = Boolean.valueOf(z);
            if (z && numValueOf2 == null) {
                switch (numValueOf.intValue()) {
                    case 1:
                        break;
                    case 2:
                        i11 = 21;
                        break;
                    case 3:
                        i11 = 22;
                        break;
                    case 4:
                        i11 = 23;
                        break;
                    case 5:
                        i11 = 24;
                        break;
                    case 6:
                        i11 = 25;
                        break;
                    default:
                        i11 = 20;
                        break;
                }
                numValueOf2 = Integer.valueOf(i11);
            }
        }
        this.f13395a = a0Var.f13371a;
        this.f13396b = a0Var.f13372b;
        this.f13397c = a0Var.f13373c;
        this.f13398d = a0Var.f13374d;
        this.f13399e = a0Var.f13375e;
        this.f13400f = a0Var.f13376f;
        this.f13401g = a0Var.f13377g;
        this.f13402h = a0Var.f13378h;
        this.f13403i = a0Var.f13379i;
        this.f13404j = numValueOf;
        this.f13405k = boolValueOf;
        Integer num = a0Var.l;
        this.l = num;
        this.f13406m = num;
        this.f13407n = a0Var.f13382m;
        this.f13408o = a0Var.f13383n;
        this.f13409p = a0Var.f13384o;
        this.f13410q = a0Var.f13385p;
        this.r = a0Var.f13386q;
        this.f13411s = a0Var.r;
        this.f13412t = a0Var.f13387s;
        this.f13413u = a0Var.f13388t;
        this.f13414v = a0Var.f13389u;
        this.f13415w = a0Var.f13390v;
        this.f13416x = a0Var.f13391w;
        this.f13417y = a0Var.f13392x;
        this.z = numValueOf2;
        this.A = a0Var.z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b0.class != obj.getClass()) {
            return false;
        }
        b0 b0Var = (b0) obj;
        return TextUtils.equals(this.f13395a, b0Var.f13395a) && TextUtils.equals(this.f13396b, b0Var.f13396b) && TextUtils.equals(this.f13397c, b0Var.f13397c) && TextUtils.equals(this.f13398d, b0Var.f13398d) && TextUtils.equals(null, null) && TextUtils.equals(null, null) && TextUtils.equals(this.f13399e, b0Var.f13399e) && Arrays.equals(this.f13400f, b0Var.f13400f) && Objects.equals(this.f13401g, b0Var.f13401g) && Objects.equals(this.f13402h, b0Var.f13402h) && Objects.equals(this.f13403i, b0Var.f13403i) && Objects.equals(this.f13404j, b0Var.f13404j) && Objects.equals(this.f13405k, b0Var.f13405k) && Objects.equals(this.f13406m, b0Var.f13406m) && Objects.equals(this.f13407n, b0Var.f13407n) && Objects.equals(this.f13408o, b0Var.f13408o) && Objects.equals(this.f13409p, b0Var.f13409p) && Objects.equals(this.f13410q, b0Var.f13410q) && Objects.equals(this.r, b0Var.r) && TextUtils.equals(this.f13411s, b0Var.f13411s) && TextUtils.equals(this.f13412t, b0Var.f13412t) && TextUtils.equals(this.f13413u, b0Var.f13413u) && Objects.equals(this.f13414v, b0Var.f13414v) && Objects.equals(this.f13415w, b0Var.f13415w) && TextUtils.equals(this.f13416x, b0Var.f13416x) && TextUtils.equals(null, null) && TextUtils.equals(this.f13417y, b0Var.f13417y) && Objects.equals(this.z, b0Var.z) && Objects.equals(this.A, b0Var.A);
    }

    public final int hashCode() {
        return Objects.hash(this.f13395a, this.f13396b, this.f13397c, this.f13398d, null, null, this.f13399e, null, null, null, Integer.valueOf(Arrays.hashCode(this.f13400f)), this.f13401g, null, this.f13402h, this.f13403i, this.f13404j, this.f13405k, null, this.f13406m, this.f13407n, this.f13408o, this.f13409p, this.f13410q, this.r, this.f13411s, this.f13412t, this.f13413u, this.f13414v, this.f13415w, this.f13416x, null, this.f13417y, this.z, true, this.A);
    }
}
