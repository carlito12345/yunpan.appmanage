package ua;

import com.yunpan.appmanage.ui.ActivityNezhaWallpaperX;

/* loaded from: classes.dex */
public final class t4 implements e6.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActivityNezhaWallpaperX f15967a;

    public t4(ActivityNezhaWallpaperX activityNezhaWallpaperX) {
        this.f15967a = activityNezhaWallpaperX;
    }

    @Override // e6.b
    public final void a(int i10) {
        System.out.getClass();
        z7.o oVar = new z7.o();
        ActivityNezhaWallpaperX activityNezhaWallpaperX = this.f15967a;
        z7.s sVarG = activityNezhaWallpaperX.I.l(activityNezhaWallpaperX.K).g();
        activityNezhaWallpaperX.I.n(activityNezhaWallpaperX.K);
        for (int i11 = 0; i11 < activityNezhaWallpaperX.I.f19478a.size(); i11++) {
            if (i11 == i10) {
                oVar.k(sVarG);
            }
            oVar.k(activityNezhaWallpaperX.I.l(i11));
        }
        if (activityNezhaWallpaperX.I.f19478a.size() == i10) {
            oVar.k(sVarG);
        }
        activityNezhaWallpaperX.I = oVar;
    }

    @Override // e6.b
    public final void b(int i10, int i11) {
        System.out.getClass();
        this.f15967a.D.y(i10, i11);
    }

    @Override // e6.b
    public final void c(int i10) {
        System.out.getClass();
        this.f15967a.K = i10;
    }
}
