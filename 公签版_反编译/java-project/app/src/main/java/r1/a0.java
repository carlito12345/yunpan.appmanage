package r1;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class a0 {

    /* renamed from: a, reason: collision with root package name */
    public CharSequence f13371a;

    /* renamed from: b, reason: collision with root package name */
    public CharSequence f13372b;

    /* renamed from: c, reason: collision with root package name */
    public CharSequence f13373c;

    /* renamed from: d, reason: collision with root package name */
    public CharSequence f13374d;

    /* renamed from: e, reason: collision with root package name */
    public CharSequence f13375e;

    /* renamed from: f, reason: collision with root package name */
    public byte[] f13376f;

    /* renamed from: g, reason: collision with root package name */
    public Integer f13377g;

    /* renamed from: h, reason: collision with root package name */
    public Integer f13378h;

    /* renamed from: i, reason: collision with root package name */
    public Integer f13379i;

    /* renamed from: j, reason: collision with root package name */
    public Integer f13380j;

    /* renamed from: k, reason: collision with root package name */
    public Boolean f13381k;
    public Integer l;

    /* renamed from: m, reason: collision with root package name */
    public Integer f13382m;

    /* renamed from: n, reason: collision with root package name */
    public Integer f13383n;

    /* renamed from: o, reason: collision with root package name */
    public Integer f13384o;

    /* renamed from: p, reason: collision with root package name */
    public Integer f13385p;

    /* renamed from: q, reason: collision with root package name */
    public Integer f13386q;
    public CharSequence r;

    /* renamed from: s, reason: collision with root package name */
    public CharSequence f13387s;

    /* renamed from: t, reason: collision with root package name */
    public CharSequence f13388t;

    /* renamed from: u, reason: collision with root package name */
    public Integer f13389u;

    /* renamed from: v, reason: collision with root package name */
    public Integer f13390v;

    /* renamed from: w, reason: collision with root package name */
    public CharSequence f13391w;

    /* renamed from: x, reason: collision with root package name */
    public CharSequence f13392x;

    /* renamed from: y, reason: collision with root package name */
    public Integer f13393y;
    public u7.g0 z;

    public a0() {
        u7.e0 e0Var = u7.g0.f15471b;
        this.z = u7.y0.f15549e;
    }

    public final void a(int i10, byte[] bArr) {
        if (this.f13376f == null || i10 == 3 || !Objects.equals(this.f13377g, 3)) {
            this.f13376f = (byte[]) bArr.clone();
            this.f13377g = Integer.valueOf(i10);
        }
    }

    public final void b(CharSequence charSequence) {
        this.f13391w = charSequence;
    }

    public final void c(Integer num) {
        this.f13383n = num;
    }

    public final void d(Integer num) {
        this.f13382m = num;
    }

    public final void e(Integer num) {
        this.l = num;
    }

    public a0(b0 b0Var) {
        this.f13371a = b0Var.f13395a;
        this.f13372b = b0Var.f13396b;
        this.f13373c = b0Var.f13397c;
        this.f13374d = b0Var.f13398d;
        this.f13375e = b0Var.f13399e;
        this.f13376f = b0Var.f13400f;
        b0 b0Var2 = b0.B;
        this.f13377g = b0Var.f13401g;
        this.f13378h = b0Var.f13402h;
        this.f13379i = b0Var.f13403i;
        this.f13380j = b0Var.f13404j;
        this.f13381k = b0Var.f13405k;
        this.l = b0Var.f13406m;
        this.f13382m = b0Var.f13407n;
        this.f13383n = b0Var.f13408o;
        this.f13384o = b0Var.f13409p;
        this.f13385p = b0Var.f13410q;
        this.f13386q = b0Var.r;
        this.r = b0Var.f13411s;
        this.f13387s = b0Var.f13412t;
        this.f13388t = b0Var.f13413u;
        this.f13389u = b0Var.f13414v;
        this.f13390v = b0Var.f13415w;
        this.f13391w = b0Var.f13416x;
        this.f13392x = b0Var.f13417y;
        this.f13393y = b0Var.z;
        this.z = b0Var.A;
    }
}
