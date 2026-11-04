package ua;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.ui.ActivityDisplayManager;
import com.yunpan.appmanage.ui.ActivityDisplayStartApp;
import com.yunpan.appmanage.ui.ActivityPresentation;
import com.yunpan.appmanage.ui.ActivityPresentation2;
import com.yunpan.appmanage.ui.ActivityTextHzh;
import ha.fa;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final /* synthetic */ class m1 implements c6.e, ha.p2 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActivityDisplayManager f15819a;

    public /* synthetic */ m1(ActivityDisplayManager activityDisplayManager) {
        this.f15819a = activityDisplayManager;
    }

    @Override // ha.p2
    public void c(String str, String str2) {
        ActivityDisplayManager activityDisplayManager = this.f15819a;
        activityDisplayManager.K = str2;
        activityDisplayManager.startActivityForResult(activityDisplayManager.F.createScreenCaptureIntent(), activityDisplayManager.M);
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        int i11 = 11;
        int i12 = ActivityDisplayManager.N;
        ActivityDisplayManager activityDisplayManager = this.f15819a;
        activityDisplayManager.getClass();
        if (i10 == 15) {
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            if (com.yunpan.appmanage.util.j.f4033a.f4053j) {
                activityDisplayManager.w(ActivityTextHzh.class);
                return;
            } else {
                com.yunpan.appmanage.util.a0.u("此功能仅支持公签系统");
                return;
            }
        }
        if (i10 == 16) {
            Bundle bundle = new Bundle();
            bundle.putBoolean("isNoPermissions", true);
            Intent intent = new Intent(activityDisplayManager.A, (Class<?>) ActivityDisplayStartApp.class);
            intent.putExtras(bundle);
            activityDisplayManager.startActivity(intent);
            return;
        }
        if (i10 == 17) {
            fa.b0.f5652a.getClass();
            if (a2.w0.M()) {
                activityDisplayManager.w(ActivityPresentation.class);
                return;
            } else {
                com.yunpan.appmanage.util.a0.u("请先连接adb");
                return;
            }
        }
        if (i10 == 18) {
            fa.b0.f5652a.getClass();
            if (a2.w0.M()) {
                activityDisplayManager.w(ActivityDisplayStartApp.class);
                return;
            } else {
                com.yunpan.appmanage.util.a0.u("请先连接adb");
                return;
            }
        }
        if (i10 == 19) {
            fa.b0.f5652a.getClass();
            if (a2.w0.M()) {
                activityDisplayManager.w(ActivityPresentation2.class);
                return;
            } else {
                com.yunpan.appmanage.util.a0.u("请先连接adb");
                return;
            }
        }
        if (i10 >= 12) {
            Toaster.show((CharSequence) "此功能暂未开放");
            return;
        }
        if (i10 == 8 || i10 == 9 || i10 == 11) {
            DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
            if (!com.yunpan.appmanage.util.j.f4033a.f4053j) {
                com.yunpan.appmanage.util.a0.u("此功能仅支持公签系统");
                return;
            }
        }
        new fa(activityDisplayManager, activityDisplayManager.A, null, activityDisplayManager.G, new ha.o(i10, i11, activityDisplayManager)).show();
    }
}
