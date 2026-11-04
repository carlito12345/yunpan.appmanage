package ua;

import com.yunpan.appmanage.ui.ActivityKeymapJieT;
import ha.wd;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class t3 implements wd, ha.c8 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActivityKeymapJieT f15966a;

    public /* synthetic */ t3(ActivityKeymapJieT activityKeymapJieT) {
        this.f15966a = activityKeymapJieT;
    }

    @Override // ha.wd
    public void D() {
        ActivityKeymapJieT activityKeymapJieT = this.f15966a;
        activityKeymapJieT.F.E(new ArrayList());
        activityKeymapJieT.H.j("maps", new z7.o());
        q4.a.U(activityKeymapJieT.A, activityKeymapJieT.H);
        ta.m.f(activityKeymapJieT.A);
    }

    @Override // ha.c8
    public void a(z7.s sVar) {
        ActivityKeymapJieT activityKeymapJieT = this.f15966a;
        activityKeymapJieT.F.q(sVar);
        activityKeymapJieT.H.p("maps").k(sVar);
        q4.a.U(activityKeymapJieT.A, activityKeymapJieT.H);
        ta.m.f(activityKeymapJieT.A);
    }

    @Override // ha.c8
    public void delete() {
    }

    @Override // ha.wd
    public void t() {
    }
}
