package ka;

import android.content.ComponentName;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import c6.e;
import c6.g;
import com.yunpan.appmanage.bean.NamePackClassDesEnabledBean;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import ha.o;
import ha.s2;
import java.text.DecimalFormat;
import java.util.ArrayList;
import rc.f;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements e, ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d f10221a;

    public /* synthetic */ a(d dVar) {
        this.f10221a = dVar;
    }

    @Override // ec.d
    public void g(mc.b bVar) throws PackageManager.NameNotFoundException {
        PackageInfo packageInfo;
        String string;
        PackageInfo packageInfo2;
        String string2;
        PackageInfo packageInfo3;
        String string3;
        PackageInfo packageInfo4;
        String string4;
        d dVar = this.f10221a;
        dVar.getClass();
        ArrayList arrayList = new ArrayList();
        String str = dVar.f10226b;
        int i10 = dVar.f10225a;
        int i11 = 0;
        if (i10 == 0) {
            if (Build.VERSION.SDK_INT >= 24) {
                DecimalFormat decimalFormat = k.f4034u0;
                packageInfo4 = j.f4033a.f4037b.getPackageInfo(str, 513);
            } else {
                DecimalFormat decimalFormat2 = k.f4034u0;
                packageInfo4 = j.f4033a.f4037b.getPackageInfo(str, 513);
            }
            ActivityInfo[] activityInfoArr = packageInfo4.activities;
            if (activityInfoArr != null) {
                int length = activityInfoArr.length;
                while (i11 < length) {
                    ActivityInfo activityInfo = activityInfoArr[i11];
                    if (activityInfo.labelRes == 0) {
                        String str2 = activityInfo.name;
                        string4 = str2.substring(str2.lastIndexOf(".") + 1);
                    } else {
                        DecimalFormat decimalFormat3 = k.f4034u0;
                        string4 = activityInfo.loadLabel(j.f4033a.f4037b).toString();
                    }
                    String str3 = string4;
                    String str4 = activityInfo.packageName;
                    String str5 = activityInfo.name;
                    arrayList.add(new NamePackClassDesEnabledBean(str3, str4, str5, "", d.g(str4, str5, !activityInfo.enabled)));
                    i11++;
                }
            }
        } else if (i10 == 1) {
            if (Build.VERSION.SDK_INT >= 24) {
                DecimalFormat decimalFormat4 = k.f4034u0;
                packageInfo3 = j.f4033a.f4037b.getPackageInfo(str, 516);
            } else {
                DecimalFormat decimalFormat5 = k.f4034u0;
                packageInfo3 = j.f4033a.f4037b.getPackageInfo(str, 516);
            }
            ServiceInfo[] serviceInfoArr = packageInfo3.services;
            if (serviceInfoArr != null) {
                int length2 = serviceInfoArr.length;
                while (i11 < length2) {
                    ServiceInfo serviceInfo = serviceInfoArr[i11];
                    if (serviceInfo.labelRes == 0) {
                        String str6 = serviceInfo.name;
                        string3 = str6.substring(str6.lastIndexOf(".") + 1);
                    } else {
                        DecimalFormat decimalFormat6 = k.f4034u0;
                        string3 = serviceInfo.loadLabel(j.f4033a.f4037b).toString();
                    }
                    String str7 = serviceInfo.permission;
                    if (str7 != null && str7.equals("android.permission.BIND_ACCESSIBILITY_SERVICE")) {
                        string3 = g.b.j(string3, "(无障碍服务)");
                    }
                    String str8 = serviceInfo.packageName;
                    String str9 = serviceInfo.name;
                    arrayList.add(new NamePackClassDesEnabledBean(string3, str8, str9, "", d.g(str8, str9, !serviceInfo.enabled)));
                    i11++;
                }
            }
        } else if (i10 == 2) {
            if (Build.VERSION.SDK_INT >= 24) {
                DecimalFormat decimalFormat7 = k.f4034u0;
                packageInfo2 = j.f4033a.f4037b.getPackageInfo(str, 514);
            } else {
                DecimalFormat decimalFormat8 = k.f4034u0;
                packageInfo2 = j.f4033a.f4037b.getPackageInfo(str, 514);
            }
            ActivityInfo[] activityInfoArr2 = packageInfo2.receivers;
            if (activityInfoArr2 != null) {
                int length3 = activityInfoArr2.length;
                while (i11 < length3) {
                    ActivityInfo activityInfo2 = activityInfoArr2[i11];
                    if (activityInfo2.labelRes == 0) {
                        String str10 = activityInfo2.name;
                        string2 = str10.substring(str10.lastIndexOf(".") + 1);
                    } else {
                        DecimalFormat decimalFormat9 = k.f4034u0;
                        string2 = activityInfo2.loadLabel(j.f4033a.f4037b).toString();
                    }
                    String strJ = string2;
                    try {
                        ComponentName componentName = new ComponentName(activityInfo2.packageName, activityInfo2.name);
                        DecimalFormat decimalFormat10 = k.f4034u0;
                        Bundle bundle = j.f4033a.f4037b.getReceiverInfo(componentName, 128).metaData;
                        if (bundle != null && bundle.containsKey("android.appwidget.provider")) {
                            strJ = g.b.j(strJ, "(桌面小部件)");
                        }
                    } catch (PackageManager.NameNotFoundException e7) {
                        e7.printStackTrace();
                    }
                    String str11 = strJ;
                    String str12 = activityInfo2.packageName;
                    String str13 = activityInfo2.name;
                    arrayList.add(new NamePackClassDesEnabledBean(str11, str12, str13, "", d.g(str12, str13, !activityInfo2.enabled)));
                    i11++;
                }
            }
        } else if (i10 == 3) {
            if (Build.VERSION.SDK_INT >= 24) {
                DecimalFormat decimalFormat11 = k.f4034u0;
                packageInfo = j.f4033a.f4037b.getPackageInfo(str, 520);
            } else {
                DecimalFormat decimalFormat12 = k.f4034u0;
                packageInfo = j.f4033a.f4037b.getPackageInfo(str, 520);
            }
            ProviderInfo[] providerInfoArr = packageInfo.providers;
            if (providerInfoArr != null) {
                int length4 = providerInfoArr.length;
                while (i11 < length4) {
                    ProviderInfo providerInfo = providerInfoArr[i11];
                    if (providerInfo.labelRes == 0) {
                        String str14 = providerInfo.name;
                        string = str14.substring(str14.lastIndexOf(".") + 1);
                    } else {
                        DecimalFormat decimalFormat13 = k.f4034u0;
                        string = providerInfo.loadLabel(j.f4033a.f4037b).toString();
                    }
                    String str15 = string;
                    String str16 = providerInfo.packageName;
                    String str17 = providerInfo.name;
                    arrayList.add(new NamePackClassDesEnabledBean(str15, str16, str17, "", d.g(str16, str17, !providerInfo.enabled)));
                    i11++;
                }
            }
        }
        bVar.f(arrayList);
        bVar.b();
    }

    @Override // c6.e
    public void x(g gVar, View view, int i10) {
        d dVar = this.f10221a;
        dVar.getClass();
        new mc.c(0, new o(i10, 5, dVar)).d(f.f13757b).a(fc.b.a()).b(new s2(i10, 1, dVar));
    }
}
