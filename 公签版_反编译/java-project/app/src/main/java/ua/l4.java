package ua;

import com.yunpan.appmanage.ui.ActivityNezhaWallpaperL;

/* loaded from: classes.dex */
public final class l4 extends ha.l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15803b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ActivityNezhaWallpaperL f15804c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ l4(ActivityNezhaWallpaperL activityNezhaWallpaperL, int i10) {
        super(28);
        this.f15803b = i10;
        this.f15804c = activityNezhaWallpaperL;
    }

    @Override // ha.l2, ec.e
    public final void B(Throwable th2) {
        switch (this.f15803b) {
            case 0:
                this.f15804c.I.setVisibility(8);
                com.yunpan.appmanage.util.a0.s(String.valueOf(th2.getMessage()), false);
                break;
            default:
                th2.printStackTrace();
                com.yunpan.appmanage.util.a0.t(String.valueOf(th2.getMessage()));
                this.f15804c.finish();
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void b(gc.b bVar) {
        switch (this.f15803b) {
            case 0:
                ActivityNezhaWallpaperL activityNezhaWallpaperL = this.f15804c;
                activityNezhaWallpaperL.I.setVisibility(0);
                activityNezhaWallpaperL.K.setText("保存中");
                break;
            default:
                this.f15804c.K.setText("读取中");
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void onComplete() {
        switch (this.f15803b) {
            case 0:
                this.f15804c.I.setVisibility(8);
                com.yunpan.appmanage.util.a0.w("保存成功");
                break;
            default:
                ActivityNezhaWallpaperL activityNezhaWallpaperL = this.f15804c;
                activityNezhaWallpaperL.I.setVisibility(8);
                activityNezhaWallpaperL.D.E(activityNezhaWallpaperL.G);
                activityNezhaWallpaperL.F.E(activityNezhaWallpaperL.H);
                break;
        }
    }
}
