package ha;

import com.yunpan.appmanage.bean.KeyMapSelectBean;

/* loaded from: classes.dex */
public final class s9 implements wd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7754a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7755b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ t9 f7756c;

    public /* synthetic */ s9(t9 t9Var, int i10, int i11) {
        this.f7754a = i11;
        this.f7756c = t9Var;
        this.f7755b = i10;
    }

    @Override // ha.wd
    public final void D() {
        switch (this.f7754a) {
            case 0:
                t9 t9Var = this.f7756c;
                t9Var.f7825k.a((KeyMapSelectBean) t9Var.f7823i.t(this.f7755b));
                t9Var.dismiss();
                break;
            default:
                t9 t9Var2 = this.f7756c;
                t9Var2.f7825k.a((KeyMapSelectBean) t9Var2.f7823i.t(this.f7755b));
                t9Var2.dismiss();
                break;
        }
    }

    @Override // ha.wd
    public final void t() {
        int i10 = this.f7754a;
    }

    private final void a() {
    }

    private final void b() {
    }
}
