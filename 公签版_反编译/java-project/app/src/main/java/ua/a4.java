package ua;

import com.yunpan.appmanage.ui.ActivityNezha;

/* loaded from: classes.dex */
public final class a4 extends ha.l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15563b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ActivityNezha f15564c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ a4(ActivityNezha activityNezha, int i10) {
        super(28);
        this.f15563b = i10;
        this.f15564c = activityNezha;
    }

    @Override // ha.l2, ec.e
    public final void B(Throwable th2) {
        switch (this.f15563b) {
            case 0:
                StringBuilder sbR = l2.z.r(this.f15564c.E, "");
                sbR.append(th2.getMessage());
                com.yunpan.appmanage.util.a0.z(sbR.toString(), false);
                break;
            default:
                this.f15564c.E.a();
                com.yunpan.appmanage.util.a0.y(th2.getMessage() + "");
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void b(gc.b bVar) {
        switch (this.f15563b) {
            case 0:
                this.f15564c.E.c("修改中");
                break;
            default:
                this.f15564c.E.c("提权中");
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void onComplete() {
        switch (this.f15563b) {
            case 0:
                this.f15564c.E.a();
                fa.b0.f5652a.getClass();
                if (!a2.w0.P()) {
                    com.yunpan.appmanage.util.a0.v("正在尝试连接adb", false);
                    fa.h.f5683a.h(null);
                    break;
                }
                break;
            default:
                this.f15564c.E.a();
                com.yunpan.appmanage.util.a0.w("提权成功");
                break;
        }
    }
}
