package ua;

import com.yunpan.appmanage.ui.ActivityNezhaWallpaperL;

/* loaded from: classes.dex */
public final class n4 implements e6.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActivityNezhaWallpaperL f15847a;

    public n4(ActivityNezhaWallpaperL activityNezhaWallpaperL) {
        this.f15847a = activityNezhaWallpaperL;
    }

    @Override // e6.b
    public final void a(int i10) {
        System.out.getClass();
    }

    @Override // e6.b
    public final void b(int i10, int i11) {
        System.out.getClass();
        ActivityNezhaWallpaperL activityNezhaWallpaperL = this.f15847a;
        activityNezhaWallpaperL.F.y(i10, i11);
        z7.o oVar = new z7.o();
        z7.s sVarG = activityNezhaWallpaperL.L.l(i10).g();
        activityNezhaWallpaperL.L.n(i10);
        for (int i12 = 0; i12 < activityNezhaWallpaperL.L.f19478a.size(); i12++) {
            if (i12 == i11) {
                oVar.k(sVarG);
            }
            oVar.k(activityNezhaWallpaperL.L.l(i12));
        }
        if (activityNezhaWallpaperL.L.f19478a.size() == i11) {
            oVar.k(sVarG);
        }
        activityNezhaWallpaperL.L = oVar;
    }

    @Override // e6.b
    public final void c(int i10) {
        System.out.getClass();
        this.f15847a.getClass();
    }
}
