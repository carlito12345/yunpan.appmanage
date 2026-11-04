package ba;

import a9.f0;
import ce.t0;
import com.hierynomus.smbj.SMBClient;
import com.hierynomus.smbj.SmbConfig;
import com.hierynomus.smbj.auth.AuthenticationContext;
import com.hierynomus.smbj.connection.Connection;
import com.hierynomus.smbj.session.Session;
import java.util.concurrent.TimeUnit;
import okhttp3.HttpUrl;
import okhttp3.Response;
import okhttp3.ResponseBody;
import x9.n5;

/* loaded from: classes.dex */
public final /* synthetic */ class f implements ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2688a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ n5 f2689b;

    public /* synthetic */ f(int i10, n5 n5Var) {
        this.f2688a = i10;
        this.f2689b = n5Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0148  */
    /* JADX WARN: Type inference failed for: r1v29 */
    /* JADX WARN: Type inference failed for: r1v31, types: [a9.f0] */
    /* JADX WARN: Type inference failed for: r1v32 */
    /* JADX WARN: Type inference failed for: r2v38 */
    /* JADX WARN: Type inference failed for: r2v40 */
    /* JADX WARN: Type inference failed for: r2v42, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v43 */
    /* JADX WARN: Type inference failed for: r2v52, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v53, types: [com.hierynomus.smbj.session.Session] */
    /* JADX WARN: Type inference failed for: r2v65 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8, types: [com.hierynomus.smbj.connection.Connection] */
    /* JADX WARN: Type inference failed for: r6v9 */
    @Override // ec.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void g(mc.b bVar) throws Exception {
        String strString;
        ResponseBody responseBodyBody;
        dh.e eVar;
        dh.e eVar2;
        dh.j jVar;
        dh.j jVar2;
        Exception e7;
        f0 f0VarS;
        Exception e10;
        f0 f0VarS2;
        Exception e11;
        f0 f0VarS3;
        Exception e12;
        f0 f0VarS4;
        Exception e13;
        f0 f0VarS5;
        Connection connectionConnect;
        String str;
        boolean zEquals;
        String str2;
        Session sessionAuthenticate;
        switch (this.f2688a) {
            case 0:
                n5 n5Var = this.f2689b;
                if (s1.g.k0(n5Var)) {
                    bVar.b();
                    return;
                }
                try {
                    z7.s sVar = new z7.s();
                    sVar.m("client_id", "aMe-8VSlkrbQXpUR");
                    sVar.m("grant_type", "refresh_token");
                    sVar.m("refresh_token", n5Var.f18306s);
                    String strG = s1.g.G("https://account.guangyapan.com/v1/auth/token", sVar.toString());
                    System.out.getClass();
                    if (!strG.contains("access_token")) {
                        throw new Exception("请求失败");
                    }
                    z7.s sVarG = d.b.b0(strG).g();
                    n5Var.r = sVarG.o("access_token").i();
                    n5Var.f18306s = sVarG.o("refresh_token").i();
                    n5Var.f18307t = sVarG.o("sub").i();
                    bVar.f("");
                    bVar.b();
                    return;
                } catch (Exception unused) {
                    android.support.v4.media.session.a.B("已失效，请重新登录", bVar);
                    return;
                }
            case 1:
                n5 n5Var2 = this.f2689b;
                if (n5Var2.f18292c.isEmpty()) {
                    n5Var2.f18292c = "https://pc.woozooo.com";
                }
                String str3 = n5Var2.f18292c + "/mydisk.php?item=files&action=index&u=" + n5Var2.f18297h;
                String strL = g.b.l(n5Var2.f18292c, "/mydisk.php", new StringBuilder());
                String str4 = n5Var2.f18298i;
                int i10 = 0;
                while (true) {
                    i10++;
                    if (i10 == 1) {
                        com.yunpan.appmanage.util.f0.f4019a.f11674b = HttpUrl.get(com.yunpan.appmanage.util.f0.a(i10));
                    } else if (i10 == 2) {
                        com.yunpan.appmanage.util.f0.f4019a.f11674b = null;
                    }
                    try {
                        l9.a aVar = new l9.a(str3);
                        aVar.f11017i.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
                        aVar.f11017i.b("Referer", strL);
                        aVar.f11017i.b("Cookie", str4);
                        Response responseA = aVar.a();
                        strString = (responseA.isSuccessful() && (responseBodyBody = responseA.body()) != null) ? responseBodyBody.string() : "";
                    } catch (Exception unused2) {
                    }
                }
                if (!strString.isEmpty()) {
                    try {
                        int iIndexOf = strString.indexOf("'/doupload.php?uid=");
                        if (iIndexOf != -1) {
                            int i11 = iIndexOf + 19;
                            String strSubstring = strString.substring(i11, strString.indexOf("'", i11));
                            if (!strSubstring.isEmpty()) {
                                n5Var2.f18297h = strSubstring;
                                int iIndexOf2 = strString.indexOf("'vei':'");
                                if (iIndexOf2 != -1) {
                                    int i12 = iIndexOf2 + 7;
                                    String strSubstring2 = strString.substring(i12, strString.indexOf("'", i12));
                                    if (!strSubstring2.isEmpty()) {
                                        n5Var2.f18299j = strSubstring2;
                                        bVar.b();
                                        return;
                                    }
                                }
                            }
                        }
                    } catch (Exception unused3) {
                    }
                }
                n5Var2.f18298i = "";
                n5Var2.f18299j = "";
                String strX = nh.b.X(n5Var2);
                if (!strX.isEmpty() || n5Var2.f18298i.isEmpty()) {
                    android.support.v4.media.session.a.B(strX, bVar);
                    return;
                } else {
                    bVar.f("");
                    bVar.b();
                    return;
                }
            case 2:
                n5 n5Var3 = this.f2689b;
                String strX2 = nh.b.X(n5Var3);
                if (!strX2.isEmpty() || n5Var3.f18298i.isEmpty()) {
                    android.support.v4.media.session.a.B(strX2, bVar);
                    return;
                } else {
                    bVar.b();
                    return;
                }
            case 3:
                n5 n5Var4 = this.f2689b;
                if (qf.c.j0(n5Var4)) {
                    bVar.b();
                    return;
                }
                n5Var4.f18300k = "";
                String strK = qf.c.K(n5Var4);
                if (!strK.isEmpty() || n5Var4.f18300k.isEmpty()) {
                    android.support.v4.media.session.a.B(strK, bVar);
                    return;
                } else {
                    bVar.b();
                    return;
                }
            case 4:
                n5 n5Var5 = this.f2689b;
                String strK2 = qf.c.K(n5Var5);
                if (!strK2.isEmpty() || n5Var5.f18300k.isEmpty()) {
                    android.support.v4.media.session.a.B(strK2, bVar);
                    return;
                } else {
                    bVar.b();
                    return;
                }
            case 5:
                n5 n5Var6 = this.f2689b;
                try {
                    s1.g.j0(n5Var6);
                    bVar.b();
                    return;
                } catch (Exception unused4) {
                    n5Var6.f18300k = "";
                    try {
                        s1.g.K(n5Var6);
                        bVar.f("");
                        bVar.b();
                        return;
                    } catch (Exception e14) {
                        bVar.d(e14);
                        return;
                    }
                }
            case 6:
                try {
                    s1.g.K(this.f2689b);
                    bVar.b();
                    return;
                } catch (Exception e15) {
                    bVar.d(e15);
                    return;
                }
            case 7:
                n5 n5Var7 = this.f2689b;
                try {
                    dh.e eVar3 = n5Var7.f18311x;
                    if (eVar3 != null && eVar3.f()) {
                        n5Var7.f18311x.p("/");
                        dh.g[] gVarArrS = n5Var7.f18311x.s(null);
                        if (gVarArrS != null && gVarArrS.length > 0) {
                            bVar.b();
                            return;
                        }
                    }
                } catch (Exception unused5) {
                }
                String strM = com.bumptech.glide.c.m(n5Var7);
                System.out.getClass();
                if (strM.isEmpty() && (eVar = n5Var7.f18311x) != null && eVar.f()) {
                    bVar.b();
                    return;
                } else {
                    android.support.v4.media.session.a.B(strM, bVar);
                    return;
                }
            case 8:
                n5 n5Var8 = this.f2689b;
                String strM2 = com.bumptech.glide.c.m(n5Var8);
                if (strM2.isEmpty() && (eVar2 = n5Var8.f18311x) != null && eVar2.f()) {
                    bVar.b();
                    return;
                } else {
                    android.support.v4.media.session.a.B(strM2, bVar);
                    return;
                }
            case 9:
                n5 n5Var9 = this.f2689b;
                String strJ = com.bumptech.glide.d.j(n5Var9);
                if (strJ.isEmpty() && (jVar = n5Var9.A) != null && jVar.f()) {
                    bVar.b();
                    return;
                }
                if (strJ.isEmpty()) {
                    strJ = "失败";
                }
                android.support.v4.media.session.a.B(strJ, bVar);
                return;
            case 10:
                n5 n5Var10 = this.f2689b;
                try {
                    dh.j jVar3 = n5Var10.A;
                    if (jVar3 != null && jVar3.f()) {
                        n5Var10.A.p("/");
                        dh.g[] gVarArrS2 = n5Var10.A.s(null);
                        if (gVarArrS2 != null && gVarArrS2.length > 0) {
                            bVar.b();
                            return;
                        }
                    }
                } catch (Exception unused6) {
                }
                String strJ2 = com.bumptech.glide.d.j(n5Var10);
                if (strJ2.isEmpty() && (jVar2 = n5Var10.A) != null && jVar2.f()) {
                    bVar.b();
                    return;
                } else {
                    android.support.v4.media.session.a.B(strJ2, bVar);
                    return;
                }
            case 11:
                n5 n5Var11 = this.f2689b;
                ?? r12 = 0;
                try {
                    try {
                        System.currentTimeMillis();
                        f0VarS = p000if.a.S(n5Var11);
                        try {
                            f0VarS.b();
                            throw null;
                        } catch (Exception e16) {
                            e7 = e16;
                            String message = e7.getMessage();
                            if (message == null || message.isEmpty()) {
                                message = "连接失败";
                            }
                            bVar.d(new Exception(message));
                            if (f0VarS == null || !f0VarS.f487h) {
                                return;
                            }
                            f0VarS.c();
                            return;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        r12 = n5Var11;
                        if (r12 != 0 && r12.f487h) {
                            r12.c();
                        }
                        throw th;
                    }
                } catch (Exception e17) {
                    e7 = e17;
                    f0VarS = null;
                } catch (Throwable th3) {
                    th = th3;
                    if (r12 != 0) {
                        r12.c();
                    }
                    throw th;
                }
                break;
            case 12:
                f0 f0Var = null;
                try {
                    f0VarS2 = p000if.a.S(this.f2689b);
                    try {
                        try {
                            f0VarS2.b();
                            throw null;
                        } catch (Exception e18) {
                            e10 = e18;
                            String message2 = e10.getMessage();
                            if (message2 == null) {
                                message2 = "删除失败";
                            } else if (message2.isEmpty()) {
                                message2 = "删除失败";
                            }
                            if (f0VarS2 != null && f0VarS2.f487h) {
                                f0VarS2.c();
                            }
                            if (message2.isEmpty()) {
                                bVar.b();
                                return;
                            } else {
                                android.support.v4.media.session.a.B(message2, bVar);
                                return;
                            }
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        f0Var = f0VarS2;
                        if (f0Var != null && f0Var.f487h) {
                            f0Var.c();
                        }
                        throw th;
                    }
                } catch (Exception e19) {
                    e10 = e19;
                    f0VarS2 = null;
                } catch (Throwable th5) {
                    th = th5;
                    if (f0Var != null) {
                        f0Var.c();
                    }
                    throw th;
                }
                break;
            case 13:
                f0 f0Var2 = null;
                try {
                    f0VarS3 = p000if.a.S(this.f2689b);
                    try {
                        try {
                            f0VarS3.b();
                            throw null;
                        } catch (Exception e20) {
                            e11 = e20;
                            String message3 = e11.getMessage();
                            if (message3 == null) {
                                message3 = "连接失败";
                            } else if (message3.isEmpty()) {
                                message3 = "连接失败";
                            }
                            if (f0VarS3 != null && f0VarS3.f487h) {
                                f0VarS3.c();
                            }
                            if (message3.isEmpty()) {
                                bVar.b();
                                return;
                            } else {
                                android.support.v4.media.session.a.B(message3, bVar);
                                return;
                            }
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        f0Var2 = f0VarS3;
                        if (f0Var2 != null && f0Var2.f487h) {
                            f0Var2.c();
                        }
                        throw th;
                    }
                } catch (Exception e21) {
                    e11 = e21;
                    f0VarS3 = null;
                } catch (Throwable th7) {
                    th = th7;
                    if (f0Var2 != null) {
                        f0Var2.c();
                    }
                    throw th;
                }
                break;
            case 14:
                f0 f0Var3 = null;
                try {
                    f0VarS4 = p000if.a.S(this.f2689b);
                    try {
                        try {
                            f0VarS4.b();
                            throw null;
                        } catch (Exception e22) {
                            e12 = e22;
                            String message4 = e12.getMessage();
                            if (message4 == null) {
                                message4 = "删除失败";
                            } else if (message4.isEmpty()) {
                                message4 = "删除失败";
                            }
                            if (f0VarS4 != null && f0VarS4.f487h) {
                                f0VarS4.c();
                            }
                            if (message4.isEmpty()) {
                                bVar.b();
                                return;
                            } else {
                                android.support.v4.media.session.a.B(message4, bVar);
                                return;
                            }
                        }
                    } catch (Throwable th8) {
                        th = th8;
                        f0Var3 = f0VarS4;
                        if (f0Var3 != null && f0Var3.f487h) {
                            f0Var3.c();
                        }
                        throw th;
                    }
                } catch (Exception e23) {
                    e12 = e23;
                    f0VarS4 = null;
                } catch (Throwable th9) {
                    th = th9;
                    if (f0Var3 != null) {
                        f0Var3.c();
                    }
                    throw th;
                }
                break;
            case 15:
                f0 f0Var4 = null;
                try {
                    f0VarS5 = p000if.a.S(this.f2689b);
                    try {
                        try {
                            f0VarS5.b();
                            throw null;
                        } catch (Exception e24) {
                            e13 = e24;
                            String message5 = e13.getMessage();
                            if (message5 == null || message5.isEmpty()) {
                                message5 = "移动失败";
                            }
                            if (message5.contains("already exists")) {
                                message5 = "此目录下存在相同文件名";
                            }
                            if (f0VarS5 != null && f0VarS5.f487h) {
                                f0VarS5.c();
                            }
                            if (message5.isEmpty()) {
                                bVar.b();
                                return;
                            } else {
                                android.support.v4.media.session.a.B(message5, bVar);
                                return;
                            }
                        }
                    } catch (Throwable th10) {
                        th = th10;
                        f0Var4 = f0VarS5;
                        if (f0Var4 != null && f0Var4.f487h) {
                            f0Var4.c();
                        }
                        throw th;
                    }
                } catch (Exception e25) {
                    e13 = e25;
                    f0VarS5 = null;
                } catch (Throwable th11) {
                    th = th11;
                    if (f0Var4 != null) {
                        f0Var4.c();
                    }
                    throw th;
                }
                break;
            case 16:
                String strZ = "";
                n5 n5Var12 = this.f2689b;
                ?? I = 0;
                I = 0;
                n5Var12.f18308u = false;
                if (n5Var12.f18293d == 0) {
                    n5Var12.f18293d = SMBClient.DEFAULT_PORT;
                }
                SmbConfig.Builder builderWithMultiProtocolNegotiate = SmbConfig.builder().withMultiProtocolNegotiate(true);
                TimeUnit timeUnit = TimeUnit.SECONDS;
                ?? r62 = 20;
                SMBClient sMBClient = new SMBClient(builderWithMultiProtocolNegotiate.withTimeout(20L, timeUnit).withSoTimeout(20L, timeUnit).build());
                AutoCloseable autoCloseable = null;
                try {
                } catch (Throwable th12) {
                    th = th12;
                }
                try {
                    try {
                        connectionConnect = sMBClient.connect(n5Var12.f18292c, n5Var12.f18293d);
                        try {
                            if (n5Var12.f18294e.isEmpty()) {
                                try {
                                    I = connectionConnect.authenticate(AuthenticationContext.guest());
                                    sessionAuthenticate = I;
                                } catch (Exception unused7) {
                                    Session sessionAuthenticate2 = connectionConnect.authenticate(new AuthenticationContext("guest", new char[0], null));
                                    I = "账号请输入：guest";
                                    if (sessionAuthenticate2 != null) {
                                        try {
                                            sessionAuthenticate2.close();
                                        } catch (Exception unused8) {
                                        }
                                    }
                                    connectionConnect.close();
                                    try {
                                        sMBClient.close();
                                        str = I;
                                    } catch (Exception unused9) {
                                        str = I;
                                    }
                                    zEquals = str.equals("协议识别出错");
                                    str2 = str;
                                    if (zEquals) {
                                    }
                                    if (str2.isEmpty()) {
                                    }
                                }
                            } else {
                                sessionAuthenticate = connectionConnect.authenticate(new AuthenticationContext(n5Var12.f18294e, n5Var12.f18295f.toCharArray(), n5Var12.f18309v));
                            }
                            if (sessionAuthenticate != null) {
                                try {
                                    sessionAuthenticate.close();
                                } catch (Exception unused10) {
                                }
                            }
                            if (connectionConnect != null) {
                                try {
                                    connectionConnect.close();
                                } catch (Exception unused11) {
                                }
                            }
                            try {
                                sMBClient.close();
                            } catch (Exception unused12) {
                            }
                            str = "";
                        } catch (Exception e26) {
                            e = e26;
                            I = qa.f.i(e);
                            if (0 != 0) {
                                try {
                                    autoCloseable.close();
                                } catch (Exception unused13) {
                                }
                            }
                            if (connectionConnect != null) {
                                connectionConnect.close();
                            }
                            sMBClient.close();
                            str = I;
                            zEquals = str.equals("协议识别出错");
                            str2 = str;
                            if (zEquals) {
                            }
                            if (str2.isEmpty()) {
                            }
                        }
                    } catch (Exception unused14) {
                    }
                } catch (Exception e27) {
                    e = e27;
                    connectionConnect = null;
                } catch (Throwable th13) {
                    th = th13;
                    r62 = 0;
                    if (0 != 0) {
                        try {
                            autoCloseable.close();
                        } catch (Exception unused15) {
                        }
                    }
                    if (r62 != 0) {
                        try {
                            r62.close();
                        } catch (Exception unused16) {
                        }
                    }
                    try {
                        sMBClient.close();
                        throw th;
                    } catch (Exception unused17) {
                        throw th;
                    }
                }
                zEquals = str.equals("协议识别出错");
                str2 = str;
                if (zEquals) {
                    n5Var12.f18308u = true;
                    try {
                        new t0(n5Var12.b() + "/").x();
                    } catch (Exception e28) {
                        e28.printStackTrace();
                        strZ = g.b.z(e28, new StringBuilder(""));
                        if (strZ.contains("network name cannot be found")) {
                            strZ = "找不到此共享名";
                        }
                        if (strZ.isEmpty()) {
                            strZ = "连接失败";
                        }
                    }
                    str2 = strZ;
                }
                if (str2.isEmpty()) {
                    bVar.b();
                    return;
                } else {
                    android.support.v4.media.session.a.B(str2, bVar);
                    return;
                }
            default:
                String strB = "";
                n5 n5Var13 = this.f2689b;
                r9.a aVarF = qa.g.f(n5Var13, 9L, 9L, 9L);
                if (!n5Var13.f18292c.endsWith("/")) {
                    n5Var13.f18292c = g.b.l(n5Var13.f18292c, "/", new StringBuilder());
                }
                try {
                    aVarF.c(n5Var13.f18292c);
                } catch (Exception e29) {
                    strB = da.b.b(e29, new StringBuilder(), "");
                    if (strB.isEmpty()) {
                        strB = "连接失败";
                    }
                }
                if (strB.isEmpty()) {
                    bVar.b();
                    return;
                } else {
                    android.support.v4.media.session.a.B(strB, bVar);
                    return;
                }
        }
    }

    public /* synthetic */ f(n5 n5Var, Object obj, int i10) {
        this.f2688a = i10;
        this.f2689b = n5Var;
    }

    public /* synthetic */ f(n5 n5Var, Object obj, Object obj2, int i10) {
        this.f2688a = i10;
        this.f2689b = n5Var;
    }
}
