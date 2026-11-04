package ha;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.view.View;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.bean.StrIntBoolBean;

/* loaded from: classes.dex */
public final /* synthetic */ class u1 implements c6.e, ea.g, p2 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7850a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ w1 f7851b;

    public /* synthetic */ u1(w1 w1Var, int i10) {
        this.f7850a = i10;
        this.f7851b = w1Var;
    }

    @Override // ea.g
    public void a(String str) {
        switch (this.f7850a) {
            case 3:
                w1 w1Var = this.f7851b;
                w1Var.getClass();
                int iIndexOf = str.indexOf(":");
                if (iIndexOf != -1) {
                    w1Var.f7983k.setText(str.substring(iIndexOf + 1).trim());
                    w1Var.f7990v = str.substring(0, iIndexOf).trim();
                    break;
                } else {
                    Toaster.show((CharSequence) "此条日志不符合");
                    break;
                }
            default:
                w1 w1Var2 = this.f7851b;
                StrIntBoolBean strIntBoolBean = (StrIntBoolBean) w1Var2.f7987q.t(0);
                w1Var2.A = str;
                if (str.isEmpty()) {
                    strIntBoolBean.strValue = "导航到XXX、导航到家、导航到公司 (如果您语音本身就支持，那么不要勾选)";
                } else {
                    strIntBoolBean.strValue = g.b.l(w1Var2.A, "XXX (如果您语音本身就支持，那么不要勾选)", new StringBuilder());
                }
                w1Var2.f7987q.D(0, strIntBoolBean);
                break;
        }
    }

    @Override // ha.p2
    public void c(String str, String str2) {
        w1 w1Var = this.f7851b;
        w1Var.f7993y = str;
        w1Var.z = str2;
        if (!str2.isEmpty()) {
            w1Var.f7981i.setText(w1Var.f7993y + SignParameters.NEW_LINE + w1Var.z);
        }
        Intent leanbackLaunchIntentForPackage = Build.VERSION.SDK_INT >= 21 ? AppStart.f3772h.getPackageManager().getLeanbackLaunchIntentForPackage(w1Var.z) : null;
        if (leanbackLaunchIntentForPackage == null) {
            leanbackLaunchIntentForPackage = AppStart.f3772h.getPackageManager().getLaunchIntentForPackage(w1Var.z);
        }
        if (leanbackLaunchIntentForPackage != null) {
            String strFlattenToString = leanbackLaunchIntentForPackage.getComponent().flattenToString();
            System.out.getClass();
            if (strFlattenToString.contains("/com.autonavi.auto.") || w1Var.z.startsWith("com.autonavi.amapauto")) {
                w1Var.f7992x = 0;
                return;
            }
            if (strFlattenToString.contains("/com.autonavi.map") || w1Var.z.startsWith("com.autonavi.minimap")) {
                w1Var.f7992x = 1;
                return;
            }
            if (strFlattenToString.contains("/com.baidu.naviauto.") || w1Var.z.startsWith("com.baidu.naviauto")) {
                w1Var.f7992x = 2;
                return;
            } else if (strFlattenToString.contains("/com.tencent.wecarnavi.") || w1Var.z.startsWith("com.tencent.wecarnavi")) {
                w1Var.f7992x = 3;
                return;
            }
        }
        com.yunpan.appmanage.util.a0.u("无法识别此地图app，将默认高德地图(车机版)");
        w1Var.f7992x = 0;
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        switch (this.f7850a) {
            case 0:
                w1 w1Var = this.f7851b;
                w1Var.getClass();
                z7.s sVar = (z7.s) new z7.m().b((z7.p) w1Var.f7988s.t(i10));
                new z1(w1Var.f6724a, w1Var.f6725b, sVar, new v1(w1Var, sVar, i10, 0)).show();
                break;
            case 1:
                w1 w1Var2 = this.f7851b;
                if (i10 != 3) {
                    ((StrIntBoolBean) w1Var2.f7987q.t(i10)).boolValue = !r4.boolValue;
                    w1Var2.f7987q.e(i10);
                    break;
                } else {
                    new c2(w1Var2.f6724a, w1Var2.f6725b, w1Var2.B, new o(i10, 3, w1Var2)).show();
                    break;
                }
            default:
                w1 w1Var3 = this.f7851b;
                if (w1Var3.f7991w != i10) {
                    w1Var3.f7991w = i10;
                    w1Var3.r.G(i10);
                    Context context = w1Var3.f6725b;
                    if (i10 != 0) {
                        if (i10 == 1) {
                            w1Var3.f7980h.setText(context.getString(R.string.add_voice_log_dialog_2));
                            break;
                        }
                    } else {
                        w1Var3.f7980h.setText(context.getString(R.string.add_voice_log_dialog_1));
                        break;
                    }
                }
                break;
        }
    }
}
