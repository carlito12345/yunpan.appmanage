package ua;

import android.content.ComponentName;
import android.os.Build;
import android.provider.Settings;
import android.view.View;
import com.yunpan.appmanage.bean.PermissionBean;
import com.yunpan.appmanage.ui.ActivityAppsPermissionsAllow;
import java.text.DecimalFormat;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public final /* synthetic */ class m0 implements c6.e, ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15817a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityAppsPermissionsAllow f15818b;

    public /* synthetic */ m0(ActivityAppsPermissionsAllow activityAppsPermissionsAllow, int i10) {
        this.f15817a = i10;
        this.f15818b = activityAppsPermissionsAllow;
    }

    @Override // ec.d
    public void g(mc.b bVar) {
        boolean zPutInt;
        String str;
        int i10;
        ActivityAppsPermissionsAllow activityAppsPermissionsAllow = this.f15818b;
        switch (this.f15817a) {
            case 2:
                int i11 = 0;
                while (i11 < activityAppsPermissionsAllow.I.b()) {
                    if (activityAppsPermissionsAllow.P) {
                        android.support.v4.media.session.a.B("已停止", bVar);
                        break;
                    } else {
                        PermissionBean permissionBean = (PermissionBean) activityAppsPermissionsAllow.I.t(i11);
                        if (permissionBean.isSelect) {
                            if (permissionBean.permissionLabel.equals("忽略电池优化")) {
                                fa.b0.f5652a.getClass();
                                if (android.support.v4.media.session.a.D(new StringBuilder(","), activityAppsPermissionsAllow.C, ",", a2.w0.q(2222L, "dumpsys deviceidle whitelist").a())) {
                                    permissionBean.str1 = "授权成功";
                                } else {
                                    if (a2.w0.q(2000L, "cmd deviceidle whitelist +" + activityAppsPermissionsAllow.C).f5648a == 0) {
                                        permissionBean.str1 = "授权成功";
                                    } else {
                                        permissionBean.str1 = "失败";
                                    }
                                }
                            } else {
                                String str2 = "";
                                if (permissionBean.permissionLabel.equals("通知使用权")) {
                                    HashSet hashSet = new HashSet();
                                    try {
                                        String string = Settings.Secure.getString(activityAppsPermissionsAllow.L, "enabled_notification_listeners");
                                        if (string != null && !string.isEmpty()) {
                                            String[] strArrSplit = string.split(":");
                                            int length = strArrSplit.length;
                                            int i12 = 0;
                                            while (i12 < length) {
                                                String str3 = strArrSplit[i12];
                                                if (str3.isEmpty()) {
                                                    str = str2;
                                                } else {
                                                    str = str2;
                                                    if (str3.split("/").length == 2) {
                                                        try {
                                                            hashSet.add(ComponentName.unflattenFromString(str3).flattenToString());
                                                        } catch (Exception unused) {
                                                        }
                                                    }
                                                }
                                                i12++;
                                                str2 = str;
                                            }
                                        }
                                    } catch (Exception unused2) {
                                    }
                                    String str4 = str2;
                                    HashSet hashSet2 = new HashSet();
                                    Iterator it = activityAppsPermissionsAllow.O.iterator();
                                    boolean z = false;
                                    while (it.hasNext()) {
                                        String str5 = (String) it.next();
                                        if (!hashSet.contains(str5)) {
                                            hashSet2.add(str5);
                                            hashSet.add(str5);
                                            z = true;
                                        }
                                    }
                                    if (z) {
                                        StringBuffer stringBuffer = new StringBuffer();
                                        Iterator it2 = hashSet.iterator();
                                        while (it2.hasNext()) {
                                            stringBuffer.append((String) it2.next());
                                            stringBuffer.append(":");
                                        }
                                        String strSubstring = stringBuffer.substring(0, stringBuffer.length() - 1);
                                        try {
                                            zPutInt = Settings.Secure.putString(activityAppsPermissionsAllow.L, "enabled_notification_listeners", strSubstring);
                                        } catch (Exception unused3) {
                                            zPutInt = false;
                                        }
                                        if (!zPutInt) {
                                            String str6 = "settings put secure enabled_notification_listeners " + strSubstring;
                                            fa.b0.f5652a.getClass();
                                            zPutInt = a2.w0.q(2000L, str6).f5648a == 0;
                                        }
                                        try {
                                            zPutInt = Settings.Secure.putInt(activityAppsPermissionsAllow.L, "notification_enabled", 1);
                                        } catch (Exception unused4) {
                                        }
                                        if (!zPutInt) {
                                            fa.b0.f5652a.getClass();
                                            zPutInt = a2.w0.q(2000L, "settings put secure notification_enabled 1").f5648a == 0;
                                        }
                                        if (Build.VERSION.SDK_INT >= 28) {
                                            Iterator it3 = hashSet2.iterator();
                                            while (it3.hasNext()) {
                                                String str7 = (String) it3.next();
                                                a2.w0 w0Var = fa.b0.f5652a;
                                                StringBuilder sb2 = new StringBuilder();
                                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                                sb2.append(com.yunpan.appmanage.util.j.f4033a.f4047g ? "cmd " : str4);
                                                sb2.append("notification allow_listener ");
                                                sb2.append(str7);
                                                String string2 = sb2.toString();
                                                w0Var.getClass();
                                                zPutInt = a2.w0.q(2000L, string2).f5648a == 0;
                                            }
                                        }
                                        permissionBean.str1 = zPutInt ? "授权成功" : "失败";
                                    } else {
                                        permissionBean.str1 = "授权成功";
                                        bVar.f(Integer.valueOf(i11));
                                        i10 = 1;
                                    }
                                } else if (permissionBean.permissionName_ops.isEmpty()) {
                                    a2.w0 w0Var2 = fa.b0.f5652a;
                                    String str8 = "pm grant " + activityAppsPermissionsAllow.C + " " + permissionBean.permissionName;
                                    w0Var2.getClass();
                                    if (a2.w0.q(2000L, str8).f5648a == 0) {
                                        permissionBean.str1 = "授权成功";
                                    } else {
                                        permissionBean.str1 = "失败";
                                    }
                                } else {
                                    a2.w0 w0Var3 = fa.b0.f5652a;
                                    String str9 = "pm grant " + activityAppsPermissionsAllow.C + " " + permissionBean.permissionName;
                                    w0Var3.getClass();
                                    a2.w0.q(2000L, str9);
                                    StringBuilder sb3 = new StringBuilder();
                                    sb3.append(com.yunpan.appmanage.util.j.f4033a.f4047g ? "cmd " : "");
                                    sb3.append("appops set ");
                                    sb3.append(activityAppsPermissionsAllow.C);
                                    sb3.append(" ");
                                    sb3.append(permissionBean.permissionName_ops);
                                    sb3.append(" allow");
                                    if (a2.w0.q(2000L, sb3.toString()).f5648a == 0) {
                                        permissionBean.str1 = "授权成功";
                                    } else {
                                        permissionBean.str1 = "失败";
                                    }
                                }
                            }
                            bVar.f(Integer.valueOf(i11));
                            i10 = 1;
                        } else {
                            i10 = 1;
                        }
                        i11 += i10;
                    }
                }
                bVar.b();
                break;
            default:
                int i13 = ActivityAppsPermissionsAllow.R;
                activityAppsPermissionsAllow.y(bVar);
                break;
        }
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        switch (this.f15817a) {
            case 0:
                ActivityAppsPermissionsAllow activityAppsPermissionsAllow = this.f15818b;
                String str = (String) activityAppsPermissionsAllow.F.t(i10);
                if (i10 != 0) {
                    if (i10 == 1) {
                        if (!str.equals("停止授权")) {
                            activityAppsPermissionsAllow.F.D(i10, "停止授权");
                            activityAppsPermissionsAllow.E.setVisibility(0);
                            new mc.c(0, new m0(activityAppsPermissionsAllow, 2)).d(rc.f.f13757b).a(fc.b.a()).b(new o0(activityAppsPermissionsAllow, 1));
                            break;
                        } else {
                            activityAppsPermissionsAllow.P = true;
                            break;
                        }
                    }
                } else {
                    activityAppsPermissionsAllow.finish();
                    break;
                }
                break;
            default:
                ActivityAppsPermissionsAllow activityAppsPermissionsAllow2 = this.f15818b;
                ((PermissionBean) activityAppsPermissionsAllow2.I.t(i10)).isSelect = !r4.isSelect;
                activityAppsPermissionsAllow2.I.e(i10);
                break;
        }
    }
}
