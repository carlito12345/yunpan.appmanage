package androidx.fragment.app;

import com.yunpan.appmanage.ui.ActivityTextHzh;

/* loaded from: classes.dex */
public final /* synthetic */ class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1271a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f1272b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1273c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f1274d;

    public /* synthetic */ g(z1 z1Var, z1 z1Var2, boolean z, a0.e eVar) {
        this.f1273c = z1Var;
        this.f1274d = z1Var2;
        this.f1272b = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj = this.f1274d;
        boolean z = this.f1272b;
        Object obj2 = this.f1273c;
        switch (this.f1271a) {
            case 0:
                t1 t1Var = n1.f1355a;
                Fragment fragment = ((z1) obj2).f1438c;
                ue.d.e(fragment, "inFragment");
                Fragment fragment2 = ((z1) obj).f1438c;
                ue.d.e(fragment2, "outFragment");
                if (!z) {
                    fragment.getEnterTransitionCallback();
                    break;
                } else {
                    fragment2.getEnterTransitionCallback();
                    break;
                }
            default:
                ActivityTextHzh activityTextHzh = (ActivityTextHzh) obj2;
                String str = (String) obj;
                if (str.equals(z ? activityTextHzh.K : activityTextHzh.L)) {
                    activityTextHzh.B(str, z);
                    break;
                }
                break;
        }
    }

    public /* synthetic */ g(ActivityTextHzh activityTextHzh, boolean z, String str) {
        this.f1273c = activityTextHzh;
        this.f1272b = z;
        this.f1274d = str;
    }
}
