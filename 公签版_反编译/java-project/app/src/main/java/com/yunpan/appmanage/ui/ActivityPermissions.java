package com.yunpan.appmanage.ui;

import a2.w0;
import android.app.AppOpsManager;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.ServiceManager;
import android.provider.Settings;
import android.system.Os;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.internal.app.IAppOpsService;
import com.bumptech.glide.b;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.SpecialPermissionsBean;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityPermissions;
import com.yunpan.appmanage.util.k;
import da.g;
import fa.a;
import fa.a0;
import fa.o0;
import ha.fa;
import ha.l4;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import mc.c;
import org.lsposed.hiddenapibypass.j;
import rc.f;
import ua.m5;
import ua.n5;
import x9.x4;

/* loaded from: classes.dex */
public class ActivityPermissions extends g {
    public static final /* synthetic */ int L = 0;
    public TextView C;
    public TvRecyclerView D;
    public x4 E;
    public ConstraintLayout G;
    public IAppOpsService K;
    public final ArrayList F = new ArrayList();
    public int H = -1;
    public boolean I = false;

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        this.I = true;
        this.E.E(null);
        this.D = null;
        this.E = null;
        b.b(this.A).a();
        super.onDestroy();
        System.gc();
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_permissions;
    }

    @Override // da.g
    public final void u() {
        if (this.H == -1) {
            this.G = (ConstraintLayout) findViewById(R.id.v_loading);
            final int i10 = 0;
            this.H = getIntent().getExtras().getInt("type", 0);
            this.C = (TextView) findViewById(R.id.v_title);
            findViewById(R.id.v_btn_return).setOnClickListener(new View.OnClickListener(this) { // from class: ua.l5

                /* renamed from: b, reason: collision with root package name */
                public final /* synthetic */ ActivityPermissions f15806b;

                {
                    this.f15806b = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ActivityPermissions activityPermissions = this.f15806b;
                    switch (i10) {
                        case 0:
                            int i11 = ActivityPermissions.L;
                            activityPermissions.finish();
                            break;
                        case 1:
                            int i12 = ActivityPermissions.L;
                            activityPermissions.getClass();
                            new ha.z6(activityPermissions, activityPermissions, "如果这里已授权，但应用切提示未授权的话，请取消勾选，然后重新勾选即可", "").show();
                            break;
                        default:
                            int i13 = ActivityPermissions.L;
                            ActivityPermissions activityPermissions2 = this.f15806b;
                            activityPermissions2.getClass();
                            ArrayList arrayList = new ArrayList();
                            arrayList.add("悬浮窗");
                            arrayList.add("安装应用");
                            arrayList.add("通知使用权");
                            arrayList.add("忽略电池优化");
                            arrayList.add("修改系统设置");
                            arrayList.add("修改系统安全设置");
                            arrayList.add("使用情况访问权限");
                            arrayList.add("系统日志(READ_LOGS)");
                            activityPermissions2.D.stopScroll();
                            new fa(activityPermissions2, activityPermissions2.A, null, arrayList, new m5(activityPermissions2)).show();
                            break;
                    }
                }
            });
            final int i11 = 1;
            findViewById(R.id.v_btn_help).setOnClickListener(new View.OnClickListener(this) { // from class: ua.l5

                /* renamed from: b, reason: collision with root package name */
                public final /* synthetic */ ActivityPermissions f15806b;

                {
                    this.f15806b = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ActivityPermissions activityPermissions = this.f15806b;
                    switch (i11) {
                        case 0:
                            int i112 = ActivityPermissions.L;
                            activityPermissions.finish();
                            break;
                        case 1:
                            int i12 = ActivityPermissions.L;
                            activityPermissions.getClass();
                            new ha.z6(activityPermissions, activityPermissions, "如果这里已授权，但应用切提示未授权的话，请取消勾选，然后重新勾选即可", "").show();
                            break;
                        default:
                            int i13 = ActivityPermissions.L;
                            ActivityPermissions activityPermissions2 = this.f15806b;
                            activityPermissions2.getClass();
                            ArrayList arrayList = new ArrayList();
                            arrayList.add("悬浮窗");
                            arrayList.add("安装应用");
                            arrayList.add("通知使用权");
                            arrayList.add("忽略电池优化");
                            arrayList.add("修改系统设置");
                            arrayList.add("修改系统安全设置");
                            arrayList.add("使用情况访问权限");
                            arrayList.add("系统日志(READ_LOGS)");
                            activityPermissions2.D.stopScroll();
                            new fa(activityPermissions2, activityPermissions2.A, null, arrayList, new m5(activityPermissions2)).show();
                            break;
                    }
                }
            });
            final int i12 = 2;
            findViewById(R.id.v_btn_switch).setOnClickListener(new View.OnClickListener(this) { // from class: ua.l5

                /* renamed from: b, reason: collision with root package name */
                public final /* synthetic */ ActivityPermissions f15806b;

                {
                    this.f15806b = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ActivityPermissions activityPermissions = this.f15806b;
                    switch (i12) {
                        case 0:
                            int i112 = ActivityPermissions.L;
                            activityPermissions.finish();
                            break;
                        case 1:
                            int i122 = ActivityPermissions.L;
                            activityPermissions.getClass();
                            new ha.z6(activityPermissions, activityPermissions, "如果这里已授权，但应用切提示未授权的话，请取消勾选，然后重新勾选即可", "").show();
                            break;
                        default:
                            int i13 = ActivityPermissions.L;
                            ActivityPermissions activityPermissions2 = this.f15806b;
                            activityPermissions2.getClass();
                            ArrayList arrayList = new ArrayList();
                            arrayList.add("悬浮窗");
                            arrayList.add("安装应用");
                            arrayList.add("通知使用权");
                            arrayList.add("忽略电池优化");
                            arrayList.add("修改系统设置");
                            arrayList.add("修改系统安全设置");
                            arrayList.add("使用情况访问权限");
                            arrayList.add("系统日志(READ_LOGS)");
                            activityPermissions2.D.stopScroll();
                            new fa(activityPermissions2, activityPermissions2.A, null, arrayList, new m5(activityPermissions2)).show();
                            break;
                    }
                }
            });
            TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list_app);
            this.D = tvRecyclerView;
            tvRecyclerView.setLayoutManager(new V7GridLayoutManager(this.A, 6));
            x4 x4Var = new x4(this);
            this.E = x4Var;
            this.D.setAdapter(x4Var);
            this.E.f2881e = new m5(this);
            this.D.setOnItemListener(new n5());
        }
        int i13 = this.H;
        if (i13 == 3) {
            this.C.setText("忽略电池优化（一般不需要给这个权限，除非需要后台运行）");
        } else if (i13 == 0) {
            this.C.setText("悬浮窗（可悬浮在其它应用界面上方的权限）");
        } else if (i13 == 4) {
            this.C.setText("修改系统设置（可修改普通的系统设置）");
        } else if (i13 == 5) {
            this.C.setText("修改系统安全设置（可修改非常多的系统设置）");
        } else if (i13 == 2) {
            this.C.setText("通知使用权（可监听通知栏,控制音乐等）");
        } else if (i13 == 6) {
            this.C.setText("使用情况访问权限（比如：应用存储分析就要这个权限）");
        } else if (i13 == 1) {
            this.C.setText("安装应用（允许安装第三方应用的权限）");
        } else if (i13 == 7) {
            this.C.setText("系统日志权限（比如：日志映射需要此权限）");
        }
        new c(0, new m5(this)).d(f.f13757b).a(fc.b.a()).b(new ka.c(22, this));
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x02f1  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0341  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x035f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void x(mc.b bVar) throws Exception {
        String str;
        boolean z;
        String str2;
        String str3;
        boolean z4;
        boolean z10;
        String str4;
        int iIntValue;
        String[] strArr;
        int i10 = 1;
        fa.b bVar2 = a.f5646a;
        if (bVar2.f()) {
            this.K = bVar2.c();
        } else if (o0.a().f5726a && o0.a().f5730e != null) {
            this.K = IAppOpsService.Stub.asInterface(new hi.c(hi.g.a("appops")));
        } else if (k.f().f4053j) {
            this.K = IAppOpsService.Stub.asInterface(ServiceManager.getService("appops"));
        }
        List<AppBean> list = MyDb.get().getAppDao().get_app_canStart_noUnInstall_noDisable();
        int i11 = this.H;
        ArrayList arrayList = this.F;
        if (i11 == 3) {
            w0.F().getClass();
            a0 a0VarQ = w0.q(2222L, "dumpsys deviceidle whitelist");
            if (a0VarQ.f5648a != 0) {
                throw new Exception("获取失败");
            }
            String strA = a0VarQ.a();
            arrayList.add(new SpecialPermissionsBean(this.A.getResources().getString(R.string.app_name), k.f().f4041d, Os.getuid(), strA.contains(k.f().f4041d)));
            if (list != null) {
                for (AppBean appBean : list) {
                    if (!appBean.pack.isEmpty()) {
                        String str5 = appBean.name;
                        String str6 = appBean.pack;
                        arrayList.add(new SpecialPermissionsBean(str5, str6, appBean.uid, strA.contains(str6)));
                    }
                }
            }
        } else {
            String str7 = "";
            if (i11 == 2) {
                try {
                    String string = Settings.Secure.getString(this.A.getContentResolver(), "enabled_notification_listeners");
                    if (string != null && !string.isEmpty()) {
                        for (String str8 : string.split(":")) {
                            if (!str8.isEmpty()) {
                                String[] strArrSplit = str8.split("/");
                                if (strArrSplit.length == 2) {
                                    str7 = strArrSplit[1].startsWith(".") ? str7 + ":" + strArrSplit[0] + "/" + strArrSplit[0] + strArrSplit[1] : str7 + ":" + strArrSplit[0] + "/" + strArrSplit[1];
                                }
                            }
                        }
                    }
                } catch (Exception unused) {
                }
                List<ResolveInfo> listQueryIntentServices = k.f().f4037b.queryIntentServices(new Intent("android.service.notification.NotificationListenerService"), 128);
                if (listQueryIntentServices != null) {
                    for (ResolveInfo resolveInfo : listQueryIntentServices) {
                        if (resolveInfo.serviceInfo != null) {
                            int i12 = 0;
                            while (true) {
                                if (i12 >= arrayList.size()) {
                                    i12 = -1;
                                    break;
                                } else if (((SpecialPermissionsBean) arrayList.get(i12)).pack.equals(resolveInfo.serviceInfo.packageName)) {
                                    break;
                                } else {
                                    i12++;
                                }
                            }
                            if (i12 != -1) {
                                String str9 = ":" + resolveInfo.serviceInfo.packageName + "/" + resolveInfo.serviceInfo.name;
                                if (resolveInfo.serviceInfo.name.startsWith(".")) {
                                    str9 = ":" + resolveInfo.serviceInfo.packageName + "/" + resolveInfo.serviceInfo.packageName + resolveInfo.serviceInfo.name;
                                }
                                StringBuilder sb2 = new StringBuilder();
                                SpecialPermissionsBean specialPermissionsBean = (SpecialPermissionsBean) arrayList.get(i12);
                                specialPermissionsBean.packageAndClass = g.b.l(specialPermissionsBean.packageAndClass, str9, sb2);
                                if (((SpecialPermissionsBean) arrayList.get(i12)).isGrant) {
                                    if (!str7.contains(str9)) {
                                        ((SpecialPermissionsBean) arrayList.get(i12)).isGrant = false;
                                        ((SpecialPermissionsBean) arrayList.get(i12)).str_state = "未完全授权";
                                    }
                                } else if (str7.contains(str9)) {
                                    ((SpecialPermissionsBean) arrayList.get(i12)).str_state = "未完全授权";
                                }
                            } else {
                                String str10 = ":" + resolveInfo.serviceInfo.packageName + "/" + resolveInfo.serviceInfo.name;
                                if (resolveInfo.serviceInfo.name.startsWith(".")) {
                                    str10 = ":" + resolveInfo.serviceInfo.packageName + "/" + resolveInfo.serviceInfo.packageName + resolveInfo.serviceInfo.name;
                                }
                                arrayList.add(new SpecialPermissionsBean(resolveInfo.serviceInfo.packageName.equals(k.f().f4041d) ? this.A.getResources().getString(R.string.app_name) : MyDb.get().getAppDao().get_appBean(resolveInfo.serviceInfo.packageName).name, resolveInfo.serviceInfo.packageName, 0, "", str7.contains(str10), resolveInfo.serviceInfo.packageName + "/" + resolveInfo.serviceInfo.name));
                            }
                        }
                    }
                }
            } else {
                String str11 = "android.permission.REQUEST_INSTALL_PACKAGES";
                if (i11 == 6) {
                    str = "android.permission.PACKAGE_USAGE_STATS";
                } else if (i11 == 4) {
                    str = "android.permission.WRITE_SETTINGS";
                } else if (i11 == 0) {
                    str = "android.permission.SYSTEM_ALERT_WINDOW";
                } else {
                    if (i11 == 5) {
                        str = "android.permission.WRITE_SECURE_SETTINGS";
                    } else if (i11 == 7) {
                        str = "android.permission.READ_LOGS";
                    } else {
                        str = "android.permission.REQUEST_INSTALL_PACKAGES";
                    }
                    z = true;
                    if (list != null) {
                        for (AppBean appBean2 : list) {
                            if (this.I) {
                                bVar.b();
                                return;
                            }
                            if (!appBean2.pack.isEmpty()) {
                                if (str.equals(str11)) {
                                    if (!z) {
                                        z4 = k.f().f4037b.checkPermission(str, appBean2.pack) == 0;
                                        str2 = str11;
                                        str3 = "";
                                    } else if (this.K != null) {
                                        int iStrOpToOp = str.equals("android.permission.PACKAGE_USAGE_STATS") ? AppOpsManager.strOpToOp("android:get_usage_stats") : AppOpsManager.permissionToOpCode(str);
                                        try {
                                            if (Build.VERSION.SDK_INT >= 28) {
                                                str2 = str11;
                                                try {
                                                    iIntValue = ((Integer) j.a(this.K.getClass(), this.K, "checkOperation", Integer.valueOf(iStrOpToOp), Integer.valueOf(appBean2.uid), appBean2.pack)).intValue();
                                                } catch (Throwable unused2) {
                                                    z10 = false;
                                                    str3 = str4;
                                                    z4 = z10;
                                                    arrayList.add(new SpecialPermissionsBean(appBean2.name, appBean2.pack, appBean2.uid, str3, z4));
                                                    str11 = str2;
                                                    i10 = 1;
                                                }
                                            } else {
                                                str2 = str11;
                                                Class<?> cls = this.K.getClass();
                                                Class<?> cls2 = Integer.TYPE;
                                                Method method = cls.getMethod("checkOperation", cls2, cls2, String.class);
                                                IAppOpsService iAppOpsService = this.K;
                                                Integer numValueOf = Integer.valueOf(iStrOpToOp);
                                                Integer numValueOf2 = Integer.valueOf(appBean2.uid);
                                                String str12 = appBean2.pack;
                                                Object[] objArr = new Object[3];
                                                try {
                                                    objArr[0] = numValueOf;
                                                    objArr[1] = numValueOf2;
                                                    try {
                                                        objArr[2] = str12;
                                                        iIntValue = ((Integer) method.invoke(iAppOpsService, objArr)).intValue();
                                                    } catch (Throwable unused3) {
                                                        z10 = false;
                                                        str3 = str4;
                                                        z4 = z10;
                                                        arrayList.add(new SpecialPermissionsBean(appBean2.name, appBean2.pack, appBean2.uid, str3, z4));
                                                        str11 = str2;
                                                        i10 = 1;
                                                    }
                                                } catch (Throwable unused4) {
                                                }
                                            }
                                        } catch (Throwable unused5) {
                                            str2 = str11;
                                        }
                                        if (iIntValue == 0 || iIntValue == 4) {
                                            str4 = "";
                                            z10 = true;
                                            str3 = str4;
                                            z4 = z10;
                                        } else {
                                            str4 = (iIntValue != 1 && iIntValue == 3) ? "默认" : "";
                                            z10 = false;
                                            str3 = str4;
                                            z4 = z10;
                                        }
                                    } else {
                                        str2 = str11;
                                        String strA2 = k.f().a(appBean2.pack, appBean2.uid, str);
                                        if (strA2.equals("已允许")) {
                                            str3 = "";
                                            z4 = true;
                                        } else {
                                            str3 = strA2;
                                            z4 = false;
                                        }
                                    }
                                    arrayList.add(new SpecialPermissionsBean(appBean2.name, appBean2.pack, appBean2.uid, str3, z4));
                                    str11 = str2;
                                    i10 = 1;
                                } else {
                                    PackageInfo packageInfo = k.f().f4037b.getPackageInfo(appBean2.pack, 12288);
                                    if (packageInfo != null && (strArr = packageInfo.requestedPermissions) != null) {
                                        int length = strArr.length;
                                        for (int i13 = 0; i13 < length; i13 += i10) {
                                            if (strArr[i13].equals(str)) {
                                                if (!z) {
                                                }
                                                arrayList.add(new SpecialPermissionsBean(appBean2.name, appBean2.pack, appBean2.uid, str3, z4));
                                                str11 = str2;
                                                i10 = 1;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                z = false;
                if (list != null) {
                }
            }
        }
        bVar.b();
    }

    public final void y(int i10) {
        SpecialPermissionsBean specialPermissionsBean = (SpecialPermissionsBean) this.E.t(i10);
        specialPermissionsBean.isGrant = !specialPermissionsBean.isGrant;
        specialPermissionsBean.str_state = "";
        this.E.D(i10, specialPermissionsBean);
        new c(0, new ma.b(this, 29, specialPermissionsBean)).d(f.f13757b).a(fc.b.a()).b(new l4(this, specialPermissionsBean, i10, 3));
    }
}
