package ha;

import com.yunpan.appmanage.bean.KeyMapSelectBean;

/* loaded from: classes.dex */
public final class i4 implements wd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7196a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7197b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ j4 f7198c;

    public /* synthetic */ i4(j4 j4Var, int i10, int i11) {
        this.f7196a = i11;
        this.f7198c = j4Var;
        this.f7197b = i10;
    }

    @Override // ha.wd
    public final void D() {
        switch (this.f7196a) {
            case 0:
                j4 j4Var = this.f7198c;
                j4Var.f7256j.a((KeyMapSelectBean) j4Var.f7254h.t(this.f7197b));
                j4Var.dismiss();
                break;
            default:
                j4 j4Var2 = this.f7198c;
                j4Var2.f7256j.a((KeyMapSelectBean) j4Var2.f7254h.t(this.f7197b));
                j4Var2.dismiss();
                break;
        }
    }

    @Override // ha.wd
    public final void t() {
        int i10 = this.f7196a;
    }

    private final void a() {
    }

    private final void b() {
    }
}
