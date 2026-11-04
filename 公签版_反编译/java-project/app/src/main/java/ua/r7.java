package ua;

import android.view.View;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityUsersApps;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final /* synthetic */ class r7 implements ec.d, c6.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActivityUsersApps f15939a;

    public /* synthetic */ r7(ActivityUsersApps activityUsersApps) {
        this.f15939a = activityUsersApps;
    }

    @Override // ec.d
    public void g(mc.b bVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        HashSet hashSet;
        ArrayList arrayList;
        Class<Throwable> cls;
        int i10 = ActivityUsersApps.K;
        ActivityUsersApps activityUsersApps = this.f15939a;
        activityUsersApps.getClass();
        try {
            fa.b0.f5652a.getClass();
            Iterator it = a2.w0.q(2000L, "pm list users").f5649b.iterator();
            while (true) {
                boolean zHasNext = it.hasNext();
                hashSet = activityUsersApps.I;
                if (!zHasNext) {
                    break;
                }
                String str = (String) it.next();
                if (str.contains("UserInfo{")) {
                    hashSet.add(p000if.a.N(str, "UserInfo{", ":", false).trim());
                }
            }
            HashMap map = new HashMap();
            arrayList = new ArrayList();
            Iterator it2 = hashSet.iterator();
            while (it2.hasNext()) {
                String str2 = (String) it2.next();
                fa.b0.f5652a.getClass();
                fa.a0 a0VarQ = a2.w0.q(4000L, "pm list packages --user " + str2 + " -f");
                if (a0VarQ.b()) {
                    for (String str3 : a0VarQ.f5649b) {
                        if (str3.contains("package:/data/app/")) {
                            AppBean appBean = new AppBean();
                            appBean.pack = str3.substring(str3.lastIndexOf("=") + 1).trim();
                            appBean.apkPath = str3.substring(str3.indexOf("/"), str3.lastIndexOf("=")).trim();
                            if (!appBean.pack.equals(com.yunpan.appmanage.util.j.f4033a.f4041d)) {
                                if (map.get(appBean.pack) != null) {
                                    StringBuilder sb2 = new StringBuilder();
                                    AppBean appBean2 = (AppBean) arrayList.get(((Integer) map.get(appBean.pack)).intValue());
                                    sb2.append(appBean2.apkParentPath);
                                    sb2.append(str2);
                                    sb2.append(",");
                                    appBean2.apkParentPath = sb2.toString();
                                } else {
                                    AppBean appBean3 = MyDb.get().getAppDao().get_appBean(appBean.pack);
                                    if (appBean3 == null || !appBean3.isSystem) {
                                        if (appBean3 != null) {
                                            appBean.name = appBean3.name;
                                        } else {
                                            try {
                                                ef.b bVar2 = new ef.b(appBean.apkPath);
                                                try {
                                                    bVar2.M();
                                                    appBean.name = bVar2.f4963e.f5814b;
                                                    List<ff.g> listA = bVar2.A();
                                                    if (listA != null && listA.size() > 0) {
                                                        for (ff.g gVar : listA) {
                                                            if (gVar != null) {
                                                                gVar.k();
                                                                com.yunpan.appmanage.util.a0.q(com.yunpan.appmanage.util.v.f4106a.f4107a + appBean.pack + ".png", gVar.e());
                                                            }
                                                        }
                                                    }
                                                    bVar2.close();
                                                } finally {
                                                    try {
                                                    } catch (Throwable th2) {
                                                        try {
                                                            cls.getDeclaredMethod("addSuppressed", cls).invoke(th, th2);
                                                        } catch (Exception unused) {
                                                        }
                                                    }
                                                }
                                            } catch (Exception e7) {
                                                e7.printStackTrace();
                                                com.yunpan.appmanage.util.a0.u(String.valueOf(e7.getMessage()));
                                            }
                                            System.out.getClass();
                                        }
                                        appBean.apkParentPath = "," + str2 + ",";
                                        map.put(appBean.pack, Integer.valueOf(arrayList.size()));
                                        arrayList.add(appBean);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } catch (Exception e10) {
            e = e10;
            Toaster.show((CharSequence) String.valueOf(e.getMessage()));
            bVar.b();
        }
        try {
            bVar.f(arrayList);
        } catch (Exception e11) {
            e = e11;
            Toaster.show((CharSequence) String.valueOf(e.getMessage()));
            bVar.b();
        }
        bVar.b();
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        int i11 = ActivityUsersApps.K;
        ActivityUsersApps activityUsersApps = this.f15939a;
        activityUsersApps.getClass();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(((AppBean) activityUsersApps.F.t(i10)).name);
        sb2.append("(");
        new ha.z6(activityUsersApps, activityUsersApps, g.b.l(((AppBean) activityUsersApps.F.t(i10)).pack, ")", sb2), "是否彻底卸载此应用", "取消", "确定", new androidx.room.s((da.g) activityUsersApps, (Object) gVar, i10, 19)).show();
    }
}
