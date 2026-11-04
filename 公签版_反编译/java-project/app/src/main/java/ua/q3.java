package ua;

import com.yunpan.appmanage.ui.ActivityKeymapFlyOS18;

/* loaded from: classes.dex */
public final class q3 implements ha.w7 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15898a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityKeymapFlyOS18 f15899b;

    public /* synthetic */ q3(ActivityKeymapFlyOS18 activityKeymapFlyOS18, int i10) {
        this.f15899b = activityKeymapFlyOS18;
        this.f15898a = i10;
    }

    @Override // ha.w7
    public void a(z7.s sVar) {
        ActivityKeymapFlyOS18 activityKeymapFlyOS18 = this.f15899b;
        int i10 = this.f15898a;
        if (i10 == -1) {
            activityKeymapFlyOS18.F.q(sVar);
            activityKeymapFlyOS18.H.p("maps").k(sVar);
        } else {
            activityKeymapFlyOS18.F.D(i10, sVar);
            activityKeymapFlyOS18.H.p("maps").o(i10, sVar);
        }
        int i11 = ActivityKeymapFlyOS18.K;
        q4.a.T(activityKeymapFlyOS18.A, activityKeymapFlyOS18.H);
    }

    @Override // ha.w7
    public void delete() {
        int i10 = this.f15898a;
        if (i10 != -1) {
            ActivityKeymapFlyOS18 activityKeymapFlyOS18 = this.f15899b;
            activityKeymapFlyOS18.F.C(i10);
            activityKeymapFlyOS18.H.p("maps").n(i10);
            q4.a.T(activityKeymapFlyOS18.A, activityKeymapFlyOS18.H);
        }
    }
}
