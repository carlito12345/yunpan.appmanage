package ua;

import com.yunpan.appmanage.ui.ActivityClean;
import java.util.List;

/* loaded from: classes.dex */
public final class z0 extends ha.l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f16070b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ActivityClean f16071c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ z0(ActivityClean activityClean, int i10) {
        super(28);
        this.f16070b = i10;
        this.f16071c = activityClean;
    }

    @Override // ha.l2, ec.e
    public final void B(Throwable th2) {
        switch (this.f16070b) {
            case 0:
                th2.printStackTrace();
                ActivityClean activityClean = this.f16071c;
                activityClean.I.cancel();
                activityClean.K.cancel();
                activityClean.F.setText("扫描完成");
                activityClean.C.setText("开始清理");
                break;
            default:
                th2.printStackTrace();
                ActivityClean activityClean2 = this.f16071c;
                activityClean2.I.cancel();
                activityClean2.K.cancel();
                activityClean2.F.setText("清理完成");
                activityClean2.C.setText("清理完成");
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void E(Object obj) {
        switch (this.f16070b) {
            case 0:
                boolean z = obj instanceof x9.z0;
                ActivityClean activityClean = this.f16071c;
                if (!z) {
                    if (obj instanceof List) {
                        activityClean.E.r((List) obj);
                        break;
                    }
                } else {
                    activityClean.E.q((x9.z0) obj);
                    break;
                }
                break;
            default:
                this.f16071c.E.e(((Integer) obj).intValue());
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void b(gc.b bVar) {
        switch (this.f16070b) {
            case 0:
                ActivityClean activityClean = this.f16071c;
                activityClean.I.start();
                activityClean.K.start();
                activityClean.F.setText("扫描中");
                activityClean.C.setText("扫描中");
                break;
            default:
                ActivityClean activityClean2 = this.f16071c;
                activityClean2.I.start();
                activityClean2.K.start();
                activityClean2.F.setText("清理中");
                activityClean2.C.setText("清理中");
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void onComplete() {
        switch (this.f16070b) {
            case 0:
                ActivityClean activityClean = this.f16071c;
                activityClean.I.cancel();
                activityClean.K.cancel();
                activityClean.F.setText("扫描完成");
                activityClean.C.setText("开始清理");
                break;
            default:
                ActivityClean activityClean2 = this.f16071c;
                activityClean2.I.cancel();
                activityClean2.K.cancel();
                activityClean2.F.setText("清理完成");
                activityClean2.C.setText("清理完成");
                break;
        }
    }
}
