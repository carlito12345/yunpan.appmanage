package ua;

import android.view.View;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.ui.ActivityAppBatch;
import ha.fb;
import java.text.DecimalFormat;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final /* synthetic */ class h implements c6.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15704a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityAppBatch f15705b;

    public /* synthetic */ h(ActivityAppBatch activityAppBatch, int i10) {
        this.f15704a = i10;
        this.f15705b = activityAppBatch;
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        switch (this.f15704a) {
            case 0:
                int i11 = ActivityAppBatch.G;
                ActivityAppBatch activityAppBatch = this.f15705b;
                activityAppBatch.getClass();
                com.bumptech.glide.c.i(666, view);
                String str = ((x9.l3) activityAppBatch.D.t(i10)).f18272b;
                if (!str.contains("返回")) {
                    int i12 = 0;
                    if (!str.contains("全选") && !str.contains("不选")) {
                        ArrayList arrayList = new ArrayList();
                        while (i12 < activityAppBatch.F.b()) {
                            if (((x9.n3) activityAppBatch.F.t(i12)).f18289d) {
                                arrayList.add(new x9.m4((x9.n3) activityAppBatch.F.t(i12), "待".concat(str)));
                            }
                            i12++;
                        }
                        if (arrayList.size() != 0) {
                            if (str.contains("提取") && fa.g0.f5682a.d().isEmpty()) {
                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                if (com.yunpan.appmanage.util.j.f4033a.f4073v.isEmpty()) {
                                    Toaster.showLong((CharSequence) "未找到可用的存储设备(sd卡、U盘)");
                                    break;
                                }
                            }
                            if (str.contains("重置") || str.contains("缓存")) {
                                fa.b0.f5652a.getClass();
                                if (!a2.w0.P()) {
                                    Toaster.show((CharSequence) "需root或adb方可使用此功能");
                                    break;
                                }
                            }
                            new fb(activityAppBatch, activityAppBatch.A, arrayList, str, new h(activityAppBatch, 2)).show();
                            break;
                        } else {
                            Toaster.show((CharSequence) "请选择你要操作的应用！");
                            break;
                        }
                    } else {
                        while (i12 < activityAppBatch.F.b()) {
                            ((x9.n3) activityAppBatch.F.t(i12)).f18289d = str.contains("全选");
                            activityAppBatch.F.e(i12);
                            i12++;
                        }
                        break;
                    }
                } else {
                    activityAppBatch.finish();
                    break;
                }
                break;
            default:
                ActivityAppBatch activityAppBatch2 = this.f15705b;
                x9.n3 n3Var = (x9.n3) activityAppBatch2.F.t(i10);
                if (n3Var.f18288c) {
                    fa.b0.f5652a.getClass();
                    if (!a2.w0.P()) {
                        Toaster.show((CharSequence) "这是系统应用，需要root或adb方可操作");
                        break;
                    }
                }
                n3Var.f18289d = !n3Var.f18289d;
                activityAppBatch2.F.e(i10);
                break;
        }
    }
}
