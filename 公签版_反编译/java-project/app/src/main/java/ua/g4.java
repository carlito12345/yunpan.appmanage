package ua;

import com.yunpan.appmanage.ui.ActivityNezhaWallpaper;

/* loaded from: classes.dex */
public final class g4 implements e6.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActivityNezhaWallpaper f15692a;

    public g4(ActivityNezhaWallpaper activityNezhaWallpaper) {
        this.f15692a = activityNezhaWallpaper;
    }

    @Override // e6.b
    public final void a(int i10) {
        System.out.getClass();
    }

    @Override // e6.b
    public final void b(int i10, int i11) {
        System.out.getClass();
        ActivityNezhaWallpaper activityNezhaWallpaper = this.f15692a;
        activityNezhaWallpaper.F.y(i10, i11);
        z7.o oVar = new z7.o();
        z7.s sVarG = activityNezhaWallpaper.L.l(i10).g();
        activityNezhaWallpaper.L.n(i10);
        for (int i12 = 0; i12 < activityNezhaWallpaper.L.f19478a.size(); i12++) {
            if (i12 == i11) {
                oVar.k(sVarG);
            }
            oVar.k(activityNezhaWallpaper.L.l(i12));
        }
        if (activityNezhaWallpaper.L.f19478a.size() == i11) {
            oVar.k(sVarG);
        }
        activityNezhaWallpaper.L = oVar;
    }

    @Override // e6.b
    public final void c(int i10) {
        System.out.getClass();
        this.f15692a.getClass();
    }
}
