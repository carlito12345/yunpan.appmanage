package ua;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.Build;
import com.yunpan.appmanage.bean.KeyCodeBean;
import com.yunpan.appmanage.ui.ActivityShell;
import ha.xb;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final /* synthetic */ class k6 implements ha.p2, xb {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15786a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ha.h3 f15787b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f15788c;

    public /* synthetic */ k6(ha.h3 h3Var, String str, int i10) {
        this.f15786a = i10;
        this.f15787b = h3Var;
        this.f15788c = str;
    }

    @Override // ha.xb
    public void a(KeyCodeBean keyCodeBean) {
        ha.h3 h3Var = this.f15787b;
        h3Var.getClass();
        ActivityShell.x((ActivityShell) h3Var.f7143d, this.f15788c.replace("[键码]", String.valueOf(keyCodeBean.keyCode)));
    }

    @Override // ha.p2
    public void c(String str, String str2) {
        String str3 = this.f15788c;
        ha.h3 h3Var = this.f15787b;
        int i10 = this.f15786a;
        h3Var.getClass();
        switch (i10) {
            case 0:
                ActivityShell.x((ActivityShell) h3Var.f7143d, str3.replace("[包名]", str2));
                break;
            default:
                Intent launchIntentForPackage = null;
                try {
                    if (Build.VERSION.SDK_INT >= 21) {
                        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                        launchIntentForPackage = com.yunpan.appmanage.util.j.f4033a.f4037b.getLeanbackLaunchIntentForPackage(str2);
                    }
                    if (launchIntentForPackage == null) {
                        DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                        launchIntentForPackage = com.yunpan.appmanage.util.j.f4033a.f4037b.getLaunchIntentForPackage(str2);
                    }
                    if (launchIntentForPackage == null) {
                        DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                        ActivityInfo[] activityInfoArr = com.yunpan.appmanage.util.j.f4033a.f4037b.getPackageInfo(str2, 1).activities;
                        if (activityInfoArr != null) {
                            for (ActivityInfo activityInfo : activityInfoArr) {
                                if (activityInfo.exported && activityInfo.enabled) {
                                    Intent intent = new Intent();
                                    try {
                                        intent.setComponent(new ComponentName(activityInfo.packageName, activityInfo.name));
                                        launchIntentForPackage = intent;
                                    } catch (Exception unused) {
                                        launchIntentForPackage = intent;
                                    }
                                }
                            }
                        }
                    }
                } catch (Exception unused2) {
                }
                if (launchIntentForPackage != null) {
                    ActivityShell.x((ActivityShell) h3Var.f7143d, str3.replace("[主活动]", launchIntentForPackage.getComponent().flattenToString()));
                    break;
                }
                break;
        }
    }
}
