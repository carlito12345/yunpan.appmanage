package com.yunpan.appmanage.util;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.yunpan.appmanage.bean.ShellResultData;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.FileInfo;
import com.yunpan.appmanage.db.MyDb;
import java.io.File;
import java.io.PrintStream;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import x9.w3;

/* loaded from: classes.dex */
public final class u {

    /* renamed from: c, reason: collision with root package name */
    public static final Pattern f4103c = Pattern.compile("(.{10,11}) (.*?) ([0-9]{4}-[0-9]{1,2}-[0-9]{1,2} [0-9]{1,2}:[0-9]{1,2}) (.*?)\\n");

    /* renamed from: a, reason: collision with root package name */
    public final ExecutorService f4104a = Executors.newFixedThreadPool(10);

    /* renamed from: b, reason: collision with root package name */
    public final AtomicInteger f4105b = new AtomicInteger(0);

    public static void a(String str, ArrayList arrayList, ArrayList arrayList2) {
        if (arrayList.isEmpty() && arrayList2.isEmpty()) {
            if (!str.startsWith("/data")) {
                if (str.equals("/")) {
                    arrayList.add(new w3("cust", "/cust"));
                    arrayList.add(new w3("data", "/data"));
                    arrayList.add(new w3("etc", "/etc"));
                    arrayList.add(new w3("mnt", "/mnt"));
                    arrayList.add(new w3("odm", "/odm"));
                    arrayList.add(new w3("odm_dlkm", "/odm_dlkm"));
                    arrayList.add(new w3("proc", "/proc"));
                    arrayList.add(new w3("product", "/product"));
                    arrayList.add(new w3("sdcard", "/sdcard"));
                    arrayList.add(new w3("storage", "/storage"));
                    arrayList.add(new w3("system", "/system"));
                    arrayList.add(new w3("system_ext", "/system_ext"));
                    arrayList.add(new w3("vendor", "/vendor"));
                    return;
                }
                StringBuilder sb2 = new StringBuilder();
                fa.h0 h0Var = fa.g0.f5682a;
                sb2.append(h0Var.d());
                sb2.append("/");
                DecimalFormat decimalFormat = k.f4034u0;
                k kVar = j.f4033a;
                sb2.append(kVar.P);
                sb2.append("/data");
                if (str.equals(sb2.toString())) {
                    arrayList.add(new w3(kVar.f4041d, h0Var.d() + "/" + kVar.P + "/data/" + kVar.f4041d));
                    return;
                }
                if (str.endsWith("/") && str.length() > 2) {
                    str = android.support.v4.media.session.a.l(1, 0, str);
                }
                if (str.equals("/storage")) {
                    arrayList.add(new w3("self", "/storage/self"));
                    arrayList.add(new w3("emulated", "/storage/emulated"));
                    return;
                } else if (str.equals("/storage/self")) {
                    arrayList.add(new w3("0", "/storage/self/primary"));
                    return;
                } else {
                    if (str.equals("/storage/emulated")) {
                        arrayList.add(new w3("0", "/storage/emulated/0"));
                        return;
                    }
                    return;
                }
            }
            if (str.endsWith("/") && str.length() > 2) {
                str = android.support.v4.media.session.a.l(1, 0, str);
            }
            if (str.equals("/data/local")) {
                arrayList.add(new w3("tmp", "/data/local/tmp"));
                return;
            }
            if (str.equals("/data")) {
                arrayList.add(new w3("app", "/data/app"));
                arrayList.add(new w3("data", "/data/data"));
                arrayList.add(new w3("user", "/data/user"));
                arrayList.add(new w3("user_de", "/data/user_de"));
                arrayList.add(new w3("system", "/data/system"));
                arrayList.add(new w3("local", "/data/local"));
                return;
            }
            if (str.equals("/data/app")) {
                for (AppBean appBean : MyDb.get().getAppDao().get_app_user()) {
                    if (appBean.apkPath.startsWith("/data/app/")) {
                        String strSubstring = appBean.apkPath.substring(10);
                        if (strSubstring.contains("/")) {
                            String strSubstring2 = strSubstring.substring(0, strSubstring.indexOf("/"));
                            arrayList.add(new w3(strSubstring2, da.b.c("/data/app/", strSubstring2)));
                        } else {
                            arrayList2.add(new w3("/data/app/".concat(strSubstring)));
                        }
                    }
                }
                return;
            }
            if (str.startsWith("/data/app/") && str.split("/").length == 4) {
                for (AppBean appBean2 : MyDb.get().getAppDao().get_app_user()) {
                    if (appBean2.apkPath.startsWith(str.concat("/"))) {
                        String strSubstring3 = appBean2.apkPath.substring(str.length() + 1);
                        if (strSubstring3.contains("/")) {
                            String strSubstring4 = strSubstring3.substring(0, strSubstring3.indexOf("/"));
                            arrayList.add(new w3(strSubstring4, g.b.k(str, "/", strSubstring4)));
                        } else {
                            arrayList2.add(new w3(appBean2.apkPath));
                        }
                    }
                }
                return;
            }
            if (str.equals("/data/data")) {
                DecimalFormat decimalFormat2 = k.f4034u0;
                k kVar2 = j.f4033a;
                arrayList.add(new w3(kVar2.f4041d, "/data/data/" + kVar2.f4041d));
                return;
            }
            if (str.equals("/data/user")) {
                DecimalFormat decimalFormat3 = k.f4034u0;
                k kVar3 = j.f4033a;
                arrayList.add(new w3(String.valueOf(kVar3.f4060n), "/data/user/" + kVar3.f4060n));
                return;
            }
            if (str.equals("/data/user_de")) {
                DecimalFormat decimalFormat4 = k.f4034u0;
                k kVar4 = j.f4033a;
                arrayList.add(new w3(String.valueOf(kVar4.f4060n), "/data/user_de/" + kVar4.f4060n));
                return;
            }
            StringBuilder sb3 = new StringBuilder("/data/user/");
            DecimalFormat decimalFormat5 = k.f4034u0;
            k kVar5 = j.f4033a;
            sb3.append(kVar5.f4060n);
            if (str.equals(sb3.toString())) {
                arrayList.add(new w3(kVar5.f4041d, "/data/user/" + kVar5.f4060n + "/" + kVar5.f4041d));
                return;
            }
            if (str.equals("/data/user_de/" + kVar5.f4060n)) {
                arrayList.add(new w3(kVar5.f4041d, "/data/user_de/" + kVar5.f4060n + "/" + kVar5.f4041d));
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:129:0x0300  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0337  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x0680  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x0688  */
    /* JADX WARN: Removed duplicated region for block: B:303:0x01bc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:309:0x053f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void b(w3 w3Var, ArrayList arrayList, ArrayList arrayList2, boolean z, boolean z4) throws Exception {
        ArrayList arrayList3;
        ArrayList arrayList4;
        final boolean z10;
        boolean zCanRead;
        String strL;
        String strA;
        Matcher matcher;
        ArrayList arrayList5;
        w3 w3Var2;
        String strGroup;
        w3 w3Var3;
        boolean z11;
        File[] fileArrListFiles;
        AtomicInteger atomicInteger;
        int i10;
        int i11;
        ArrayList arrayList6 = arrayList;
        arrayList.clear();
        if (arrayList2 != null) {
            arrayList2.clear();
        }
        v3.f fVar = w3Var.f18376n;
        if (fVar != null) {
            try {
                v3.f[] fVarArrD = fVar.D();
                if (fVarArrD.length > 0) {
                    for (v3.f fVar2 : fVarArrD) {
                        if (z || !com.bumptech.glide.d.U((Context) fVar2.f16475c, (Uri) fVar2.f16476d, "_display_name").startsWith(".")) {
                            w3 w3Var4 = new w3(fVar2, w3Var.f18365b);
                            if ("vnd.android.document/directory".equals(com.bumptech.glide.d.U((Context) fVar2.f16475c, (Uri) fVar2.f16476d, "mime_type"))) {
                                arrayList6.add(w3Var4);
                            } else if (arrayList2 != null) {
                                arrayList2.add(w3Var4);
                            }
                        }
                    }
                }
                arrayList3 = arrayList6;
                arrayList4 = arrayList2;
            } catch (Exception unused) {
                return;
            }
        } else {
            if (w3Var.f18365b.isEmpty()) {
                return;
            }
            File file = new File(w3Var.f18365b);
            try {
                zCanRead = file.canRead();
            } catch (SecurityException | Exception unused2) {
                zCanRead = false;
            }
            if (zCanRead) {
                u uVar = new u();
                if (arrayList2 != null) {
                    fa.h0 h0Var = fa.g0.f5682a;
                    if (h0Var.d().isEmpty() || !file.getPath().startsWith(h0Var.d())) {
                        DecimalFormat decimalFormat = k.f4034u0;
                        k kVar = j.f4033a;
                        if (!kVar.f4073v.isEmpty()) {
                            Iterator it = kVar.f4073v.iterator();
                            while (it.hasNext()) {
                                if (file.getPath().startsWith((String) it.next())) {
                                }
                            }
                        }
                        z11 = false;
                        boolean z12 = Build.VERSION.SDK_INT >= 30 && file.getPath().endsWith("/Android");
                        fileArrListFiles = file.listFiles();
                        ExecutorService executorService = uVar.f4104a;
                        AtomicInteger atomicInteger2 = uVar.f4105b;
                        if (fileArrListFiles != null) {
                            int length = fileArrListFiles.length;
                            int i12 = 0;
                            while (i12 < length) {
                                File file2 = fileArrListFiles[i12];
                                if (z12 && file2.getName().equals("data") && file2.isDirectory()) {
                                    try {
                                        try {
                                            File[] fileArrListFiles2 = file2.listFiles();
                                            if (fileArrListFiles2 == null || fileArrListFiles2.length == 0) {
                                                throw new Exception();
                                            }
                                        } catch (Exception unused3) {
                                        }
                                        i10 = i12;
                                        i11 = length;
                                    } catch (Exception unused4) {
                                        StringBuilder sb2 = new StringBuilder();
                                        i10 = i12;
                                        i11 = length;
                                        try {
                                            sb2.append(file2.getPath().substring(0, file2.getPath().length() - 4));
                                            sb2.append("\u200bdata");
                                            File[] fileArrListFiles3 = new File(sb2.toString()).listFiles();
                                            if (fileArrListFiles3 != null && fileArrListFiles3.length > 0) {
                                                file2 = new File(file2.getPath().substring(0, file2.getPath().length() - 4) + "\u200bdata");
                                            }
                                        } catch (Exception unused5) {
                                        }
                                    }
                                } else {
                                    i10 = i12;
                                    i11 = length;
                                }
                                atomicInteger2.incrementAndGet();
                                ExecutorService executorService2 = executorService;
                                executorService2.execute(new t(uVar, file2, arrayList, arrayList2, z));
                                i12 = i10 + 1;
                                executorService = executorService2;
                                atomicInteger2 = atomicInteger2;
                                length = i11;
                                fileArrListFiles = fileArrListFiles;
                            }
                        }
                        atomicInteger = atomicInteger2;
                        ExecutorService executorService3 = executorService;
                        while (atomicInteger.get() != 0) {
                            try {
                                Thread.sleep(100L);
                            } catch (Exception unused6) {
                            }
                        }
                        if (z11) {
                            try {
                                MyDb.get().getFileInfoDao().deleteFromDirFile(file.getPath());
                                ArrayList<FileInfo> arrayList7 = new ArrayList<>();
                                if (!arrayList.isEmpty()) {
                                    Iterator it2 = arrayList.iterator();
                                    while (it2.hasNext()) {
                                        w3 w3Var5 = (w3) it2.next();
                                        arrayList7.add(new FileInfo(w3Var5.f18365b, w3Var5.f18364a, w3Var5.f18368e, w3Var5.f18367d, w3Var5.f18369f, w3Var5.f18370g, w3Var5.f18366c));
                                    }
                                    MyDb.get().addList(arrayList7);
                                }
                                if (!arrayList2.isEmpty()) {
                                    arrayList7.clear();
                                    Iterator it3 = arrayList2.iterator();
                                    int i13 = 0;
                                    while (it3.hasNext()) {
                                        w3 w3Var6 = (w3) it3.next();
                                        i13++;
                                        arrayList7.add(new FileInfo(w3Var6.f18365b, w3Var6.f18364a, w3Var6.f18368e, w3Var6.f18367d, w3Var6.f18369f, w3Var6.f18370g, w3Var6.f18366c));
                                        if (i13 >= 400) {
                                            MyDb.get().addList(arrayList7);
                                            arrayList7.clear();
                                            i13 = 0;
                                        }
                                    }
                                    if (i13 > 0) {
                                        MyDb.get().addList(arrayList7);
                                    }
                                }
                            } catch (Exception unused7) {
                            }
                        }
                        executorService3.shutdown();
                        System.gc();
                    }
                    z11 = true;
                    if (Build.VERSION.SDK_INT >= 30) {
                        fileArrListFiles = file.listFiles();
                        ExecutorService executorService4 = uVar.f4104a;
                        AtomicInteger atomicInteger22 = uVar.f4105b;
                        if (fileArrListFiles != null) {
                        }
                        atomicInteger = atomicInteger22;
                        ExecutorService executorService32 = executorService4;
                        while (atomicInteger.get() != 0) {
                        }
                        if (z11) {
                        }
                        executorService32.shutdown();
                        System.gc();
                    }
                } else {
                    z11 = false;
                    if (Build.VERSION.SDK_INT >= 30) {
                    }
                }
            } else {
                w wVar = v.f4106a;
                int i14 = 3;
                int i15 = 2;
                if (wVar.f4129l0 || wVar.f4144u != 1) {
                    arrayList4 = arrayList2;
                    String path = file.getPath();
                    if (!path.endsWith("/")) {
                        path = path.concat("/");
                    }
                    StringBuilder sb3 = new StringBuilder("ls -l");
                    sb3.append(z ? "a" : "");
                    sb3.append(" \"");
                    sb3.append(path);
                    sb3.append("\"");
                    String string = sb3.toString();
                    fa.j jVar = fa.h.f5683a;
                    if (!jVar.i() || fa.g0.f5682a.f()) {
                        fa.m mVar = fa.l.f5712a;
                        if (!mVar.isConnected() || fa.g0.f5682a.f()) {
                            androidx.room.s sVarL0 = u9.d.r(string).l0();
                            int i16 = sVarL0.f2426b;
                            if (i16 == 0 || i16 == 1) {
                                sVarL0.k().addAll(sVarL0.j());
                                strL = "";
                                for (int i17 = 0; i17 < sVarL0.k().size(); i17++) {
                                    strL = g.b.l((String) sVarL0.k().get(i17), SignParameters.NEW_LINE, g.b.m(strL));
                                }
                                strA = strL;
                                matcher = f4103c.matcher(strA.replaceAll("[\\r\\f\\u000B]", ""));
                                while (matcher.find()) {
                                    try {
                                        w3Var2 = new w3();
                                        strGroup = matcher.group(1);
                                    } catch (Exception unused8) {
                                        arrayList5 = arrayList6;
                                    }
                                    if (strGroup != null) {
                                        String strTrim = strGroup.trim();
                                        if (strTrim.startsWith("-")) {
                                            try {
                                                w3Var2.f18366c = false;
                                                w3Var2.f18364a = matcher.group(4);
                                                w3Var2.f18365b = path + w3Var2.f18364a;
                                                w3Var2.f18368e = path;
                                                String strTrim2 = matcher.group(i14).trim();
                                                w3Var2.f18371h = strTrim2;
                                                w3Var2.f18370g = p000if.a.L0(strTrim2);
                                                String strTrim3 = matcher.group(i15).trim();
                                                w3Var2.f18367d = Long.valueOf(strTrim3.substring(strTrim3.lastIndexOf(" ")).trim()).longValue();
                                                try {
                                                    if (w3Var2.f18366c) {
                                                        arrayList5 = arrayList;
                                                        try {
                                                            arrayList5.add(w3Var2);
                                                        } catch (Exception unused9) {
                                                            arrayList6 = arrayList5;
                                                            i14 = 3;
                                                            i15 = 2;
                                                        }
                                                    } else {
                                                        arrayList5 = arrayList;
                                                        if (arrayList4 != null) {
                                                            arrayList4.add(w3Var2);
                                                        }
                                                    }
                                                } catch (Exception unused10) {
                                                    arrayList5 = arrayList;
                                                }
                                            } catch (Exception unused11) {
                                                arrayList5 = arrayList6;
                                            }
                                            arrayList6 = arrayList5;
                                            i14 = 3;
                                            i15 = 2;
                                        } else if (strTrim.startsWith("d")) {
                                            PrintStream printStream = System.out;
                                            matcher.group(4);
                                            printStream.getClass();
                                            w3Var2.f18366c = true;
                                            String strGroup2 = matcher.group(4);
                                            w3Var2.f18364a = strGroup2;
                                            if (!strGroup2.trim().replace(".", "").isEmpty()) {
                                                w3Var2.f18365b = path + w3Var2.f18364a;
                                                w3Var2.f18368e = path;
                                                String strTrim4 = matcher.group(i14).trim();
                                                w3Var2.f18371h = strTrim4;
                                                w3Var2.f18370g = p000if.a.L0(strTrim4);
                                                if (w3Var2.f18366c) {
                                                }
                                                arrayList6 = arrayList5;
                                                i14 = 3;
                                                i15 = 2;
                                            }
                                        } else if (strTrim.startsWith("l")) {
                                            w3Var2.f18366c = false;
                                            try {
                                                String[] strArrSplit = matcher.group(4).split(" -> ");
                                                w3Var2.f18364a = strArrSplit[0];
                                                w3Var2.f18365b = path + w3Var2.f18364a;
                                                w3Var2.f18368e = path;
                                                String strTrim5 = matcher.group(i14).trim();
                                                w3Var2.f18371h = strTrim5;
                                                w3Var2.f18370g = p000if.a.L0(strTrim5);
                                                String str = strArrSplit[1];
                                                if (!str.startsWith("/")) {
                                                    try {
                                                        str = path + str;
                                                    } catch (Exception unused12) {
                                                        arrayList5 = arrayList;
                                                    }
                                                }
                                                w3Var2.f18369f = str;
                                                try {
                                                    boolean zIsDirectory = new File(str).isDirectory();
                                                    w3Var2.f18366c = zIsDirectory;
                                                    if (!zIsDirectory) {
                                                        w3Var2.f18367d = new File(str).length();
                                                    }
                                                } catch (Exception unused13) {
                                                }
                                                if (w3Var2.f18367d < 1) {
                                                    w3Var2.f18366c = true;
                                                }
                                                if (w3Var2.f18366c) {
                                                }
                                            } catch (Exception unused14) {
                                                arrayList5 = arrayList6;
                                                arrayList6 = arrayList5;
                                                i14 = 3;
                                                i15 = 2;
                                            }
                                            arrayList6 = arrayList5;
                                            i14 = 3;
                                            i15 = 2;
                                        }
                                    }
                                }
                            }
                        } else {
                            ShellResultData shellResultDataL = mVar.L(string);
                            int i18 = shellResultDataL.code;
                            if (i18 == 0 || i18 == 1) {
                                strL = "";
                                for (int i19 = 0; i19 < shellResultDataL.lines.size(); i19++) {
                                    strL = g.b.l(shellResultDataL.lines.get(i19), SignParameters.NEW_LINE, g.b.m(strL));
                                }
                                strA = strL;
                                matcher = f4103c.matcher(strA.replaceAll("[\\r\\f\\u000B]", ""));
                                while (matcher.find()) {
                                }
                            }
                        }
                        arrayList3 = arrayList6;
                    } else {
                        fa.i iVarC = jVar.c(string);
                        int i20 = iVarC.f5691a;
                        if (i20 == 0 || i20 == 1) {
                            if (iVarC.f5693c.size() > 2) {
                                iVarC.f5693c.remove(0);
                                ArrayList arrayList8 = iVarC.f5693c;
                                arrayList8.remove(arrayList8.size() - 1);
                            }
                            strA = iVarC.a();
                            matcher = f4103c.matcher(strA.replaceAll("[\\r\\f\\u000B]", ""));
                            while (matcher.find()) {
                            }
                        }
                        arrayList3 = arrayList6;
                    }
                } else {
                    String path2 = file.getPath();
                    if (!path2.endsWith("/")) {
                        path2 = path2.concat("/");
                    }
                    ArrayList arrayList9 = new ArrayList();
                    if (!file.canRead()) {
                        fa.j jVar2 = fa.h.f5683a;
                        if ((jVar2.i() || fa.l.f5712a.isConnected()) && !fa.g0.f5682a.f()) {
                            fa.m mVar2 = fa.l.f5712a;
                            if (mVar2.isConnected()) {
                                arrayList9.addAll(mVar2.L("stat -c '%F|||%Y|||%s|||%A|||%n|||%N' \"" + path2 + "\"*").lines);
                            } else {
                                arrayList9.addAll(jVar2.c("stat -c '%F|||%Y|||%s|||%A|||%n|||%N' \"" + path2 + "\"*").f5693c);
                            }
                        } else {
                            androidx.room.s sVarL02 = u9.d.r(g.b.A("stat -c '%F|||%Y|||%s|||%A|||%n|||%N' \"", path2, "\"*")).l0();
                            arrayList9.addAll(sVarL02.k());
                            arrayList9.addAll(sVarL02.j());
                        }
                        for (int i21 = 0; i21 < arrayList9.size(); i21++) {
                            String str2 = (String) arrayList9.get(i21);
                            if (!str2.trim().isEmpty()) {
                                String[] strArrSplit2 = str2.split("\\|\\|\\|");
                                if (strArrSplit2.length == 6) {
                                    try {
                                        w3Var3 = new w3();
                                        String name = strArrSplit2[4];
                                        if (name.startsWith("/")) {
                                            name = new File(name).getName();
                                        }
                                        w3Var3.f18364a = name;
                                        w3Var3.f18365b = path2 + name;
                                        w3Var3.f18368e = path2;
                                        long jLongValue = Long.valueOf(strArrSplit2[1].trim()).longValue();
                                        w3Var3.f18370g = jLongValue;
                                        w3Var3.f18371h = p000if.a.m0(jLongValue);
                                    } catch (Exception unused15) {
                                    }
                                    if (strArrSplit2[0].contains("directory")) {
                                        w3Var3.f18366c = true;
                                    } else if (strArrSplit2[0].contains("file")) {
                                        w3Var3.f18366c = false;
                                        w3Var3.f18367d = Long.valueOf(strArrSplit2[2].trim()).longValue();
                                    } else if (strArrSplit2[0].contains("link")) {
                                        w3Var3.f18366c = false;
                                        if (strArrSplit2[5].contains(" -> ")) {
                                            String str3 = strArrSplit2[5];
                                            String strSubstring = str3.substring(str3.lastIndexOf("-> ") + 3);
                                            strSubstring.getClass();
                                            String strSubstring2 = strSubstring.substring(1, strSubstring.lastIndexOf("'"));
                                            if (!strSubstring2.startsWith("/")) {
                                                strSubstring2 = path2 + strSubstring2;
                                            }
                                            w3Var3.f18369f = strSubstring2;
                                            try {
                                                boolean zIsDirectory2 = new File(w3Var3.f18369f).isDirectory();
                                                w3Var3.f18366c = zIsDirectory2;
                                                if (!zIsDirectory2) {
                                                    w3Var3.f18367d = new File(strSubstring2).length();
                                                }
                                            } catch (Exception unused16) {
                                            }
                                            if (w3Var3.f18367d < 1) {
                                                w3Var3.f18366c = true;
                                            }
                                        }
                                    } else {
                                        strArrSplit2[0].contains("device");
                                    }
                                    if (w3Var3.f18366c) {
                                        arrayList6.add(w3Var3);
                                    } else if (arrayList2 != null) {
                                        try {
                                            arrayList2.add(w3Var3);
                                        } catch (Exception unused17) {
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            arrayList4 = arrayList2;
            arrayList3 = arrayList6;
        }
        arrayList.size();
        if (arrayList4 != null) {
            arrayList2.size();
        }
        if (arrayList.isEmpty()) {
            z10 = z4;
        } else {
            z10 = z4;
            final int i22 = 0;
            Collections.sort(arrayList3, new Comparator() { // from class: com.yunpan.appmanage.util.s
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    w3 w3Var7 = (w3) obj;
                    w3 w3Var8 = (w3) obj2;
                    switch (i22) {
                        case 0:
                            if (!z10) {
                                break;
                            } else {
                                break;
                            }
                        default:
                            if (!z10) {
                                break;
                            } else {
                                break;
                            }
                    }
                    return w3Var8.f18371h.compareToIgnoreCase(w3Var7.f18371h);
                }
            });
        }
        if (arrayList4 == null || arrayList2.isEmpty()) {
            return;
        }
        final int i23 = 1;
        Collections.sort(arrayList4, new Comparator() { // from class: com.yunpan.appmanage.util.s
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                w3 w3Var7 = (w3) obj;
                w3 w3Var8 = (w3) obj2;
                switch (i23) {
                    case 0:
                        if (!z10) {
                            break;
                        } else {
                            break;
                        }
                    default:
                        if (!z10) {
                            break;
                        } else {
                            break;
                        }
                }
                return w3Var8.f18371h.compareToIgnoreCase(w3Var7.f18371h);
            }
        });
    }
}
