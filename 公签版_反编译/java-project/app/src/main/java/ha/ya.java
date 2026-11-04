package ha;

import com.yunpan.appmanage.bean.PermissionBean;

/* loaded from: classes.dex */
public final class ya implements wd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8099a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PermissionBean f8100b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f8101c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ za f8102d;

    public /* synthetic */ ya(za zaVar, PermissionBean permissionBean, int i10, int i11) {
        this.f8099a = i11;
        this.f8102d = zaVar;
        this.f8100b = permissionBean;
        this.f8101c = i10;
    }

    @Override // ha.wd
    public final void D() {
        switch (this.f8099a) {
            case 0:
                a2.w0 w0Var = fa.b0.f5652a;
                String str = this.f8102d.f8166g;
                PermissionBean permissionBean = this.f8100b;
                String str2 = permissionBean.permissionName_ops;
                boolean z = !permissionBean.isOpen;
                w0Var.f347c = new v1(this, permissionBean, this.f8101c, 2);
                u9.d.f15554a.execute(new fa.t(w0Var, str2, z, str));
                break;
            default:
                a2.w0 w0Var2 = fa.b0.f5652a;
                String str3 = this.f8102d.f8166g;
                PermissionBean permissionBean2 = this.f8100b;
                String str4 = permissionBean2.permissionName;
                boolean z4 = !permissionBean2.isOpen;
                w0Var2.f347c = new v1(this, permissionBean2, this.f8101c, 3);
                u9.d.f15554a.execute(new fa.t(0, w0Var2, str3, str4, z4));
                break;
        }
    }

    @Override // ha.wd
    public final void t() {
        int i10 = this.f8099a;
    }

    private final void a() {
    }

    private final void b() {
    }
}
