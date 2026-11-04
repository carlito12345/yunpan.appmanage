package ha;

/* loaded from: classes.dex */
public final class i2 implements wd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7194a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ o2 f7195b;

    public /* synthetic */ i2(o2 o2Var, int i10) {
        this.f7194a = i10;
        this.f7195b = o2Var;
    }

    @Override // ha.wd
    public final void D() {
        switch (this.f7194a) {
            case 0:
                this.f7195b.a();
                break;
            case 1:
                this.f7195b.a();
                break;
            case 2:
                o2 o2Var = this.f7195b;
                o2Var.getClass();
                a2.w0 w0Var = fa.b0.f5652a;
                String str = o2Var.f7503h.pack;
                w0Var.f347c = new g2(o2Var, 3);
                u9.d.f15554a.execute(new fa.u(w0Var, str, 2));
                break;
            case 3:
                this.f7195b.f(false);
                break;
            case 4:
                this.f7195b.g(false);
                break;
            case 8:
                this.f7195b.d();
                break;
            case 9:
                this.f7195b.d();
                break;
        }
    }

    @Override // ha.wd
    public final void t() {
        switch (this.f7194a) {
            case 0:
            case 1:
            case 2:
                break;
            case 3:
                this.f7195b.f(true);
                break;
            case 4:
                this.f7195b.g(true);
                break;
            case 5:
                a2.w0 w0Var = fa.b0.f5652a;
                String str = this.f7195b.f7503h.pack;
                w0Var.f347c = null;
                u9.d.f15554a.execute(new fa.u(w0Var, str, 3));
                break;
            case 6:
                this.f7195b.c();
                break;
            case 7:
                o2 o2Var = this.f7195b;
                new z6(o2Var.f6724a, o2Var.f6725b, "研究发现：有些系统开机后如果系统应用运行过后，再强删的话，并不会释放系统分区的空间！\n\n所以建议：先卸载系统应用(伪卸载)，然后重启后再来强制删除，这样就会100%释放系统分区的空间", "", "取消强删", "确定强删", new h5.m(3, this)).show();
                break;
            case 8:
            case 9:
                break;
            default:
                this.f7195b.d();
                break;
        }
    }

    private final void a() {
    }

    private final void b() {
    }

    private final void c() {
    }

    private final void d() {
    }

    private final void e() {
    }

    private final void f() {
    }

    private final void g() {
    }

    private final void h() {
    }

    private final void i() {
    }
}
