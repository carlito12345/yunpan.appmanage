package com.yunpan.appmanage.ui;

import a2.w0;
import android.app.AppOpsManager;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PermissionInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.ServiceManager;
import android.support.v4.media.session.a;
import android.widget.ProgressBar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.android.internal.app.IAppOpsService;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.PermissionBean;
import com.yunpan.appmanage.ui.ActivityAppsPermissionsAllow;
import com.yunpan.appmanage.util.k;
import da.g;
import fa.a0;
import fc.b;
import j$.util.Map;
import j$.util.function.BiConsumer$CC;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.function.BiConsumer;
import mc.c;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import qa.e;
import rc.f;
import ua.o0;
import x9.b0;
import x9.m0;

/* loaded from: classes.dex */
public class ActivityAppsPermissionsAllow extends g {
    public static final /* synthetic */ int R = 0;
    public String C;
    public PackageInfo D;
    public ProgressBar E;
    public m0 F;
    public RecyclerView G;
    public TvRecyclerView H;
    public b0 I;
    public PackageManager K;
    public ContentResolver L;
    public final ArrayList M = new ArrayList();
    public final HashMap N = new HashMap();
    public final HashSet O = new HashSet();
    public boolean P = false;

    @Override // da.g
    public final int t() {
        return R.layout.activity_apps_permissions_allow;
    }

    @Override // da.g
    public final void u() {
        this.C = getIntent().getExtras().getString("packageName");
        this.K = getPackageManager();
        this.L = getContentResolver();
        this.E = (ProgressBar) findViewById(R.id.v_loading);
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.v_list_gn);
        this.G = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(0, false));
        m0 m0Var = new m0();
        this.F = m0Var;
        m0Var.q("返回");
        this.F.q("开始授权");
        this.G.setAdapter(this.F);
        this.F.f2881e = new ua.m0(this, 0);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list_permissions);
        this.H = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager((Context) this, 1, false));
        b0 b0Var = new b0();
        this.I = b0Var;
        this.H.setAdapter(b0Var);
        this.I.f2881e = new ua.m0(this, 1);
        new c(0, new ua.m0(this, 3)).d(f.f13757b).a(b.a()).b(new o0(this, 0));
    }

    public final void x(PermissionBean permissionBean) throws PackageManager.NameNotFoundException {
        int iIndexOf;
        if (permissionBean.permissionName.equals("android.permission.WRITE_SECURE_SETTINGS")) {
            permissionBean.permissionLabel = "修改系统安全设置";
            permissionBean.canPMS = true;
            return;
        }
        if (permissionBean.permissionName.equals("android.permission.GET_APP_OPS_STATS")) {
            permissionBean.permissionLabel = "OPS权限查询";
            permissionBean.canPMS = true;
            return;
        }
        try {
            PermissionInfo permissionInfo = this.K.getPermissionInfo(permissionBean.permissionName, 0);
            permissionBean.permissionLabel = "" + ((Object) permissionInfo.loadLabel(this.K));
            permissionBean.permissionDesc = "" + ((Object) permissionInfo.loadDescription(this.K));
            int i10 = permissionInfo.protectionLevel;
            if ((i10 & 1) != 0) {
                permissionBean.permissionType = 1;
                permissionBean.permissionLevel = "危险权限(1)";
            } else if ((i10 & 2) != 0) {
                permissionBean.permissionType = 2;
                permissionBean.permissionLevel = "系统权限(2)";
            } else if ((i10 & 3) != 0) {
                permissionBean.permissionType = 3;
                permissionBean.permissionLevel = "系统权限(3)";
            } else if ((i10 & 4) != 0) {
                permissionBean.permissionType = 4;
                permissionBean.permissionLevel = "普通权限(4)";
            } else {
                permissionBean.permissionType = 0;
                permissionBean.permissionLevel = "普通权限(0)";
            }
            int i11 = permissionBean.permissionType;
            int i12 = i10 - i11;
            if (i12 == 0 && i11 == 1) {
                permissionBean.canPMS = true;
            }
            if (i12 != 0) {
                if ((i10 & 16) != 0) {
                    permissionBean.permissionLevel += "、特权";
                }
                if ((permissionInfo.protectionLevel & 32) != 0) {
                    permissionBean.permissionLevel += "、开发者";
                }
                if ((permissionInfo.protectionLevel & 64) != 0) {
                    permissionBean.permissionLevel += "、APPOPS";
                }
                if ((permissionInfo.protectionLevel & 128) != 0) {
                    permissionBean.permissionLevel += "、PRE23";
                }
                if ((permissionInfo.protectionLevel & 256) != 0) {
                    permissionBean.permissionLevel += "、安装时";
                }
                if ((permissionInfo.protectionLevel & 512) != 0) {
                    permissionBean.permissionLevel += "、验证器";
                }
                if ((permissionInfo.protectionLevel & 1024) != 0) {
                    permissionBean.permissionLevel += "、预装";
                }
                if ((permissionInfo.protectionLevel & 2048) != 0) {
                    permissionBean.permissionLevel += "、设置";
                }
                if ((permissionInfo.protectionLevel & 4096) != 0) {
                    permissionBean.permissionLevel += "、即时";
                }
                if ((permissionInfo.protectionLevel & 8192) != 0) {
                    permissionBean.permissionLevel += "、运行时";
                }
                if ((permissionInfo.protectionLevel & 16384) != 0) {
                    permissionBean.permissionLevel += "、OEM";
                }
                if ((permissionInfo.protectionLevel & 32768) != 0) {
                    permissionBean.permissionLevel += "、供应商特享";
                }
                if ((permissionInfo.protectionLevel & 65536) != 0) {
                    permissionBean.permissionLevel += "、系统文本分类器";
                }
                if ((permissionInfo.protectionLevel & PKIFailureInfo.signerNotTrusted) != 0) {
                    permissionBean.permissionLevel += "、配置器";
                }
                if ((permissionInfo.protectionLevel & 1048576) != 0) {
                    permissionBean.permissionLevel += "、事件报告审批人";
                }
                if ((permissionInfo.protectionLevel & PKIFailureInfo.badSenderNonce) != 0) {
                    permissionBean.permissionLevel += "、APP预测";
                }
                if ((permissionInfo.protectionLevel & 8388608) != 0) {
                    permissionBean.permissionLevel += "、同伴";
                }
                if ((permissionInfo.protectionLevel & 16777216) != 0) {
                    permissionBean.permissionLevel += "、零售演示";
                }
                if ((permissionInfo.protectionLevel & 33554432) != 0) {
                    permissionBean.permissionLevel += "、最近";
                }
                if ((permissionInfo.protectionLevel & 67108864) != 0) {
                    permissionBean.permissionLevel += "、角色";
                }
                if ((permissionInfo.protectionLevel & 134217728) != 0) {
                    permissionBean.permissionLevel += "、已知的签名者";
                }
                if ((permissionInfo.protectionLevel & 4194304) != 0) {
                    permissionBean.permissionLevel += "、模块";
                }
            }
            if (!permissionBean.canPMS) {
                if (permissionBean.permissionType == 1 && permissionBean.permissionLevel.contains("开发者")) {
                    permissionBean.canPMS = true;
                } else if (permissionBean.permissionType == 2 && permissionBean.permissionLevel.contains("开发者")) {
                    permissionBean.canPMS = true;
                } else if (permissionBean.permissionType == 1 && permissionBean.permissionLevel.contains("即时")) {
                    permissionBean.canPMS = true;
                }
            }
        } catch (Exception unused) {
        }
        String str = (String) this.N.get(permissionBean.permissionName);
        if (str == null || str.isEmpty() || (iIndexOf = str.indexOf("----")) == -1) {
            return;
        }
        permissionBean.permissionLabel = str.substring(0, iIndexOf);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:139:0x02cf  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x0327 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final /* synthetic */ void y(mc.b bVar) {
        String str;
        ApplicationInfo applicationInfo;
        PermissionBean permissionBean;
        int iPermissionToOpCode;
        int i10;
        char c7;
        String string;
        int iStrOpToOp;
        int iIndexOf;
        InputStream inputStreamOpenRawResource;
        try {
            applicationInfo = this.K.getApplicationInfo(this.C, 0);
            this.D = this.K.getPackageInfo(this.C, 4096);
        } catch (Exception unused) {
            str = "获取应用信息出错";
        }
        if (applicationInfo.uid == 1000) {
            str = "此应用拥有所有权限";
            a.B(str, bVar);
            return;
        }
        fa.b bVar2 = fa.a.f5646a;
        if (bVar2.f()) {
            bVar2.c();
        } else if (fa.o0.a().f5726a && fa.o0.a().f5730e != null) {
            IAppOpsService.Stub.asInterface(new hi.c(hi.g.a("appops")));
        } else if (k.f().f4053j) {
            IAppOpsService.Stub.asInterface(ServiceManager.getService("appops"));
        }
        try {
            inputStreamOpenRawResource = this.A.getResources().openRawResource(R.raw.permission);
        } catch (Exception unused2) {
        }
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpenRawResource));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                } else if (!line.isEmpty()) {
                    this.M.add(line);
                }
            }
            bufferedReader.close();
            if (inputStreamOpenRawResource != null) {
                inputStreamOpenRawResource.close();
            }
            int i11 = -1;
            try {
                InputStream inputStreamOpenRawResource2 = this.A.getResources().openRawResource(R.raw.permissionnew);
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(inputStreamOpenRawResource2));
                    while (true) {
                        String line2 = bufferedReader2.readLine();
                        if (line2 == null) {
                            break;
                        }
                        if (!line2.isEmpty() && (iIndexOf = line2.indexOf("----")) != i11) {
                            this.N.put(line2.substring(0, iIndexOf), line2.substring(iIndexOf + 4));
                            i11 = -1;
                        }
                    }
                    bufferedReader2.close();
                    if (inputStreamOpenRawResource2 != null) {
                        inputStreamOpenRawResource2.close();
                    }
                } catch (Throwable th2) {
                    if (inputStreamOpenRawResource2 == null) {
                        throw th2;
                    }
                    try {
                        inputStreamOpenRawResource2.close();
                        throw th2;
                    } catch (Throwable th3) {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                        throw th2;
                    }
                }
            } catch (Exception unused3) {
            }
            try {
                HashMap map = new HashMap();
                w0 w0VarF = w0.F();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(k.f().f4047g ? "cmd " : "");
                sb2.append("appops get ");
                sb2.append(this.C);
                String string2 = sb2.toString();
                w0VarF.getClass();
                a0 a0VarP = w0.p(string2);
                if (a0VarP.f5648a == 0) {
                    for (String str2 : a0VarP.f5649b) {
                        if (str2.contains(": ")) {
                            String[] strArrSplit = str2.split(": ");
                            if (strArrSplit.length == 3) {
                                strArrSplit = str2.substring(str2.indexOf(": ") + 2).split(": ");
                            }
                            if (strArrSplit.length == 2 && !strArrSplit[0].equals("USE_ICC_AUTH_WITH_DEVICE_IDENTIFIER")) {
                                try {
                                    iStrOpToOp = AppOpsManager.strOpToOp("android:" + strArrSplit[0].toLowerCase());
                                } catch (Exception unused4) {
                                    StringBuilder sb3 = new StringBuilder();
                                    sb3.append("android.permission.");
                                    c7 = 0;
                                    sb3.append(strArrSplit[0]);
                                    string = sb3.toString();
                                }
                                if (iStrOpToOp == -1) {
                                    PrintStream printStream = System.out;
                                    String str3 = strArrSplit[0];
                                    printStream.getClass();
                                } else {
                                    string = AppOpsManager.opToPermission(iStrOpToOp);
                                    if (string == null) {
                                        string = "android.permission." + strArrSplit[0];
                                    }
                                    c7 = 0;
                                    PermissionBean permissionBean2 = new PermissionBean(string);
                                    permissionBean2.permissionName_ops = strArrSplit[c7];
                                    x(permissionBean2);
                                    map.put(string, permissionBean2);
                                }
                            }
                        }
                    }
                }
                int i12 = Build.VERSION.SDK_INT;
                if (i12 >= 28 && map.get("android.permission.RUN_IN_BACKGROUND") == null) {
                    PermissionBean permissionBean3 = new PermissionBean("后台运行", "android.permission.RUN_IN_BACKGROUND", "RUN_IN_BACKGROUND");
                    permissionBean3.canPMS = false;
                    map.put("android.permission.RUN_IN_BACKGROUND", permissionBean3);
                }
                if (i12 >= 28 && map.get("android.permission.RUN_ANY_IN_BACKGROUND") == null) {
                    PermissionBean permissionBean4 = new PermissionBean("后台运行", "android.permission.RUN_ANY_IN_BACKGROUND", "RUN_ANY_IN_BACKGROUND");
                    permissionBean4.canPMS = false;
                    map.put("android.permission.RUN_ANY_IN_BACKGROUND", permissionBean4);
                }
                if (i12 >= 26 && map.get("android.permission.REQUEST_INSTALL_PACKAGES") == null) {
                    PermissionBean permissionBean5 = new PermissionBean("安装应用", "android.permission.REQUEST_INSTALL_PACKAGES", "REQUEST_INSTALL_PACKAGES");
                    permissionBean5.canPMS = true;
                    map.put(permissionBean5.permissionName, permissionBean5);
                }
                if (map.get("android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS") == null) {
                    PermissionBean permissionBean6 = new PermissionBean("忽略电池优化", "android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS", "REQUEST_IGNORE_BATTERY_OPTIMIZATIONS");
                    permissionBean6.canPMS = false;
                    map.put(permissionBean6.permissionName, permissionBean6);
                }
                boolean z = false;
                for (ResolveInfo resolveInfo : this.K.queryIntentServices(new Intent("android.service.notification.NotificationListenerService"), 128)) {
                    ServiceInfo serviceInfo = resolveInfo.serviceInfo;
                    if (serviceInfo != null && this.C.equals(serviceInfo.packageName) && resolveInfo.serviceInfo.enabled) {
                        this.O.add(ComponentName.unflattenFromString(resolveInfo.serviceInfo.packageName + "/" + resolveInfo.serviceInfo.name).flattenToString());
                        if (!z) {
                            PermissionBean permissionBean7 = new PermissionBean("通知使用权", "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE", "BIND_NOTIFICATION_LISTENER_SERVICE");
                            map.put(permissionBean7.permissionName, permissionBean7);
                            z = true;
                        }
                    }
                }
                String[] strArr = this.D.requestedPermissions;
                if (strArr != null) {
                    int length = strArr.length;
                    int i13 = 0;
                    while (i13 < length) {
                        String str4 = strArr[i13];
                        if (str4.startsWith("android.permission.") && !str4.endsWith("USE_ICC_AUTH_WITH_DEVICE_IDENTIFIER") && ((!str4.equals("android.permission.MANAGE_EXTERNAL_STORAGE") || Build.VERSION.SDK_INT >= 30) && (!str4.equals("android.permission.READ_MEDIA_IMAGES") || Build.VERSION.SDK_INT >= 33))) {
                            if (str4.equals("android.permission.PACKAGE_USAGE_STATS")) {
                                i10 = Build.VERSION.SDK_INT < 23 ? 1 : 1;
                                try {
                                    permissionBean = new PermissionBean();
                                    permissionBean.permissionName = str4;
                                    iPermissionToOpCode = AppOpsManager.permissionToOpCode(str4);
                                    if (iPermissionToOpCode != -1) {
                                        try {
                                            permissionBean.permissionName_ops = AppOpsManager.opToName(iPermissionToOpCode).toUpperCase();
                                        } catch (Throwable th4) {
                                            th = th4;
                                            th.printStackTrace();
                                            i13 += i10;
                                        }
                                    }
                                    x(permissionBean);
                                    if (map.get(permissionBean.permissionName) == null && (!permissionBean.permissionName_ops.isEmpty() || permissionBean.canPMS)) {
                                        map.put(permissionBean.permissionName, permissionBean);
                                    }
                                } catch (Throwable th5) {
                                    th = th5;
                                }
                            } else {
                                if (str4.equals("android.permission.FOREGROUND_SERVICE")) {
                                    if (Build.VERSION.SDK_INT < 28) {
                                    }
                                }
                                permissionBean = new PermissionBean();
                                permissionBean.permissionName = str4;
                                iPermissionToOpCode = AppOpsManager.permissionToOpCode(str4);
                                if (iPermissionToOpCode != -1) {
                                }
                                x(permissionBean);
                                if (map.get(permissionBean.permissionName) == null) {
                                    map.put(permissionBean.permissionName, permissionBean);
                                }
                            }
                        }
                        i13 += i10;
                    }
                }
                final ArrayList arrayList = new ArrayList();
                if (Build.VERSION.SDK_INT >= 24) {
                    Map.EL.forEach(map, new BiConsumer() { // from class: ua.n0
                        @Override // java.util.function.BiConsumer
                        public final void accept(Object obj, Object obj2) {
                            int i14 = ActivityAppsPermissionsAllow.R;
                            arrayList.add((PermissionBean) obj2);
                        }

                        public final /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                            return BiConsumer$CC.$default$andThen(this, biConsumer);
                        }
                    });
                } else {
                    Iterator it = map.entrySet().iterator();
                    while (it.hasNext()) {
                        arrayList.add((PermissionBean) ((Map.Entry) it.next()).getValue());
                    }
                }
                Collections.sort(arrayList, new e(19));
                String[] strArr2 = {"RUN_ANY_IN_BACKGROUND", "RUN_IN_BACKGROUND", "FOREGROUND_SERVICE", "START_FOREGROUND", "WRITE_CLIPBOARD", "READ_CLIPBOARD", "PACKAGE_USAGE_STATS", "REQUEST_DELETE_PACKAGES", "REQUEST_INSTALL_PACKAGES", "QUERY_ALL_PACKAGES", "SYSTEM_ALERT_WINDOW", "WRITE_MEDIA_VIDEO", "READ_MEDIA_VIDEO", "WRITE_MEDIA_AUDIO", "READ_MEDIA_AUDIO", "WRITE_MEDIA_IMAGES", "READ_MEDIA_IMAGES", "NO_ISOLATED_STORAGE", "LEGACY_STORAGE", "MANAGE_EXTERNAL_STORAGE", "WRITE_EXTERNAL_STORAGE", "READ_EXTERNAL_STORAGE", "BIND_NOTIFICATION_LISTENER_SERVICE", "REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"};
                for (int i14 = 0; i14 < 24; i14++) {
                    String str5 = strArr2[i14];
                    int i15 = 0;
                    while (true) {
                        if (i15 >= arrayList.size()) {
                            break;
                        }
                        if (((PermissionBean) arrayList.get(i15)).permissionName_ops.equals(str5)) {
                            arrayList.add(0, (PermissionBean) arrayList.remove(i15));
                            break;
                        }
                        i15++;
                    }
                }
                bVar.f(arrayList);
                bVar.b();
            } catch (Exception e7) {
                e7.printStackTrace();
                bVar.d(new Exception("获取权限信息失败"));
            }
        } catch (Throwable th6) {
            if (inputStreamOpenRawResource == null) {
                throw th6;
            }
            try {
                inputStreamOpenRawResource.close();
                throw th6;
            } catch (Throwable th7) {
                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th6, th7);
                throw th6;
            }
        }
    }
}
