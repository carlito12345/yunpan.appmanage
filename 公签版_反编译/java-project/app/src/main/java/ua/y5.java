package ua;

import com.yunpan.appmanage.bean.PssBean;
import com.yunpan.appmanage.ui.ActivityPss;
import ha.wd;

/* loaded from: classes.dex */
public final class y5 implements wd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16055a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PssBean f16056b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f16057c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ActivityPss f16058d;

    public /* synthetic */ y5(ActivityPss activityPss, PssBean pssBean, int i10, int i11) {
        this.f16055a = i11;
        this.f16058d = activityPss;
        this.f16056b = pssBean;
        this.f16057c = i10;
    }

    @Override // ha.wd
    public final void D() {
        switch (this.f16055a) {
            case 0:
                for (String str : this.f16056b.pid.split(",")) {
                    fa.b0.f5652a.g("kill " + str, null);
                }
                this.f16058d.F.C(this.f16057c);
                break;
            default:
                for (String str2 : this.f16056b.pid.split(",")) {
                    fa.b0.f5652a.g("kill " + str2, null);
                }
                this.f16058d.F.C(this.f16057c);
                break;
        }
    }

    @Override // ha.wd
    public final void t() {
        switch (this.f16055a) {
            case 0:
                fa.b0.f5652a.g(g.b.l(this.f16056b.pack, "'", new StringBuilder("am force-stop '")), new ha.o(this.f16057c, 17, this));
                break;
        }
    }

    private final void a() {
    }
}
