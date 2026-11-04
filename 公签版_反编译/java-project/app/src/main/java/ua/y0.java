package ua;

import android.content.pm.PackageInfo;
import android.view.View;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.FileInfo;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityClean;
import j$.util.Iterator$EL;
import java.io.File;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final /* synthetic */ class y0 implements TvRecyclerView.OnInBorderKeyEventListener, c6.e, ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16048a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityClean f16049b;

    public /* synthetic */ y0(ActivityClean activityClean, int i10) {
        this.f16048a = i10;
        this.f16049b = activityClean;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void a(mc.b bVar) {
        String strTrim;
        int iLastIndexOf;
        String str;
        String str2;
        String str3;
        List<FileInfo> listSqlQuery;
        String str4;
        String str5;
        Iterator<FileInfo> it;
        Iterator it2;
        String str6;
        String string;
        List<FileInfo> listSqlQuery2;
        long j10;
        String str7;
        String str8;
        String str9;
        com.yunpan.appmanage.util.k kVar;
        Iterator it3;
        int i10 = ActivityClean.M;
        this.f16049b.getClass();
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
        if (kVar2.f4058m) {
            x9.z0 z0Var = new x9.z0("adb临时目录残留(/data/local/tmp)", 1, true);
            fa.b0.f5652a.getClass();
            fa.a0 a0VarH = a2.w0.h("du -sh /data/local/tmp");
            if (a0VarH.f5648a != 0 || (iLastIndexOf = (strTrim = a0VarH.a().trim()).lastIndexOf("/data/")) == -1) {
                z0Var.f18409d = "推荐清理";
            } else {
                String strTrim2 = strTrim.substring(0, iLastIndexOf).trim();
                int iLastIndexOf2 = strTrim2.lastIndexOf(SignParameters.NEW_LINE);
                if (iLastIndexOf2 != -1) {
                    strTrim2 = strTrim2.substring(iLastIndexOf2 + 1);
                }
                z0Var.f18409d = "推荐清理，占用：" + strTrim2.trim();
            }
            bVar.f(z0Var);
        } else if (!fa.g0.f5682a.f()) {
            fa.b0.f5652a.getClass();
            if (a2.w0.P()) {
            }
        }
        fa.h0 h0Var = fa.g0.f5682a;
        String str10 = ")";
        String str11 = " and (";
        String str12 = " OR LOWER(name) LIKE '%.";
        String str13 = "'";
        if (h0Var.d().isEmpty()) {
            str = ")";
            str2 = " and (";
            str3 = " OR LOWER(name) LIKE '%.";
        } else {
            ArrayList arrayList = new ArrayList();
            String strG = g.b.g(h0Var, new StringBuilder("SELECT * FROM fileList WHERE path LIKE '"), "/%' and isDir=0");
            Iterator it4 = kVar2.f4057l0.iterator();
            String strA = "";
            while (it4.hasNext()) {
                String str14 = (String) it4.next();
                if (!str14.isEmpty()) {
                    if (strA.isEmpty()) {
                        strA = g.b.A("LOWER(name) LIKE '%.", str14, "'");
                        it3 = it4;
                    } else {
                        it3 = it4;
                        strA = strA + " OR LOWER(name) LIKE '%." + str14 + "'";
                    }
                    it4 = it3;
                }
            }
            try {
                listSqlQuery2 = MyDb.get().getFileInfoDao().sqlQuery(new a2.g1(g.b.j(strG, g.b.A(" and (", strA, ")")), new Object[0]));
            } catch (Exception unused) {
                listSqlQuery2 = null;
            }
            if (listSqlQuery2 == null || listSqlQuery2.isEmpty()) {
                str = ")";
                str2 = " and (";
                str3 = " OR LOWER(name) LIKE '%.";
                j10 = 0;
            } else {
                Iterator<FileInfo> it5 = listSqlQuery2.iterator();
                j10 = 0;
                while (it5.hasNext()) {
                    FileInfo next = it5.next();
                    Iterator<FileInfo> it6 = it5;
                    try {
                        kVar = com.yunpan.appmanage.util.j.f4033a;
                        str7 = str10;
                    } catch (Exception unused2) {
                        str7 = str10;
                    }
                    try {
                        str8 = str11;
                    } catch (Exception unused3) {
                        str8 = str11;
                        str9 = str12;
                        it5 = it6;
                        str10 = str7;
                        str11 = str8;
                        str12 = str9;
                    }
                    try {
                        str9 = str12;
                        try {
                            PackageInfo packageArchiveInfo = kVar.f4037b.getPackageArchiveInfo(next.path, 1);
                            if (packageArchiveInfo != null && (MyDb.get().getAppDao().get_appBean(packageArchiveInfo.applicationInfo.packageName) != null || packageArchiveInfo.applicationInfo.packageName.equals(kVar.f4041d))) {
                                j10 += next.size;
                                x9.z0 z0Var2 = new x9.z0(next.name, 2, false);
                                z0Var2.f18411f = next.path;
                                z0Var2.f18409d = "文件大小：" + p000if.a.D0(next.size);
                                arrayList.add(z0Var2);
                            }
                        } catch (Exception unused4) {
                            it5 = it6;
                            str10 = str7;
                            str11 = str8;
                            str12 = str9;
                        }
                    } catch (Exception unused5) {
                        str9 = str12;
                        it5 = it6;
                        str10 = str7;
                        str11 = str8;
                        str12 = str9;
                    }
                    it5 = it6;
                    str10 = str7;
                    str11 = str8;
                    str12 = str9;
                }
                str = str10;
                str2 = str11;
                str3 = str12;
            }
            x9.z0 z0Var3 = new x9.z0("安装残留(安装过的apk文件)", 1, false);
            z0Var3.f18409d = "内部存储   找到" + arrayList.size() + "个，共占用：" + p000if.a.D0(j10);
            arrayList.add(0, z0Var3);
            bVar.f(arrayList);
        }
        com.yunpan.appmanage.util.k kVar3 = com.yunpan.appmanage.util.j.f4033a;
        if (!kVar3.f4073v.isEmpty()) {
            ArrayList arrayList2 = new ArrayList();
            Iterator it7 = kVar3.f4073v.iterator();
            long j11 = 0;
            while (it7.hasNext()) {
                String strA2 = g.b.A("SELECT * FROM fileList WHERE path LIKE '", (String) it7.next(), "/%' and isDir=0");
                Iterator it8 = com.yunpan.appmanage.util.j.f4033a.f4057l0.iterator();
                String str15 = "";
                while (it8.hasNext()) {
                    String str16 = (String) it8.next();
                    if (!str16.isEmpty()) {
                        if (str15.isEmpty()) {
                            it2 = it7;
                            string = g.b.A("LOWER(name) LIKE '%.", str16, str13);
                            str6 = str3;
                        } else {
                            it2 = it7;
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(str15);
                            str6 = str3;
                            sb2.append(str6);
                            sb2.append(str16);
                            sb2.append(str13);
                            string = sb2.toString();
                        }
                        str3 = str6;
                        str15 = string;
                        it7 = it2;
                    }
                }
                Iterator it9 = it7;
                String str17 = str;
                String str18 = str2;
                String str19 = str3;
                try {
                    listSqlQuery = MyDb.get().getFileInfoDao().sqlQuery(new a2.g1(g.b.j(strA2, g.b.A(str18, str15, str17)), new Object[0]));
                } catch (Exception unused6) {
                    listSqlQuery = null;
                }
                if (listSqlQuery != null && !listSqlQuery.isEmpty()) {
                    Iterator<FileInfo> it10 = listSqlQuery.iterator();
                    while (it10.hasNext()) {
                        FileInfo next2 = it10.next();
                        try {
                            str4 = str17;
                            try {
                                str5 = str13;
                            } catch (Exception unused7) {
                                str5 = str13;
                                it = it10;
                                it10 = it;
                                str17 = str4;
                                str13 = str5;
                            }
                            try {
                                PackageInfo packageArchiveInfo2 = com.yunpan.appmanage.util.j.f4033a.f4037b.getPackageArchiveInfo(next2.path, 1);
                                if (packageArchiveInfo2 == null || MyDb.get().getAppDao().get_appBean(packageArchiveInfo2.applicationInfo.packageName) == null) {
                                    it = it10;
                                } else {
                                    Iterator<FileInfo> it11 = it10;
                                    try {
                                        j11 += next2.size;
                                        it = it11;
                                    } catch (Exception unused8) {
                                        it = it11;
                                        it10 = it;
                                        str17 = str4;
                                        str13 = str5;
                                    }
                                    try {
                                        x9.z0 z0Var4 = new x9.z0(next2.name, 2, true);
                                        z0Var4.f18411f = next2.path;
                                        z0Var4.f18409d = "文件大小：" + p000if.a.D0(next2.size);
                                        arrayList2.add(z0Var4);
                                    } catch (Exception unused9) {
                                        it10 = it;
                                        str17 = str4;
                                        str13 = str5;
                                    }
                                }
                            } catch (Exception unused10) {
                                it = it10;
                                it10 = it;
                                str17 = str4;
                                str13 = str5;
                            }
                        } catch (Exception unused11) {
                            str4 = str17;
                        }
                        it10 = it;
                        str17 = str4;
                        str13 = str5;
                    }
                }
                String str20 = str17;
                it7 = it9;
                str13 = str13;
                str3 = str19;
                str = str20;
                str2 = str18;
            }
            x9.z0 z0Var5 = new x9.z0("安装残留(安装过的apk文件)", 1, true);
            z0Var5.f18409d = "U盘   找到" + arrayList2.size() + "个，共占用：" + p000if.a.D0(j11);
            arrayList2.add(0, z0Var5);
            bVar.f(arrayList2);
        }
        StringBuilder sb3 = new StringBuilder("卸载残留(/");
        com.yunpan.appmanage.util.k kVar4 = com.yunpan.appmanage.util.j.f4033a;
        x9.z0 z0Var6 = new x9.z0(g.b.l(kVar4.P, "/data)", sb3), 1, true);
        z0Var6.f18409d = "随便";
        bVar.f(z0Var6);
        x9.z0 z0Var7 = new x9.z0(g.b.l(kVar4.P, "/data)", new StringBuilder("应用缓存(/")), 1, true);
        z0Var7.f18409d = "随便";
        bVar.f(z0Var7);
        if (kVar4.f4058m) {
            x9.z0 z0Var8 = new x9.z0("卸载残留(/data/data)", 1, false);
            z0Var8.f18409d = "速度慢";
            bVar.f(z0Var8);
            x9.z0 z0Var9 = new x9.z0("应用缓存(/data/data)", 1, false);
            z0Var9.f18409d = "速度慢";
            bVar.f(z0Var9);
        }
        x9.z0 z0Var10 = new x9.z0("冗余文件(tmp,temp,log,cache,xlog)", 1, true);
        List<FileInfo> allLogFiles = MyDb.get().getFileInfoDao().getAllLogFiles();
        if (allLogFiles == null) {
            allLogFiles = new ArrayList<>();
        }
        Iterator<FileInfo> it12 = allLogFiles.iterator();
        long j12 = 0;
        while (it12.hasNext()) {
            j12 += it12.next().size;
        }
        z0Var10.f18409d = "发现" + allLogFiles.size() + "个文件，总大小：" + p000if.a.D0(j12);
        bVar.f(z0Var10);
        x9.z0 z0Var11 = new x9.z0("缓存、日志挖掘者", 1, false);
        z0Var11.f18409d = "慎用，将文件名带有log、cache、tmp等关键字的通通删除";
        bVar.f(z0Var11);
        x9.z0 z0Var12 = new x9.z0("清除空目录(内部存储)", 1, true);
        z0Var12.f18409d = "放心清理";
        bVar.f(z0Var12);
        x9.z0 z0Var13 = new x9.z0("清除空目录(USB设备)", 1, true);
        z0Var13.f18409d = "放心清理";
        List<FileInfo> dirFiles = MyDb.get().getFileInfoDao().getDirFiles("/storage/emulated/" + com.yunpan.appmanage.util.j.f4033a.f4060n + "/Pictures/.Gallery2/");
        if (dirFiles != null && !dirFiles.isEmpty()) {
            z0Var13 = new x9.z0("清除相册缓存/缩略图/备份", 1, false);
            z0Var13.f18409d = "放心清理";
            Iterator<FileInfo> it13 = allLogFiles.iterator();
            while (it13.hasNext()) {
                j12 += it13.next().size;
            }
            z0Var13.f18409d = "发现" + allLogFiles.size() + "个文件，总大小：" + p000if.a.D0(j12);
        }
        bVar.f(z0Var13);
        bVar.b();
    }

    @Override // ec.d
    public void g(mc.b bVar) {
        Iterator it;
        String[] strArr;
        Iterator it2;
        String[] strArr2;
        int i10;
        int i11 = 2;
        switch (this.f16048a) {
            case 2:
                a(bVar);
                break;
            default:
                int i12 = ActivityClean.M;
                ActivityClean activityClean = this.f16049b;
                String strU = qf.c.u(activityClean.A);
                int i13 = 0;
                while (true) {
                    x9.t0 t0Var = activityClean.E;
                    if (i13 >= t0Var.b()) {
                        bVar.b();
                        break;
                    } else {
                        x9.z0 z0Var = (x9.z0) t0Var.t(i13);
                        if (z0Var.f18407b) {
                            if (z0Var.f18406a == i11) {
                                File file = new File(z0Var.f18411f);
                                file.delete();
                                if (com.yunpan.appmanage.util.a0.f(file)) {
                                    z0Var.f18410e = "删除失败";
                                } else {
                                    z0Var.f18410e = "已删除";
                                    MyDb.get().getFileInfoDao().delete(z0Var.f18411f);
                                }
                                bVar.f(Integer.valueOf(i13));
                            } else {
                                String str = z0Var.f18408c;
                                if (str.contains("adb临时目录残留")) {
                                    fa.b0.f5652a.getClass();
                                    a2.w0.h("rm -rf '/data/local/tmp/.studio'");
                                    if (a2.w0.h("rm -rf /data/local/tmp/*").f5648a == 0) {
                                        z0Var.f18409d = "清理完成";
                                    } else {
                                        z0Var.f18409d = "清理失败";
                                    }
                                    bVar.f(Integer.valueOf(i13));
                                } else if (str.contains("清除相册缓存")) {
                                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                    com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                    if (kVar.f4060n > 0) {
                                        a2.w0 w0Var = fa.b0.f5652a;
                                        String str2 = "rm -rf /storage/emulated/" + kVar.f4060n + "/Pictures/.Gallery2/";
                                        w0Var.getClass();
                                        a2.w0.B(str2);
                                    } else {
                                        a2.w0 w0Var2 = fa.b0.f5652a;
                                        String str3 = "rm -rf /storage/emulated/" + kVar.f4060n + "/Pictures/.Gallery2/";
                                        w0Var2.getClass();
                                        a2.w0.h(str3);
                                    }
                                    MyDb.get().getFileInfoDao().delete(fa.g0.f5682a.d() + "/Pictures/.Gallery2/");
                                    z0Var.f18409d = "清理完成";
                                    bVar.f(Integer.valueOf(i13));
                                } else {
                                    if (str.startsWith("卸载残留(/data/data)")) {
                                        z0Var.f18409d = "清理中...";
                                        bVar.f(Integer.valueOf(i13));
                                        a2.w0 w0Var3 = fa.b0.f5652a;
                                        StringBuilder sb2 = new StringBuilder("ls '/data/user/");
                                        DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                                        sb2.append(com.yunpan.appmanage.util.j.f4033a.f4060n);
                                        sb2.append("/'");
                                        String string = sb2.toString();
                                        w0Var3.getClass();
                                        Iterator it3 = a2.w0.h(string).f5649b.iterator();
                                        while (it3.hasNext()) {
                                            String str4 = (String) it3.next();
                                            if (!str4.trim().isEmpty() && !str4.contains("/")) {
                                                if (!str4.contains(":")) {
                                                    String[] strArrSplit = str4.split(" ");
                                                    int i14 = 0;
                                                    for (int length = strArrSplit.length; i14 < length; length = i10) {
                                                        String str5 = strArrSplit[i14];
                                                        if (str5.trim().isEmpty()) {
                                                            it2 = it3;
                                                        } else {
                                                            com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                                                            it2 = it3;
                                                            if (!str5.equals(kVar2.f4041d) && android.support.v4.media.session.a.k(str5) == null) {
                                                                a2.w0 w0Var4 = fa.b0.f5652a;
                                                                strArr2 = strArrSplit;
                                                                StringBuilder sb3 = new StringBuilder("/data/user/");
                                                                i10 = length;
                                                                sb3.append(kVar2.f4060n);
                                                                sb3.append("/");
                                                                sb3.append(str5);
                                                                String string2 = sb3.toString();
                                                                w0Var4.getClass();
                                                                a2.w0.B(string2);
                                                                MyDb.get().getFileInfoDao().delete("/data/user/" + kVar2.f4060n + "/" + str5);
                                                            }
                                                            i14++;
                                                            it3 = it2;
                                                            strArrSplit = strArr2;
                                                        }
                                                        strArr2 = strArrSplit;
                                                        i10 = length;
                                                        i14++;
                                                        it3 = it2;
                                                        strArrSplit = strArr2;
                                                    }
                                                }
                                            }
                                        }
                                        z0Var.f18409d = "清理完成";
                                        bVar.f(Integer.valueOf(i13));
                                    } else if (str.startsWith("卸载残留")) {
                                        z0Var.f18409d = "清理中...";
                                        bVar.f(Integer.valueOf(i13));
                                        DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                        com.yunpan.appmanage.util.k kVar3 = com.yunpan.appmanage.util.j.f4033a;
                                        if (!kVar3.f4069s.isEmpty()) {
                                            String path = new File(kVar3.f4069s).getParentFile().getParentFile().getPath();
                                            if (kVar3.f4060n > 0) {
                                                try {
                                                    for (File file2 : new File(path).listFiles()) {
                                                        String name = file2.getName();
                                                        com.yunpan.appmanage.util.k kVar4 = com.yunpan.appmanage.util.j.f4033a;
                                                        if (!name.equals(kVar4.f4041d) && MyDb.get().getAppDao().get_appBean(file2.getName()) == null) {
                                                            if (!kVar4.O.isEmpty() && path.startsWith(kVar4.M)) {
                                                                path = kVar4.O + path.substring(kVar4.M.length());
                                                            }
                                                            a2.w0 w0Var5 = fa.b0.f5652a;
                                                            String str6 = path + "/" + file2.getName();
                                                            w0Var5.getClass();
                                                            a2.w0.B(str6);
                                                            MyDb.get().getFileInfoDao().delete(path + "/" + file2.getName());
                                                        }
                                                    }
                                                } catch (Exception unused) {
                                                }
                                            } else {
                                                fa.b0.f5652a.getClass();
                                                Iterator it4 = a2.w0.h("ls '" + path + "/'").f5649b.iterator();
                                                while (it4.hasNext()) {
                                                    String str7 = (String) it4.next();
                                                    if (str7.trim().isEmpty() || str7.contains("/") || str7.contains(":")) {
                                                        it4 = it4;
                                                    } else {
                                                        String[] strArrSplit2 = str7.split(" ");
                                                        int length2 = strArrSplit2.length;
                                                        int i15 = 0;
                                                        while (i15 < length2) {
                                                            String str8 = strArrSplit2[i15];
                                                            if (str8.trim().isEmpty()) {
                                                                it = it4;
                                                            } else {
                                                                com.yunpan.appmanage.util.k kVar5 = com.yunpan.appmanage.util.j.f4033a;
                                                                it = it4;
                                                                if (!str8.equals(kVar5.f4041d) && android.support.v4.media.session.a.k(str8) == null) {
                                                                    if (kVar5.O.isEmpty() || !path.startsWith(kVar5.M)) {
                                                                        strArr = strArrSplit2;
                                                                    } else {
                                                                        StringBuilder sb4 = new StringBuilder();
                                                                        strArr = strArrSplit2;
                                                                        sb4.append(kVar5.O);
                                                                        path = ta.q.m(kVar5.M, path, sb4);
                                                                    }
                                                                    fa.b0.f5652a.getClass();
                                                                    a2.w0.B(path + "/" + str8);
                                                                    MyDb.get().getFileInfoDao().delete(path + "/" + str8);
                                                                }
                                                                i15++;
                                                                it4 = it;
                                                                strArrSplit2 = strArr;
                                                            }
                                                            strArr = strArrSplit2;
                                                            i15++;
                                                            it4 = it;
                                                            strArrSplit2 = strArr;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        z0Var.f18409d = "清理完成";
                                        bVar.f(Integer.valueOf(i13));
                                    } else if (str.startsWith("应用缓存(/data/data)")) {
                                        z0Var.f18409d = "清理中...";
                                        bVar.f(Integer.valueOf(i13));
                                        for (AppBean appBean : MyDb.get().getAppDao().get_app_canStart()) {
                                            String str9 = appBean.pack;
                                            DecimalFormat decimalFormat4 = com.yunpan.appmanage.util.k.f4034u0;
                                            if (!str9.equals(com.yunpan.appmanage.util.j.f4033a.f4041d) && (strU.isEmpty() || !appBean.pack.equals(strU))) {
                                                a2.w0 w0Var6 = fa.b0.f5652a;
                                                String str10 = "rm -rf '/data/data/" + appBean.pack + "/cache'";
                                                w0Var6.getClass();
                                                a2.w0.h(str10);
                                                a2.w0.h("rm -rf '/data/data/" + appBean.pack + "/code_cache'");
                                            }
                                        }
                                        z0Var.f18409d = "清理完成";
                                        bVar.f(Integer.valueOf(i13));
                                    } else if (str.startsWith("应用缓存")) {
                                        z0Var.f18409d = "清理中...";
                                        bVar.f(Integer.valueOf(i13));
                                        DecimalFormat decimalFormat5 = com.yunpan.appmanage.util.k.f4034u0;
                                        com.yunpan.appmanage.util.k kVar6 = com.yunpan.appmanage.util.j.f4033a;
                                        if (!kVar6.f4069s.isEmpty()) {
                                            try {
                                                String parent = new File(kVar6.f4069s).getParentFile().getParent();
                                                if (com.yunpan.appmanage.util.a0.d(parent)) {
                                                    for (File file3 : new File(parent).listFiles()) {
                                                        try {
                                                            if (file3.isFile()) {
                                                                file3.delete();
                                                                MyDb.get().getFileInfoDao().delete(file3.getPath());
                                                            } else {
                                                                File file4 = new File(file3, "cache");
                                                                u9.d.r("rm -rf '" + file4.getPath() + "'").l0();
                                                                MyDb.get().getFileInfoDao().delete(file4.getPath());
                                                                file4.delete();
                                                            }
                                                        } catch (Exception e7) {
                                                            e7.printStackTrace();
                                                        }
                                                    }
                                                } else {
                                                    for (AppBean appBean2 : MyDb.get().getAppDao().get_app_canStart()) {
                                                        String str11 = appBean2.pack;
                                                        com.yunpan.appmanage.util.k kVar7 = com.yunpan.appmanage.util.j.f4033a;
                                                        if (!str11.equals(kVar7.f4041d) && (strU.isEmpty() || !appBean2.pack.equals(strU))) {
                                                            if (!kVar7.O.isEmpty() && parent.startsWith(kVar7.M)) {
                                                                parent = kVar7.O + parent.substring(kVar7.M.length());
                                                            }
                                                            a2.w0 w0Var7 = fa.b0.f5652a;
                                                            String str12 = "rm -rf '" + parent + "/" + appBean2.pack + "/cache'";
                                                            w0Var7.getClass();
                                                            a2.w0.h(str12);
                                                            MyDb.get().getFileInfoDao().delete(parent + "/" + appBean2.pack + "/cache");
                                                        }
                                                    }
                                                }
                                            } catch (Exception unused2) {
                                            }
                                        }
                                        z0Var.f18409d = "清理完成";
                                        bVar.f(Integer.valueOf(i13));
                                    } else if (str.startsWith("冗余文件")) {
                                        z0Var.f18409d = "清理中...";
                                        bVar.f(Integer.valueOf(i13));
                                        List<FileInfo> allLogFiles = MyDb.get().getFileInfoDao().getAllLogFiles();
                                        if (allLogFiles == null) {
                                            allLogFiles = new ArrayList<>();
                                        }
                                        for (FileInfo fileInfo : allLogFiles) {
                                            new File(fileInfo.path).delete();
                                            if (!com.yunpan.appmanage.util.a0.g(fileInfo.path)) {
                                                MyDb.get().getFileInfoDao().delete(fileInfo.path);
                                            }
                                        }
                                        z0Var.f18409d = "清理完成";
                                        bVar.f(Integer.valueOf(i13));
                                    } else if (str.startsWith("清除空目录(内部存储)")) {
                                        z0Var.f18409d = "清理中...";
                                        bVar.f(Integer.valueOf(i13));
                                        activityClean.x(fa.g0.f5682a.d());
                                        z0Var.f18409d = "清理完成";
                                        bVar.f(Integer.valueOf(i13));
                                    } else if (str.startsWith("清除空目录")) {
                                        z0Var.f18409d = "清理中...";
                                        bVar.f(Integer.valueOf(i13));
                                        DecimalFormat decimalFormat6 = com.yunpan.appmanage.util.k.f4034u0;
                                        i11 = 2;
                                        Iterator$EL.forEachRemaining(com.yunpan.appmanage.util.j.f4033a.f4073v.iterator(), new com.yunpan.appmanage.db.b(i11, activityClean));
                                        z0Var.f18409d = "清理完成";
                                        bVar.f(Integer.valueOf(i13));
                                    } else {
                                        i11 = 2;
                                        if (str.contains("日志挖掘者")) {
                                            z0Var.f18409d = "清理中...";
                                            bVar.f(Integer.valueOf(i13));
                                            for (FileInfo fileInfo2 : MyDb.get().getFileInfoDao().getAllKeyLogDirs(true)) {
                                                DecimalFormat decimalFormat7 = com.yunpan.appmanage.util.k.f4034u0;
                                                if (com.yunpan.appmanage.util.j.f4033a.f4060n > 0) {
                                                    a2.w0 w0Var8 = fa.b0.f5652a;
                                                    String str13 = fileInfo2.path;
                                                    w0Var8.getClass();
                                                    a2.w0.B(str13);
                                                    MyDb.get().getFileInfoDao().delete(fileInfo2.path);
                                                } else if (u9.d.r(g.b.l(fileInfo2.path, "'", new StringBuilder("rm -rf '"))).l0().q()) {
                                                    MyDb.get().getFileInfoDao().delete(fileInfo2.path);
                                                }
                                            }
                                            for (FileInfo fileInfo3 : MyDb.get().getFileInfoDao().getAllKeyLogDirs(false)) {
                                                if (new File(fileInfo3.path).delete()) {
                                                    MyDb.get().getFileInfoDao().delete(fileInfo3.path);
                                                }
                                            }
                                            z0Var.f18409d = "清理完成";
                                            bVar.f(Integer.valueOf(i13));
                                        }
                                    }
                                    i11 = 2;
                                }
                            }
                        }
                        i13++;
                    }
                }
                break;
        }
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnInBorderKeyEventListener
    public boolean onInBorderKeyEvent(int i10, View view) {
        int i11 = ActivityClean.M;
        ActivityClean activityClean = this.f16049b;
        activityClean.getClass();
        if (i10 == 33) {
            s1.g.Z(302, view);
            return true;
        }
        if (i10 == 130) {
            s1.g.Z(301, view);
            return true;
        }
        if (i10 == 17) {
            s1.g.W(301, view);
            return true;
        }
        if (i10 != 66) {
            return false;
        }
        activityClean.C.requestFocus();
        return true;
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        x9.t0 t0Var = this.f16049b.E;
        x9.z0 z0Var = (x9.z0) t0Var.t(i10);
        z0Var.f18407b = !z0Var.f18407b;
        t0Var.e(i10);
        if (z0Var.f18408c.startsWith("安装残留")) {
            int i11 = 0;
            if (z0Var.f18409d.startsWith("内部存储")) {
                while (i11 < t0Var.b()) {
                    x9.z0 z0Var2 = (x9.z0) t0Var.t(i11);
                    if (!z0Var2.f18411f.isEmpty() && z0Var2.f18411f.startsWith(fa.g0.f5682a.d())) {
                        z0Var2.f18407b = z0Var.f18407b;
                        t0Var.e(i11);
                    }
                    i11++;
                }
                return;
            }
            while (i11 < t0Var.b()) {
                x9.z0 z0Var3 = (x9.z0) t0Var.t(i11);
                if (!z0Var3.f18411f.isEmpty() && !z0Var3.f18411f.startsWith(fa.g0.f5682a.d())) {
                    z0Var3.f18407b = z0Var.f18407b;
                    t0Var.e(i11);
                }
                i11++;
            }
        }
    }
}
