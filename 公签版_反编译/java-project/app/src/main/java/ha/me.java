package ha;

/* loaded from: classes.dex */
public final /* synthetic */ class me implements ec.d, fa.y {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7451a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ p0 f7452b;

    public /* synthetic */ me(p0 p0Var, int i10) {
        this.f7451a = i10;
        this.f7452b = p0Var;
    }

    @Override // fa.y
    public void a(fa.x xVar) {
        switch (this.f7451a) {
            case 1:
                p0 p0Var = this.f7452b;
                p0Var.getClass();
                if (!xVar.f5762a) {
                    if (xVar.f5763b != -111) {
                        com.yunpan.appmanage.util.a0.z("自动安装失败，正在调用安装器安装\n" + xVar.f5764c, false);
                        int i10 = com.yunpan.appmanage.util.v.f4106a.f4112c0;
                        z6 z6Var = (z6) p0Var.f7562c;
                        if (i10 != 0) {
                            com.bumptech.glide.c.I(z6Var.f6725b, z6Var.f8152h);
                            break;
                        } else {
                            ma.h.f11033a.c(z6Var.f8152h, new jd(2));
                            break;
                        }
                    } else {
                        com.yunpan.appmanage.util.a0.s(xVar.f5764c, false);
                        break;
                    }
                }
                break;
            default:
                p0 p0Var2 = this.f7452b;
                p0Var2.getClass();
                if (!xVar.f5762a) {
                    if (xVar.f5763b != -111) {
                        com.yunpan.appmanage.util.a0.z("自动安装失败，正在调用安装器安装\n" + xVar.f5764c, false);
                        int i11 = com.yunpan.appmanage.util.v.f4106a.f4112c0;
                        z6 z6Var2 = (z6) p0Var2.f7562c;
                        if (i11 != 0) {
                            com.bumptech.glide.c.I(z6Var2.f6725b, z6Var2.f8152h);
                            break;
                        } else {
                            ma.h.f11033a.c(z6Var2.f8152h, new jd(3));
                            break;
                        }
                    } else {
                        com.yunpan.appmanage.util.a0.s(xVar.f5764c, false);
                        break;
                    }
                }
                break;
        }
    }

    @Override // ec.d
    public void g(mc.b bVar) {
        ma.l lVarG = com.bumptech.glide.d.G(((z6) this.f7452b.f7562c).f8152h, new ne(bVar, 0));
        if (lVarG.a()) {
            com.yunpan.appmanage.util.a0.w("安装成功");
        } else {
            bVar.f(lVarG.f11049c);
        }
        bVar.b();
    }
}
