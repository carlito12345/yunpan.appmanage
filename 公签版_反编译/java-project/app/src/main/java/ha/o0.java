package ha;

import java.util.List;

/* loaded from: classes.dex */
public final class o0 extends l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7497b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f7498c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ r0 f7499d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ o0(r0 r0Var, int i10, int i11) {
        super(28);
        this.f7497b = i11;
        this.f7499d = r0Var;
        this.f7498c = i10;
    }

    @Override // ha.l2, ec.e
    public final void E(Object obj) {
        switch (this.f7497b) {
            case 0:
                List list = (List) obj;
                if (!list.isEmpty()) {
                    r0 r0Var = this.f7499d;
                    new r2(r0Var.f6724a, r0Var.f6725b, "请选择要打开的页面，某些页面无法打开的", list, new o(this.f7498c, 1, this)).show();
                    break;
                } else {
                    com.yunpan.appmanage.util.a0.t("此应用没有可调用的页面");
                    break;
                }
            default:
                List list2 = (List) obj;
                if (!list2.isEmpty()) {
                    r0 r0Var2 = this.f7499d;
                    new r2(r0Var2.f6724a, r0Var2.f6725b, "请选择要启动的服务，某些服务无法打开的", list2, new o(this.f7498c, 2, this)).show();
                    break;
                } else {
                    com.yunpan.appmanage.util.a0.t("此应用没有可调用的服务");
                    break;
                }
        }
    }
}
