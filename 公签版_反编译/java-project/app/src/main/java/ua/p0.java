package ua;

import android.content.ComponentName;
import android.content.Intent;
import android.provider.Settings;
import android.view.View;
import com.hjq.permissions.OnPermissionCallback;
import com.hjq.permissions.XXPermissions;
import com.hjq.permissions.permission.PermissionLists;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.service.AccService;
import com.yunpan.appmanage.ui.ActivityAutoClick;
import com.yunpan.appmanage.ui.ActivityAutomation;
import com.yunpan.appmanage.ui.ActivityDesktopSelected;
import com.yunpan.appmanage.ui.ActivityFloatButton;
import com.yunpan.appmanage.ui.ActivityKeyMapAcc;
import com.yunpan.appmanage.ui.ActivityKeyMapEvent;
import com.yunpan.appmanage.ui.ActivityKeyMapLogcat;
import com.yunpan.appmanage.ui.ActivityKeyMapNissan;
import com.yunpan.appmanage.ui.ActivityKeymapAiOnY;
import com.yunpan.appmanage.ui.ActivityKeymapFlyOS18;
import com.yunpan.appmanage.ui.ActivityKeymapJieT;
import com.yunpan.appmanage.ui.ActivityRotation;
import com.yunpan.appmanage.ui.ActivitySidebar;
import com.yunpan.appmanage.ui.ActivityVoiceIflytek;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final /* synthetic */ class p0 implements ec.d, androidx.activity.result.b, c6.e, OnPermissionCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15873a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityAutomation f15874b;

    public /* synthetic */ p0(ActivityAutomation activityAutomation, int i10) {
        this.f15873a = i10;
        this.f15874b = activityAutomation;
    }

    @Override // androidx.activity.result.b
    public void a(Object obj) {
        int i10 = ActivityAutomation.L;
        ActivityAutomation activityAutomation = this.f15874b;
        activityAutomation.getClass();
        if (((androidx.activity.result.a) obj).f833a == -1) {
            com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
            if (wVar.L0.isEmpty()) {
                return;
            }
            x9.k3 k3Var = activityAutomation.G;
            int i11 = wVar.L0.isEmpty() ? R.drawable.tp_check2 : R.drawable.tp_check1;
            StringBuilder sb2 = new StringBuilder("桌面选择：系统弹出桌面选择器时自动帮您点击");
            sb2.append(wVar.L0.isEmpty() ? "" : g.b.l(wVar.L0, "）", new StringBuilder("（")));
            k3Var.D(2, new x9.l3(i11, sb2.toString()));
        }
    }

    @Override // ec.d
    public void g(mc.b bVar) throws InterruptedException, IOException {
        boolean z;
        int i10;
        String strSubstring;
        int i11;
        String strSubstring2;
        com.yunpan.appmanage.util.b0 b0Var = wa.v.f17759a;
        ActivityAutomation activityAutomation = this.f15874b;
        switch (this.f15873a) {
            case 0:
                int i12 = ActivityAutomation.L;
                activityAutomation.getClass();
                ComponentName componentName = new ComponentName(activityAutomation.getPackageName(), AccService.class.getName());
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                if (kVar.f4037b.getComponentEnabledSetting(componentName) == 2) {
                    try {
                        try {
                            kVar.f4037b.setComponentEnabledSetting(componentName, 1, 1);
                        } catch (Exception unused) {
                            a2.w0 w0Var = fa.b0.f5652a;
                            String strFlattenToString = componentName.flattenToString();
                            w0Var.getClass();
                            z = false;
                            try {
                                a2.w0.V(strFlattenToString, false);
                            } catch (Exception unused2) {
                                com.yunpan.appmanage.util.a0.s("失败：服务被禁用，请解禁", z);
                                bVar.d(new Exception());
                                return;
                            }
                        }
                    } catch (Exception unused3) {
                        z = false;
                        com.yunpan.appmanage.util.a0.s("失败：服务被禁用，请解禁", z);
                        bVar.d(new Exception());
                        return;
                    }
                }
                String string = Settings.Secure.getString(activityAutomation.A.getContentResolver(), "enabled_accessibility_services");
                if (string == null) {
                    string = "";
                }
                if (string.isEmpty()) {
                    strSubstring = componentName.flattenToString();
                    i10 = 1;
                } else {
                    HashSet hashSet = new HashSet();
                    String[] strArrSplit = string.split(":");
                    int length = strArrSplit.length;
                    int i13 = 0;
                    while (i13 < length) {
                        int i14 = length;
                        String str = strArrSplit[i13];
                        if (str.contains("/")) {
                            try {
                                hashSet.add(ComponentName.unflattenFromString(str.trim()).flattenToString());
                            } catch (Exception unused4) {
                            }
                        }
                        i13++;
                        length = i14;
                    }
                    if (hashSet.contains(componentName.flattenToString())) {
                        Settings.Secure.putString(activityAutomation.A.getContentResolver(), "enabled_accessibility_services", "");
                        Settings.Secure.putInt(activityAutomation.A.getContentResolver(), "accessibility_enabled", 1);
                        Thread.sleep(222L);
                        Settings.Secure.putInt(activityAutomation.A.getContentResolver(), "accessibility_enabled", 0);
                        Thread.sleep(222L);
                        Settings.Secure.putInt(activityAutomation.A.getContentResolver(), "accessibility_enabled", 1);
                    } else {
                        hashSet.add(componentName.flattenToString());
                    }
                    StringBuilder sb2 = new StringBuilder();
                    Iterator it = hashSet.iterator();
                    while (it.hasNext()) {
                        sb2.append((String) it.next());
                        sb2.append(":");
                    }
                    i10 = 1;
                    strSubstring = sb2.toString().substring(0, sb2.length() - 1);
                }
                b0Var.e(strSubstring);
                boolean zPutString = Settings.Secure.putString(activityAutomation.A.getContentResolver(), "enabled_accessibility_services", strSubstring);
                if (zPutString) {
                    zPutString = Settings.Secure.putInt(activityAutomation.A.getContentResolver(), "accessibility_enabled", i10);
                }
                if (!zPutString || com.yunpan.appmanage.util.v.f4106a.S) {
                    String str2 = "settings put secure enabled_accessibility_services '" + strSubstring + "'";
                    fa.b0.f5652a.getClass();
                    if (a2.w0.h(str2).f5648a != 0 && !zPutString) {
                        bVar.d(new Exception("无权限修改"));
                        com.yunpan.appmanage.util.a0.t("启动失败");
                        break;
                    } else {
                        a2.w0.h("settings put secure accessibility_enabled 1");
                    }
                }
                Thread.sleep(666L);
                bVar.b();
                break;
            default:
                int i15 = ActivityAutomation.L;
                String string2 = Settings.Secure.getString(activityAutomation.A.getContentResolver(), "enabled_accessibility_services");
                if (string2 != null && !string2.isEmpty()) {
                    String[] strArrSplit2 = string2.split(":");
                    HashSet hashSet2 = new HashSet();
                    int length2 = strArrSplit2.length;
                    int i16 = 0;
                    while (i16 < length2) {
                        int i17 = length2;
                        String str3 = strArrSplit2[i16];
                        if (str3.contains("/")) {
                            try {
                                hashSet2.add(ComponentName.unflattenFromString(str3.trim()).flattenToString());
                            } catch (Exception unused5) {
                            }
                        }
                        i16++;
                        length2 = i17;
                    }
                    String strFlattenToString2 = ComponentName.unflattenFromString(activityAutomation.A.getPackageName() + "/" + AccService.class.getName()).flattenToString();
                    if (hashSet2.contains(strFlattenToString2)) {
                        StringBuilder sb3 = new StringBuilder();
                        Iterator it2 = hashSet2.iterator();
                        while (it2.hasNext()) {
                            String str4 = (String) it2.next();
                            if (!str4.equals(strFlattenToString2)) {
                                sb3.append(str4);
                                sb3.append(":");
                            }
                        }
                        if (sb3.length() > 0) {
                            i11 = 1;
                            strSubstring2 = sb3.toString().substring(0, sb3.length() - 1);
                        } else {
                            i11 = 1;
                            strSubstring2 = "";
                        }
                        b0Var.e(strSubstring2);
                        boolean zPutString2 = Settings.Secure.putString(activityAutomation.A.getContentResolver(), "enabled_accessibility_services", strSubstring2);
                        if (zPutString2) {
                            zPutString2 = Settings.Secure.putInt(activityAutomation.A.getContentResolver(), "accessibility_enabled", i11);
                        }
                        if (!zPutString2 || com.yunpan.appmanage.util.v.f4106a.S) {
                            String str5 = "settings put secure enabled_accessibility_services '" + strSubstring2 + "'";
                            fa.b0.f5652a.getClass();
                            if (a2.w0.h(str5).f5648a != 0 && !zPutString2) {
                                bVar.d(new Exception("无权限修改"));
                                com.yunpan.appmanage.util.a0.t("关闭失败");
                                break;
                            } else {
                                a2.w0.h("settings put secure accessibility_enabled 1");
                            }
                        }
                    }
                    bVar.b();
                    break;
                } else {
                    bVar.b();
                    break;
                }
                break;
        }
    }

    @Override // com.hjq.permissions.OnPermissionCallback
    public void onPermissionResult(List list, List list2) {
        int i10 = ActivityAutomation.L;
        ActivityAutomation activityAutomation = this.f15874b;
        activityAutomation.getClass();
        if (list2.isEmpty()) {
            new ha.z6(activityAutomation, activityAutomation, "需要授权悬浮窗权限【在上层显示】方可使用\n\n如果你已经授权了，请取消授权，重新授权即可", "").show();
        }
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        ActivityAutomation activityAutomation = this.f15874b;
        String str = ((x9.l3) activityAutomation.G.t(i10)).f18272b;
        if (str.startsWith("按键映射")) {
            if (activityAutomation.E.getText().toString().equals("服务运行中")) {
                activityAutomation.w(ActivityKeyMapAcc.class);
                return;
            } else {
                Toaster.showLong((CharSequence) "需要先开启服务(总开关)");
                return;
            }
        }
        if (str.startsWith("日志映射")) {
            try {
                if (activityAutomation.getPackageManager().checkPermission("android.permission.READ_LOGS", activityAutomation.getPackageName()) != 0) {
                    new ha.z6(activityAutomation, activityAutomation, "请授予" + activityAutomation.getResources().getString(R.string.app_name) + "【读取系统日志】权限", "").show();
                    return;
                }
            } catch (Exception unused) {
            }
            activityAutomation.w(ActivityKeyMapLogcat.class);
            return;
        }
        if (str.startsWith("事件映射")) {
            activityAutomation.w(ActivityKeyMapEvent.class);
            return;
        }
        if (str.startsWith("桌面选择")) {
            com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
            if (wVar.L0.isEmpty()) {
                activityAutomation.H.a(new Intent(activityAutomation, (Class<?>) ActivityDesktopSelected.class));
                return;
            }
            wVar.L0 = "";
            try {
                wVar.f4123i.m("Auto_task_desktop_selected_appName", "");
            } catch (Exception unused2) {
            }
            wVar.m();
            ((x9.l3) activityAutomation.G.t(i10)).f18271a = R.drawable.tp_check2;
            ((x9.l3) activityAutomation.G.t(i10)).f18272b = "桌面选择：系统弹出桌面选择器时自动帮您点击";
            activityAutomation.G.e(i10);
            return;
        }
        if (str.startsWith("自动点击")) {
            activityAutomation.w(ActivityAutoClick.class);
            return;
        }
        if (str.startsWith("日产车机：映射方向盘")) {
            activityAutomation.w(ActivityKeyMapNissan.class);
            return;
        }
        if (str.startsWith("悬浮按钮")) {
            if (view.isFocused()) {
                com.yunpan.appmanage.util.a0.u("此功能车机专用");
                return;
            } else {
                activityAutomation.w(ActivityFloatButton.class);
                return;
            }
        }
        if (str.startsWith("侧边手势")) {
            if (view.isFocused()) {
                com.yunpan.appmanage.util.a0.u("此功能车机专用");
                return;
            } else {
                activityAutomation.w(ActivitySidebar.class);
                return;
            }
        }
        if (str.startsWith("捷途车机")) {
            activityAutomation.w(ActivityKeymapJieT.class);
            return;
        }
        if (str.startsWith("广汽埃安")) {
            activityAutomation.w(ActivityKeymapAiOnY.class);
            return;
        }
        if (str.startsWith("吉利星愿")) {
            activityAutomation.w(ActivityKeymapFlyOS18.class);
            return;
        }
        if (str.startsWith("讯飞语音")) {
            activityAutomation.w(ActivityVoiceIflytek.class);
            return;
        }
        if (!str.startsWith("强制旋转")) {
            Toaster.showLong((CharSequence) "功能开发中，敬请期待");
            return;
        }
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        if (XXPermissions.isGrantedPermission(com.yunpan.appmanage.util.j.f4033a.f4035a, PermissionLists.getSystemAlertWindowPermission())) {
            activityAutomation.w(ActivityRotation.class);
        } else {
            XXPermissions.with(activityAutomation).permission(PermissionLists.getSystemAlertWindowPermission()).request(new p0(activityAutomation, 3));
        }
    }
}
