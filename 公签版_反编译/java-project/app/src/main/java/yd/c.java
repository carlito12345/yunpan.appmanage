package yd;

import s3.d0;

/* loaded from: classes.dex */
public final class c extends xd.e {

    /* renamed from: h, reason: collision with root package name */
    public int f19125h;

    /* renamed from: i, reason: collision with root package name */
    public final String f19126i;

    /* renamed from: j, reason: collision with root package name */
    public int f19127j;

    /* renamed from: k, reason: collision with root package name */
    public nh.b f19128k;
    public final int l;

    /* renamed from: m, reason: collision with root package name */
    public int f19129m;

    public c(String str) {
        String strC = da.b.c("\\\\", str);
        h hVar = new h();
        this.f19126i = strC;
        this.f19127j = 1;
        this.f19128k = hVar;
        this.l = -1;
        this.f19129m = 0;
        this.f18450b = 0;
        this.f18451c = 3;
    }

    @Override // xd.e
    public final void t0(d0 d0Var) {
        this.f19127j = d0Var.c();
        d0Var.c();
        if (d0Var.c() != 0) {
            if (this.f19128k == null) {
                this.f19128k = new d(2);
            }
            d0Var = (d0) d0Var.f14066f;
            this.f19128k.s(d0Var);
        }
        d0Var.c();
        this.f19129m = d0Var.c();
        this.f19125h = d0Var.c();
    }

    @Override // xd.e
    public final void v0(d0 d0Var) {
        String str = this.f19126i;
        d0Var.i(str);
        if (str != null) {
            d0Var.l(str);
        }
        d0Var.h(this.f19127j);
        d0Var.h(this.f19127j);
        d0Var.i(this.f19128k);
        nh.b bVar = this.f19128k;
        if (bVar != null) {
            d0Var = (d0) d0Var.f14066f;
            bVar.v(d0Var);
        }
        d0Var.h(this.l);
        d0Var.h(this.f19129m);
    }

    @Override // xd.e
    public final int w0() {
        return 15;
    }
}
