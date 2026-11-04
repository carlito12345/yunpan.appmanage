package ha;

/* loaded from: classes.dex */
public final class ne implements ma.k {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7492a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ mc.b f7493b;

    public /* synthetic */ ne(mc.b bVar, int i10) {
        this.f7492a = i10;
        this.f7493b = bVar;
    }

    @Override // ma.k
    public final void e(int i10, String str) {
        switch (this.f7492a) {
            case 0:
                boolean zEquals = str.equals("下载中");
                mc.b bVar = this.f7493b;
                if (!zEquals) {
                    bVar.f(str);
                    break;
                } else {
                    bVar.f("TCL传输中：" + i10 + "%");
                    break;
                }
            case 1:
                boolean zEquals2 = str.equals("下载中");
                mc.b bVar2 = this.f7493b;
                if (!zEquals2) {
                    bVar2.f(str);
                    break;
                } else {
                    bVar2.f("传输中：" + i10 + "%");
                    break;
                }
            default:
                boolean zEquals3 = str.equals("下载中");
                mc.b bVar3 = this.f7493b;
                if (!zEquals3) {
                    bVar3.f(str);
                    break;
                } else {
                    bVar3.f("传输到多屏互动：" + i10 + "%");
                    break;
                }
        }
    }

    @Override // ma.k
    public final void j() {
        switch (this.f7492a) {
            case 0:
                this.f7493b.f("请在选择【同意】");
                break;
            case 1:
                this.f7493b.f("请选择【同意】");
                break;
            default:
                this.f7493b.f("请在右上角选择【同意】");
                break;
        }
    }

    @Override // ma.k
    public final void r() {
        switch (this.f7492a) {
            case 0:
                this.f7493b.f("系统正在安装其它应用");
                break;
            case 1:
                this.f7493b.f("系统正在安装其它应用");
                break;
            default:
                this.f7493b.f("系统正在安装其它应用");
                break;
        }
    }
}
