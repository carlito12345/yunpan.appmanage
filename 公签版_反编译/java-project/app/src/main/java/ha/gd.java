package ha;

/* loaded from: classes.dex */
public final class gd implements wd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7108a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ id f7109b;

    public /* synthetic */ gd(id idVar, int i10) {
        this.f7108a = i10;
        this.f7109b = idVar;
    }

    @Override // ha.wd
    public final void D() {
        switch (this.f7108a) {
            case 0:
                qf.c.Z(this.f7109b.f6725b);
                break;
            case 1:
                id.a(this.f7109b, true);
                break;
            default:
                id.b(this.f7109b, true);
                break;
        }
    }

    @Override // ha.wd
    public final void t() {
        switch (this.f7108a) {
            case 0:
                break;
            case 1:
                id.a(this.f7109b, false);
                break;
            default:
                boolean zI = fa.h.f5683a.i();
                id idVar = this.f7109b;
                if (!zI && !fa.l.f5712a.isConnected()) {
                    id.b(idVar, false);
                    break;
                } else {
                    new z6(idVar.f6724a, idVar.f6725b, "您已连接无线adb，确定要关闭wifi吗？", "提示：关闭wifi有些设备会断开adb", "关闭wifi", "取消", new h5.m(18, this)).show();
                    break;
                }
                break;
        }
    }

    private final void a() {
    }
}
