package ua;

import com.yunpan.appmanage.ui.ActivityNezhaWallpaper;

/* loaded from: classes.dex */
public final class h4 implements e6.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActivityNezhaWallpaper f15714a;

    public h4(ActivityNezhaWallpaper activityNezhaWallpaper) {
        this.f15714a = activityNezhaWallpaper;
    }

    @Override // e6.b
    public final void a(int i10) {
        System.out.getClass();
        z7.o oVar = new z7.o();
        ActivityNezhaWallpaper activityNezhaWallpaper = this.f15714a;
        z7.s sVarG = activityNezhaWallpaper.M.l(activityNezhaWallpaper.N).g();
        activityNezhaWallpaper.M.n(activityNezhaWallpaper.N);
        for (int i11 = 0; i11 < activityNezhaWallpaper.M.f19478a.size(); i11++) {
            if (i11 == i10) {
                oVar.k(sVarG);
            }
            oVar.k(activityNezhaWallpaper.M.l(i11));
        }
        if (activityNezhaWallpaper.M.f19478a.size() == i10) {
            oVar.k(sVarG);
        }
        activityNezhaWallpaper.M = oVar;
    }

    @Override // e6.b
    public final void b(int i10, int i11) {
        System.out.getClass();
        this.f15714a.D.y(i10, i11);
    }

    @Override // e6.b
    public final void c(int i10) {
        System.out.getClass();
        this.f15714a.N = i10;
    }
}
