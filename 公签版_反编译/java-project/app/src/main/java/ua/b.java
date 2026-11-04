package ua;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.provider.Settings;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import com.yunpan.appmanage.ui.ActivityAccessibility;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements c6.e, ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15573a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityAccessibility f15574b;

    public /* synthetic */ b(ActivityAccessibility activityAccessibility, int i10) {
        this.f15573a = i10;
        this.f15574b = activityAccessibility;
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x0283 A[PHI: r10 r13
  0x0283: PHI (r10v7 boolean) = (r10v6 boolean), (r10v9 boolean), (r10v9 boolean) binds: [B:95:0x0260, B:100:0x0272, B:102:0x027a] A[DONT_GENERATE, DONT_INLINE]
  0x0283: PHI (r13v4 boolean) = (r13v3 boolean), (r13v6 boolean), (r13v6 boolean) binds: [B:95:0x0260, B:100:0x0272, B:102:0x027a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01dd A[PHI: r13 r15
  0x01dd: PHI (r13v11 boolean) = (r13v10 boolean), (r13v14 boolean), (r13v14 boolean) binds: [B:74:0x01ba, B:79:0x01cc, B:81:0x01d4] A[DONT_GENERATE, DONT_INLINE]
  0x01dd: PHI (r15v4 boolean) = (r15v3 boolean), (r15v6 boolean), (r15v6 boolean) binds: [B:74:0x01ba, B:79:0x01cc, B:81:0x01d4] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // ec.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void g(mc.b bVar) throws Exception {
        boolean z;
        boolean z4;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        fa.a0 a0VarH;
        ActivityAccessibility activityAccessibility = this.f15574b;
        switch (this.f15573a) {
            case 1:
                int i10 = ActivityAccessibility.G;
                activityAccessibility.getClass();
                try {
                    HashSet hashSet = new HashSet();
                    String string = Settings.Secure.getString(activityAccessibility.A.getContentResolver(), "enabled_accessibility_services");
                    if (string != null && string.contains("/")) {
                        for (String str : string.split(":")) {
                            String strTrim = str.trim();
                            if (strTrim.contains("/")) {
                                try {
                                    hashSet.add(ComponentName.unflattenFromString(strTrim).flattenToString());
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                }
                            }
                        }
                    }
                    androidx.room.s sVarL0 = u9.d.r("dumpsys accessibility").l0();
                    if (sVarL0.q()) {
                        sVarL0.k().addAll(sVarL0.j());
                        activityAccessibility.F = sVarL0.k().toString();
                    }
                    ArrayList arrayList = new ArrayList();
                    List<AccessibilityServiceInfo> installedAccessibilityServiceList = ((AccessibilityManager) activityAccessibility.A.getSystemService("accessibility")).getInstalledAccessibilityServiceList();
                    if (installedAccessibilityServiceList == null || installedAccessibilityServiceList.isEmpty()) {
                        Intent intent = new Intent();
                        intent.setAction("android.accessibilityservice.AccessibilityService");
                        Iterator<ResolveInfo> it = activityAccessibility.getPackageManager().queryIntentServices(intent, 0).iterator();
                        while (it.hasNext()) {
                            ServiceInfo serviceInfo = it.next().serviceInfo;
                            if (serviceInfo != null) {
                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                String string2 = serviceInfo.loadLabel(kVar.f4037b).toString();
                                String str2 = serviceInfo.packageName;
                                ComponentName componentNameUnflattenFromString = ComponentName.unflattenFromString(serviceInfo.packageName + "/" + serviceInfo.name);
                                if (componentNameUnflattenFromString != null) {
                                    boolean zContains = hashSet.contains(componentNameUnflattenFromString.flattenToString());
                                    boolean z14 = serviceInfo.enabled;
                                    if (zContains) {
                                        if (kVar.f4037b.getComponentEnabledSetting(componentNameUnflattenFromString) == 2) {
                                            z14 = false;
                                            zContains = false;
                                        }
                                        if (!activityAccessibility.F.isEmpty() && !activityAccessibility.F.contains(string2)) {
                                            z = z14;
                                            z4 = false;
                                            z10 = true;
                                        }
                                        arrayList.add(new x9.b(string2, str2, componentNameUnflattenFromString.flattenToString(), "", z, z4, z10));
                                    } else {
                                        z = z14;
                                        z4 = zContains;
                                        z10 = false;
                                        arrayList.add(new x9.b(string2, str2, componentNameUnflattenFromString.flattenToString(), "", z, z4, z10));
                                    }
                                }
                            }
                        }
                    } else {
                        for (AccessibilityServiceInfo accessibilityServiceInfo : installedAccessibilityServiceList) {
                            ServiceInfo serviceInfo2 = accessibilityServiceInfo.getResolveInfo().serviceInfo;
                            DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                            com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                            String str3 = (String) serviceInfo2.loadLabel(kVar2.f4037b);
                            String strLoadDescription = accessibilityServiceInfo.loadDescription(kVar2.f4037b);
                            String str4 = (strLoadDescription == null || strLoadDescription.isEmpty()) ? str3 : strLoadDescription;
                            ComponentName componentNameUnflattenFromString2 = ComponentName.unflattenFromString(accessibilityServiceInfo.getId());
                            if (componentNameUnflattenFromString2 != null) {
                                boolean zContains2 = hashSet.contains(componentNameUnflattenFromString2.flattenToString());
                                boolean z15 = accessibilityServiceInfo.getResolveInfo().serviceInfo.enabled;
                                if (zContains2) {
                                    if (kVar2.f4037b.getComponentEnabledSetting(componentNameUnflattenFromString2) == 2) {
                                        zContains2 = false;
                                        z15 = false;
                                    }
                                    if (!activityAccessibility.F.isEmpty() && !activityAccessibility.F.contains(str3)) {
                                        z12 = z15;
                                        z11 = false;
                                        z13 = true;
                                    }
                                    arrayList.add(new x9.b(str3, accessibilityServiceInfo.getId().substring(0, accessibilityServiceInfo.getId().indexOf("/")), componentNameUnflattenFromString2.flattenToString(), str4, z12, z11, z13));
                                } else {
                                    z11 = zContains2;
                                    z12 = z15;
                                    z13 = false;
                                    arrayList.add(new x9.b(str3, accessibilityServiceInfo.getId().substring(0, accessibilityServiceInfo.getId().indexOf("/")), componentNameUnflattenFromString2.flattenToString(), str4, z12, z11, z13));
                                }
                            }
                        }
                    }
                    bVar.f(arrayList);
                    bVar.b();
                    return;
                } catch (Exception e10) {
                    bVar.d(e10);
                    return;
                }
            default:
                int i11 = ActivityAccessibility.G;
                StringBuilder sb2 = new StringBuilder();
                for (int i12 = 0; i12 < activityAccessibility.D.b(); i12++) {
                    if (((x9.b) activityAccessibility.D.t(i12)).f18201f) {
                        sb2.append(((x9.b) activityAccessibility.D.t(i12)).f18198c);
                        sb2.append(":");
                    }
                }
                String string3 = sb2.toString();
                if (!string3.isEmpty()) {
                    string3 = string3.substring(0, sb2.length() - 1);
                }
                try {
                    boolean zPutString = Settings.Secure.putString(activityAccessibility.A.getContentResolver(), "enabled_accessibility_services", string3);
                    if (zPutString) {
                        zPutString = Settings.Secure.putInt(activityAccessibility.A.getContentResolver(), "accessibility_enabled", !string3.isEmpty() ? 1 : 0);
                    }
                    if (!zPutString || com.yunpan.appmanage.util.v.f4106a.S) {
                        fa.b0.f5652a.getClass();
                        if (a2.w0.P()) {
                            a0VarH = a2.w0.h("settings put secure enabled_accessibility_services '" + string3 + "'");
                            if (a0VarH.f5648a == 0) {
                                a0VarH = a2.w0.h("settings put secure accessibility_enabled " + (!string3.isEmpty() ? 1 : 0));
                            }
                        } else {
                            a0VarH = null;
                        }
                        if (a0VarH == null || a0VarH.f5648a != 0) {
                            throw new Exception("修改失败");
                        }
                    }
                    wa.v.f17759a.e(string3);
                    bVar.b();
                    return;
                } catch (Exception unused) {
                    android.support.v4.media.session.a.B("无权限修改", bVar);
                    return;
                }
        }
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        int i11 = ActivityAccessibility.G;
        ActivityAccessibility activityAccessibility = this.f15574b;
        activityAccessibility.getClass();
        s1.g.Y(view);
        x9.b bVar = (x9.b) activityAccessibility.D.t(i10);
        if (!bVar.f18200e) {
            new ha.z6(activityAccessibility, activityAccessibility, "检测到此服务组件已被禁用，如需开启，请先解禁", "", "解禁", "取消", new d3.g(i10, 7, activityAccessibility)).show();
        } else if (bVar.f18202g) {
            new ha.z6(activityAccessibility, activityAccessibility, "检测到此服务组件异常，可能无法开启，请强制停止此无障碍的主应用", "", "先不管，继续", "强制停止此应用", new androidx.room.s(activityAccessibility, i10, bVar, 13)).show();
        } else {
            activityAccessibility.x(i10);
        }
    }
}
