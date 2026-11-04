package ua;

import com.hjq.toast.Toaster;
import com.yunpan.appmanage.bean.WpPathBean;

/* loaded from: classes.dex */
public final class b9 extends ha.l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ WpPathBean f15593b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f15594c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f15595d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ i9 f15596e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b9(i9 i9Var, WpPathBean wpPathBean, String str, int i10) {
        super(28);
        this.f15596e = i9Var;
        this.f15593b = wpPathBean;
        this.f15594c = str;
        this.f15595d = i10;
    }

    @Override // ha.l2, ec.e
    public final void B(Throwable th2) {
        com.yunpan.appmanage.util.a0.t("" + th2.getMessage());
    }

    @Override // ha.l2, ec.e
    public final void onComplete() {
        Toaster.show((CharSequence) "修改成功");
        this.f15593b.name = this.f15594c;
        this.f15596e.f15751q.e(this.f15595d);
    }
}
