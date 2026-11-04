package ua;

import com.yunpan.appmanage.ui.ActivityNezhaWallpaper;

/* loaded from: classes.dex */
public final class e4 extends ha.l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15654b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ActivityNezhaWallpaper f15655c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ e4(ActivityNezhaWallpaper activityNezhaWallpaper, int i10) {
        super(28);
        this.f15654b = i10;
        this.f15655c = activityNezhaWallpaper;
    }

    @Override // ha.l2, ec.e
    public final void B(Throwable th2) {
        switch (this.f15654b) {
            case 0:
                this.f15655c.I.setVisibility(8);
                com.yunpan.appmanage.util.a0.s(String.valueOf(th2.getMessage()), false);
                break;
            default:
                th2.printStackTrace();
                com.yunpan.appmanage.util.a0.t(String.valueOf(th2.getMessage()));
                this.f15655c.finish();
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void b(gc.b bVar) {
        switch (this.f15654b) {
            case 0:
                ActivityNezhaWallpaper activityNezhaWallpaper = this.f15655c;
                activityNezhaWallpaper.I.setVisibility(0);
                activityNezhaWallpaper.K.setText("保存中");
                break;
            default:
                this.f15655c.K.setText("读取中");
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void onComplete() {
        switch (this.f15654b) {
            case 0:
                this.f15655c.I.setVisibility(8);
                com.yunpan.appmanage.util.a0.w("保存成功");
                break;
            default:
                ActivityNezhaWallpaper activityNezhaWallpaper = this.f15655c;
                activityNezhaWallpaper.I.setVisibility(8);
                activityNezhaWallpaper.D.E(activityNezhaWallpaper.G);
                activityNezhaWallpaper.F.E(activityNezhaWallpaper.H);
                break;
        }
    }
}
