package ua;

import com.yunpan.appmanage.ui.ActivityKeymapJieT;

/* loaded from: classes.dex */
public final class u3 implements ha.c8, ha.w7 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15978a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15979b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ActivityKeymapJieT f15980c;

    public /* synthetic */ u3(ActivityKeymapJieT activityKeymapJieT, int i10, int i11) {
        this.f15978a = i11;
        this.f15980c = activityKeymapJieT;
        this.f15979b = i10;
    }

    @Override // ha.c8
    public final void a(z7.s sVar) {
        int i10 = this.f15979b;
        ActivityKeymapJieT activityKeymapJieT = this.f15980c;
        switch (this.f15978a) {
            case 0:
                activityKeymapJieT.F.D(i10, sVar);
                activityKeymapJieT.H.p("maps").o(i10, sVar);
                q4.a.U(activityKeymapJieT.A, activityKeymapJieT.H);
                ta.m.f(activityKeymapJieT.A);
                break;
            default:
                if (i10 == -1) {
                    activityKeymapJieT.F.q(sVar);
                    activityKeymapJieT.H.p("maps").k(sVar);
                } else {
                    activityKeymapJieT.F.D(i10, sVar);
                    activityKeymapJieT.H.p("maps").o(i10, sVar);
                }
                int i11 = ActivityKeymapJieT.P;
                q4.a.U(activityKeymapJieT.A, activityKeymapJieT.H);
                ta.m.f(activityKeymapJieT.A);
                break;
        }
    }

    @Override // ha.c8
    public final void delete() {
        switch (this.f15978a) {
            case 0:
                ActivityKeymapJieT activityKeymapJieT = this.f15980c;
                x9.s2 s2Var = activityKeymapJieT.F;
                int i10 = this.f15979b;
                s2Var.C(i10);
                activityKeymapJieT.H.p("maps").n(i10);
                q4.a.U(activityKeymapJieT.A, activityKeymapJieT.H);
                ta.m.f(activityKeymapJieT.A);
                break;
            default:
                int i11 = this.f15979b;
                if (i11 != -1) {
                    ActivityKeymapJieT activityKeymapJieT2 = this.f15980c;
                    activityKeymapJieT2.F.C(i11);
                    activityKeymapJieT2.H.p("maps").n(i11);
                    q4.a.U(activityKeymapJieT2.A, activityKeymapJieT2.H);
                    ta.m.f(activityKeymapJieT2.A);
                    break;
                }
                break;
        }
    }
}
