package ha;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.provider.Settings;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.service.AdbPairService;

/* loaded from: classes.dex */
public final /* synthetic */ class c implements ec.d, ia {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f6831a;

    public /* synthetic */ c(i iVar) {
        this.f6831a = iVar;
    }

    @Override // ha.ia
    public void b(int i10) {
        i iVar = this.f6831a;
        Context context = iVar.f6725b;
        Activity activity = iVar.f6724a;
        if (i10 == 0) {
            Intent intent = new Intent(context, (Class<?>) AdbPairService.class);
            try {
                if (Build.VERSION.SDK_INT >= 26) {
                    context.startForegroundService(intent);
                } else {
                    context.startService(intent);
                }
            } catch (Exception unused) {
                com.yunpan.appmanage.util.a0.t("无法打开服务");
            }
            iVar.dismiss();
            try {
                activity.startActivity(new Intent("android.settings.APPLICATION_DEVELOPMENT_SETTINGS"));
                return;
            } catch (Exception unused2) {
                com.yunpan.appmanage.util.a0.t("您没有开启【开发者选项】？？？");
                return;
            }
        }
        if (i10 > 1 && !context.getPackageManager().hasSystemFeature("android.software.activities_on_secondary_displays")) {
            Toaster.show((CharSequence) "此设备未开启分屏，请先开启");
            return;
        }
        if (i10 == 2) {
            try {
                if (Settings.Global.getInt(activity.getContentResolver(), "enable_freeform_support") != 1) {
                    Settings.Global.putInt(activity.getContentResolver(), "enable_freeform_support", 1);
                    Settings.Global.putInt(activity.getContentResolver(), "force_resizable_activities", 1);
                }
            } catch (Exception unused3) {
                new z6(iVar.f6724a, iVar.f6725b, "此设备未开启自由窗口，请先开启！可以在开发者选项里面勾选多窗口模式(自由窗口)和窗口可调节大小！也可以用adb命令给我权限，比如用手机甲壳虫连本机，或手机用" + context.getString(R.string.app_name) + "的OTG-adb功能连接本机然后授权\n\nadb shell pm grant " + activity.getPackageName() + " android.permission.WRITE_SECURE_SETTINGS", "", "复制命令", "关闭提示", new g(iVar, 0)).show();
                return;
            }
        }
        iVar.dismiss();
        ((ua.u7) iVar.f7174h).e(i10);
    }

    @Override // ec.d
    public void g(mc.b bVar) throws InterruptedException {
        i iVar = this.f6831a;
        iVar.getClass();
        try {
            boolean z = true;
            boolean z4 = Settings.Global.getInt(AppStart.f3772h.getContentResolver(), "adb_enabled") == 0 && Settings.Global.putInt(AppStart.f3772h.getContentResolver(), "adb_enabled", 1);
            if (z4) {
                Thread.sleep(268L);
            }
            if (Settings.Global.getInt(AppStart.f3772h.getContentResolver(), "adb_wifi_enabled") == 1 || !Settings.Global.putInt(AppStart.f3772h.getContentResolver(), "adb_wifi_enabled", 1)) {
                z = z4;
            }
            if (z) {
                Toaster.show((CharSequence) "尝试打开adb");
                Thread.sleep(368L);
            }
        } catch (Exception unused) {
        }
        try {
            fa.l.f5712a.M(iVar.f6725b);
            bVar.b();
        } catch (Exception e7) {
            bVar.d(e7);
        }
    }
}
