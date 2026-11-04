package ua;

import com.yunpan.appmanage.ui.ActivityAppDetailHistoryLog;

/* loaded from: classes.dex */
public final class n extends ha.l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15840b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ActivityAppDetailHistoryLog f15841c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ n(ActivityAppDetailHistoryLog activityAppDetailHistoryLog, int i10) {
        super(28);
        this.f15840b = i10;
        this.f15841c = activityAppDetailHistoryLog;
    }

    @Override // ha.l2, ec.e
    public void B(Throwable th2) {
        switch (this.f15840b) {
            case 1:
                th2.printStackTrace();
                com.yunpan.appmanage.util.a0.t("无法获取数据");
                ActivityAppDetailHistoryLog activityAppDetailHistoryLog = this.f15841c;
                activityAppDetailHistoryLog.F.setVisibility(8);
                activityAppDetailHistoryLog.D.E(activityAppDetailHistoryLog.E);
                if (activityAppDetailHistoryLog.E.isEmpty()) {
                    activityAppDetailHistoryLog.G.setVisibility(0);
                    break;
                }
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void b(gc.b bVar) {
        switch (this.f15840b) {
            case 0:
                this.f15841c.I.setText("导出中");
                break;
            default:
                ActivityAppDetailHistoryLog activityAppDetailHistoryLog = this.f15841c;
                activityAppDetailHistoryLog.C.stopScroll();
                activityAppDetailHistoryLog.G.setVisibility(8);
                activityAppDetailHistoryLog.F.setVisibility(0);
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void onComplete() {
        switch (this.f15840b) {
            case 0:
                this.f15841c.I.setText("导出");
                break;
            default:
                ActivityAppDetailHistoryLog activityAppDetailHistoryLog = this.f15841c;
                activityAppDetailHistoryLog.F.setVisibility(8);
                activityAppDetailHistoryLog.D.E(activityAppDetailHistoryLog.E);
                if (activityAppDetailHistoryLog.E.isEmpty()) {
                    activityAppDetailHistoryLog.G.setVisibility(0);
                    break;
                }
                break;
        }
    }
}
