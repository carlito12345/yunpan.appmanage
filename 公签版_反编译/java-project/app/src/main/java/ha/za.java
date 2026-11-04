package ha;

import android.app.Activity;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PermissionInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.ServiceManager;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.internal.app.IAppOpsService;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.PermissionBean;
import j$.util.Map;
import j$.util.function.BiConsumer$CC;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.function.BiConsumer;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* loaded from: classes.dex */
public final class za extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final String f8166g;

    /* renamed from: h, reason: collision with root package name */
    public final PackageInfo f8167h;

    /* renamed from: i, reason: collision with root package name */
    public final int f8168i;

    /* renamed from: j, reason: collision with root package name */
    public ConstraintLayout f8169j;

    /* renamed from: k, reason: collision with root package name */
    public TvRecyclerView f8170k;
    public x9.x3 l;

    /* renamed from: m, reason: collision with root package name */
    public final ArrayList f8171m;

    /* renamed from: n, reason: collision with root package name */
    public final HashMap f8172n;

    /* renamed from: p, reason: collision with root package name */
    public final boolean f8173p;

    /* renamed from: q, reason: collision with root package name */
    public IAppOpsService f8174q;

    public za(Activity activity, Context context, PackageInfo packageInfo, int i10, boolean z) {
        super(activity, context, R.layout.dialog_permission_new);
        this.f8171m = new ArrayList();
        this.f8172n = new HashMap();
        this.f8174q = null;
        this.f8166g = packageInfo.packageName;
        this.f8167h = packageInfo;
        this.f8168i = i10;
        this.f8173p = z;
    }

    public final void a(PermissionBean permissionBean) throws PackageManager.NameNotFoundException {
        int i10;
        int iIndexOf;
        String strSubstring = "";
        if (permissionBean.permissionName.equals("android.permission.WRITE_SECURE_SETTINGS")) {
            permissionBean.permissionLabel = "修改系统安全设置";
            permissionBean.permissionDesc = "允许修改系统安全设置（能修改很多系统设置）";
            permissionBean.canPMS = true;
            return;
        }
        if (permissionBean.permissionName.equals("android.permission.GET_APP_OPS_STATS")) {
            permissionBean.permissionLabel = "OPS权限查询";
            permissionBean.permissionDesc = "允许使用APPOPS查询权限是否授权(状态)";
            permissionBean.canPMS = true;
            return;
        }
        try {
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
            PermissionInfo permissionInfo = kVar.f4037b.getPermissionInfo(permissionBean.permissionName, 0);
            permissionBean.permissionLabel = "" + ((Object) permissionInfo.loadLabel(kVar.f4037b));
            permissionBean.permissionDesc = "" + ((Object) permissionInfo.loadDescription(kVar.f4037b));
            int i11 = permissionInfo.protectionLevel;
            if ((i11 & 1) != 0) {
                permissionBean.permissionType = 1;
                permissionBean.permissionLevel = "危险权限(1)";
            } else if ((i11 & 2) != 0) {
                permissionBean.permissionType = 2;
                permissionBean.permissionLevel = "系统权限(2)";
            } else if ((i11 & 3) != 0) {
                permissionBean.permissionType = 3;
                permissionBean.permissionLevel = "系统权限(3)";
            } else if ((i11 & 4) != 0) {
                permissionBean.permissionType = 4;
                permissionBean.permissionLevel = "普通权限(4)";
            } else {
                permissionBean.permissionType = 0;
                permissionBean.permissionLevel = "普通权限(0)";
            }
            int i12 = permissionBean.permissionType;
            int i13 = i11 - i12;
            if (i13 == 0 && i12 == 1) {
                permissionBean.canPMS = true;
            }
            if (i13 != 0) {
                if ((i11 & 16) != 0) {
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
        String str = (String) this.f8172n.get(permissionBean.permissionName);
        if (str != null && !str.isEmpty() && (iIndexOf = str.indexOf("----")) != -1) {
            permissionBean.permissionLabel = str.substring(0, iIndexOf);
            permissionBean.permissionDesc = str.substring(iIndexOf + 4);
            return;
        }
        String str2 = permissionBean.permissionDesc;
        if (str2 == null || str2.isEmpty() || permissionBean.permissionDesc.equals("null")) {
            if (permissionBean.permissionName.startsWith("android.permission.")) {
                strSubstring = permissionBean.permissionName.substring(19);
                if (permissionBean.permissionLabel.isEmpty() || permissionBean.permissionLabel.equals("null") || permissionBean.permissionLabel.startsWith("android.permission.")) {
                    permissionBean.permissionLabel = strSubstring;
                }
            }
            ArrayList arrayList = this.f8171m;
            int iIndexOf2 = arrayList.indexOf(permissionBean.permissionName);
            if (iIndexOf2 == -1 && !strSubstring.isEmpty()) {
                iIndexOf2 = arrayList.indexOf(strSubstring);
            }
            if (iIndexOf2 == -1 || (i10 = iIndexOf2 + 1) >= arrayList.size()) {
                return;
            }
            permissionBean.permissionDesc = (String) arrayList.get(i10);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:164:0x02f4, code lost:
    
        if (android.os.Build.VERSION.SDK_INT < 28) goto L154;
     */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0308  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x030a  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0316 A[Catch: all -> 0x0322, TryCatch #0 {all -> 0x0322, blocks: (B:166:0x02f7, B:170:0x030b, B:172:0x0316, B:176:0x032f, B:178:0x0333, B:180:0x0344), top: B:295:0x02f7 }] */
    /* JADX WARN: Removed duplicated region for block: B:176:0x032f A[Catch: all -> 0x0322, TryCatch #0 {all -> 0x0322, blocks: (B:166:0x02f7, B:170:0x030b, B:172:0x0316, B:176:0x032f, B:178:0x0333, B:180:0x0344), top: B:295:0x02f7 }] */
    /* JADX WARN: Removed duplicated region for block: B:179:0x033a  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x040b A[Catch: all -> 0x03f8, TRY_LEAVE, TryCatch #14 {all -> 0x03f8, blocks: (B:212:0x03fa, B:214:0x0405, B:217:0x040b, B:209:0x03f5), top: B:321:0x0405 }] */
    /* JADX WARN: Removed duplicated region for block: B:286:0x060f  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x0615  */
    /* JADX WARN: Removed duplicated region for block: B:321:0x0405 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final /* synthetic */ void b(mc.b bVar) throws Exception {
        String str;
        String str2;
        int iIntValue;
        String str3;
        int i10;
        int i11;
        String str4;
        String[] strArr;
        Class<String> cls;
        int iPermissionToOpCode;
        int i12;
        int iIntValue2;
        HashMap map;
        String string;
        int iStrOpToOp;
        InputStream inputStreamOpenRawResource;
        int iIndexOf;
        mc.b bVar2 = bVar;
        Context context = this.f6725b;
        String str5 = ": ";
        String str6 = this.f8166g;
        fa.b bVar3 = fa.a.f5646a;
        if (bVar3.f()) {
            this.f8174q = bVar3.c();
        } else if (fa.o0.a().f5726a && fa.o0.a().f5730e != null) {
            this.f8174q = IAppOpsService.Stub.asInterface(new hi.c(hi.g.a("appops")));
        } else if (com.yunpan.appmanage.util.k.f().f4053j) {
            this.f8174q = IAppOpsService.Stub.asInterface(ServiceManager.getService("appops"));
        }
        try {
            inputStreamOpenRawResource = context.getResources().openRawResource(R.raw.permission);
        } catch (Exception unused) {
        }
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpenRawResource));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                } else if (!line.isEmpty()) {
                    this.f8171m.add(line);
                }
            }
            bufferedReader.close();
            if (inputStreamOpenRawResource != null) {
                inputStreamOpenRawResource.close();
            }
            int i13 = -1;
            try {
                inputStreamOpenRawResource = context.getResources().openRawResource(R.raw.permissionnew);
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(inputStreamOpenRawResource));
                    while (true) {
                        String line2 = bufferedReader2.readLine();
                        if (line2 == null) {
                            break;
                        }
                        if (!line2.isEmpty() && (iIndexOf = line2.indexOf("----")) != i13) {
                            this.f8172n.put(line2.substring(0, iIndexOf), line2.substring(iIndexOf + 4));
                            i13 = -1;
                        }
                    }
                    bufferedReader2.close();
                    if (inputStreamOpenRawResource != null) {
                        inputStreamOpenRawResource.close();
                    }
                } finally {
                }
            } catch (Exception unused2) {
            }
            try {
                HashMap map2 = new HashMap();
                a2.w0 w0VarF = a2.w0.F();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(com.yunpan.appmanage.util.k.f().f4047g ? "cmd " : "");
                sb2.append("appops get ");
                sb2.append(str6);
                String string2 = sb2.toString();
                w0VarF.getClass();
                HashMap map3 = map2;
                fa.a0 a0VarQ = a2.w0.q(2000L, string2);
                String str7 = "android.permission.";
                String str8 = "USE_ICC_AUTH_WITH_DEVICE_IDENTIFIER";
                if (a0VarQ.f5648a == 0) {
                    Iterator it = a0VarQ.f5649b.iterator();
                    while (it.hasNext()) {
                        String str9 = (String) it.next();
                        if (str9.contains(str5)) {
                            String[] strArrSplit = str9.split(str5);
                            Iterator it2 = it;
                            String[] strArrSplit2 = strArrSplit.length == 3 ? str9.substring(str9.indexOf(str5) + 2).split(str5) : strArrSplit;
                            if (strArrSplit2.length != 2) {
                                it = it2;
                            } else {
                                String str10 = (strArrSplit2[1].startsWith("allow") || strArrSplit2[1].startsWith("foreground")) ? "已允许" : strArrSplit2[1].startsWith("deny") ? "已拒绝" : (!strArrSplit2[1].startsWith("ignore") && strArrSplit2[1].startsWith("default")) ? "默认" : "未设置";
                                String str11 = str5;
                                if (!strArrSplit2[0].equals("USE_ICC_AUTH_WITH_DEVICE_IDENTIFIER")) {
                                    try {
                                        iStrOpToOp = AppOpsManager.strOpToOp("android:" + strArrSplit2[0].toLowerCase());
                                    } catch (Exception unused3) {
                                        StringBuilder sb3 = new StringBuilder();
                                        sb3.append("android.permission.");
                                        map = map3;
                                        sb3.append(strArrSplit2[0]);
                                        string = sb3.toString();
                                    }
                                    if (iStrOpToOp == -1) {
                                        PrintStream printStream = System.out;
                                        String str12 = strArrSplit2[0];
                                        printStream.getClass();
                                    } else {
                                        string = AppOpsManager.opToPermission(iStrOpToOp);
                                        if (string == null) {
                                            throw new Exception();
                                        }
                                        map = map3;
                                        PermissionBean permissionBean = new PermissionBean(string);
                                        permissionBean.str_status = str10;
                                        permissionBean.ops_is_open = str10.equals("已允许");
                                        permissionBean.permissionName_ops = strArrSplit2[0];
                                        a(permissionBean);
                                        HashMap map4 = map;
                                        map4.put(string, permissionBean);
                                        map3 = map4;
                                    }
                                }
                                it = it2;
                                str5 = str11;
                            }
                        }
                    }
                }
                HashMap map5 = map3;
                int i14 = Build.VERSION.SDK_INT;
                int i15 = this.f8168i;
                if (i14 >= 26) {
                    try {
                        if (map5.get("android.permission.RUN_IN_BACKGROUND") == null) {
                            PermissionBean permissionBean2 = new PermissionBean("android.permission.RUN_IN_BACKGROUND");
                            permissionBean2.ops_is_open = false;
                            permissionBean2.permissionName_ops = "RUN_IN_BACKGROUND";
                            com.yunpan.appmanage.util.k.f().b(str6, i15, permissionBean2);
                            a(permissionBean2);
                            map5.put("android.permission.RUN_IN_BACKGROUND", permissionBean2);
                        }
                    } catch (Exception e7) {
                        e = e7;
                        bVar2 = bVar;
                        e.printStackTrace();
                        if (Build.VERSION.SDK_INT < 23) {
                            com.yunpan.appmanage.util.a0.r("低于安卓6.0无需管理权限");
                        } else {
                            com.yunpan.appmanage.util.a0.z("获取权限信息失败", true);
                        }
                        bVar2.d(e);
                    }
                }
                if (i14 >= 28 && map5.get("android.permission.RUN_ANY_IN_BACKGROUND") == null) {
                    PermissionBean permissionBean3 = new PermissionBean("android.permission.RUN_ANY_IN_BACKGROUND");
                    permissionBean3.ops_is_open = false;
                    permissionBean3.permissionName_ops = "RUN_ANY_IN_BACKGROUND";
                    com.yunpan.appmanage.util.k.f().b(str6, i15, permissionBean3);
                    a(permissionBean3);
                    map5.put("android.permission.RUN_ANY_IN_BACKGROUND", permissionBean3);
                }
                String[] strArr2 = this.f8167h.requestedPermissions;
                Class<String> cls2 = String.class;
                if (strArr2 != null) {
                    str2 = "RUN_IN_BACKGROUND";
                    int length = strArr2.length;
                    str = "RUN_ANY_IN_BACKGROUND";
                    int i16 = 0;
                    while (i16 < length) {
                        String str13 = strArr2[i16];
                        if (map5.get(str13) == null && !str13.startsWith(str6) && str13.startsWith(str7) && !str13.endsWith(str8)) {
                            str3 = str7;
                            if (str13.equals("android.permission.MANAGE_EXTERNAL_STORAGE")) {
                                i10 = length;
                                if (Build.VERSION.SDK_INT >= 30) {
                                }
                                i11 = i16;
                            } else {
                                i10 = length;
                            }
                            if (!str13.equals("android.permission.READ_MEDIA_IMAGES") || Build.VERSION.SDK_INT >= 33) {
                                if (str13.equals("android.permission.PACKAGE_USAGE_STATS")) {
                                    if (Build.VERSION.SDK_INT < 23) {
                                    }
                                    try {
                                        PermissionBean permissionBean4 = new PermissionBean();
                                        permissionBean4.pms_is_open = com.yunpan.appmanage.util.k.f().f4037b.checkPermission(str13, str6) != 0;
                                        permissionBean4.permissionName = str13;
                                        iPermissionToOpCode = AppOpsManager.permissionToOpCode(str13);
                                        i12 = -1;
                                        if (iPermissionToOpCode != -1) {
                                            permissionBean4.permissionName_ops = AppOpsManager.opToName(iPermissionToOpCode).toUpperCase();
                                            i12 = -1;
                                        }
                                        if (iPermissionToOpCode == i12) {
                                            i11 = i16;
                                            str4 = str8;
                                            strArr = strArr2;
                                            cls = cls2;
                                            a(permissionBean4);
                                            if (!permissionBean4.permissionName_ops.isEmpty()) {
                                                try {
                                                    if (permissionBean4.canPMS) {
                                                        map5.put(permissionBean4.permissionName, permissionBean4);
                                                    }
                                                } catch (Throwable th2) {
                                                    th = th2;
                                                    th.printStackTrace();
                                                    i16 = i11 + 1;
                                                    str7 = str3;
                                                    length = i10;
                                                    str8 = str4;
                                                    cls2 = cls;
                                                    strArr2 = strArr;
                                                }
                                            }
                                        } else if (this.f8174q == null) {
                                            com.yunpan.appmanage.util.k.f().b(str6, i15, permissionBean4);
                                            i11 = i16;
                                            str4 = str8;
                                            strArr = strArr2;
                                            cls = cls2;
                                            a(permissionBean4);
                                            if (!permissionBean4.permissionName_ops.isEmpty()) {
                                            }
                                        } else {
                                            permissionBean4.permissionName_ops = AppOpsManager.opToName(iPermissionToOpCode).toUpperCase();
                                            try {
                                                str4 = str8;
                                                if (Build.VERSION.SDK_INT >= 28) {
                                                    try {
                                                        i11 = i16;
                                                        strArr = strArr2;
                                                        try {
                                                            iIntValue2 = ((Integer) org.lsposed.hiddenapibypass.j.a(this.f8174q.getClass(), this.f8174q, "checkOperation", Integer.valueOf(iPermissionToOpCode), Integer.valueOf(i15), str6)).intValue();
                                                            cls = cls2;
                                                        } catch (Throwable unused4) {
                                                            cls = cls2;
                                                            permissionBean4.str_status = "未设置";
                                                            a(permissionBean4);
                                                            if (!permissionBean4.permissionName_ops.isEmpty()) {
                                                            }
                                                            i16 = i11 + 1;
                                                            str7 = str3;
                                                            length = i10;
                                                            str8 = str4;
                                                            cls2 = cls;
                                                            strArr2 = strArr;
                                                        }
                                                    } catch (Throwable unused5) {
                                                        i11 = i16;
                                                        strArr = strArr2;
                                                        cls = cls2;
                                                        permissionBean4.str_status = "未设置";
                                                        a(permissionBean4);
                                                        if (!permissionBean4.permissionName_ops.isEmpty()) {
                                                        }
                                                        i16 = i11 + 1;
                                                        str7 = str3;
                                                        length = i10;
                                                        str8 = str4;
                                                        cls2 = cls;
                                                        strArr2 = strArr;
                                                    }
                                                } else {
                                                    i11 = i16;
                                                    strArr = strArr2;
                                                    Class<?> cls3 = this.f8174q.getClass();
                                                    Class<?> cls4 = Integer.TYPE;
                                                    cls = cls2;
                                                    iIntValue2 = ((Integer) cls3.getMethod("checkOperation", cls4, cls4, cls2).invoke(this.f8174q, Integer.valueOf(iPermissionToOpCode), Integer.valueOf(i15), str6)).intValue();
                                                }
                                                if (iIntValue2 == 0 || iIntValue2 == 4) {
                                                    permissionBean4.ops_is_open = true;
                                                    permissionBean4.str_status = "已允许";
                                                } else if (iIntValue2 == 1) {
                                                    try {
                                                        permissionBean4.str_status = "已拒绝";
                                                    } catch (Throwable unused6) {
                                                        permissionBean4.str_status = "未设置";
                                                        a(permissionBean4);
                                                        if (!permissionBean4.permissionName_ops.isEmpty()) {
                                                        }
                                                        i16 = i11 + 1;
                                                        str7 = str3;
                                                        length = i10;
                                                        str8 = str4;
                                                        cls2 = cls;
                                                        strArr2 = strArr;
                                                    }
                                                } else if (iIntValue2 == 3) {
                                                    permissionBean4.str_status = "默认";
                                                    if (permissionBean4.pms_is_open) {
                                                        permissionBean4.str_status = "已允许";
                                                    }
                                                } else {
                                                    System.out.getClass();
                                                    permissionBean4.str_status = "未设置";
                                                }
                                            } catch (Throwable unused7) {
                                                i11 = i16;
                                                str4 = str8;
                                            }
                                            a(permissionBean4);
                                            if (!permissionBean4.permissionName_ops.isEmpty()) {
                                            }
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        i11 = i16;
                                        str4 = str8;
                                        strArr = strArr2;
                                        cls = cls2;
                                    }
                                    i16 = i11 + 1;
                                    str7 = str3;
                                    length = i10;
                                    str8 = str4;
                                    cls2 = cls;
                                    strArr2 = strArr;
                                } else {
                                    if (str13.equals("android.permission.FOREGROUND_SERVICE")) {
                                    }
                                    PermissionBean permissionBean42 = new PermissionBean();
                                    permissionBean42.pms_is_open = com.yunpan.appmanage.util.k.f().f4037b.checkPermission(str13, str6) != 0;
                                    permissionBean42.permissionName = str13;
                                    iPermissionToOpCode = AppOpsManager.permissionToOpCode(str13);
                                    i12 = -1;
                                    if (iPermissionToOpCode != -1) {
                                    }
                                    if (iPermissionToOpCode == i12) {
                                    }
                                    i16 = i11 + 1;
                                    str7 = str3;
                                    length = i10;
                                    str8 = str4;
                                    cls2 = cls;
                                    strArr2 = strArr;
                                }
                            }
                            i11 = i16;
                        } else {
                            str3 = str7;
                            i11 = i16;
                            i10 = length;
                        }
                        str4 = str8;
                        strArr = strArr2;
                        cls = cls2;
                        i16 = i11 + 1;
                        str7 = str3;
                        length = i10;
                        str8 = str4;
                        cls2 = cls;
                        strArr2 = strArr;
                    }
                } else {
                    str = "RUN_ANY_IN_BACKGROUND";
                    str2 = "RUN_IN_BACKGROUND";
                }
                Class<String> cls5 = cls2;
                int i17 = Build.VERSION.SDK_INT;
                if (i17 >= 26 && map5.get("android.permission.REQUEST_INSTALL_PACKAGES") == null) {
                    try {
                        PermissionBean permissionBean5 = new PermissionBean();
                        permissionBean5.pms_is_open = com.yunpan.appmanage.util.k.f().f4037b.checkPermission("android.permission.REQUEST_INSTALL_PACKAGES", str6) == 0;
                        permissionBean5.permissionName = "android.permission.REQUEST_INSTALL_PACKAGES";
                        int iPermissionToOpCode2 = AppOpsManager.permissionToOpCode("android.permission.REQUEST_INSTALL_PACKAGES");
                        int i18 = -1;
                        if (iPermissionToOpCode2 != -1) {
                            permissionBean5.permissionName_ops = AppOpsManager.opToName(iPermissionToOpCode2).toUpperCase();
                            i18 = -1;
                        }
                        if (iPermissionToOpCode2 != i18) {
                            if (this.f8174q == null) {
                                com.yunpan.appmanage.util.k.f().b(str6, i15, permissionBean5);
                            } else {
                                permissionBean5.permissionName_ops = AppOpsManager.opToName(iPermissionToOpCode2).toUpperCase();
                                try {
                                    if (i17 >= 28) {
                                        iIntValue = ((Integer) org.lsposed.hiddenapibypass.j.a(this.f8174q.getClass(), this.f8174q, "checkOperation", Integer.valueOf(iPermissionToOpCode2), Integer.valueOf(i15), str6)).intValue();
                                    } else {
                                        Class<?> cls6 = this.f8174q.getClass();
                                        Class<?> cls7 = Integer.TYPE;
                                        iIntValue = ((Integer) cls6.getMethod("checkOperation", cls7, cls7, cls5).invoke(this.f8174q, Integer.valueOf(iPermissionToOpCode2), Integer.valueOf(i15), str6)).intValue();
                                    }
                                    if (iIntValue == 0 || iIntValue == 4) {
                                        permissionBean5.ops_is_open = true;
                                        permissionBean5.str_status = "已允许";
                                    } else if (iIntValue == 1) {
                                        permissionBean5.str_status = "已拒绝";
                                    } else if (iIntValue == 3) {
                                        permissionBean5.str_status = "默认";
                                        if (permissionBean5.pms_is_open) {
                                            permissionBean5.str_status = "已允许";
                                        }
                                    } else {
                                        System.out.getClass();
                                        permissionBean5.str_status = "未设置";
                                    }
                                } catch (Throwable unused8) {
                                    permissionBean5.str_status = "未设置";
                                }
                            }
                        }
                        a(permissionBean5);
                        map5.put(permissionBean5.permissionName, permissionBean5);
                    } catch (Throwable unused9) {
                    }
                }
                final ArrayList arrayList = new ArrayList();
                if (Build.VERSION.SDK_INT >= 24) {
                    Map.EL.forEach(map5, new BiConsumer() { // from class: ha.wa
                        @Override // java.util.function.BiConsumer
                        public final void accept(Object obj, Object obj2) {
                            PermissionBean permissionBean6 = (PermissionBean) obj2;
                            za zaVar = this.f8008a;
                            zaVar.getClass();
                            if (permissionBean6.permissionName_ops.isEmpty()) {
                                boolean z = permissionBean6.pms_is_open;
                                permissionBean6.isOpen = z;
                                permissionBean6.str_status = z ? "已允许" : "未设置";
                            } else {
                                boolean z4 = permissionBean6.ops_is_open;
                                permissionBean6.isOpen = z4;
                                if (!z4 && zaVar.f8173p && permissionBean6.canPMS && permissionBean6.str_status.equals("未设置")) {
                                    boolean z10 = permissionBean6.pms_is_open;
                                    permissionBean6.isOpen = z10;
                                    permissionBean6.str_status = z10 ? "已允许" : "未设置";
                                }
                            }
                            arrayList.add(permissionBean6);
                        }

                        public final /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                            return BiConsumer$CC.$default$andThen(this, biConsumer);
                        }
                    });
                } else {
                    Iterator it3 = map5.entrySet().iterator();
                    while (it3.hasNext()) {
                        arrayList.add((PermissionBean) ((Map.Entry) it3.next()).getValue());
                    }
                }
                Collections.sort(arrayList, new a2.m(17));
                String[] strArr3 = {str, str2, "FOREGROUND_SERVICE", "START_FOREGROUND", "WRITE_CLIPBOARD", "READ_CLIPBOARD", "PACKAGE_USAGE_STATS", "REQUEST_DELETE_PACKAGES", "REQUEST_INSTALL_PACKAGES", "QUERY_ALL_PACKAGES", "SYSTEM_ALERT_WINDOW", "WRITE_MEDIA_VIDEO", "READ_MEDIA_VIDEO", "WRITE_MEDIA_AUDIO", "READ_MEDIA_AUDIO", "WRITE_MEDIA_IMAGES", "READ_MEDIA_IMAGES", "NO_ISOLATED_STORAGE", "LEGACY_STORAGE", "MANAGE_EXTERNAL_STORAGE", "WRITE_EXTERNAL_STORAGE", "READ_EXTERNAL_STORAGE"};
                for (int i19 = 0; i19 < 22; i19++) {
                    String str14 = strArr3[i19];
                    int i20 = 0;
                    while (true) {
                        if (i20 >= arrayList.size()) {
                            break;
                        }
                        try {
                            if (((PermissionBean) arrayList.get(i20)).permissionName_ops.equals(str14)) {
                                arrayList.add(0, (PermissionBean) arrayList.remove(i20));
                                break;
                            }
                            i20++;
                        } catch (Exception e10) {
                            e = e10;
                            bVar2 = bVar;
                            e.printStackTrace();
                            if (Build.VERSION.SDK_INT < 23) {
                            }
                            bVar2.d(e);
                        }
                    }
                }
                bVar2 = bVar;
                bVar2.f(arrayList);
                bVar.b();
            } catch (Exception e11) {
                e = e11;
                e.printStackTrace();
                if (Build.VERSION.SDK_INT < 23) {
                }
                bVar2.d(e);
            }
        } finally {
            if (inputStreamOpenRawResource == null) {
                throw th;
            }
            try {
                inputStreamOpenRawResource.close();
                throw th;
            } catch (Throwable th4) {
                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th4);
            }
        }
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f8169j = (ConstraintLayout) findViewById(R.id.v_loading);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.f8170k = tvRecyclerView;
        Context context = this.f6725b;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(context, 1, false));
        x9.x3 x3Var = new x9.x3();
        this.l = x3Var;
        this.f8170k.setAdapter(x3Var);
        androidx.recyclerview.widget.y yVar = new androidx.recyclerview.widget.y(context);
        yVar.e(n0.g.e(context, R.drawable.divider));
        this.f8170k.addItemDecoration(yVar);
        x9.x3 x3Var2 = this.l;
        x3Var2.f2881e = new va(this);
        x3Var2.f2882f = new va(this);
        this.f8170k.setOnInBorderKeyEventListener(new g2.c(22));
        new mc.c(0, new va(this)).d(rc.f.f13757b).a(fc.b.a()).b(new p0(17, this));
    }
}
