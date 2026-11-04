package ba;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import com.yunpan.appmanage.bean.DownProgressBean;
import com.yunpan.appmanage.bean.WpPathBean;
import com.yunpan.appmanage.db.MyDb;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.URLEncoder;
import java.text.DecimalFormat;
import java.util.ArrayList;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.json.JSONException;
import org.json.JSONObject;
import x9.b6;
import x9.n5;

/* loaded from: classes.dex */
public final /* synthetic */ class e implements ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2684a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ WpPathBean f2685b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f2686c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ n5 f2687d;

    public /* synthetic */ e(WpPathBean wpPathBean, String str, n5 n5Var) {
        this.f2684a = 1;
        this.f2685b = wpPathBean;
        this.f2686c = str;
        this.f2687d = n5Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0310 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:209:? A[Catch: Exception -> 0x0328, SYNTHETIC, TRY_ENTER, TRY_LEAVE, TryCatch #8 {Exception -> 0x0328, blocks: (B:56:0x01b5, B:81:0x023d, B:148:0x0327, B:98:0x029c), top: B:172:0x01b5 }] */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void a(mc.b bVar) throws Exception {
        String strI;
        String strI2;
        InputStream inputStreamByteStream;
        String str;
        Throwable th2;
        String str2;
        Throwable th3;
        String str3;
        Throwable th4;
        Class<Throwable> cls;
        long j10;
        z7.s sVarG;
        String strI3;
        String str4 = "获取分享地址出错";
        String str5 = "addSuppressed";
        Class<Throwable> cls2 = Throwable.class;
        WpPathBean wpPathBean = this.f2685b;
        wpPathBean.isStopDown = false;
        String strI4 = "";
        wpPathBean.downUrl = "";
        n5 n5Var = this.f2687d;
        if (n5Var.f18292c.isEmpty()) {
            n5Var.f18292c = "https://pc.woozooo.com";
        }
        String strP = nh.b.P(n5Var.f18298i, g.b.l(n5Var.f18292c, "/doupload.php", new StringBuilder()), "task=22&file_id=" + wpPathBean.path, n5Var.f18292c + "/mydisk.php?item=files&action=index&u=" + n5Var.f18297h);
        if (strP.isEmpty()) {
            str4 = "出错：请刷新网盘目录";
        } else {
            try {
                sVarG = d.b.b0(strP).g();
            } catch (Exception unused) {
                strI = "";
                strI2 = strI;
            }
            if (sVarG.o("zt").e() != 1) {
                try {
                    try {
                        strI3 = sVarG.o("info").i();
                    } catch (Exception unused2) {
                        strI3 = sVarG.o("text").i();
                    }
                } catch (Exception unused3) {
                    strI3 = "";
                }
                if (strI3 == null || strI3.isEmpty() || strI3.equals("null")) {
                    strI3 = "获取分享地址出错";
                }
                if (strI3.contains("会员已过期")) {
                    strI3 = "蓝奏云：需会员才能使用  (推荐使用123网盘)";
                }
                bVar.d(new Exception(strI3));
                return;
            }
            strI = sVarG.o("info").g().o("is_newd").i();
            try {
                strI2 = sVarG.o("info").g().o("f_id").i();
                try {
                    strI4 = sVarG.o("info").g().o("pwd").i();
                } catch (Exception unused4) {
                }
            } catch (Exception unused5) {
                strI2 = "";
            }
            if (!strI.isEmpty() && !strI2.isEmpty()) {
                try {
                    r rVar = new r("分享页", strI + "/" + strI2, strI4);
                    ArrayList arrayListR = com.bumptech.glide.c.R(rVar);
                    if (arrayListR.isEmpty()) {
                        throw new Exception("获取文件失败");
                    }
                    i iVar = ((b6) arrayListR.get(0)).f18203a;
                    if (!((String) iVar.f2701d).contains("/file/")) {
                        iVar.f2701d = (String) ((b6) com.bumptech.glide.c.R(new r((String) iVar.f2701d, strI4, rVar.f2747i, 0)).get(0)).f18203a.f2701d;
                    }
                    String str6 = (String) iVar.f2701d;
                    wpPathBean.downUrl = str6;
                    ResponseBody responseBodyY = nh.b.Y(str6, (String) iVar.f2702e, rVar.f2747i);
                    String strSubstring = wpPathBean.name;
                    if (strSubstring.length() > 80) {
                        strSubstring = strSubstring.substring(strSubstring.length() - 80, strSubstring.length());
                    }
                    File file = new File(android.support.v4.media.session.a.u(new StringBuilder(), this.f2686c, "/", strSubstring));
                    if (file.exists() && file.delete()) {
                        MyDb.get().getFileInfoDao().delete(file.getPath());
                    }
                    try {
                        inputStreamByteStream = responseBodyY.byteStream();
                    } catch (Exception unused6) {
                        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                        com.yunpan.appmanage.util.j.f4033a.getClass();
                        com.yunpan.appmanage.util.k.e(file);
                    }
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                        try {
                            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStreamByteStream);
                            try {
                                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                                try {
                                    DownProgressBean downProgressBean = new DownProgressBean();
                                    downProgressBean.fileSize = responseBodyY.contentLength();
                                    byte[] bArr = new byte[PKIFailureInfo.signerNotTrusted];
                                    long j11 = 0;
                                    int i10 = 0;
                                    while (true) {
                                        int i11 = bufferedInputStream.read(bArr);
                                        str2 = -1;
                                        String str7 = -1;
                                        str = -1;
                                        try {
                                            try {
                                                try {
                                                    if (i11 != -1) {
                                                        String str8 = str5;
                                                        cls = cls2;
                                                        long j12 = j11 + i11;
                                                        try {
                                                            bufferedOutputStream.write(bArr, 0, i11);
                                                            bufferedOutputStream.flush();
                                                            int i12 = i10 + 1;
                                                            if (i12 > 2) {
                                                                downProgressBean.downSize = j12;
                                                                double d10 = j12;
                                                                j10 = j12;
                                                                double d11 = downProgressBean.fileSize;
                                                                Double.isNaN(d10);
                                                                Double.isNaN(d11);
                                                                downProgressBean.bfb = (int) Math.floor((d10 / d11) * 100.0d);
                                                                bVar.f(downProgressBean);
                                                                i12 = 0;
                                                            } else {
                                                                j10 = j12;
                                                            }
                                                            if (wpPathBean.isStopDown) {
                                                                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                                                                com.yunpan.appmanage.util.j.f4033a.getClass();
                                                                com.yunpan.appmanage.util.k.e(file);
                                                                bVar.d(new Exception("主动停止下载"));
                                                                bufferedOutputStream.close();
                                                                bufferedInputStream.close();
                                                                fileOutputStream.close();
                                                                if (inputStreamByteStream != null) {
                                                                    inputStreamByteStream.close();
                                                                    return;
                                                                }
                                                                return;
                                                            }
                                                            str5 = str8;
                                                            j11 = j10;
                                                            i10 = i12;
                                                            cls2 = cls;
                                                        } catch (Throwable th5) {
                                                            th = th5;
                                                            str3 = str8;
                                                            Throwable th6 = th;
                                                            try {
                                                                bufferedOutputStream.close();
                                                                cls2 = cls;
                                                                throw th6;
                                                            } catch (Throwable th7) {
                                                                try {
                                                                    cls2 = cls;
                                                                    try {
                                                                        try {
                                                                            cls2.getDeclaredMethod(str3, cls).invoke(th6, th7);
                                                                            throw th6;
                                                                        } catch (Throwable th8) {
                                                                            th = th8;
                                                                            th4 = th;
                                                                            str2 = str3;
                                                                            try {
                                                                                bufferedInputStream.close();
                                                                                throw th4;
                                                                            } catch (Throwable th9) {
                                                                                try {
                                                                                    try {
                                                                                        cls2.getDeclaredMethod(str2, cls2).invoke(th4, th9);
                                                                                        throw th4;
                                                                                    } catch (Throwable th10) {
                                                                                        th = th10;
                                                                                        th3 = th;
                                                                                        str = str2;
                                                                                        try {
                                                                                            fileOutputStream.close();
                                                                                            throw th3;
                                                                                        } catch (Throwable th11) {
                                                                                            try {
                                                                                                try {
                                                                                                    cls2.getDeclaredMethod(str, cls2).invoke(th3, th11);
                                                                                                    throw th3;
                                                                                                } catch (Throwable th12) {
                                                                                                    th = th12;
                                                                                                    th2 = th;
                                                                                                    str7 = str;
                                                                                                    if (inputStreamByteStream != null) {
                                                                                                    }
                                                                                                }
                                                                                            } catch (Exception unused7) {
                                                                                                throw th3;
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                } catch (Exception unused8) {
                                                                                    throw th4;
                                                                                }
                                                                            }
                                                                        }
                                                                    } catch (Exception unused9) {
                                                                        throw th6;
                                                                    }
                                                                } catch (Exception unused10) {
                                                                    cls2 = cls;
                                                                    throw th6;
                                                                } catch (Throwable th13) {
                                                                    th = th13;
                                                                    cls2 = cls;
                                                                    th4 = th;
                                                                    str2 = str3;
                                                                    bufferedInputStream.close();
                                                                    throw th4;
                                                                }
                                                            }
                                                        }
                                                    } else {
                                                        String path = file.getPath();
                                                        StringBuilder sb2 = new StringBuilder();
                                                        sb2.append("/");
                                                        DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                                        sb2.append(com.yunpan.appmanage.util.j.f4033a.f4041d);
                                                        sb2.append("/cache/");
                                                        if (!path.contains(sb2.toString())) {
                                                            MyDb.get().lambda$addFile_thread$1(file.getPath());
                                                        }
                                                        bufferedOutputStream.close();
                                                        bufferedInputStream.close();
                                                        fileOutputStream.close();
                                                        if (inputStreamByteStream != null) {
                                                            inputStreamByteStream.close();
                                                        }
                                                    }
                                                } catch (Throwable th14) {
                                                    th2 = th14;
                                                    cls2 = cls;
                                                    if (inputStreamByteStream != null) {
                                                        throw th2;
                                                    }
                                                    try {
                                                        inputStreamByteStream.close();
                                                        throw th2;
                                                    } catch (Throwable th15) {
                                                        try {
                                                            cls2.getDeclaredMethod(str7, cls2).invoke(th2, th15);
                                                            throw th2;
                                                        } catch (Exception unused11) {
                                                            throw th2;
                                                        }
                                                    }
                                                }
                                            } catch (Throwable th16) {
                                                th3 = th16;
                                                cls2 = cls;
                                                fileOutputStream.close();
                                                throw th3;
                                            }
                                        } catch (Throwable th17) {
                                            th4 = th17;
                                            cls2 = cls;
                                            bufferedInputStream.close();
                                            throw th4;
                                        }
                                    }
                                    bVar.b();
                                    return;
                                } catch (Throwable th18) {
                                    th = th18;
                                    str3 = str5;
                                    cls = cls2;
                                }
                            } catch (Throwable th19) {
                                th = th19;
                                str3 = "addSuppressed";
                            }
                        } catch (Throwable th20) {
                            th = th20;
                            str2 = "addSuppressed";
                        }
                    } catch (Throwable th21) {
                        th = th21;
                        str = "addSuppressed";
                    }
                } catch (Exception e7) {
                    e7.printStackTrace();
                    bVar.d(e7);
                    return;
                }
            }
        }
        android.support.v4.media.session.a.B(str4, bVar);
    }

    private final void b(mc.b bVar) throws JSONException {
        String string;
        WpPathBean wpPathBean = this.f2685b;
        String str = this.f2686c;
        String str2 = "出错";
        StringBuilder sb2 = new StringBuilder();
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        sb2.append(com.yunpan.appmanage.util.j.f4033a.X);
        sb2.append("/b/api/file/rename?");
        sb2.append(qf.c.n("/b/api/file/rename"));
        String string2 = sb2.toString();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("driveId", 0);
            jSONObject.put("fileId", Integer.valueOf(wpPathBean.path));
            jSONObject.put("fileName", str);
            jSONObject.put("duplicate", 1);
            jSONObject.put("RequestSource", (Object) null);
            string = jSONObject.toString();
        } catch (Exception unused) {
            string = "";
        }
        if (string.isEmpty()) {
            str2 = "组包出错";
        } else {
            String strR = qf.c.R(this.f2687d, string2, string, com.yunpan.appmanage.util.j.f4033a.W + "/?homeFilePath=" + wpPathBean.path);
            if (strR.isEmpty()) {
                str2 = "请求出错";
            } else {
                try {
                    z7.s sVarG = d.b.b0(strR).g();
                    if (sVarG.o("code").e() == 0) {
                        try {
                            wpPathBean.name = sVarG.q("data").q("Info").o("FileName").i();
                        } catch (Exception unused2) {
                            wpPathBean.name = str;
                        }
                        str2 = "";
                    } else {
                        String strI = sVarG.o("message").i();
                        if (strI == null || strI.isEmpty()) {
                            strI = "出错";
                        }
                        if (strI.contains("token is expired")) {
                            strI = "登录失效，请重新选中网盘";
                        }
                        str2 = strI;
                    }
                } catch (Exception unused3) {
                }
            }
        }
        if (str2.isEmpty()) {
            bVar.b();
        } else {
            android.support.v4.media.session.a.B(str2, bVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void c(mc.b bVar) throws Exception {
        ResponseBody responseBodyBody;
        Response responseA;
        File file;
        File file2;
        InputStream inputStreamByteStream;
        FileOutputStream fileOutputStream;
        BufferedOutputStream bufferedOutputStream;
        BufferedOutputStream bufferedOutputStream2;
        String string = Long.toString(System.currentTimeMillis());
        String strQ = s1.g.q(string);
        StringBuilder sb2 = new StringBuilder();
        WpPathBean wpPathBean = this.f2685b;
        sb2.append(wpPathBean.path);
        sb2.append("|");
        n5 n5Var = this.f2687d;
        sb2.append(n5Var.f18302n);
        String strQ2 = s1.g.q(sb2.toString());
        String strQ3 = s1.g.q(wpPathBean.path + "|" + string);
        wpPathBean.isStopDown = false;
        StringBuilder sb3 = new StringBuilder("https://api.feejii.com/ws/file/redirect?uuid=");
        sb3.append(n5Var.l);
        sb3.append("&devType=6&devCode=");
        android.support.v4.media.session.a.C(sb3, n5Var.l, "&devModel=chrome&devVersion=140&appVersion=&timestamp=", strQ, "&appToken=");
        android.support.v4.media.session.a.C(sb3, n5Var.f18300k, "&enable=1&downloadId=", strQ2, "&auth=");
        sb3.append(strQ3);
        wpPathBean.downUrl = sb3.toString();
        System.out.getClass();
        BufferedInputStream bufferedInputStream = null;
        try {
            l9.a aVar = new l9.a(wpPathBean.downUrl);
            k9.a aVar2 = aVar.f11017i;
            aVar2.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
            aVar2.b(RequestParameters.SUBRESOURCE_REFERER, "https://www.feejii.com/");
            aVar2.b("Accept-Language", "zh-CN,zh;q=0.9,en;q=0.8");
            responseA = aVar.a();
        } catch (Exception e7) {
            e = e7;
            responseBodyBody = null;
        }
        if (!responseA.isSuccessful()) {
            throw new Exception("请求出错1");
        }
        responseBodyBody = responseA.body();
        if (responseBodyBody == null) {
            try {
                throw new Exception("请求出错2");
            } catch (Exception e10) {
                e = e10;
                e.printStackTrace();
                responseA = null;
                if (responseA != null) {
                }
                android.support.v4.media.session.a.B("请求出错3", bVar);
                return;
            }
        }
        if (responseA != null || responseBodyBody == null) {
            android.support.v4.media.session.a.B("请求出错3", bVar);
            return;
        }
        String strSubstring = wpPathBean.name;
        if (strSubstring.length() > 80) {
            strSubstring = strSubstring.substring(strSubstring.length() - 80, strSubstring.length());
        }
        boolean z = wpPathBean.is_dir;
        String str = this.f2686c;
        if (z) {
            file = new File(str + "/" + strSubstring + ".rar");
        } else {
            file = new File(g.b.k(str, "/", strSubstring));
        }
        if (file.exists() && file.delete()) {
            MyDb.get().getFileInfoDao().delete(file.getPath());
        }
        try {
            inputStreamByteStream = responseBodyBody.byteStream();
        } catch (Exception unused) {
            file2 = file;
            inputStreamByteStream = null;
            fileOutputStream = null;
        }
        try {
            fileOutputStream = new FileOutputStream(file);
            try {
                BufferedInputStream bufferedInputStream2 = new BufferedInputStream(inputStreamByteStream);
                try {
                    bufferedOutputStream2 = new BufferedOutputStream(fileOutputStream);
                    try {
                        DownProgressBean downProgressBean = new DownProgressBean();
                        downProgressBean.fileSize = responseBodyBody.contentLength();
                        byte[] bArr = new byte[PKIFailureInfo.signerNotTrusted];
                        long j10 = 0;
                        int i10 = 0;
                        while (true) {
                            int i11 = bufferedInputStream2.read(bArr);
                            if (i11 != -1) {
                                file2 = file;
                                j10 += i11;
                                try {
                                    bufferedOutputStream2.write(bArr, 0, i11);
                                    bufferedOutputStream2.flush();
                                    i10++;
                                    if (i10 > 2) {
                                        downProgressBean.downSize = j10;
                                        double d10 = j10;
                                        double d11 = downProgressBean.fileSize;
                                        Double.isNaN(d10);
                                        Double.isNaN(d11);
                                        downProgressBean.bfb = (int) Math.floor((d10 / d11) * 100.0d);
                                        bVar.f(downProgressBean);
                                        i10 = 0;
                                    }
                                    if (wpPathBean.isStopDown) {
                                        q4.a.e(bufferedInputStream2);
                                        q4.a.e(bufferedOutputStream2);
                                        q4.a.e(fileOutputStream);
                                        q4.a.e(inputStreamByteStream);
                                        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                        com.yunpan.appmanage.util.j.f4033a.getClass();
                                        com.yunpan.appmanage.util.k.e(file2);
                                        bVar.d(new Exception("主动停止下载"));
                                        return;
                                    }
                                    file = file2;
                                } catch (Exception unused2) {
                                    bufferedInputStream = bufferedInputStream2;
                                    bufferedOutputStream = bufferedOutputStream2;
                                    android.support.v4.media.session.a.z(bufferedInputStream, bufferedOutputStream, fileOutputStream, inputStreamByteStream);
                                    DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                                    com.yunpan.appmanage.util.j.f4033a.getClass();
                                    com.yunpan.appmanage.util.k.e(file2);
                                    bVar.b();
                                }
                            } else {
                                File file3 = file;
                                q4.a.e(bufferedInputStream2);
                                q4.a.e(bufferedOutputStream2);
                                q4.a.e(fileOutputStream);
                                q4.a.e(inputStreamByteStream);
                                String path = file3.getPath();
                                StringBuilder sb4 = new StringBuilder();
                                sb4.append("/");
                                DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                sb4.append(com.yunpan.appmanage.util.j.f4033a.f4041d);
                                sb4.append("/cache/");
                                if (!path.contains(sb4.toString())) {
                                    MyDb.get().lambda$addFile_thread$1(file3.getPath());
                                }
                            }
                        }
                    } catch (Exception unused3) {
                        file2 = file;
                    }
                } catch (Exception unused4) {
                    file2 = file;
                    bufferedOutputStream2 = null;
                }
            } catch (Exception unused5) {
                file2 = file;
                bufferedOutputStream = 0;
            }
        } catch (Exception unused6) {
            file2 = file;
            fileOutputStream = null;
            bufferedOutputStream = fileOutputStream;
            android.support.v4.media.session.a.z(bufferedInputStream, bufferedOutputStream, fileOutputStream, inputStreamByteStream);
            DecimalFormat decimalFormat22 = com.yunpan.appmanage.util.k.f4034u0;
            com.yunpan.appmanage.util.j.f4033a.getClass();
            com.yunpan.appmanage.util.k.e(file2);
            bVar.b();
        }
    }

    private final void d(mc.b bVar) throws Exception {
        String str;
        n5 n5Var = this.f2687d;
        WpPathBean wpPathBean = this.f2685b;
        try {
            String str2 = "uuid=" + n5Var.l + "&devType=6&devCode=" + n5Var.l + "&devModel=chrome&devVersion=140&appVersion=&timestamp=" + s1.g.q(Long.toString(System.currentTimeMillis())) + "&appToken=" + n5Var.f18300k + "&extra=2";
            String strI = "";
            try {
                strI = wpPathBean.jsonObject.o(wpPathBean.is_dir ? "folderDesc" : "fileDesc").i();
            } catch (Exception unused) {
            }
            z7.s sVar = new z7.s();
            boolean z = wpPathBean.is_dir;
            String str3 = this.f2686c;
            if (z) {
                str = "https://api.feejii.com/app/file/folder/edit?" + str2;
                sVar.m("folderId", wpPathBean.path);
                sVar.m("folderName", str3);
                sVar.m("folderDesc", strI);
            } else {
                str = "https://api.feejii.com/app/file/edit?" + str2;
                sVar.m("fileId", wpPathBean.path);
                sVar.m("fileName", str3);
                sVar.m("fileDesc", strI);
            }
            z7.s sVarG = d.b.b0(s1.g.I(str, sVar.toString())).g();
            if (sVarG.o("code").e() != 200) {
                throw new Exception(sVarG.o("msg").i());
            }
            wpPathBean.name = str3;
            bVar.b();
        } catch (Exception e7) {
            bVar.d(e7);
        }
    }

    private final void e(mc.b bVar) throws Exception {
        String str;
        n5 n5Var = this.f2687d;
        WpPathBean wpPathBean = this.f2685b;
        try {
            String str2 = "uuid=" + n5Var.l + "&devType=6&devCode=" + n5Var.l + "&devModel=chrome&devVersion=140&appVersion=&timestamp=" + s1.g.q(Long.toString(System.currentTimeMillis())) + "&appToken=" + n5Var.f18300k + "&extra=2";
            z7.s sVar = new z7.s();
            boolean z = wpPathBean.is_dir;
            String str3 = this.f2686c;
            if (z) {
                str = "https://api.feejii.com/app/file/folder/edit?" + str2;
                sVar.m("folderId", wpPathBean.path);
                sVar.m("folderName", wpPathBean.name);
                sVar.m("folderDesc", str3);
            } else {
                str = "https://api.feejii.com/app/file/edit?" + str2;
                sVar.m("fileId", wpPathBean.path);
                sVar.m("fileName", wpPathBean.name);
                sVar.m("fileDesc", str3);
            }
            z7.s sVarG = d.b.b0(s1.g.I(str, sVar.toString())).g();
            if (sVarG.o("code").e() != 200) {
                throw new Exception(sVarG.o("msg").i());
            }
            wpPathBean.jsonObject.m(wpPathBean.is_dir ? "folderDesc" : "fileDesc", str3);
            bVar.b();
        } catch (Exception e7) {
            bVar.d(e7);
        }
    }

    private final void f(mc.b bVar) {
        String str;
        n5 n5Var = this.f2687d;
        WpPathBean wpPathBean = this.f2685b;
        String str2 = this.f2686c;
        String str3 = "/";
        str = "重命名失败";
        try {
            if (n5Var.f18311x.v(wpPathBean.path, str2)) {
                wpPathBean.name = str2;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(new File(wpPathBean.path).getParent());
                sb2.append("/");
                sb2.append(str2);
                if (!wpPathBean.is_dir) {
                    str3 = "";
                }
                sb2.append(str3);
                wpPathBean.path = sb2.toString();
                str = "";
            }
        } catch (Exception e7) {
            String strZ = g.b.z(e7, new StringBuilder(""));
            str = strZ.isEmpty() ? "重命名失败" : strZ;
            if (str.contains("Connection reset")) {
                str = "连接中断,请重新选中网盘";
            }
        }
        if (str.isEmpty()) {
            bVar.b();
        } else {
            android.support.v4.media.session.a.B(str, bVar);
        }
    }

    private final void h(mc.b bVar) {
        String str;
        n5 n5Var = this.f2687d;
        WpPathBean wpPathBean = this.f2685b;
        String str2 = this.f2686c;
        String str3 = "/";
        str = "重命名失败";
        try {
            if (n5Var.A.v(wpPathBean.path, str2)) {
                wpPathBean.name = str2;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(new File(wpPathBean.path).getParent());
                sb2.append("/");
                sb2.append(str2);
                if (!wpPathBean.is_dir) {
                    str3 = "";
                }
                sb2.append(str3);
                wpPathBean.path = sb2.toString();
                str = "";
            }
        } catch (Exception e7) {
            String strZ = g.b.z(e7, new StringBuilder(""));
            str = strZ.isEmpty() ? "重命名失败" : strZ;
            if (str.contains("Connection reset")) {
                str = "连接中断,请重新选中网盘";
            }
        }
        if (str.isEmpty()) {
            bVar.b();
        } else {
            android.support.v4.media.session.a.B(str, bVar);
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:97:0x01e4
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1178)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3, types: [com.hierynomus.smbj.connection.Connection] */
    /* JADX WARN: Type inference failed for: r11v4, types: [com.hierynomus.smbj.connection.Connection] */
    /* JADX WARN: Type inference failed for: r11v6, types: [com.hierynomus.smbj.connection.Connection] */
    /* JADX WARN: Type inference failed for: r2v0, types: [x9.n5] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10, types: [com.hierynomus.smbj.session.Session] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [com.hierynomus.smbj.session.Session] */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.hierynomus.smbj.session.Session] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    private final void i(mc.b r23) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 574
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ba.e.i(mc.b):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:155:0x03b0  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x03b4  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0440  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x05f7  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x05fe  */
    /* JADX WARN: Removed duplicated region for block: B:314:0x0318 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:319:0x035e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // ec.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void g(mc.b bVar) throws Exception {
        String str;
        String str2;
        String str3;
        ResponseBody responseBodyBody;
        Response responseA;
        String str4;
        String str5;
        File file;
        InputStream inputStreamByteStream;
        FileOutputStream fileOutputStream;
        BufferedOutputStream bufferedOutputStream;
        BufferedInputStream bufferedInputStream;
        BufferedInputStream bufferedInputStream2;
        DownProgressBean downProgressBean;
        byte[] bArr;
        int i10;
        long j10;
        z7.s sVar;
        String strEncode;
        String strI;
        String strEncode2;
        String string;
        String strP;
        String strP2;
        ResponseBody responseBodyBody2;
        Response responseA2;
        File file2;
        InputStream inputStreamByteStream2;
        FileOutputStream fileOutputStream2;
        BufferedOutputStream bufferedOutputStream2;
        BufferedInputStream bufferedInputStream3;
        byte[] bArr2;
        String str6 = "请求出错";
        n5 n5Var = this.f2687d;
        String strI2 = "";
        String strEncode3 = this.f2686c;
        WpPathBean wpPathBean = this.f2685b;
        switch (this.f2684a) {
            case 0:
                wpPathBean.isStopDown = false;
                wpPathBean.downUrl = "";
                try {
                    str3 = ".rar";
                    try {
                        if (wpPathBean.is_dir) {
                            try {
                                sVar = new z7.s();
                                str = "/";
                            } catch (Exception unused) {
                                str = "/";
                            }
                            try {
                                z7.o oVar = new z7.o();
                                str2 = strEncode3;
                                oVar.j(wpPathBean.path);
                                sVar.j("fileIds", oVar);
                                z7.s sVarG = d.b.b0(s1.g.H(n5Var, "https://api.guangyapan.com/scheduler/v1/create_packaging_task", sVar.toString())).g();
                                if (!sVarG.o("msg").i().toLowerCase().equals("success")) {
                                    throw new Exception(sVarG.o("msg").i());
                                }
                                String strI3 = sVarG.q("data").o("taskId").i();
                                z7.s sVar2 = new z7.s();
                                sVar2.m("taskId", strI3);
                                int i11 = 0;
                                while (true) {
                                    z7.s sVarG2 = d.b.b0(s1.g.H(n5Var, "https://api.guangyapan.com/scheduler/v1/query_packaging_task", sVar2.toString())).g();
                                    if (sVarG2.q("data").f19480a.containsKey("signedURL")) {
                                        wpPathBean.downUrl = sVarG2.q("data").o("signedURL").i();
                                    } else {
                                        Thread.sleep(300L);
                                        i11++;
                                        if (i11 >= 3) {
                                        }
                                    }
                                }
                            } catch (Exception unused2) {
                                str2 = strEncode3;
                                if (wpPathBean.downUrl.isEmpty()) {
                                }
                                android.support.v4.media.session.a.B(str4, bVar);
                                return;
                            }
                        } else {
                            str = "/";
                            str2 = strEncode3;
                            z7.s sVar3 = new z7.s();
                            sVar3.m("fileId", wpPathBean.path);
                            z7.s sVarG3 = d.b.b0(s1.g.H(n5Var, "https://api.guangyapan.com/userres/v1/get_res_download_url", sVar3.toString())).g();
                            if (!sVarG3.o("msg").i().toLowerCase().equals("success")) {
                                throw new Exception(sVarG3.o("msg").i());
                            }
                            wpPathBean.downUrl = sVarG3.q("data").o("signedURL").i();
                        }
                    } catch (Exception unused3) {
                    }
                } catch (Exception unused4) {
                    str = "/";
                    str2 = strEncode3;
                    str3 = ".rar";
                }
                if (wpPathBean.downUrl.isEmpty()) {
                    System.out.getClass();
                    try {
                        l9.a aVar = new l9.a(wpPathBean.downUrl);
                        k9.a aVar2 = aVar.f11017i;
                        aVar2.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
                        aVar2.b(RequestParameters.SUBRESOURCE_REFERER, "https://www.guangyapan.com/");
                        aVar2.b("Accept-Language", "zh-CN,zh;q=0.9,en;q=0.8");
                        responseA = aVar.a();
                    } catch (Exception e7) {
                        e = e7;
                        responseBodyBody = null;
                    }
                    if (!responseA.isSuccessful()) {
                        throw new Exception("请求出错1");
                    }
                    responseBodyBody = responseA.body();
                    if (responseBodyBody == null) {
                        try {
                            throw new Exception("请求出错2");
                        } catch (Exception e10) {
                            e = e10;
                            e.printStackTrace();
                            responseA = null;
                            if (responseA == null) {
                            }
                            str4 = "请求出错3";
                            android.support.v4.media.session.a.B(str4, bVar);
                            return;
                        }
                    }
                    if (responseA == null && responseBodyBody != null) {
                        String strSubstring = wpPathBean.name;
                        if (strSubstring.length() > 80) {
                            strSubstring = strSubstring.substring(strSubstring.length() - 80, strSubstring.length());
                        }
                        if (wpPathBean.is_dir) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(str2);
                            str5 = str;
                            sb2.append(str5);
                            sb2.append(strSubstring);
                            sb2.append(str3);
                            file = new File(sb2.toString());
                        } else {
                            str5 = str;
                            file = new File(g.b.k(str2, str5, strSubstring));
                        }
                        if (file.exists() && file.delete()) {
                            MyDb.get().getFileInfoDao().delete(file.getPath());
                        }
                        try {
                            inputStreamByteStream = responseBodyBody.byteStream();
                        } catch (Exception unused5) {
                            inputStreamByteStream = null;
                        }
                        try {
                            fileOutputStream = new FileOutputStream(file);
                            try {
                                bufferedInputStream2 = new BufferedInputStream(inputStreamByteStream);
                                try {
                                    bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                                } catch (Exception unused6) {
                                    bufferedInputStream = bufferedInputStream2;
                                    bufferedOutputStream = null;
                                }
                            } catch (Exception unused7) {
                                bufferedOutputStream = null;
                                bufferedInputStream = null;
                                android.support.v4.media.session.a.z(bufferedInputStream, bufferedOutputStream, fileOutputStream, inputStreamByteStream);
                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.j.f4033a.getClass();
                                com.yunpan.appmanage.util.k.e(file);
                                bVar.b();
                                return;
                            }
                        } catch (Exception unused8) {
                            fileOutputStream = null;
                            bufferedOutputStream = null;
                            bufferedInputStream = null;
                            android.support.v4.media.session.a.z(bufferedInputStream, bufferedOutputStream, fileOutputStream, inputStreamByteStream);
                            DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                            com.yunpan.appmanage.util.j.f4033a.getClass();
                            com.yunpan.appmanage.util.k.e(file);
                            bVar.b();
                            return;
                        }
                        try {
                            downProgressBean = new DownProgressBean();
                            downProgressBean.fileSize = responseBodyBody.contentLength();
                            bArr = new byte[PKIFailureInfo.signerNotTrusted];
                            i10 = 0;
                            j10 = 0;
                        } catch (Exception unused9) {
                            bufferedInputStream = bufferedInputStream2;
                            android.support.v4.media.session.a.z(bufferedInputStream, bufferedOutputStream, fileOutputStream, inputStreamByteStream);
                            DecimalFormat decimalFormat22 = com.yunpan.appmanage.util.k.f4034u0;
                            com.yunpan.appmanage.util.j.f4033a.getClass();
                            com.yunpan.appmanage.util.k.e(file);
                            bVar.b();
                            return;
                        }
                        do {
                            int i12 = bufferedInputStream2.read(bArr);
                            if (i12 == -1) {
                                q4.a.e(bufferedInputStream2);
                                q4.a.e(bufferedOutputStream);
                                q4.a.e(fileOutputStream);
                                q4.a.e(inputStreamByteStream);
                                String path = file.getPath();
                                StringBuilder sb3 = new StringBuilder();
                                sb3.append(str5);
                                DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                sb3.append(com.yunpan.appmanage.util.j.f4033a.f4041d);
                                sb3.append("/cache/");
                                if (!path.contains(sb3.toString())) {
                                    MyDb.get().lambda$addFile_thread$1(file.getPath());
                                }
                                bVar.b();
                                return;
                            }
                            long j11 = j10 + i12;
                            bufferedOutputStream.write(bArr, 0, i12);
                            bufferedOutputStream.flush();
                            i10++;
                            if (i10 > 2) {
                                downProgressBean.downSize = j11;
                                double d10 = j11;
                                j10 = j11;
                                double d11 = downProgressBean.fileSize;
                                Double.isNaN(d10);
                                Double.isNaN(d11);
                                downProgressBean.bfb = (int) Math.floor((d10 / d11) * 100.0d);
                                bVar.f(downProgressBean);
                                i10 = 0;
                            } else {
                                j10 = j11;
                            }
                        } while (!wpPathBean.isStopDown);
                        q4.a.e(bufferedInputStream2);
                        q4.a.e(bufferedOutputStream);
                        q4.a.e(fileOutputStream);
                        q4.a.e(inputStreamByteStream);
                        DecimalFormat decimalFormat4 = com.yunpan.appmanage.util.k.f4034u0;
                        com.yunpan.appmanage.util.j.f4033a.getClass();
                        com.yunpan.appmanage.util.k.e(file);
                        bVar.d(new Exception("主动停止下载"));
                        return;
                    }
                    str4 = "请求出错3";
                } else {
                    str4 = "无法获取下载地址";
                }
                android.support.v4.media.session.a.B(str4, bVar);
                return;
            case 1:
                try {
                    z7.s sVar4 = new z7.s();
                    sVar4.m("fileId", wpPathBean.path);
                    sVar4.m("newName", strEncode3);
                    z7.s sVarG4 = d.b.b0(s1.g.H(n5Var, "https://api.guangyapan.com/userres/v1/file/rename", sVar4.toString())).g();
                    if (!sVarG4.o("msg").i().toLowerCase().equals("success")) {
                        throw new Exception(sVarG4.o("msg").i());
                    }
                    wpPathBean.name = strEncode3;
                    bVar.b();
                    return;
                } catch (Exception e11) {
                    bVar.d(e11);
                    return;
                }
            case 2:
                if (n5Var.f18292c.isEmpty()) {
                    n5Var.f18292c = "https://pc.woozooo.com";
                }
                if (strEncode3.length() > 160) {
                    strEncode3 = strEncode3.substring(0, CarSettingID.Recv.BCS_ATS_DRV_MODE_REQ);
                }
                String strEncode4 = wpPathBean.name;
                try {
                    strEncode4 = URLEncoder.encode(strEncode4, HTTP.UTF_8);
                    strEncode3 = URLEncoder.encode(strEncode3, HTTP.UTF_8);
                } catch (Exception unused10) {
                }
                String strL = g.b.l(n5Var.f18292c, "/doupload.php", new StringBuilder());
                String strU = android.support.v4.media.session.a.u(new StringBuilder("task=11&file_id="), wpPathBean.path, "&desc=", strEncode3);
                if (wpPathBean.is_dir) {
                    StringBuilder sb4 = new StringBuilder("task=4&folder_id=");
                    android.support.v4.media.session.a.C(sb4, wpPathBean.path, "&folder_name=", strEncode4, "&folder_description=");
                    sb4.append(strEncode3);
                    strU = sb4.toString();
                }
                String strP3 = nh.b.P(n5Var.f18298i, strL, strU, n5Var.f18292c + "/mydisk.php?item=files&action=index&u=" + n5Var.f18297h);
                if (strP3.isEmpty()) {
                    strI2 = "出错";
                } else {
                    z7.s sVarG5 = d.b.b0(strP3).g();
                    if (sVarG5.o("zt").e() != 1) {
                        try {
                            try {
                                strI2 = sVarG5.o("info").i();
                            } catch (Exception unused11) {
                            }
                        } catch (Exception unused12) {
                            strI2 = sVarG5.o("text").i();
                        }
                        if (strI2 == null || strI2.isEmpty() || strI2.equals("null")) {
                        }
                    }
                }
                if (strI2.isEmpty()) {
                    bVar.b();
                    return;
                } else {
                    android.support.v4.media.session.a.B(strI2, bVar);
                    return;
                }
            case 3:
                a(bVar);
                return;
            case 4:
                if (n5Var.f18292c.isEmpty()) {
                    n5Var.f18292c = "https://pc.woozooo.com";
                }
                try {
                    strEncode = URLEncoder.encode(strEncode3, HTTP.UTF_8);
                } catch (Exception unused13) {
                    strEncode = strEncode3;
                }
                String strL2 = g.b.l(n5Var.f18292c, "/doupload.php", new StringBuilder());
                String str7 = n5Var.f18292c + "/mydisk.php?item=files&action=index&u=" + n5Var.f18297h;
                if (wpPathBean.is_dir) {
                    try {
                        strP = nh.b.P(n5Var.f18298i, strL2, "task=18&folder_id=" + wpPathBean.path, str7);
                    } catch (Exception unused14) {
                        strI = "";
                    }
                    if (strP.isEmpty()) {
                        if (str6.isEmpty()) {
                            bVar.b();
                            return;
                        } else {
                            android.support.v4.media.session.a.B(str6, bVar);
                            return;
                        }
                    }
                    z7.s sVarG6 = d.b.b0(strP).g();
                    if (sVarG6.o("zt").e() == 1) {
                        strI = sVarG6.o("info").g().o("des").i();
                        try {
                            strI = strI.replace("&lt;", "<").replace("&gt;", ">");
                            strEncode2 = strI.replace("&amp;", "&").replace("&quot;", "\"");
                        } catch (Exception unused15) {
                            strEncode2 = strI;
                            if (!strEncode2.isEmpty()) {
                            }
                            StringBuilder sb5 = new StringBuilder("task=4&folder_id=");
                            android.support.v4.media.session.a.C(sb5, wpPathBean.path, "&folder_name=", strEncode, "&folder_description=");
                            sb5.append(strEncode2);
                            string = sb5.toString();
                            strP2 = nh.b.P(n5Var.f18298i, strL2, string, str7);
                            if (!strP2.isEmpty()) {
                            }
                            if (str6.isEmpty()) {
                            }
                        }
                    } else {
                        strEncode2 = "";
                    }
                    if (!strEncode2.isEmpty()) {
                        try {
                            strEncode2 = URLEncoder.encode(strEncode2, HTTP.UTF_8);
                        } catch (Exception unused16) {
                        }
                    }
                    StringBuilder sb52 = new StringBuilder("task=4&folder_id=");
                    android.support.v4.media.session.a.C(sb52, wpPathBean.path, "&folder_name=", strEncode, "&folder_description=");
                    sb52.append(strEncode2);
                    string = sb52.toString();
                } else {
                    string = "task=46&file_id=" + wpPathBean.path + "&file_name=" + strEncode + "&type=2";
                }
                strP2 = nh.b.P(n5Var.f18298i, strL2, string, str7);
                if (!strP2.isEmpty()) {
                    try {
                        z7.s sVarG7 = d.b.b0(strP2).g();
                        if (sVarG7.o("zt").e() == 1) {
                            wpPathBean.name = strEncode3;
                        } else {
                            try {
                                try {
                                    strI2 = sVarG7.o("info").i();
                                } catch (Exception unused17) {
                                }
                            } catch (Exception unused18) {
                                strI2 = sVarG7.o("text").i();
                            }
                            if (strI2 == null || strI2.isEmpty() || strI2.equals("null")) {
                                strI2 = "出错";
                            }
                            if (strI2.contains("会员已过期")) {
                                str6 = "蓝奏云：需会员才能改文件名  (推荐使用123网盘)";
                            }
                        }
                        str6 = strI2;
                    } catch (Exception unused19) {
                        str6 = "修改出错";
                    }
                }
                if (str6.isEmpty()) {
                }
                break;
            case 5:
                wpPathBean.isStopDown = false;
                wpPathBean.downUrl = "";
                try {
                    qf.c.x(n5Var, wpPathBean);
                    if (!wpPathBean.downUrl.startsWith("http")) {
                        bVar.d(new Exception("获取下载地址失败"));
                    }
                    try {
                        l9.a aVar3 = new l9.a(wpPathBean.downUrl);
                        k9.a aVar4 = aVar3.f11017i;
                        aVar4.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
                        aVar4.b(RequestParameters.SUBRESOURCE_REFERER, wpPathBean.downUrlReferer);
                        aVar4.b("Accept-Language", "zh-CN,zh;q=0.9,en;q=0.8");
                        responseA2 = aVar3.a();
                    } catch (Exception unused20) {
                        responseBodyBody2 = null;
                    }
                    if (!responseA2.isSuccessful()) {
                        throw new Exception("请求出错");
                    }
                    responseBodyBody2 = responseA2.body();
                    if (responseBodyBody2 == null) {
                        try {
                            throw new Exception("请求出错");
                        } catch (Exception unused21) {
                            responseA2 = null;
                            if (responseA2 != null) {
                            }
                            android.support.v4.media.session.a.B("请求出错", bVar);
                            return;
                        }
                    }
                    if (responseA2 != null || responseBodyBody2 == null) {
                        android.support.v4.media.session.a.B("请求出错", bVar);
                        return;
                    }
                    String strSubstring2 = wpPathBean.name;
                    if (strSubstring2.length() > 80) {
                        strSubstring2 = strSubstring2.substring(strSubstring2.length() - 80, strSubstring2.length());
                    }
                    if (wpPathBean.is_dir) {
                        file2 = new File(strEncode3 + "/" + strSubstring2 + ".rar");
                    } else {
                        file2 = new File(g.b.k(strEncode3, "/", strSubstring2));
                    }
                    if (file2.exists() && file2.delete()) {
                        MyDb.get().getFileInfoDao().delete(file2.getPath());
                    }
                    try {
                        inputStreamByteStream2 = responseBodyBody2.byteStream();
                    } catch (Exception unused22) {
                        inputStreamByteStream2 = null;
                    }
                    try {
                        fileOutputStream2 = new FileOutputStream(file2);
                    } catch (Exception unused23) {
                        fileOutputStream2 = null;
                        bufferedOutputStream2 = null;
                        bufferedInputStream3 = null;
                        android.support.v4.media.session.a.z(bufferedInputStream3, bufferedOutputStream2, fileOutputStream2, inputStreamByteStream2);
                        com.yunpan.appmanage.util.j.f4033a.getClass();
                        com.yunpan.appmanage.util.k.e(file2);
                        bVar.b();
                        return;
                    }
                    try {
                        BufferedInputStream bufferedInputStream4 = new BufferedInputStream(inputStreamByteStream2);
                        try {
                            bufferedOutputStream2 = new BufferedOutputStream(fileOutputStream2);
                            try {
                                DownProgressBean downProgressBean2 = new DownProgressBean();
                                downProgressBean2.fileSize = responseBodyBody2.contentLength();
                                byte[] bArr3 = new byte[PKIFailureInfo.signerNotTrusted];
                                int i13 = 0;
                                long j12 = 0;
                                while (true) {
                                    int i14 = bufferedInputStream4.read(bArr3);
                                    if (i14 != -1) {
                                        long j13 = j12 + i14;
                                        bufferedOutputStream2.write(bArr3, 0, i14);
                                        bufferedOutputStream2.flush();
                                        i13++;
                                        if (i13 > 2) {
                                            downProgressBean2.downSize = j13;
                                            double d12 = j13;
                                            bArr2 = bArr3;
                                            double d13 = downProgressBean2.fileSize;
                                            Double.isNaN(d12);
                                            Double.isNaN(d13);
                                            downProgressBean2.bfb = (int) Math.floor((d12 / d13) * 100.0d);
                                            bVar.f(downProgressBean2);
                                            i13 = 0;
                                        } else {
                                            bArr2 = bArr3;
                                        }
                                        if (wpPathBean.isStopDown) {
                                            q4.a.e(bufferedInputStream4);
                                            q4.a.e(bufferedOutputStream2);
                                            q4.a.e(fileOutputStream2);
                                            q4.a.e(inputStreamByteStream2);
                                            com.yunpan.appmanage.util.j.f4033a.getClass();
                                            com.yunpan.appmanage.util.k.e(file2);
                                            bVar.d(new Exception("主动停止下载"));
                                            return;
                                        }
                                        j12 = j13;
                                        bArr3 = bArr2;
                                    } else {
                                        q4.a.e(bufferedInputStream4);
                                        q4.a.e(bufferedOutputStream2);
                                        q4.a.e(fileOutputStream2);
                                        q4.a.e(inputStreamByteStream2);
                                        if (!file2.getPath().contains("/" + com.yunpan.appmanage.util.j.f4033a.f4041d + "/cache/")) {
                                            MyDb.get().lambda$addFile_thread$1(file2.getPath());
                                        }
                                    }
                                }
                            } catch (Exception unused24) {
                                bufferedInputStream3 = bufferedInputStream4;
                                android.support.v4.media.session.a.z(bufferedInputStream3, bufferedOutputStream2, fileOutputStream2, inputStreamByteStream2);
                                com.yunpan.appmanage.util.j.f4033a.getClass();
                                com.yunpan.appmanage.util.k.e(file2);
                                bVar.b();
                                return;
                            }
                        } catch (Exception unused25) {
                            bufferedInputStream3 = bufferedInputStream4;
                            bufferedOutputStream2 = null;
                        }
                    } catch (Exception unused26) {
                        bufferedOutputStream2 = null;
                        bufferedInputStream3 = null;
                        android.support.v4.media.session.a.z(bufferedInputStream3, bufferedOutputStream2, fileOutputStream2, inputStreamByteStream2);
                        com.yunpan.appmanage.util.j.f4033a.getClass();
                        com.yunpan.appmanage.util.k.e(file2);
                        bVar.b();
                        return;
                    }
                } catch (Exception e12) {
                    bVar.d(e12);
                    return;
                }
                break;
            case 6:
                b(bVar);
                return;
            case 7:
                c(bVar);
                return;
            case 8:
                d(bVar);
                return;
            case 9:
                e(bVar);
                return;
            case 10:
                f(bVar);
                return;
            case 11:
                h(bVar);
                return;
            case 12:
                i(bVar);
                return;
            default:
                n5 n5Var2 = this.f2687d;
                try {
                    r9.a aVarF = qa.g.f(n5Var2, 16L, 16L, 16L);
                    String strSubstring3 = wpPathBean.path;
                    if (!strSubstring3.equals(n5Var2.f18292c) && wpPathBean.is_dir) {
                        String str8 = wpPathBean.path;
                        strSubstring3 = str8.substring(0, str8.length() - 1);
                    }
                    String str9 = strSubstring3.substring(0, strSubstring3.lastIndexOf("/")) + "/" + strEncode3;
                    System.out.getClass();
                    aVarF.d(wpPathBean.path, str9);
                    wpPathBean.name = strEncode3;
                    wpPathBean.path = str9;
                    if (wpPathBean.is_dir) {
                        wpPathBean.path += "/";
                    }
                } catch (Exception e13) {
                    strI2 = g.b.z(e13, new StringBuilder(""));
                    if (strI2.isEmpty()) {
                        strI2 = "重命名失败";
                    }
                }
                if (strI2.isEmpty()) {
                    bVar.b();
                    return;
                } else {
                    android.support.v4.media.session.a.B(strI2, bVar);
                    return;
                }
        }
    }

    public /* synthetic */ e(WpPathBean wpPathBean, n5 n5Var, String str, int i10) {
        this.f2684a = i10;
        this.f2685b = wpPathBean;
        this.f2687d = n5Var;
        this.f2686c = str;
    }

    public /* synthetic */ e(n5 n5Var, WpPathBean wpPathBean, String str, int i10) {
        this.f2684a = i10;
        this.f2687d = n5Var;
        this.f2685b = wpPathBean;
        this.f2686c = str;
    }
}
