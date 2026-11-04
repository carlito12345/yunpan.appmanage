package ta;

import a2.e0;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.hsae.autosdk.core.NoConst;
import com.hsae.autosdk.popup.constant.PopupConst;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.bean.KeyMapLogcatSuperFindBean;
import com.yunpan.appmanage.bean.LogcatRxHandlerMsgBean;
import com.yunpan.appmanage.shizuku.IGjAdbFace;
import com.yunpan.appmanage.util.a0;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import wa.t;
import wa.u;
import wa.w;
import z7.s;

/* loaded from: classes.dex */
public final class o {
    public String[] A;
    public String C;
    public Pattern D;
    public int E;
    public int F;
    public boolean J;
    public boolean K;
    public boolean L;
    public ArrayList N;
    public ArrayList O;
    public HashMap P;

    /* renamed from: a, reason: collision with root package name */
    public final s f14878a;

    /* renamed from: d, reason: collision with root package name */
    public HandlerThread f14881d;

    /* renamed from: e, reason: collision with root package name */
    public Handler f14882e;

    /* renamed from: g, reason: collision with root package name */
    public Process f14884g;

    /* renamed from: h, reason: collision with root package name */
    public oa.b f14885h;

    /* renamed from: i, reason: collision with root package name */
    public InputStream f14886i;

    /* renamed from: j, reason: collision with root package name */
    public OutputStream f14887j;

    /* renamed from: k, reason: collision with root package name */
    public fg.b f14888k;

    /* renamed from: n, reason: collision with root package name */
    public HashSet f14890n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f14891o;

    /* renamed from: p, reason: collision with root package name */
    public int f14892p;

    /* renamed from: q, reason: collision with root package name */
    public ArrayList f14893q;

    /* renamed from: u, reason: collision with root package name */
    public HashSet f14896u;

    /* renamed from: v, reason: collision with root package name */
    public ArrayList f14897v;

    /* renamed from: w, reason: collision with root package name */
    public Pattern[] f14898w;

    /* renamed from: y, reason: collision with root package name */
    public z7.o[] f14900y;

    /* renamed from: b, reason: collision with root package name */
    public boolean f14879b = false;

    /* renamed from: c, reason: collision with root package name */
    public boolean f14880c = false;

    /* renamed from: f, reason: collision with root package name */
    public final l6.e f14883f = new l6.e(Looper.getMainLooper());
    public final ArrayBlockingQueue l = new ArrayBlockingQueue(1000);

    /* renamed from: m, reason: collision with root package name */
    public boolean f14889m = false;
    public final int[] r = {0, 0, 0, 0, 0, 0, 0, 0, 0};

    /* renamed from: s, reason: collision with root package name */
    public boolean f14894s = false;

    /* renamed from: t, reason: collision with root package name */
    public boolean f14895t = false;

    /* renamed from: x, reason: collision with root package name */
    public long f14899x = 0;
    public int z = 100;
    public boolean B = false;
    public String G = "";
    public String H = "";
    public String I = "";
    public String M = "";
    public z7.o Q = null;
    public String R = "";
    public long S = 0;
    public long T = 0;
    public long U = System.currentTimeMillis();
    public int V = -1;

    public o(s sVar) {
        this.f14878a = sVar;
    }

    public final void a(String str) {
        IGjAdbFace iGjAdbFace;
        try {
            this.f14889m = true;
            InputStream inputStream = this.f14886i;
            if (inputStream != null) {
                q4.a.e(inputStream);
            }
            OutputStream outputStream = this.f14887j;
            if (outputStream != null) {
                q4.a.e(outputStream);
            }
            Process process = this.f14884g;
            if (process != null) {
                process.destroy();
            }
            oa.b bVar = this.f14885h;
            if (bVar != null) {
                bVar.destroy();
            }
            this.l.clear();
            this.f14887j = null;
            this.f14886i = null;
            this.f14884g = null;
            this.f14885h = null;
            fg.b bVar2 = this.f14888k;
            if (bVar2 != null && bVar2.isAlive()) {
                try {
                    this.f14888k.join(300L);
                } catch (Exception unused) {
                }
                this.f14888k = null;
            }
        } catch (Exception e7) {
            e7.printStackTrace();
        }
        Thread.sleep(500L);
        q4.a.c();
        if (Build.VERSION.SDK_INT >= 26 && (iGjAdbFace = fa.a.f5646a.f5651b) != null) {
            try {
                this.f14885h = iGjAdbFace.getNewProcess();
                this.f14886i = new ParcelFileDescriptor.AutoCloseInputStream(this.f14885h.getInputStream());
                this.f14887j = new ParcelFileDescriptor.AutoCloseOutputStream(this.f14885h.getOutputStream());
                System.out.getClass();
                b("exec 2>&1");
            } catch (Exception e10) {
                e10.printStackTrace();
                oa.b bVar3 = this.f14885h;
                if (bVar3 != null) {
                    bVar3.destroy();
                }
                this.f14885h = null;
                q4.a.e(this.f14886i);
                q4.a.e(this.f14887j);
                this.f14886i = null;
                this.f14887j = null;
                this.f14884g = null;
            }
        }
        if (this.f14885h == null) {
            ProcessBuilder processBuilder = new ProcessBuilder(str);
            processBuilder.redirectErrorStream(true);
            Process processStart = processBuilder.start();
            this.f14884g = processStart;
            this.f14886i = processStart.getInputStream();
            this.f14887j = this.f14884g.getOutputStream();
        }
        if (t.f17728a.f17754u) {
            w.b("创建shell");
        }
        fg.b bVar4 = new fg.b(new n(this, 0), 1);
        this.f14888k = bVar4;
        bVar4.start();
    }

    public final void b(String str) {
        this.f14887j.write(str.getBytes(Charset.forName(HTTP.UTF_8)));
        this.f14887j.write(10);
        this.f14887j.flush();
    }

    public final void c() {
        if (t.f17728a.f17754u) {
            w.b("初始化日志配置");
        }
        this.f14890n = new HashSet();
        this.f14892p = 200;
        this.f14893q = new ArrayList();
        s sVar = this.f14878a;
        Iterator it = sVar.p("keys").f19478a.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            z7.p pVar = (z7.p) it.next();
            KeyMapLogcatSuperFindBean keyMapLogcatSuperFindBean = new KeyMapLogcatSuperFindBean();
            keyMapLogcatSuperFindBean.index = i10;
            i10++;
            if (pVar.g().f19480a.containsKey("isOpen")) {
                boolean zB = pVar.g().o("isOpen").b();
                keyMapLogcatSuperFindBean.isOpen = zB;
                if (!zB) {
                }
            }
            if (pVar.g().f19480a.containsKey("tag_bs")) {
                keyMapLogcatSuperFindBean.tag_bs = pVar.g().o("tag_bs").i();
            } else {
                keyMapLogcatSuperFindBean.tag_bs = pVar.g().o("name").i();
            }
            if (pVar.g().f19480a.containsKey("waitingUp")) {
                keyMapLogcatSuperFindBean.isWaitingUp = pVar.g().o("waitingUp").b();
            }
            if (pVar.g().f19480a.containsKey("one")) {
                keyMapLogcatSuperFindBean.isOne = pVar.g().o("one").b();
            }
            if (pVar.g().f19480a.containsKey("OutTimeOneMap")) {
                keyMapLogcatSuperFindBean.OutTimeOneMap = pVar.g().o("OutTimeOneMap").e() * 1000;
            } else if (pVar.g().f19480a.containsKey("isOutTimeOneMap")) {
                keyMapLogcatSuperFindBean.OutTimeOneMap = NoConst.MIN_HEARTBEAT_INTERVAL;
            }
            if (pVar.g().f19480a.containsKey("isConsistent")) {
                keyMapLogcatSuperFindBean.isConsistent = pVar.g().o("isConsistent").b();
            }
            z7.o oVarP = pVar.g().p("downLogcat");
            keyMapLogcatSuperFindBean.downLogcat = new ArrayList();
            for (int i11 = 0; i11 < oVarP.f19478a.size(); i11++) {
                keyMapLogcatSuperFindBean.downLogcat.add(oVarP.l(i11).i());
            }
            if (!keyMapLogcatSuperFindBean.downLogcat.isEmpty()) {
                String strI = pVar.g().o("downLogcatBegin").i();
                if (!strI.isEmpty()) {
                    this.f14890n.add(strI);
                }
                int length = strI.length();
                Iterator<String> it2 = keyMapLogcatSuperFindBean.downLogcat.iterator();
                while (it2.hasNext()) {
                    length += it2.next().length();
                }
                this.f14892p = Math.min(this.f14892p, length);
            }
            if (!pVar.g().p("longClick").f19478a.isEmpty()) {
                z7.o oVarP2 = pVar.g().p("upLogcat");
                keyMapLogcatSuperFindBean.upLogcat = new ArrayList();
                for (int i12 = 0; i12 < oVarP2.f19478a.size(); i12++) {
                    keyMapLogcatSuperFindBean.upLogcat.add(oVarP2.l(i12).i());
                }
                if (!keyMapLogcatSuperFindBean.upLogcat.isEmpty()) {
                    String strI2 = pVar.g().o("upLogcatBegin").i();
                    if (!strI2.isEmpty()) {
                        this.f14890n.add(strI2);
                    }
                    int length2 = strI2.length();
                    Iterator<String> it3 = keyMapLogcatSuperFindBean.upLogcat.iterator();
                    while (it3.hasNext()) {
                        length2 += it3.next().length();
                    }
                    this.f14892p = Math.min(this.f14892p, length2);
                }
            }
            if (!pVar.g().p("zhClick").f19478a.isEmpty()) {
                z7.o oVarP3 = pVar.g().p("zhLogcat");
                keyMapLogcatSuperFindBean.zhLogcat = new ArrayList();
                for (int i13 = 0; i13 < oVarP3.f19478a.size(); i13++) {
                    keyMapLogcatSuperFindBean.zhLogcat.add(oVarP3.l(i13).i());
                }
                if (!keyMapLogcatSuperFindBean.zhLogcat.isEmpty()) {
                    String strI3 = pVar.g().o("zhLogcatBegin").i();
                    if (!strI3.isEmpty()) {
                        this.f14890n.add(strI3);
                    }
                    int length3 = strI3.length();
                    Iterator<String> it4 = keyMapLogcatSuperFindBean.zhLogcat.iterator();
                    while (it4.hasNext()) {
                        length3 += it4.next().length();
                    }
                    this.f14892p = Math.min(this.f14892p, length3);
                }
            }
            if (!pVar.g().p("click").f19478a.isEmpty()) {
                keyMapLogcatSuperFindBean.isHaveClick = true;
            }
            if (!pVar.g().p("doubleClick").f19478a.isEmpty()) {
                keyMapLogcatSuperFindBean.isHaveDoubleClick = true;
            }
            this.f14893q.add(keyMapLogcatSuperFindBean);
        }
        this.f14891o = false;
        try {
            if (!this.f14890n.isEmpty() && ((String) this.f14890n.iterator().next()).charAt(1) == ' ') {
                this.f14891o = true;
            }
        } catch (Exception unused) {
        }
        if (this.f14892p == 200) {
            this.f14892p = 10;
        }
        if (!wa.s.c().f17717n.isEmpty()) {
            for (int size = this.f14893q.size() - 1; size >= 0; size--) {
                if (((KeyMapLogcatSuperFindBean) this.f14893q.get(size)).isOne) {
                    StringBuffer stringBuffer = new StringBuffer();
                    Iterator<String> it5 = ((KeyMapLogcatSuperFindBean) this.f14893q.get(size)).downLogcat.iterator();
                    while (it5.hasNext()) {
                        stringBuffer.append(it5.next());
                    }
                    if (wa.s.c().f17717n.contains(stringBuffer.toString())) {
                        sVar.p("keys").n(size);
                        this.f14893q.remove(size);
                    }
                }
            }
        }
        try {
            d();
        } catch (Exception unused2) {
            this.f14894s = false;
            a0.u("解析日志映射的车门配置出错");
        }
        try {
            e();
        } catch (Exception unused3) {
            this.B = false;
            a0.u("解析日志映射的语音配置出错");
        }
        if (this.f14891o) {
            this.f14892p += 20;
        } else {
            this.f14892p++;
        }
        System.out.getClass();
    }

    public final void d() throws NumberFormatException {
        s sVar = this.f14878a;
        if (sVar.f19480a.containsKey("door")) {
            s sVarQ = sVar.q("door");
            boolean zB = sVarQ.o("isOpen").b();
            this.f14894s = zB;
            if (zB) {
                this.f14895t = sVarQ.o("isOneLog").b();
                b8.n nVar = sVarQ.f19480a;
                if (!nVar.containsKey("valueDef")) {
                    sVarQ.m("valueDef", "0");
                    sVarQ.m("valueOpen", "1");
                    sVarQ.m("valueClose", "0");
                }
                this.A = new String[]{sVarQ.o("valueDef").i().trim().toLowerCase(), sVarQ.o("valueOpen").i().trim().toLowerCase(), sVarQ.o("valueClose").i().trim().toLowerCase()};
                this.f14900y = new z7.o[19];
                z7.o oVarP = sVarQ.p("maps");
                if (oVarP.f19478a.size() < 10) {
                    s sVar2 = new s();
                    Boolean bool = Boolean.FALSE;
                    sVar2.k("isOpen", bool);
                    oVarP.k(sVar2);
                    s sVar3 = new s();
                    sVar3.k("isOpen", bool);
                    oVarP.k(sVar3);
                }
                ArrayList arrayList = oVarP.f19478a;
                if (arrayList.size() < 13) {
                    s sVar4 = new s();
                    Boolean bool2 = Boolean.FALSE;
                    sVar4.k("isOpen", bool2);
                    oVarP.k(sVar4);
                    s sVar5 = new s();
                    sVar5.k("isOpen", bool2);
                    oVarP.k(sVar5);
                    s sVar6 = new s();
                    sVar6.k("isOpen", bool2);
                    oVarP.k(sVar6);
                    s sVar7 = new s();
                    sVar7.k("isOpen", bool2);
                    oVarP.k(sVar7);
                    s sVar8 = new s();
                    sVar8.k("isOpen", bool2);
                    oVarP.k(sVar8);
                    s sVar9 = new s();
                    sVar9.k("isOpen", bool2);
                    oVarP.k(sVar9);
                    s sVar10 = new s();
                    sVar10.k("isOpen", bool2);
                    oVarP.k(sVar10);
                    s sVar11 = new s();
                    sVar11.k("isOpen", bool2);
                    oVarP.k(sVar11);
                }
                int i10 = 0;
                for (int i11 = 0; i11 < arrayList.size(); i11++) {
                    if (oVarP.l(i11).g().o("isOpen").b() && oVarP.l(i11).g().f19480a.containsKey("maps")) {
                        this.f14900y[i11] = oVarP.l(i11).g().p("maps");
                        if (this.f14900y[i11].f19478a.isEmpty()) {
                            this.f14900y[i11] = null;
                        } else {
                            i10++;
                        }
                    } else {
                        this.f14900y[i11] = null;
                    }
                }
                if (i10 == 0) {
                    this.f14894s = false;
                    return;
                }
                this.f14896u = new HashSet();
                this.f14897v = new ArrayList();
                this.f14898w = new Pattern[5];
                if (this.f14895t) {
                    this.f14896u.add(sVarQ.o("tag1").i());
                    this.z = sVarQ.o("logLength1").e();
                    String strI = sVarQ.o("log1").i();
                    if (sVarQ.o("tag1").i().isEmpty() || this.z <= 0 || strI.isEmpty()) {
                        this.f14894s = false;
                        return;
                    }
                    StringBuilder sb2 = new StringBuilder();
                    ArrayList arrayListO = p000if.a.O(strI, "[door", "]");
                    PrintStream printStream = System.out;
                    arrayListO.size();
                    printStream.getClass();
                    Iterator it = arrayListO.iterator();
                    while (it.hasNext()) {
                        String str = (String) it.next();
                        if (str.length() <= 5) {
                            try {
                                int i12 = Integer.parseInt(str);
                                if (i12 > 0) {
                                    this.f14897v.add(Integer.valueOf(i12 - 1));
                                    int iIndexOf = strI.indexOf("[door" + str + "]");
                                    if (iIndexOf != -1) {
                                        if (iIndexOf > 0) {
                                            sb2.append(Pattern.quote(strI.substring(0, iIndexOf)));
                                        }
                                        sb2.append("([^,]{1,7})");
                                        strI = strI.substring(iIndexOf + str.length() + 6);
                                    }
                                }
                            } catch (Exception unused) {
                            }
                        }
                    }
                    if (!strI.isEmpty()) {
                        sb2.append(Pattern.quote(strI));
                    }
                    String string = sb2.toString();
                    System.out.getClass();
                    this.f14898w[0] = Pattern.compile(string);
                } else {
                    if (sVarQ.o("log1").i().trim().isEmpty() || sVarQ.o("logLength1").e() <= 0) {
                        this.f14898w[0] = null;
                    } else {
                        String strI2 = sVarQ.o("log1").i();
                        int iIndexOf2 = strI2.indexOf("[door1]");
                        if (iIndexOf2 != -1) {
                            this.f14898w[0] = Pattern.compile(Pattern.quote(strI2.substring(0, iIndexOf2)) + "([^,]{1,7})" + Pattern.quote(strI2.substring(iIndexOf2 + 7)));
                            this.f14896u.add(sVarQ.o("tag1").i());
                            this.z = sVarQ.o("logLength1").e();
                        }
                    }
                    if (sVarQ.o("log2").i().isEmpty() || sVarQ.o("logLength2").e() <= 0) {
                        this.f14898w[1] = null;
                    } else {
                        String strI3 = sVarQ.o("log2").i();
                        int iIndexOf3 = strI3.indexOf("[door2]");
                        if (iIndexOf3 != -1) {
                            this.f14898w[1] = Pattern.compile(Pattern.quote(strI3.substring(0, iIndexOf3)) + "([^,]{1,7})" + Pattern.quote(strI3.substring(iIndexOf3 + 7)));
                            this.f14896u.add(sVarQ.o("tag2").i());
                            this.z = Math.min(this.z, sVarQ.o("logLength2").e());
                        }
                    }
                    if (sVarQ.o("log3").i().trim().isEmpty() || sVarQ.o("logLength3").e() <= 0) {
                        this.f14898w[2] = null;
                    } else {
                        String strI4 = sVarQ.o("log3").i();
                        int iIndexOf4 = strI4.indexOf("[door3]");
                        if (iIndexOf4 != -1) {
                            this.f14898w[2] = Pattern.compile(Pattern.quote(strI4.substring(0, iIndexOf4)) + "([^,]{1,7})" + Pattern.quote(strI4.substring(iIndexOf4 + 7)));
                            this.f14896u.add(sVarQ.o("tag3").i());
                            this.z = Math.min(this.z, sVarQ.o("logLength3").e());
                        }
                    }
                    if (sVarQ.o("log4").i().trim().isEmpty() || sVarQ.o("logLength4").e() <= 0) {
                        this.f14898w[3] = null;
                    } else {
                        String strI5 = sVarQ.o("log4").i();
                        int iIndexOf5 = strI5.indexOf("[door4]");
                        if (iIndexOf5 != -1) {
                            this.f14898w[3] = Pattern.compile(Pattern.quote(strI5.substring(0, iIndexOf5)) + "([^,]{1,7})" + Pattern.quote(strI5.substring(iIndexOf5 + 7)));
                            this.f14896u.add(sVarQ.o("tag4").i());
                            this.z = Math.min(this.z, sVarQ.o("logLength4").e());
                        }
                    }
                    if (!nVar.containsKey("log5") || sVarQ.o("log5").i().trim().isEmpty() || sVarQ.o("logLength5").e() <= 0) {
                        this.f14898w[4] = null;
                    } else {
                        String strI6 = sVarQ.o("log5").i();
                        int iIndexOf6 = strI6.indexOf("[door5]");
                        if (iIndexOf6 != -1) {
                            this.f14898w[4] = Pattern.compile(Pattern.quote(strI6.substring(0, iIndexOf6)) + "([^,]{1,7})" + Pattern.quote(strI6.substring(iIndexOf6 + 7)));
                            this.f14896u.add(sVarQ.o("tag5").i());
                            this.z = Math.min(this.z, sVarQ.o("logLength5").e());
                        }
                    }
                }
                this.f14892p = Math.min(this.z, this.f14892p);
            }
        }
    }

    public final void e() {
        ApplicationInfo applicationInfo;
        s sVar = this.f14878a;
        if (sVar.f19480a.containsKey("voice")) {
            s sVarQ = sVar.q("voice");
            this.B = sVarQ.o("isOpen").b();
            this.C = sVarQ.o("tag").i();
            String strI = sVarQ.o("log").i();
            this.E = sVarQ.o("mode").e();
            this.F = sVarQ.o("mapIndex").e();
            b8.n nVar = sVarQ.f19480a;
            if (nVar.containsKey("nav_guidewords")) {
                this.M = sVarQ.o("nav_guidewords").i();
            }
            if (nVar.containsKey("mapAppPackage")) {
                this.I = sVarQ.o("mapAppPackage").i();
            }
            if (this.E != 1) {
                String[] strArrSplit = strI.split(SignParameters.NEW_LINE);
                int length = strArrSplit.length;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        break;
                    }
                    String str = strArrSplit[i10];
                    if (!str.trim().isEmpty()) {
                        if (!this.G.isEmpty()) {
                            this.H = str;
                            break;
                        }
                        this.G = str;
                    }
                    i10++;
                }
            } else {
                this.D = Pattern.compile(strI);
            }
            if (nVar.containsKey("match_map")) {
                z7.o oVarP = sVarQ.p("match_map");
                this.Q = oVarP;
                if (oVarP.f19478a.isEmpty()) {
                    this.Q = null;
                }
            }
            this.J = sVarQ.o("isNavTo").b();
            boolean zB = sVarQ.o("isOpenUserApp").b();
            this.K = zB;
            if (zB) {
                this.P = new HashMap();
                for (PackageInfo packageInfo : AppStart.f3772h.getPackageManager().getInstalledPackages(0)) {
                    if (packageInfo != null && (applicationInfo = packageInfo.applicationInfo) != null && applicationInfo.flags != 1) {
                        try {
                            this.P.put(applicationInfo.loadLabel(AppStart.f3772h.getPackageManager()).toString().trim().replaceAll("\\s+", "").toLowerCase(), packageInfo.packageName);
                        } catch (Exception unused) {
                        }
                    }
                }
            }
            if (nVar.containsKey("isShowText")) {
                this.L = sVarQ.o("isShowText").b();
            } else {
                this.L = false;
            }
            this.N = new ArrayList();
            this.O = new ArrayList();
            Iterator it = sVarQ.p("maps").f19478a.iterator();
            while (it.hasNext()) {
                s sVarG = ((z7.p) it.next()).g();
                if (sVarG.o("isOpen").b()) {
                    this.N.add(sVarG.o("name").i().trim().replaceAll("\\s+", "").toLowerCase());
                    this.O.add(sVarG.p("maps"));
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0050, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:120:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00ce A[Catch: Exception -> 0x008e, TryCatch #0 {Exception -> 0x008e, blocks: (B:35:0x006c, B:38:0x0072, B:40:0x007a, B:42:0x0082, B:50:0x00b1, B:52:0x00b9, B:56:0x00c8, B:58:0x00ce, B:60:0x00da, B:61:0x00dd, B:44:0x0090, B:46:0x009b, B:48:0x00a7), top: B:313:0x006c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void f(String str, mc.b bVar) {
        boolean z;
        boolean z4;
        int iIndexOf;
        boolean z10;
        List<String> list;
        boolean z11;
        long j10;
        String strTrim;
        int iIndexOf2;
        String strSubstring = str;
        if (!this.B || this.f14892p <= 15) {
            if (str.length() < this.f14892p) {
                return;
            }
        } else if (str.length() < 15) {
            return;
        }
        if (!this.f14891o && strSubstring.charAt(1) != '/' && (iIndexOf2 = strSubstring.indexOf("/")) > 2) {
            strSubstring = strSubstring.substring(iIndexOf2 - 1);
        }
        String str2 = strSubstring;
        int i10 = 0;
        if (this.B) {
            boolean z12 = this.f14891o ? false : false;
            if (z12 && System.currentTimeMillis() - this.S < 1000) {
                z12 = false;
            }
            if (z12) {
                try {
                    int i11 = this.E;
                    String str3 = "";
                    if (i11 == 0) {
                        if (this.H.isEmpty()) {
                            int iIndexOf3 = str2.indexOf(this.G);
                            strTrim = iIndexOf3 != -1 ? str2.substring(iIndexOf3 + this.G.length()) : "";
                        } else {
                            strTrim = p000if.a.N(str2, this.G, this.H, false);
                        }
                        if (strTrim.equals(this.R) || System.currentTimeMillis() - this.S >= 3888) {
                            str3 = strTrim;
                        }
                        if (!str3.isEmpty()) {
                            this.R = str3;
                            this.S = System.currentTimeMillis();
                            if (this.L) {
                                a0.w(str3);
                            }
                            wa.s.c().f17709e.N0.submit(new e0(this, str3.toLowerCase(), bVar, 11));
                            return;
                        }
                    } else if (i11 == 1) {
                        Matcher matcher = this.D.matcher(str2);
                        if (matcher.find()) {
                            strTrim = matcher.group(1).trim();
                        }
                        if (strTrim.equals(this.R)) {
                            str3 = strTrim;
                            if (!str3.isEmpty()) {
                            }
                        }
                    }
                } catch (Exception unused) {
                }
            }
        }
        if (this.f14894s) {
            try {
                Iterator it = this.f14896u.iterator();
                while (it.hasNext()) {
                    String str4 = (String) it.next();
                    if (!str4.isEmpty()) {
                        if (!this.f14891o) {
                            if (str2.startsWith(str4)) {
                                z = true;
                                break;
                            }
                        } else {
                            if (str2.contains(str4)) {
                                z = true;
                                break;
                            }
                        }
                    }
                }
                z = false;
                if (z) {
                    boolean z13 = this.f14895t;
                    int[] iArr = this.r;
                    char c7 = 3;
                    int i12 = 4;
                    if (!z13) {
                        int i13 = 0;
                        while (true) {
                            Pattern[] patternArr = this.f14898w;
                            if (i13 >= patternArr.length) {
                                break;
                            }
                            Pattern pattern = patternArr[i13];
                            if (pattern != null) {
                                Matcher matcher2 = pattern.matcher(str2);
                                if (matcher2.find() && matcher2.groupCount() != 0) {
                                    PrintStream printStream = System.out;
                                    matcher2.groupCount();
                                    printStream.getClass();
                                    String lowerCase = matcher2.group(1).trim().toLowerCase();
                                    char c10 = (lowerCase.equals("1") || lowerCase.equals("true")) ? (char) 1 : (char) 0;
                                    if (iArr[i13] != c10) {
                                        iArr[i13] = c10;
                                        if (c10 == 1) {
                                            z7.o oVar = this.f14900y[(i13 * 2) + 1];
                                            if (oVar != null) {
                                                bVar.f(oVar);
                                                if (i13 < 4) {
                                                    if (iArr[0] + iArr[1] + iArr[2] + iArr[3] == 1) {
                                                        if (System.currentTimeMillis() - this.f14899x > 1000) {
                                                            this.f14899x = System.currentTimeMillis();
                                                            z7.o oVar2 = this.f14900y[0];
                                                            if (oVar2 != null) {
                                                                bVar.f(oVar2);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        } else {
                                            z7.o oVar3 = this.f14900y[(i13 * 2) + 2];
                                            if (oVar3 != null) {
                                                bVar.f(oVar3);
                                            }
                                        }
                                    }
                                }
                            }
                            i13++;
                        }
                    } else {
                        System.out.getClass();
                        Matcher matcher3 = this.f14898w[0].matcher(str2);
                        if (matcher3.find()) {
                            int iGroupCount = matcher3.groupCount();
                            int i14 = 1;
                            while (i14 <= iGroupCount) {
                                boolean zEquals = matcher3.group(i14).trim().toLowerCase().equals(this.A[1]);
                                int iIntValue = ((Integer) this.f14897v.get(i14 - 1)).intValue();
                                System.out.getClass();
                                if (iIntValue < iArr.length && iArr[iIntValue] != zEquals) {
                                    iArr[iIntValue] = zEquals ? 1 : 0;
                                    if (zEquals) {
                                        z7.o oVar4 = this.f14900y[(iIntValue * 2) + 1];
                                        if (oVar4 != null) {
                                            bVar.f(oVar4);
                                            if (iIntValue < i12 && iArr[0] + iArr[1] + iArr[2] + iArr[c7] == 1 && System.currentTimeMillis() - this.f14899x > 1000) {
                                                this.f14899x = System.currentTimeMillis();
                                                z7.o oVar5 = this.f14900y[0];
                                                if (oVar5 != null) {
                                                    bVar.f(oVar5);
                                                }
                                            }
                                        }
                                    } else {
                                        z7.o oVar6 = this.f14900y[(iIntValue * 2) + 2];
                                        if (oVar6 != null) {
                                            bVar.f(oVar6);
                                        }
                                    }
                                }
                                i14++;
                                c7 = 3;
                                i12 = 4;
                            }
                        }
                    }
                }
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        }
        Iterator it2 = this.f14890n.iterator();
        while (it2.hasNext()) {
            String str5 = (String) it2.next();
            if (!str5.isEmpty()) {
                if (!this.f14891o) {
                    if (str2.startsWith(str5)) {
                        z4 = true;
                        break;
                    }
                } else {
                    if (str2.contains(str5)) {
                        z4 = true;
                        break;
                    }
                }
            }
        }
        z4 = false;
        if (z4 && (iIndexOf = str2.indexOf(":")) >= 0) {
            String strSubstring2 = str2.substring(iIndexOf + 1);
            int i15 = this.V;
            s sVar = this.f14878a;
            l6.e eVar = this.f14883f;
            long j11 = 0;
            if (i15 >= 0 && ((KeyMapLogcatSuperFindBean) this.f14893q.get(i15)).zhLogcat != null && System.currentTimeMillis() - this.U < t.f17728a.r) {
                Iterator<String> it3 = ((KeyMapLogcatSuperFindBean) this.f14893q.get(this.V)).zhLogcat.iterator();
                while (true) {
                    if (it3.hasNext()) {
                        if (!strSubstring2.contains((String) it3.next())) {
                            z4 = false;
                            break;
                        }
                    } else {
                        break;
                    }
                }
                if (z4) {
                    eVar.removeMessages(0);
                    eVar.removeMessages(1);
                    bVar.f(sVar.p("keys").l(((KeyMapLogcatSuperFindBean) this.f14893q.get(this.V)).index).g().p("zhClick"));
                    this.V = -1;
                    this.U = 0L;
                    return;
                }
            }
            int i16 = 0;
            while (i16 < this.f14893q.size()) {
                KeyMapLogcatSuperFindBean keyMapLogcatSuperFindBean = (KeyMapLogcatSuperFindBean) this.f14893q.get(i16);
                if (keyMapLogcatSuperFindBean.isOpen) {
                    Iterator<String> it4 = keyMapLogcatSuperFindBean.downLogcat.iterator();
                    while (true) {
                        if (it4.hasNext()) {
                            if (!strSubstring2.contains((String) it4.next())) {
                                z10 = false;
                                break;
                            }
                        } else {
                            z10 = true;
                            break;
                        }
                    }
                    if (z10 && keyMapLogcatSuperFindBean.isConsistent && !strSubstring2.endsWith(keyMapLogcatSuperFindBean.downLogcat.get(i10))) {
                        z10 = false;
                    }
                    if (z10 && keyMapLogcatSuperFindBean.OutTimeOneMap > 0 && wa.s.c().f17718o.get(keyMapLogcatSuperFindBean.tag_bs) != null && System.currentTimeMillis() - ((Long) wa.s.c().f17718o.get(keyMapLogcatSuperFindBean.tag_bs)).longValue() < keyMapLogcatSuperFindBean.OutTimeOneMap) {
                        return;
                    }
                    if (z10 && this.V == i16 && keyMapLogcatSuperFindBean.isWaitingUp && keyMapLogcatSuperFindBean.upLogcat != null && System.currentTimeMillis() - this.T < PopupConst.DURATION_POPUP_SHORT) {
                        return;
                    }
                    if (z10) {
                        if (keyMapLogcatSuperFindBean.isWaitingUp && this.V != i16) {
                            this.T = 0L;
                        }
                        if (this.V == i16 && keyMapLogcatSuperFindBean.isHaveDoubleClick && System.currentTimeMillis() - this.U < t.f17728a.r) {
                            eVar.removeMessages(0);
                            eVar.removeMessages(1);
                            bVar.f(sVar.p("keys").l(keyMapLogcatSuperFindBean.index).g().p("doubleClick"));
                            this.V = -1;
                            this.U = 0L;
                            return;
                        }
                        if (keyMapLogcatSuperFindBean.upLogcat != null) {
                            Message messageObtain = Message.obtain();
                            messageObtain.what = 1;
                            messageObtain.obj = new LogcatRxHandlerMsgBean(bVar, sVar.p("keys").l(keyMapLogcatSuperFindBean.index).g().p("longClick"));
                            eVar.sendMessageDelayed(messageObtain, t.f17728a.r);
                        }
                        if (keyMapLogcatSuperFindBean.upLogcat != null || keyMapLogcatSuperFindBean.zhLogcat != null || keyMapLogcatSuperFindBean.isHaveDoubleClick) {
                            this.V = i16;
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            this.U = jCurrentTimeMillis;
                            if (keyMapLogcatSuperFindBean.isWaitingUp) {
                                this.T = jCurrentTimeMillis;
                            }
                            if (keyMapLogcatSuperFindBean.upLogcat == null && keyMapLogcatSuperFindBean.isHaveClick) {
                                Message messageObtain2 = Message.obtain();
                                messageObtain2.what = 0;
                                messageObtain2.obj = new LogcatRxHandlerMsgBean(bVar, sVar.p("keys").l(keyMapLogcatSuperFindBean.index).g().p("click"));
                                eVar.sendMessageDelayed(messageObtain2, t.f17728a.r);
                                return;
                            }
                            return;
                        }
                        if (keyMapLogcatSuperFindBean.isHaveClick) {
                            bVar.f(sVar.p("keys").l(keyMapLogcatSuperFindBean.index).g().p("click"));
                            if (keyMapLogcatSuperFindBean.isOne) {
                                StringBuffer stringBuffer = new StringBuffer();
                                for (int i17 = 0; i17 < ((KeyMapLogcatSuperFindBean) this.f14893q.get(i16)).downLogcat.size(); i17++) {
                                    stringBuffer.append(((KeyMapLogcatSuperFindBean) this.f14893q.get(i16)).downLogcat.get(i17));
                                }
                                wa.s.c().f17717n.add(stringBuffer.toString());
                                this.f14893q.remove(i16);
                                sVar.p("keys").n(keyMapLogcatSuperFindBean.index);
                            } else if (keyMapLogcatSuperFindBean.OutTimeOneMap > 0) {
                                wa.s.c().f17718o.put(keyMapLogcatSuperFindBean.tag_bs, Long.valueOf(System.currentTimeMillis()));
                            }
                        }
                        this.V = -1;
                        this.U = 0L;
                        return;
                    }
                    if (this.V == i16 && (list = keyMapLogcatSuperFindBean.upLogcat) != null) {
                        Iterator<String> it5 = list.iterator();
                        while (true) {
                            if (it5.hasNext()) {
                                if (!strSubstring2.contains((String) it5.next())) {
                                    z11 = false;
                                    break;
                                }
                            } else {
                                z11 = true;
                                break;
                            }
                        }
                        if (z11) {
                            if (keyMapLogcatSuperFindBean.isWaitingUp) {
                                this.T = 0L;
                            }
                            long jCurrentTimeMillis2 = System.currentTimeMillis() - this.U;
                            u uVar = t.f17728a;
                            if (jCurrentTimeMillis2 >= uVar.r) {
                                this.V = -1;
                                this.U = 0L;
                                return;
                            }
                            eVar.removeMessages(1);
                            this.U = System.currentTimeMillis();
                            if (keyMapLogcatSuperFindBean.isHaveClick) {
                                if (keyMapLogcatSuperFindBean.isHaveDoubleClick || keyMapLogcatSuperFindBean.zhLogcat != null) {
                                    Message messageObtain3 = Message.obtain();
                                    messageObtain3.what = 0;
                                    messageObtain3.obj = new LogcatRxHandlerMsgBean(bVar, sVar.p("keys").l(keyMapLogcatSuperFindBean.index).g().p("click"));
                                    eVar.sendMessageDelayed(messageObtain3, uVar.r);
                                } else {
                                    bVar.f(sVar.p("keys").l(keyMapLogcatSuperFindBean.index).g().p("click"));
                                }
                                if (keyMapLogcatSuperFindBean.OutTimeOneMap > 0) {
                                    wa.s.c().f17718o.put(keyMapLogcatSuperFindBean.tag_bs, Long.valueOf(System.currentTimeMillis()));
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                    }
                    j10 = 0;
                } else {
                    j10 = j11;
                }
                i16++;
                j11 = j10;
                i10 = 0;
            }
        }
    }

    public final void g() {
        this.f14879b = true;
        HandlerThread handlerThread = this.f14881d;
        if (handlerThread != null) {
            handlerThread.quit();
            this.f14881d = null;
        }
        Handler handler = this.f14882e;
        l6.e eVar = this.f14883f;
        if (handler != null) {
            eVar.removeCallbacksAndMessages(null);
        }
        q4.a.e(this.f14887j);
        q4.a.e(this.f14886i);
        try {
            Process process = this.f14884g;
            if (process != null) {
                process.destroy();
            }
            oa.b bVar = this.f14885h;
            if (bVar != null) {
                bVar.destroy();
            }
        } catch (Exception unused) {
        }
        this.l.clear();
        this.f14887j = null;
        this.f14886i = null;
        this.f14884g = null;
        this.f14885h = null;
        fg.b bVar2 = this.f14888k;
        if (bVar2 != null && bVar2.isAlive()) {
            try {
                this.f14888k.interrupt();
            } catch (Exception unused2) {
            }
            this.f14888k = null;
        }
        eVar.removeCallbacksAndMessages(null);
    }
}
