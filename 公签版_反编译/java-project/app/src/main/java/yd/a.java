package yd;

import s3.d0;

/* loaded from: classes.dex */
public final class a extends xd.e {

    /* renamed from: h, reason: collision with root package name */
    public int f19121h;

    /* renamed from: i, reason: collision with root package name */
    public final String f19122i;

    /* renamed from: j, reason: collision with root package name */
    public d f19123j;

    /* renamed from: k, reason: collision with root package name */
    public final zd.a f19124k;

    public a(String str) {
        d dVar = new d(1);
        zd.a aVar = new zd.a();
        this.f19122i = str;
        this.f19123j = dVar;
        this.f19124k = aVar;
        dVar.f19131c = 200;
        dVar.f19132d = new e();
        this.f18450b = 0;
        this.f18451c = 3;
    }

    @Override // xd.e
    public final void t0(d0 d0Var) throws ch.a {
        if (d0Var.c() != 0) {
            if (this.f19123j == null) {
                this.f19123j = new d(1);
            }
            this.f19123j.s(d0Var);
        }
        if (d0Var.c() != 0) {
            zd.a aVar = this.f19124k;
            aVar.getClass();
            aVar.f19545b = d0Var.c();
        }
        this.f19121h = d0Var.c();
    }

    @Override // xd.e
    public final void v0(d0 d0Var) {
        d0Var.l(this.f19122i);
        d0Var.h(200);
        d0Var.h(65535);
        d0Var.i(this.f19123j);
        this.f19123j.v(d0Var);
        zd.a aVar = this.f19124k;
        d0Var.i(aVar);
        d0Var.h(aVar.f19545b);
    }

    @Override // xd.e
    public final int w0() {
        return 21;
    }
}
