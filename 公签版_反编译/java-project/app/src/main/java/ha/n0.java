package ha;

import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.view.View;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.MyDb;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/* loaded from: classes.dex */
public final /* synthetic */ class n0 implements c6.e, ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ r0 f7455a;

    public /* synthetic */ n0(r0 r0Var) {
        this.f7455a = r0Var;
    }

    @Override // ec.d
    public void g(mc.b bVar) {
        List<AppBean> list;
        List<AppBean> list2;
        r0 r0Var = this.f7455a;
        int i10 = r0Var.f7653i;
        if (i10 == 1) {
            list = MyDb.get().getAppDao().get_app_canStart();
        } else {
            if (i10 == 2) {
                list2 = MyDb.get().getAppDao().get_app_canStart();
                for (AppBean appBean : MyDb.get().getAppDao().get_app_noCanStart_noHide_noUnInstall_noDisable()) {
                    try {
                        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                        ActivityInfo[] activityInfoArr = com.yunpan.appmanage.util.j.f4033a.f4037b.getPackageInfo(appBean.pack, 1).activities;
                        if (activityInfoArr != null) {
                            int length = activityInfoArr.length;
                            int i11 = 0;
                            while (true) {
                                if (i11 < length) {
                                    ActivityInfo activityInfo = activityInfoArr[i11];
                                    if (activityInfo.exported && activityInfo.enabled) {
                                        list2.add(appBean);
                                        break;
                                    }
                                    i11++;
                                }
                            }
                        }
                    } catch (PackageManager.NameNotFoundException e7) {
                        e7.printStackTrace();
                    }
                }
            } else if (i10 == 3) {
                HashSet hashSet = new HashSet();
                String strU = qf.c.u(r0Var.f6725b);
                if (!strU.isEmpty()) {
                    hashSet.add(strU);
                }
                hashSet.add("com.android.packageinstaller");
                list2 = MyDb.get().getAppDao().get_app_all();
                for (int size = list2.size() - 1; size >= 0; size--) {
                    if (list2.get(size).isDisable || list2.get(size).isHide || list2.get(size).isUnInstall || hashSet.contains(list2.get(size).pack)) {
                        list2.remove(size);
                    }
                }
            } else if (i10 == 4) {
                ArrayList arrayList = new ArrayList();
                for (AppBean appBean2 : MyDb.get().getAppDao().get_app_all()) {
                    if (!appBean2.isDisable && !appBean2.isHide && !appBean2.isUnInstall) {
                        try {
                            DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                            ServiceInfo[] serviceInfoArr = com.yunpan.appmanage.util.j.f4033a.f4037b.getPackageInfo(appBean2.pack, 4).services;
                            if (serviceInfoArr != null) {
                                int length2 = serviceInfoArr.length;
                                int i12 = 0;
                                while (true) {
                                    if (i12 < length2) {
                                        ServiceInfo serviceInfo = serviceInfoArr[i12];
                                        if (serviceInfo.exported && serviceInfo.enabled) {
                                            arrayList.add(appBean2);
                                            break;
                                        }
                                        i12++;
                                    }
                                }
                            }
                        } catch (PackageManager.NameNotFoundException e10) {
                            e10.printStackTrace();
                        }
                    }
                }
                list = arrayList;
            } else {
                list = i10 == 5 ? MyDb.get().getAppDao().get_app_all() : MyDb.get().getAppDao().get_app_canStart();
            }
            list = list2;
        }
        bVar.f(list);
        bVar.b();
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        x9.v vVar;
        int i11 = 1;
        int i12 = 0;
        r0 r0Var = this.f7455a;
        if (r0Var.f7654j == null || (vVar = r0Var.f7652h) == null || i10 >= vVar.b() || r0Var.f7652h.t(i10) == null) {
            return;
        }
        int i13 = r0Var.f7653i;
        if (i13 == 1) {
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            Intent launchIntentForPackage = com.yunpan.appmanage.util.j.f4033a.f4037b.getLaunchIntentForPackage(((AppBean) r0Var.f7652h.t(i10)).pack);
            if (launchIntentForPackage != null) {
                r0Var.f7654j.d(((AppBean) r0Var.f7652h.t(i10)).name, ((AppBean) r0Var.f7652h.t(i10)).pack, launchIntentForPackage.getComponent().getClassName());
                r0Var.dismiss();
                return;
            }
            return;
        }
        if (i13 == 2) {
            new mc.c(0, new b8.a(((AppBean) r0Var.f7652h.t(i10)).pack, 6)).d(rc.f.f13757b).a(fc.b.a()).b(new o0(r0Var, i10, i12));
            return;
        }
        if (i13 == 3 || i13 == 5) {
            r0Var.f7654j.d(((AppBean) r0Var.f7652h.t(i10)).name, ((AppBean) r0Var.f7652h.t(i10)).pack, null);
            r0Var.dismiss();
        } else if (i13 == 4) {
            new mc.c(0, new b8.a(((AppBean) r0Var.f7652h.t(i10)).pack, 7)).d(rc.f.f13757b).a(fc.b.a()).b(new o0(r0Var, i10, i11));
        }
    }
}
