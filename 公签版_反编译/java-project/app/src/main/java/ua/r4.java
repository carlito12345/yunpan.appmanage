package ua;

import com.yunpan.appmanage.ui.ActivityNezhaWallpaperX;

/* loaded from: classes.dex */
public final class r4 extends ha.l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15933b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ActivityNezhaWallpaperX f15934c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ r4(ActivityNezhaWallpaperX activityNezhaWallpaperX, int i10) {
        super(28);
        this.f15933b = i10;
        this.f15934c = activityNezhaWallpaperX;
    }

    @Override // ha.l2, ec.e
    public final void B(Throwable th2) {
        switch (this.f15933b) {
            case 0:
                this.f15934c.F.setVisibility(8);
                com.yunpan.appmanage.util.a0.s(String.valueOf(th2.getMessage()), false);
                break;
            default:
                th2.printStackTrace();
                com.yunpan.appmanage.util.a0.t(String.valueOf(th2.getMessage()));
                this.f15934c.finish();
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void b(gc.b bVar) {
        switch (this.f15933b) {
            case 0:
                ActivityNezhaWallpaperX activityNezhaWallpaperX = this.f15934c;
                activityNezhaWallpaperX.F.setVisibility(0);
                activityNezhaWallpaperX.G.setText("保存中");
                break;
            default:
                this.f15934c.G.setText("读取中");
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void onComplete() {
        switch (this.f15933b) {
            case 0:
                this.f15934c.F.setVisibility(8);
                com.yunpan.appmanage.util.a0.w("保存成功");
                break;
            default:
                ActivityNezhaWallpaperX activityNezhaWallpaperX = this.f15934c;
                activityNezhaWallpaperX.F.setVisibility(8);
                activityNezhaWallpaperX.D.E(activityNezhaWallpaperX.E);
                break;
        }
    }
}
