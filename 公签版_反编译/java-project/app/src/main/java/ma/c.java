package ma;

import com.yunpan.appmanage.util.a0;
import ha.u9;

/* loaded from: classes.dex */
public final /* synthetic */ class c implements g {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11025a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ u9 f11026b;

    public /* synthetic */ c(u9 u9Var, int i10) {
        this.f11025a = i10;
        this.f11026b = u9Var;
    }

    @Override // ma.g
    public final void c(String str, boolean z) {
        switch (this.f11025a) {
            case 0:
                this.f11026b.a();
                if (!z) {
                    a0.s(str, false);
                    break;
                } else {
                    a0.v("安装成功", true);
                    break;
                }
            default:
                this.f11026b.a();
                if (!z) {
                    a0.s(str, false);
                    break;
                } else {
                    a0.v("安装成功", true);
                    break;
                }
        }
    }
}
