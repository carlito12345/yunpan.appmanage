package ha;

import com.hjq.toast.Toaster;

/* loaded from: classes.dex */
public final class td extends e9.a {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f7838b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ x9.w3 f7839c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ud f7840d;

    public td(ud udVar, String str, x9.w3 w3Var) {
        this.f7840d = udVar;
        this.f7838b = str;
        this.f7839c = w3Var;
    }

    @Override // nh.b
    public final void f0() {
        com.yunpan.appmanage.util.a0.y("创建目录失败");
    }

    @Override // nh.b
    public final void g0(v3.f fVar) {
        ud udVar = this.f7840d;
        udVar.b("", 0, false);
        Toaster.show((CharSequence) "新建成功");
        x9.e0 e0Var = udVar.l;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f7839c.f18365b);
        sb2.append("/");
        String str = this.f7838b;
        sb2.append(str);
        e0Var.p(0, new x9.w3(str, sb2.toString()));
        udVar.f7882k.setSelectionWithSmooth(0);
        udVar.f7882k.setSelection(0);
        udVar.f7882k.requestFocus();
    }
}
