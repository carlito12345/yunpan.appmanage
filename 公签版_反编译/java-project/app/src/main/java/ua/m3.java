package ua;

import com.yunpan.appmanage.ui.ActivityKeyMapLogcat;
import ha.wd;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class m3 implements wd, ha.d9 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15822a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityKeyMapLogcat f15823b;

    public /* synthetic */ m3(ActivityKeyMapLogcat activityKeyMapLogcat, int i10) {
        this.f15822a = i10;
        this.f15823b = activityKeyMapLogcat;
    }

    @Override // ha.wd
    public void D() {
        ActivityKeyMapLogcat activityKeyMapLogcat = this.f15823b;
        activityKeyMapLogcat.F.E(new ArrayList());
        z7.s sVar = new z7.s();
        activityKeyMapLogcat.G = sVar;
        sVar.j("tags", new z7.o());
        activityKeyMapLogcat.G.j("keys", new z7.o());
        q4.a.V(activityKeyMapLogcat.A, activityKeyMapLogcat.G);
        ta.m.g(activityKeyMapLogcat.A);
    }

    @Override // ha.d9
    public void b() {
        ActivityKeyMapLogcat activityKeyMapLogcat = this.f15823b;
        switch (this.f15822a) {
            case 1:
                int i10 = ActivityKeyMapLogcat.L;
                activityKeyMapLogcat.z();
                break;
            default:
                int i11 = ActivityKeyMapLogcat.L;
                activityKeyMapLogcat.z();
                break;
        }
    }

    @Override // ha.d9, ha.w7
    public void delete() {
        int i10 = this.f15822a;
    }

    private final void a() {
    }

    private final void c() {
    }

    @Override // ha.wd
    public void t() {
    }
}
