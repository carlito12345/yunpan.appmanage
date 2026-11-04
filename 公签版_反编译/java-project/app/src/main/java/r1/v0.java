package r1;

import u7.d1;

/* loaded from: classes.dex */
public class v0 {

    /* renamed from: a, reason: collision with root package name */
    public final int f13597a;

    /* renamed from: b, reason: collision with root package name */
    public final int f13598b;

    /* renamed from: c, reason: collision with root package name */
    public final int f13599c;

    /* renamed from: d, reason: collision with root package name */
    public final int f13600d;

    /* renamed from: e, reason: collision with root package name */
    public final int f13601e;

    /* renamed from: f, reason: collision with root package name */
    public final int f13602f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f13603g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f13604h;

    /* renamed from: i, reason: collision with root package name */
    public final u7.y0 f13605i;

    /* renamed from: j, reason: collision with root package name */
    public final u7.y0 f13606j;

    /* renamed from: k, reason: collision with root package name */
    public final u7.y0 f13607k;
    public final u7.y0 l;

    /* renamed from: m, reason: collision with root package name */
    public final u7.y0 f13608m;

    /* renamed from: n, reason: collision with root package name */
    public final int f13609n;

    /* renamed from: o, reason: collision with root package name */
    public final int f13610o;

    /* renamed from: p, reason: collision with root package name */
    public final u7.y0 f13611p;

    /* renamed from: q, reason: collision with root package name */
    public final t0 f13612q;
    public final u7.y0 r;

    /* renamed from: s, reason: collision with root package name */
    public final u7.y0 f13613s;

    /* renamed from: t, reason: collision with root package name */
    public final boolean f13614t;

    /* renamed from: u, reason: collision with root package name */
    public final int f13615u;

    /* renamed from: v, reason: collision with root package name */
    public final d1 f13616v;

    /* renamed from: w, reason: collision with root package name */
    public final u7.j0 f13617w;

    static {
        new v0(new u0());
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
        u1.f0.B(38);
    }

    public v0(u0 u0Var) {
        this.f13597a = u0Var.f13571a;
        this.f13598b = u0Var.f13572b;
        this.f13599c = u0Var.f13573c;
        this.f13600d = u0Var.f13574d;
        this.f13601e = u0Var.f13575e;
        this.f13602f = u0Var.f13576f;
        this.f13603g = u0Var.f13577g;
        this.f13604h = u0Var.f13578h;
        this.f13605i = u0Var.f13579i;
        this.f13606j = u0Var.f13580j;
        this.f13607k = u0Var.f13581k;
        this.l = u0Var.l;
        this.f13609n = u0Var.f13583n;
        this.f13608m = u0Var.f13582m;
        this.f13610o = u0Var.f13584o;
        this.f13611p = u0Var.f13585p;
        this.f13612q = u0Var.f13586q;
        this.r = u0Var.r;
        this.f13614t = u0Var.f13587s;
        this.f13613s = u0Var.f13588t;
        this.f13615u = u0Var.f13589u;
        this.f13616v = d1.b(u0Var.f13590v);
        this.f13617w = u7.j0.l(u0Var.f13591w);
    }

    public u0 a() {
        return new u0(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        v0 v0Var = (v0) obj;
        if (this.f13597a == v0Var.f13597a && this.f13598b == v0Var.f13598b && this.f13599c == v0Var.f13599c && this.f13600d == v0Var.f13600d && this.f13604h == v0Var.f13604h && this.f13601e == v0Var.f13601e && this.f13602f == v0Var.f13602f && this.f13603g == v0Var.f13603g && this.f13605i.equals(v0Var.f13605i) && this.f13606j.equals(v0Var.f13606j) && this.f13607k.equals(v0Var.f13607k) && this.l.equals(v0Var.l) && this.f13609n == v0Var.f13609n && this.f13608m.equals(v0Var.f13608m) && this.f13610o == v0Var.f13610o && this.f13611p.equals(v0Var.f13611p) && this.f13612q.equals(v0Var.f13612q) && this.f13613s.equals(v0Var.f13613s) && this.r.equals(v0Var.r) && this.f13614t == v0Var.f13614t && this.f13615u == v0Var.f13615u) {
            d1 d1Var = this.f13616v;
            d1Var.getClass();
            if (u7.q.f(d1Var, v0Var.f13616v) && this.f13617w.equals(v0Var.f13617w)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = (this.f13611p.hashCode() + ((((this.f13608m.hashCode() + ((((this.l.hashCode() + ((this.f13607k.hashCode() + ((this.f13606j.hashCode() + ((this.f13605i.hashCode() + ((((((((((((((((this.f13597a + 31) * 31) + this.f13598b) * 31) + this.f13599c) * 31) + this.f13600d) * 28629151) + (this.f13604h ? 1 : 0)) * 31) + this.f13601e) * 31) + this.f13602f) * 31) + (this.f13603g ? 1 : 0)) * 31)) * 31)) * 31)) * 961)) * 961) + this.f13609n) * 31)) * 31) + this.f13610o) * 31)) * 31;
        this.f13612q.getClass();
        return this.f13617w.hashCode() + ((this.f13616v.hashCode() + ((((this.f13613s.hashCode() + ((((this.r.hashCode() + ((iHashCode + 29791) * 961)) * 961) + (this.f13614t ? 1 : 0)) * 31)) * 31) + this.f13615u) * 28629151)) * 31);
    }
}
