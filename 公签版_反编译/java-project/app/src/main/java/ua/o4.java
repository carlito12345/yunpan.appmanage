package ua;

import com.yunpan.appmanage.ui.ActivityNezhaWallpaperL;

/* loaded from: classes.dex */
public final class o4 implements e6.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActivityNezhaWallpaperL f15863a;

    public o4(ActivityNezhaWallpaperL activityNezhaWallpaperL) {
        this.f15863a = activityNezhaWallpaperL;
    }

    @Override // e6.b
    public final void a(int i10) {
        System.out.getClass();
        z7.o oVar = new z7.o();
        ActivityNezhaWallpaperL activityNezhaWallpaperL = this.f15863a;
        z7.s sVarG = activityNezhaWallpaperL.M.l(activityNezhaWallpaperL.N).g();
        activityNezhaWallpaperL.M.n(activityNezhaWallpaperL.N);
        for (int i11 = 0; i11 < activityNezhaWallpaperL.M.f19478a.size(); i11++) {
            if (i11 == i10) {
                oVar.k(sVarG);
            }
            oVar.k(activityNezhaWallpaperL.M.l(i11));
        }
        if (activityNezhaWallpaperL.M.f19478a.size() == i10) {
            oVar.k(sVarG);
        }
        activityNezhaWallpaperL.M = oVar;
    }

    @Override // e6.b
    public final void b(int i10, int i11) {
        System.out.getClass();
        this.f15863a.D.y(i10, i11);
    }

    @Override // e6.b
    public final void c(int i10) {
        System.out.getClass();
        this.f15863a.N = i10;
    }
}
