package ba;

import ce.t0;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import com.hierynomus.msdtyp.AccessMask;
import com.hierynomus.msfscc.FileAttributes;
import com.hierynomus.mssmb2.SMB2CreateDisposition;
import com.hierynomus.mssmb2.SMB2CreateOptions;
import com.hierynomus.mssmb2.SMB2ShareAccess;
import com.hierynomus.smbj.SMBClient;
import com.hierynomus.smbj.SmbConfig;
import com.hierynomus.smbj.auth.AuthenticationContext;
import com.hierynomus.smbj.share.DiskEntry;
import com.hierynomus.smbj.share.DiskShare;
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
import java.util.HashSet;
import java.util.concurrent.TimeUnit;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
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

    public /* synthetic */ e(WpPathBean r22, String r32, n5 r4) {
        this.f2684a = 1;
        this.f2685b = r22;
        this.f2686c = r32;
        this.f2687d = r4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v8 */
    private final void a(mc.b r20) {
        String r02 = "获取分享地址出错";
        String r62 = "addSuppressed";
        Class<Throwable> r72 = Throwable.class;
        WpPathBean r82 = this.f2685b;
        r82.isStopDown = false;
        String r92 = "";
        r82.downUrl = "";
        n5 r10 = this.f2687d;
        if (r10.f18292c.isEmpty() == false) goto L5;
        r10.f18292c = "https://pc.woozooo.com";
    L5:
        String r102 = nh.b.P(r10.f18298i, g.b.l(r10.f18292c, "/doupload.php", new StringBuilder()), "task=22&file_id=" + r82.path, r10.f18292c + "/mydisk.php?item=files&action=index&u=" + r10.f18297h);
        if (r102.isEmpty() == false) goto L189;
        r02 = "出错：请刷新网盘目录";
    L8:
        android.support.v4.media.session.a.B(r02, r20);
        return;
    L189:
        z7.s r103 = d.b.b0(r102).g();     // Catch: Exception -> L18
        if (r103.o("zt").e() != 1) goto L176;
        String r11 = r103.o("info").g().o("is_newd").i();     // Catch: Exception -> L18
        String r13 = r103.o("info").g().o("f_id").i();     // Catch: Exception -> L17
        r92 = r103.o("info").g().o("pwd").i();     // Catch: Exception -> L16
    L36:
        if (r11.isEmpty() == true) goto L8;
        if (r13.isEmpty() == true) goto L8;
        r r03 = new r("分享页", r11 + "/" + r13, r92);     // Catch: Exception -> L45
        ArrayList r104 = com.bumptech.glide.c.R(r03);     // Catch: Exception -> L45
        if (r104.isEmpty() == true) goto L152;
        i r105 = ((b6) r104.get(0)).f18203a;     // Catch: Exception -> L45
        if (((String) r105.f2701d).contains("/file/") == true) goto L47;
        r105.f2701d = (String) ((b6) com.bumptech.glide.c.R(new r((String) r105.f2701d, r92, r03.f2747i, 0)).get(0)).f18203a.f2701d;     // Catch: Exception -> L45
    L47:
        String r93 = (String) r105.f2701d;     // Catch: Exception -> L45
        r82.downUrl = r93;     // Catch: Exception -> L45
        ResponseBody r04 = nh.b.Y(r93, (String) r105.f2702e, r03.f2747i);     // Catch: Exception -> L45
        String r94 = r82.name;
        if (r94.length() <= 80) goto L51;
        r94 = r94.substring(r94.length() - 80, r94.length());
    L51:
        File r106 = new File(android.support.v4.media.session.a.u(new StringBuilder(), this.f2686c, "/", r94));
        if (r106.exists() == true) goto L54;
    L172:
        InputStream r95 = r04.byteStream();     // Catch: Exception -> L149
        FileOutputStream r112 = new FileOutputStream(r106);     // Catch: Throwable -> L140
        BufferedInputStream r12 = new BufferedInputStream(r95);     // Catch: Throwable -> L128
        BufferedOutputStream r132 = new BufferedOutputStream(r112);     // Catch: Throwable -> L116
        DownProgressBean r14 = new DownProgressBean();     // Catch: Throwable -> L100
        r14.fileSize = r04.contentLength();     // Catch: Throwable -> L100
        byte[] r05 = new byte[PKIFailureInfo.signerNotTrusted];     // Catch: Throwable -> L100
        long r32 = 0;
        int r16 = 0;
    L61:
        int r15 = r12.read(r05);     // Catch: Throwable -> L100
        String r17 = -1;
        String r18 = -1;
        String r19 = -1;
        if (r15 == (-1)) goto L91;
        String r110 = r62;
        Class<Throwable> r182 = r72;
        long r33 = r32 + r15;
        r132.write(r05, 0, r15);     // Catch: Throwable -> L71
        r132.flush();     // Catch: Throwable -> L71
        int r73 = r16 + 1;     // Catch: Throwable -> L71
        if (r73 <= 2) goto L73;
        r14.downSize = r33;     // Catch: Throwable -> L71
        double r63 = r33;
        long r162 = r33;
        double r34 = r14.fileSize;     // Catch: Throwable -> L71
        Double.isNaN(r63);
        Double.isNaN(r34);
        r14.bfb = (int) Math.floor((r63 / r34) * 100.0d);     // Catch: Throwable -> L71
        r20.f(r14);     // Catch: Throwable -> L71
        r73 = 0;
    L75:
        if (r82.isStopDown == true) goto L76;
        r62 = r110;
        r32 = r162;
        r16 = r73;
        r72 = r182;
        goto L61
    L76:
        DecimalFormat r06 = com.yunpan.appmanage.util.k.f4034u0;     // Catch: Throwable -> L71
        com.yunpan.appmanage.util.j.f4033a.getClass();     // Catch: Throwable -> L71
        com.yunpan.appmanage.util.k.e(r106);     // Catch: Throwable -> L71
        r20.d(new Exception("主动停止下载"));     // Catch: Throwable -> L71
        r132.close();     // Catch: Throwable -> L87
        r12.close();     // Catch: Throwable -> L85
        r112.close();     // Catch: Throwable -> L83
        if (r95 == null) goto L213;
        r95.close();     // Catch: Exception -> L149
        return;
    L213:
        return;
    L73:
        r162 = r33;
    L71:
        th = th;
        String r111 = r110;
    L70:
        Throwable r35 = th;
        r132.close();     // Catch: Throwable -> L104
    L103:
        r72 = r182;
        throw r35;     // Catch: Throwable -> L114
    L114:
        th = th;
    L112:
        Throwable r36 = th;
        r17 = r111;
    L187:
        r12.close();     // Catch: Throwable -> L120
        throw r36;     // Catch: Throwable -> L126
    L126:
        th = th;
    L124:
        Throwable r37 = th;
        r19 = r17;
    L169:
        r112.close();     // Catch: Throwable -> L132
        throw r37;     // Catch: Throwable -> L138
    L138:
        th = th;
    L136:
        Throwable r38 = th;
        r18 = r19;
    L142:
        if (r95 == null) goto L209;
        r95.close();     // Catch: Throwable -> L145
        throw r38;     // Catch: Exception -> L149
    L145:
        th = move-exception;
        r72.getDeclaredMethod(r18, new Class[]{r72}).invoke(r38, new Object[]{th});     // Catch: Exception -> L155
        throw r38;     // Catch: Exception -> L149
    L211:
        throw r38;     // Catch: Exception -> L149
    L209:
        throw r38;     // Catch: Exception -> L149
    L132:
        th = move-exception;
        r72.getDeclaredMethod(r19, new Class[]{r72}).invoke(r37, new Object[]{th});     // Catch: Exception -> L156 Throwable -> L138
        throw r37;     // Catch: Throwable -> L138
    L208:
        throw r37;     // Catch: Throwable -> L138
    L120:
        th = move-exception;
        r72.getDeclaredMethod(r17, new Class[]{r72}).invoke(r36, new Object[]{th});     // Catch: Exception -> L157 Throwable -> L126
        throw r36;     // Catch: Throwable -> L126
    L206:
        throw r36;     // Catch: Throwable -> L126
    L104:
        th = move-exception;
        r72 = r182;
        r72.getDeclaredMethod(r111, new Class[]{r182}).invoke(r35, new Object[]{th});     // Catch: Exception -> L159 Throwable -> L114
        throw r35;     // Catch: Throwable -> L114
    L204:
        throw r35;     // Catch: Throwable -> L114
    L110:
        th = th;
        r72 = r182;
        goto L112
    L91:
        String r07 = r106.getPath();     // Catch: Throwable -> L71
        StringBuilder r39 = new StringBuilder();     // Catch: Throwable -> L71
        r39.append("/");     // Catch: Throwable -> L71
        DecimalFormat r4 = com.yunpan.appmanage.util.k.f4034u0;     // Catch: Throwable -> L71
        r39.append(com.yunpan.appmanage.util.j.f4033a.f4041d);     // Catch: Throwable -> L71
        r39.append("/cache/");     // Catch: Throwable -> L71
        if (r07.contains(r39.toString()) == true) goto L94;
        MyDb.get().addFile(r106.getPath());     // Catch: Throwable -> L71
    L94:
        r132.close();     // Catch: Throwable -> L87
        r12.close();     // Catch: Throwable -> L85
        r112.close();     // Catch: Throwable -> L83
        if (r95 == null) goto L150;
        r95.close();     // Catch: Exception -> L149
    L150:
        r20.b();
        return;
    L83:
        th = move-exception;
        r38 = th;
        r72 = r182;
    L85:
        th = move-exception;
        r37 = th;
        r72 = r182;
    L87:
        th = move-exception;
        r36 = th;
        r72 = r182;
    L100:
        th = th;
        r111 = r62;
        r182 = r72;
    L116:
        th = th;
        r111 = "addSuppressed";
    L128:
        th = th;
        r17 = "addSuppressed";
    L140:
        th = th;
        r19 = "addSuppressed";
    L149:
        DecimalFormat r08 = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.j.f4033a.getClass();
        com.yunpan.appmanage.util.k.e(r106);
        goto L150
    L54:
        if (r106.delete() == false) goto L172;
        MyDb.get().getFileInfoDao().delete(r106.getPath());
        goto L172
    L152:
        throw new Exception("获取文件失败");     // Catch: Exception -> L45
    L45:
        e = move-exception;
        e.printStackTrace();
        r20.d(e);
        return;
    L17:
        r13 = "";
        goto L36
    L176:
        String r107 = r103.o("info").i();     // Catch: Exception -> L21
    L24:
        if (r107 != null) goto L26;
    L29:
        r107 = "获取分享地址出错";
    L31:
        if (r107.contains("会员已过期") == false) goto L33;
        r107 = "蓝奏云：需会员才能使用  (推荐使用123网盘)";
    L33:
        r20.d(new Exception(r107));     // Catch: Exception -> L18
        return;
    L26:
        if (r107.isEmpty() == true) goto L29;
        if (r107.equals("null") == false) goto L31;
    L21:
        r107 = r103.o("text").i();     // Catch: Exception -> L23
    L23:
        r107 = "";
    L18:
        r11 = "";
        r13 = r11;
        goto L36
    }

    private final void b(mc.b r92) {
        WpPathBean r02 = this.f2685b;
        String r12 = this.f2686c;
        String r22 = "出错";
        StringBuilder r4 = new StringBuilder();
        DecimalFormat r5 = com.yunpan.appmanage.util.k.f4034u0;
        r4.append(com.yunpan.appmanage.util.j.f4033a.X);
        r4.append("/b/api/file/rename?");
        r4.append(qf.c.n("/b/api/file/rename"));
        String r42 = r4.toString();
        JSONObject r52 = new JSONObject();     // Catch: Exception -> L5
        r52.put("driveId", 0);     // Catch: Exception -> L5
        r52.put("fileId", Integer.valueOf(r02.path));     // Catch: Exception -> L5
        r52.put("fileName", r12);     // Catch: Exception -> L5
        r52.put("duplicate", 1);     // Catch: Exception -> L5
        r52.put("RequestSource", null);     // Catch: Exception -> L5
        String r53 = r52.toString();     // Catch: Exception -> L5
    L7:
        if (r53.isEmpty() == false) goto L9;
        r22 = "组包出错";
    L29:
        if (r22.isEmpty() == false) goto L31;
        r92.b();
        return;
    L31:
        android.support.v4.media.session.a.B(r22, r92);
        return;
    L9:
        String r43 = qf.c.R(this.f2687d, r42, r53, com.yunpan.appmanage.util.j.f4033a.W + "/?homeFilePath=" + r02.path);
        if (r43.isEmpty() == false) goto L33;
        r22 = "请求出错";
        goto L29
    L33:
        z7.s r44 = d.b.b0(r43).g();     // Catch: Exception -> L18
        if (r44.o("code").e() == 0) goto L34;
        String r03 = r44.o("message").i();     // Catch: Exception -> L18
        if (r03 != null) goto L22;
    L23:
        r03 = "出错";
    L25:
        if (r03.contains("token is expired") == false) goto L27;
        r03 = "登录失效，请重新选中网盘";
    L27:
        r22 = r03;
        goto L29
    L22:
        if (r03.isEmpty() == false) goto L25;
    L34:
        r02.name = r44.q("data").q("Info").o("FileName").i();     // Catch: Exception -> L16
    L17:
        r22 = "";
        goto L29
    L16:
        r02.name = r12;     // Catch: Exception -> L18
    L5:
        r53 = "";
        goto L7
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void c(mc.b r18) {
        String r02 = Long.toString(System.currentTimeMillis());
        String r32 = s1.g.q(r02);
        StringBuilder r4 = new StringBuilder();
        WpPathBean r5 = this.f2685b;
        r4.append(r5.path);
        r4.append("|");
        n5 r72 = this.f2687d;
        r4.append(r72.f18302n);
        String r42 = s1.g.q(r4.toString());
        String r03 = s1.g.q(r5.path + "|" + r02);
        r5.isStopDown = false;
        StringBuilder r82 = new StringBuilder("https://api.feejii.com/ws/file/redirect?uuid=");
        r82.append(r72.l);
        r82.append("&devType=6&devCode=");
        android.support.v4.media.session.a.C(r82, r72.l, "&devModel=chrome&devVersion=140&appVersion=&timestamp=", r32, "&appToken=");
        android.support.v4.media.session.a.C(r82, r72.f18300k, "&enable=1&downloadId=", r42, "&auth=");
        r82.append(r03);
        r5.downUrl = r82.toString();
        System.out.getClass();
        BufferedInputStream r33 = null;
        l9.a r43 = new l9.a(r5.downUrl);     // Catch: Exception -> L12
        k9.a r04 = r43.f11017i;     // Catch: Exception -> L12
        r04.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");     // Catch: Exception -> L12
        r04.b(RequestParameters.SUBRESOURCE_REFERER, "https://www.feejii.com/");     // Catch: Exception -> L12
        r04.b("Accept-Language", "zh-CN,zh;q=0.9,en;q=0.8");     // Catch: Exception -> L12
        Response r05 = r43.a();     // Catch: Exception -> L12
        if (r05.isSuccessful() == false) goto L15;
        ResponseBody r44 = r05.body();     // Catch: Exception -> L12
        if (r44 == null) goto L76;
    L17:
        if (r05 == null) goto L63;
        if (r44 == null) goto L63;
        String r06 = r5.name;
        if (r06.length() <= 80) goto L23;
        r06 = r06.substring(r06.length() - 80, r06.length());
    L23:
        boolean r73 = r5.is_dir;
        String r83 = this.f2686c;
        if (r73 == false) goto L26;
        File r74 = new File(r83 + "/" + r06 + ".rar");
    L28:
        if (r74.exists() == true) goto L30;
    L68:
        InputStream r07 = r44.byteStream();     // Catch: Exception -> L60
        FileOutputStream r84 = new FileOutputStream(r74);     // Catch: Exception -> L58
        BufferedInputStream r10 = new BufferedInputStream(r07);     // Catch: Exception -> L57
        BufferedOutputStream r11 = new BufferedOutputStream(r84);     // Catch: Exception -> L56
        DownProgressBean r34 = new DownProgressBean();     // Catch: Exception -> L55
        r34.fileSize = r44.contentLength();     // Catch: Exception -> L55
        byte[] r45 = new byte[PKIFailureInfo.signerNotTrusted];     // Catch: Exception -> L55
        long r12 = 0;
        int r14 = 0;
    L37:
        int r15 = r10.read(r45);     // Catch: Exception -> L55
        if (r15 == (-1)) goto L51;
        File r16 = r74;
        r12 = r12 + r15;
        r11.write(r45, 0, r15);     // Catch: Exception -> L65
        r11.flush();     // Catch: Exception -> L65
        r14 = r14 + 1;     // Catch: Exception -> L65
        if (r14 <= 2) goto L48;
        r34.downSize = r12;     // Catch: Exception -> L65
        double r142 = r12;
        double r62 = r34.fileSize;     // Catch: Exception -> L65
        Double.isNaN(r142);
        Double.isNaN(r62);
        r34.bfb = (int) Math.floor((r142 / r62) * 100.0d);     // Catch: Exception -> L65
        r18.f(r34);     // Catch: Exception -> L65
        r14 = 0;
    L48:
        if (r5.isStopDown == true) goto L49;
        r74 = r16;
        goto L37
    L49:
        q4.a.e(r10);     // Catch: Exception -> L65
        q4.a.e(r11);     // Catch: Exception -> L65
        q4.a.e(r84);     // Catch: Exception -> L65
        q4.a.e(r07);     // Catch: Exception -> L65
        DecimalFormat r35 = com.yunpan.appmanage.util.k.f4034u0;     // Catch: Exception -> L65
        com.yunpan.appmanage.util.j.f4033a.getClass();     // Catch: Exception -> L65
        com.yunpan.appmanage.util.k.e(r16);     // Catch: Exception -> L65
        r18.d(new Exception("主动停止下载"));     // Catch: Exception -> L65
        return;
    L46:
        r33 = r10;
        BufferedOutputStream r112 = r11;
    L61:
        android.support.v4.media.session.a.z(r33, r112, r84, r07);
        DecimalFormat r08 = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.j.f4033a.getClass();
        com.yunpan.appmanage.util.k.e(r16);
    L62:
        r18.b();
        return;
    L51:
        File r162 = r74;
        q4.a.e(r10);     // Catch: Exception -> L65
        q4.a.e(r11);     // Catch: Exception -> L65
        q4.a.e(r84);     // Catch: Exception -> L65
        q4.a.e(r07);     // Catch: Exception -> L65
        String r36 = r162.getPath();     // Catch: Exception -> L65
        StringBuilder r46 = new StringBuilder();     // Catch: Exception -> L65
        r46.append("/");     // Catch: Exception -> L65
        DecimalFormat r52 = com.yunpan.appmanage.util.k.f4034u0;     // Catch: Exception -> L65
        r46.append(com.yunpan.appmanage.util.j.f4033a.f4041d);     // Catch: Exception -> L65
        r46.append("/cache/");     // Catch: Exception -> L65
        if (r36.contains(r46.toString()) == true) goto L62;
        MyDb.get().addFile(r162.getPath());     // Catch: Exception -> L65
    L55:
        r16 = r74;
    L56:
        r16 = r74;
        r11 = null;
    L57:
        r16 = r74;
        r112 = 0;
    L58:
        r16 = r74;
        r84 = null;
    L59:
        r112 = r84;
    L60:
        r16 = r74;
        r07 = null;
        r84 = null;
        goto L59
    L30:
        if (r74.delete() == false) goto L68;
        MyDb.get().getFileInfoDao().delete(r74.getPath());
        goto L68
    L26:
        r74 = new File(g.b.k(r83, "/", r06));
    L63:
        android.support.v4.media.session.a.B("请求出错3", r18);
        return;
    L76:
    L10:
        e = e;
    L16:
        e.printStackTrace();
        r05 = null;
        goto L17
    L9:
        throw new Exception("请求出错2");     // Catch: Exception -> L10
    L15:
        throw new Exception("请求出错1");     // Catch: Exception -> L12
    L12:
        e = e;
        r44 = null;
        goto L16
    }

    private final void d(mc.b r11) {
        n5 r02 = this.f2687d;
        WpPathBean r12 = this.f2685b;
        String r03 = "uuid=" + r02.l + "&devType=6&devCode=" + r02.l + "&devModel=chrome&devVersion=140&appVersion=&timestamp=" + s1.g.q(Long.toString(System.currentTimeMillis())) + "&appToken=" + r02.f18300k + "&extra=2";     // Catch: Exception -> L13
        String r62 = "";
        z7.s r72 = r12.jsonObject;     // Catch: Exception -> L23
        if (r12.is_dir == false) goto L7;
        String r82 = "folderDesc";
    L8:
        r62 = r72.o(r82).i();     // Catch: Exception -> L23
        goto L9
    L7:
        r82 = "fileDesc";
    L9:
        z7.s r73 = new z7.s();     // Catch: Exception -> L13
        boolean r83 = r12.is_dir;     // Catch: Exception -> L13
        String r92 = this.f2686c;
        if (r83 == false) goto L15;
        String r04 = "https://api.feejii.com/app/file/folder/edit?" + r03;     // Catch: Exception -> L13
        r73.m("folderId", r12.path);     // Catch: Exception -> L13
        r73.m("folderName", r92);     // Catch: Exception -> L13
        r73.m("folderDesc", r62);     // Catch: Exception -> L13
    L16:
        z7.s r05 = d.b.b0(s1.g.I(r04, r73.toString())).g();     // Catch: Exception -> L13
        if (r05.o("code").e() != 200) goto L20;
        r12.name = r92;     // Catch: Exception -> L13
        r11.b();     // Catch: Exception -> L13
        return;
    L20:
        throw new Exception(r05.o("msg").i());     // Catch: Exception -> L13
    L15:
        r04 = "https://api.feejii.com/app/file/edit?" + r03;     // Catch: Exception -> L13
        r73.m("fileId", r12.path);     // Catch: Exception -> L13
        r73.m("fileName", r92);     // Catch: Exception -> L13
        r73.m("fileDesc", r62);     // Catch: Exception -> L13
    L13:
        e = move-exception;
        r11.d(e);
    }

    private final void e(mc.b r10) {
        n5 r02 = this.f2687d;
        WpPathBean r12 = this.f2685b;
        String r03 = "uuid=" + r02.l + "&devType=6&devCode=" + r02.l + "&devModel=chrome&devVersion=140&appVersion=&timestamp=" + s1.g.q(Long.toString(System.currentTimeMillis())) + "&appToken=" + r02.f18300k + "&extra=2";     // Catch: Exception -> L7
        z7.s r4 = new z7.s();     // Catch: Exception -> L7
        boolean r5 = r12.is_dir;     // Catch: Exception -> L7
        String r62 = this.f2686c;
        String r72 = "fileDesc";
        if (r5 == false) goto L9;
        String r04 = "https://api.feejii.com/app/file/folder/edit?" + r03;     // Catch: Exception -> L7
        r4.m("folderId", r12.path);     // Catch: Exception -> L7
        r4.m("folderName", r12.name);     // Catch: Exception -> L7
        r4.m("folderDesc", r62);     // Catch: Exception -> L7
    L10:
        z7.s r05 = d.b.b0(s1.g.I(r04, r4.toString())).g();     // Catch: Exception -> L7
        if (r05.o("code").e() != 200) goto L17;
        z7.s r06 = r12.jsonObject;     // Catch: Exception -> L7
        if (r12.is_dir == false) goto L15;
        r72 = "folderDesc";
    L15:
        r06.m(r72, r62);     // Catch: Exception -> L7
        r10.b();     // Catch: Exception -> L7
        return;
    L17:
        throw new Exception(r05.o("msg").i());     // Catch: Exception -> L7
    L9:
        r04 = "https://api.feejii.com/app/file/edit?" + r03;     // Catch: Exception -> L7
        r4.m("fileId", r12.path);     // Catch: Exception -> L7
        r4.m("fileName", r12.name);     // Catch: Exception -> L7
        r4.m("fileDesc", r62);     // Catch: Exception -> L7
    L7:
        e = move-exception;
        r10.d(e);
    }

    private final void f(mc.b r92) {
        n5 r02 = this.f2687d;
        WpPathBean r12 = this.f2685b;
        String r22 = this.f2686c;
        String r32 = "/";
        String r4 = "重命名失败";
    L12:
        e = move-exception;
        String r03 = g.b.z(e, new StringBuilder(""));
        if (r03.isEmpty() == true) goto L18;
        r4 = r03;
    L18:
        if (r4.contains("Connection reset") == false) goto L21;
        r4 = "连接中断,请重新选中网盘";
    L21:
        if (r4.isEmpty() == false) goto L23;
        r92.b();
        return;
    L23:
        android.support.v4.media.session.a.B(r4, r92);
        return;
    L4:
        if (r02.f18311x.v(r12.path, r22) == false) goto L21;
        r12.name = r22;     // Catch: Exception -> L12
        StringBuilder r04 = new StringBuilder();     // Catch: Exception -> L12
        r04.append(new File(r12.path).getParent());     // Catch: Exception -> L12
        r04.append("/");     // Catch: Exception -> L12
        r04.append(r22);     // Catch: Exception -> L12
        if (r12.is_dir == true) goto L10;
        r32 = "";
    L10:
        r04.append(r32);     // Catch: Exception -> L12
        r12.path = r04.toString();     // Catch: Exception -> L12
        r4 = "";
        goto L21
    }

    private final void h(mc.b r92) {
        n5 r02 = this.f2687d;
        WpPathBean r12 = this.f2685b;
        String r22 = this.f2686c;
        String r32 = "/";
        String r4 = "重命名失败";
    L12:
        e = move-exception;
        String r03 = g.b.z(e, new StringBuilder(""));
        if (r03.isEmpty() == true) goto L18;
        r4 = r03;
    L18:
        if (r4.contains("Connection reset") == false) goto L21;
        r4 = "连接中断,请重新选中网盘";
    L21:
        if (r4.isEmpty() == false) goto L23;
        r92.b();
        return;
    L23:
        android.support.v4.media.session.a.B(r4, r92);
        return;
    L4:
        if (r02.A.v(r12.path, r22) == false) goto L21;
        r12.name = r22;     // Catch: Exception -> L12
        StringBuilder r04 = new StringBuilder();     // Catch: Exception -> L12
        r04.append(new File(r12.path).getParent());     // Catch: Exception -> L12
        r04.append("/");     // Catch: Exception -> L12
        r04.append(r22);     // Catch: Exception -> L12
        if (r12.is_dir == true) goto L10;
        r32 = "";
    L10:
        r04.append(r32);     // Catch: Exception -> L12
        r12.path = r04.toString();     // Catch: Exception -> L12
        r4 = "";
        goto L21
    }

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
    private final void i(mc.b r23) {
        ?? r22 = this.f2687d;
        boolean r32 = r22.f18308u;
        String r4 = this.f2686c;
        WpPathBean r5 = this.f2685b;
        String r82 = "";
        if (r32 == false) goto L20;
        String r02 = (new File(r5.path).getParent() + "/" + r4).replace("//", "/");
        new t0(r22.b() + r5.path).D(new t0(r22.b() + r02));     // Catch: Exception -> L9
        r5.name = r4;     // Catch: Exception -> L9
        r5.path = r02;     // Catch: Exception -> L9
        if (r5.is_dir == false) goto L77;
        r5.path += "/";
    L77:
        if (r82.isEmpty() == false) goto L79;
        r23.b();
        return;
    L79:
        android.support.v4.media.session.a.B(r82, r23);
        return;
    L9:
        e = move-exception;
        String r03 = da.b.b(e, new StringBuilder(), "");
        if (r03.contains("system cannot find the file") == false) goto L15;
        r03 = "无权限查看此目录";
    L13:
        r82 = r03;
        if (r82.isEmpty() == false) goto L77;
        r82 = "连接失败";
        goto L77
    L15:
        if (r03.contains("The parameter is incorrect") == false) goto L13;
        r03 = "已存在相同名称";
        goto L13
    L20:
        SmbConfig.Builder r33 = SmbConfig.builder().withMultiProtocolNegotiate(true);
        TimeUnit r10 = TimeUnit.SECONDS;
        ?? r11 = 16;
        SMBClient r102 = new SMBClient(r33.withTimeout(16, r10).withSoTimeout(16, r10).build());
        DiskShare r34 = null;
        r11 = r102.connect(r22.f18292c, r22.f18293d);     // Catch: Throwable -> L60 Exception -> L62
    L27:
        e = e;
        r22 = 0;
    L64:
        r82 = qa.f.i(e);     // Catch: Throwable -> L54
        if (r34 != null) goto L116;
    L69:
        if (r22 != 0) goto L100;
    L73:
        if (r11 == 0) goto L114;
        r11.close();     // Catch: Exception -> L97
        goto L114
    L100:
        r22.close();     // Catch: Exception -> L72
        goto L73
    L116:
        r34.close();     // Catch: Exception -> L68
    L25:
        th = th;
        r22 = 0;
    L81:
        if (r34 != null) goto L103;
    L85:
        if (r22 != 0) goto L108;
    L89:
        if (r11 == 0) goto L112;
        r11.close();     // Catch: Exception -> L98
    L112:
        r102.close();     // Catch: Exception -> L99
    L93:
        throw th;
    L108:
        r22.close();     // Catch: Exception -> L88
        goto L89
    L103:
        r34.close();     // Catch: Exception -> L84
        goto L85
    L23:
        if (r22.f18294e.isEmpty() == false) goto L29;
        AuthenticationContext r24 = AuthenticationContext.guest();     // Catch: Throwable -> L25 Exception -> L27
    L30:
        r22 = r11.authenticate(r24);     // Catch: Throwable -> L25 Exception -> L27
        int r12 = r5.path.indexOf("/", 1);     // Catch: Throwable -> L54 Exception -> L56
        if (r12 == (-1)) goto L59;
        String r13 = r5.path.substring(1, r12);     // Catch: Throwable -> L54 Exception -> L56
        String r122 = r5.path.substring(r12);     // Catch: Throwable -> L54 Exception -> L56
        DiskShare r14 = (DiskShare) r22.connectShare(r13);     // Catch: Throwable -> L54 Exception -> L56
        HashSet r35 = new HashSet();     // Catch: Throwable -> L37 Exception -> L39
        r35.add(AccessMask.GENERIC_ALL);     // Catch: Throwable -> L37 Exception -> L39
        HashSet r15 = new HashSet();     // Catch: Throwable -> L37 Exception -> L39
        if (r5.is_dir == false) goto L41;
        r15.add(FileAttributes.FILE_ATTRIBUTE_DIRECTORY);     // Catch: Throwable -> L37 Exception -> L39
    L42:
        HashSet r92 = new HashSet();     // Catch: Throwable -> L37 Exception -> L39
        r92.add(SMB2ShareAccess.FILE_SHARE_WRITE);     // Catch: Throwable -> L37 Exception -> L39
        r92.add(SMB2ShareAccess.FILE_SHARE_READ);     // Catch: Throwable -> L37 Exception -> L39
        new HashSet().add(SMB2CreateOptions.FILE_RANDOM_ACCESS);     // Catch: Throwable -> L37 Exception -> L39
        String r62 = (new File(r122).getParent() + "/" + r4).replace("//", "/");     // Catch: Throwable -> L37 Exception -> L39
        if (r5.is_dir == false) goto L45;
        r122 = r122.substring(0, r122.length() - 1);     // Catch: Throwable -> L37 Exception -> L39
    L45:
        DiskEntry r36 = r14.open(r122.substring(1).replace("/", "\\"), r35, null, SMB2ShareAccess.ALL, SMB2CreateDisposition.FILE_OPEN, null);     // Catch: Throwable -> L37 Exception -> L39
        r36.rename(r62.substring(1).replace("/", "\\"));     // Catch: Throwable -> L37 Exception -> L39
        r36.close();     // Catch: Throwable -> L37 Exception -> L39
        r5.name = r4;     // Catch: Throwable -> L37 Exception -> L39
        r5.path = "/" + r13 + r62;     // Catch: Throwable -> L37 Exception -> L39
        if (r5.is_dir == false) goto L110;
        r5.path += "/";
    L110:
        r14.close();     // Catch: Exception -> L95
    L121:
        r22.close();     // Catch: Exception -> L96
    L50:
        r11.close();     // Catch: Exception -> L97
        goto L114
    L41:
        r15.add(FileAttributes.FILE_ATTRIBUTE_NORMAL);     // Catch: Throwable -> L37 Exception -> L39
    L39:
        e = e;
        r34 = r14;
    L37:
        th = th;
        r34 = r14;
        goto L81
    L59:
        throw new Exception("共享名错误");     // Catch: Throwable -> L54 Exception -> L56
    L56:
        e = e;
        goto L64
    L29:
        r24 = new AuthenticationContext(r22.f18294e, r22.f18295f.toCharArray(), r22.f18309v);     // Catch: Throwable -> L25 Exception -> L27
        goto L30
    L54:
        th = th;
    L62:
        e = e;
        r22 = 0;
        r11 = 0;
    L60:
        th = th;
        r22 = 0;
        r11 = 0;
    L114:
        r102.close();     // Catch: Exception -> L53
        goto L114
    }

    @Override // ec.d
    public final void g(mc.b r27) {
        String r15 = "请求出错";
        n5 r14 = this.f2687d;
        String r4 = "";
        String r72 = this.f2686c;
        WpPathBean r92 = this.f2685b;
        switch(this.f2684a) {
            case 0: goto L205;
            case 1: goto L326;
            case 2: goto L161;
            case 3: goto L158;
            case 4: goto L106;
            case 5: goto L39;
            case 6: goto L37;
            case 7: goto L35;
            case 8: goto L33;
            case 9: goto L31;
            case 10: goto L29;
            case 11: goto L27;
            case 12: goto L25;
            default: goto L4;
        };
    L4:
        n5 r02 = this.f2687d;
        r9.a r62 = qa.g.f(r02, 16, 16, 16);     // Catch: Exception -> L11
        String r82 = r92.path;     // Catch: Exception -> L11
        if (r82.equals(r02.f18292c) == false) goto L9;
    L13:
        String r03 = r82.substring(0, r82.lastIndexOf("/")) + "/" + r72;     // Catch: Exception -> L11
        System.out.getClass();     // Catch: Exception -> L11
        r62.d(r92.path, r03);     // Catch: Exception -> L11
        r92.name = r72;     // Catch: Exception -> L11
        r92.path = r03;     // Catch: Exception -> L11
        if (r92.is_dir == false) goto L21;
        r92.path += "/";
    L21:
        if (r4.isEmpty() == false) goto L23;
        r27.b();
        return;
    L23:
        android.support.v4.media.session.a.B(r4, r27);
        return;
    L9:
        if (r92.is_dir == false) goto L13;
        String r04 = r92.path;     // Catch: Exception -> L11
        r82 = r04.substring(0, r04.length() - 1);     // Catch: Exception -> L11
    L11:
        e = move-exception;
        r4 = g.b.z(e, new StringBuilder(""));
        if (r4.isEmpty() == false) goto L21;
        r4 = "重命名失败";
        goto L21
    L25:
        i(r27);
        return;
    L27:
        h(r27);
        return;
    L29:
        f(r27);
        return;
    L31:
        e(r27);
        return;
    L33:
        d(r27);
        return;
    L35:
        c(r27);
        return;
    L37:
        b(r27);
        return;
    L39:
        r92.isStopDown = false;
        r92.downUrl = "";
        qf.c.x(r14, r92);     // Catch: Exception -> L44
        if (r92.downUrl.startsWith("http") == true) goto L337;
        r27.d(new Exception("获取下载地址失败"));     // Catch: Exception -> L44
    L337:
        l9.a r63 = new l9.a(r92.downUrl);     // Catch: Exception -> L55
        k9.a r42 = r63.f11017i;     // Catch: Exception -> L55
        r42.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");     // Catch: Exception -> L55
        r42.b(RequestParameters.SUBRESOURCE_REFERER, r92.downUrlReferer);     // Catch: Exception -> L55
        r42.b("Accept-Language", "zh-CN,zh;q=0.9,en;q=0.8");     // Catch: Exception -> L55
        Response r05 = r63.a();     // Catch: Exception -> L55
        if (r05.isSuccessful() == false) goto L57;
        ResponseBody r43 = r05.body();     // Catch: Exception -> L55
        if (r43 == null) goto L338;
    L59:
        if (r05 == null) goto L102;
        if (r43 == null) goto L102;
        String r06 = r92.name;
        if (r06.length() <= 80) goto L66;
        r06 = r06.substring(r06.length() - 80, r06.length());
    L66:
        if (r92.is_dir == false) goto L68;
        File r64 = new File(r72 + "/" + r06 + ".rar");
    L70:
        if (r64.exists() == true) goto L72;
    L331:
        InputStream r07 = r43.byteStream();     // Catch: Exception -> L99
        FileOutputStream r73 = new FileOutputStream(r64);     // Catch: Exception -> L297
        BufferedInputStream r83 = new BufferedInputStream(r07);     // Catch: Exception -> L296
        BufferedOutputStream r10 = new BufferedOutputStream(r73);     // Catch: Exception -> L96
        DownProgressBean r11 = new DownProgressBean();     // Catch: Exception -> L86
        r11.fileSize = r43.contentLength();     // Catch: Exception -> L86
        byte[] r44 = new byte[PKIFailureInfo.signerNotTrusted];     // Catch: Exception -> L86
        int r12 = 0;
        long r16 = 0;
    L79:
        int r13 = r83.read(r44);     // Catch: Exception -> L86
        if (r13 == (-1)) goto L92;
        long r142 = r16 + r13;     // Catch: Exception -> L86
        r10.write(r44, 0, r13);     // Catch: Exception -> L86
        r10.flush();     // Catch: Exception -> L86
        r12 = r12 + 1;     // Catch: Exception -> L86
        if (r12 <= 2) goto L87;
        r11.downSize = r142;     // Catch: Exception -> L86
        double r122 = r142;
        byte[] r18 = r44;
        double r32 = r11.fileSize;     // Catch: Exception -> L86
        Double.isNaN(r122);
        Double.isNaN(r32);
        r11.bfb = (int) Math.floor((r122 / r32) * 100.0d);     // Catch: Exception -> L86
        r27.f(r11);     // Catch: Exception -> L86
        r12 = 0;
    L89:
        if (r92.isStopDown == true) goto L90;
        r16 = r142;
        r44 = r18;
        goto L79
    L90:
        q4.a.e(r83);     // Catch: Exception -> L86
        q4.a.e(r10);     // Catch: Exception -> L86
        q4.a.e(r73);     // Catch: Exception -> L86
        q4.a.e(r07);     // Catch: Exception -> L86
        com.yunpan.appmanage.util.j.f4033a.getClass();     // Catch: Exception -> L86
        com.yunpan.appmanage.util.k.e(r64);     // Catch: Exception -> L86
        r27.d(new Exception("主动停止下载"));     // Catch: Exception -> L86
        return;
    L87:
        r18 = r44;
        goto L89
    L92:
        q4.a.e(r83);     // Catch: Exception -> L86
        q4.a.e(r10);     // Catch: Exception -> L86
        q4.a.e(r73);     // Catch: Exception -> L86
        q4.a.e(r07);     // Catch: Exception -> L86
        if (r64.getPath().contains("/" + com.yunpan.appmanage.util.j.f4033a.f4041d + "/cache/") == true) goto L101;
        MyDb.get().addFile(r64.getPath());     // Catch: Exception -> L86
    L101:
        r27.b();
        return;
    L86:
        BufferedInputStream r143 = r83;
    L100:
        android.support.v4.media.session.a.z(r143, r10, r73, r07);
        com.yunpan.appmanage.util.j.f4033a.getClass();
        com.yunpan.appmanage.util.k.e(r64);
    L96:
        r143 = r83;
        r10 = null;
    L97:
        r10 = null;
        r143 = null;
    L98:
        r73 = null;
    L99:
        r07 = null;
        goto L98
    L72:
        if (r64.delete() == false) goto L331;
        MyDb.get().getFileInfoDao().delete(r64.getPath());
        goto L331
    L68:
        r64 = new File(g.b.k(r72, "/", r06));
    L102:
        android.support.v4.media.session.a.B("请求出错", r27);
        return;
    L338:
        throw new Exception("请求出错");     // Catch: Exception -> L54
    L58:
        r05 = null;
        goto L59
    L57:
        throw new Exception("请求出错");     // Catch: Exception -> L55
    L55:
        r43 = null;
    L44:
        e = move-exception;
        r27.d(e);
        return;
    L158:
        a(r27);
        return;
    L205:
        r92.isStopDown = false;
        r92.downUrl = "";
        String r20 = ".rar";
        if (r92.is_dir == true) goto L340;
        String r21 = "/";
        String r22 = r72;
        z7.s r17 = new z7.s();     // Catch: Exception -> L301
        r17.m("fileId", r92.path);     // Catch: Exception -> L301
        z7.s r19 = d.b.b0(s1.g.H(r14, "https://api.guangyapan.com/userres/v1/get_res_download_url", r17.toString())).g();     // Catch: Exception -> L301
        if (r19.o("msg").i().toLowerCase().equals("success") == false) goto L231;
        r92.downUrl = r19.q("data").o("signedURL").i();     // Catch: Exception -> L301
        goto L234
    L231:
        throw new Exception(r19.o("msg").i());     // Catch: Exception -> L301
    L340:
        z7.s r33 = new z7.s();     // Catch: Exception -> L226
        r21 = "/";
        z7.o r5 = new z7.o();     // Catch: Exception -> L302
        r22 = r72;
        r5.j(r92.path);     // Catch: Exception -> L301
        r33.j("fileIds", r5);     // Catch: Exception -> L301
        z7.s r34 = d.b.b0(s1.g.H(r14, "https://api.guangyapan.com/scheduler/v1/create_packaging_task", r33.toString())).g();     // Catch: Exception -> L301
        if (r34.o("msg").i().toLowerCase().equals("success") == false) goto L224;
        String r35 = r34.q("data").o("taskId").i();     // Catch: Exception -> L301
        z7.s r45 = new z7.s();     // Catch: Exception -> L301
        r45.m("taskId", r35);     // Catch: Exception -> L301
        int r36 = 0;
    L216:
        z7.s r110 = d.b.b0(s1.g.H(r14, "https://api.guangyapan.com/scheduler/v1/query_packaging_task", r45.toString())).g();     // Catch: Exception -> L301
        if (r110.q("data").f19480a.containsKey("signedURL") == true) goto L218;
        Thread.sleep(300);     // Catch: Exception -> L301
        r36 = r36 + 1;     // Catch: Exception -> L301
        if (r36 < 3) goto L216;
    L218:
        r92.downUrl = r110.q("data").o("signedURL").i();     // Catch: Exception -> L301
        goto L234
    L224:
        throw new Exception(r34.o("msg").i());     // Catch: Exception -> L301
    L225:
        r22 = r72;
    L226:
        r21 = "/";
    L234:
        if (r92.downUrl.isEmpty() == false) goto L237;
        String r08 = "无法获取下载地址";
    L236:
        android.support.v4.media.session.a.B(r08, r27);
        return;
    L237:
        System.out.getClass();
        l9.a r37 = new l9.a(r92.downUrl);     // Catch: Exception -> L247
        k9.a r111 = r37.f11017i;     // Catch: Exception -> L247
        r111.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");     // Catch: Exception -> L247
        r111.b(RequestParameters.SUBRESOURCE_REFERER, "https://www.guangyapan.com/");     // Catch: Exception -> L247
        r111.b("Accept-Language", "zh-CN,zh;q=0.9,en;q=0.8");     // Catch: Exception -> L247
        Response r09 = r37.a();     // Catch: Exception -> L247
        if (r09.isSuccessful() == false) goto L250;
        ResponseBody r112 = r09.body();     // Catch: Exception -> L247
        if (r112 == null) goto L303;
    L252:
        if (r09 == null) goto L294;
        if (r112 == null) goto L294;
        String r010 = r92.name;
        if (r010.length() <= 80) goto L259;
        r010 = r010.substring(r010.length() - 80, r010.length());
    L259:
        if (r92.is_dir == false) goto L261;
        StringBuilder r46 = new StringBuilder();
        r46.append(r22);
        String r65 = r21;
        r46.append(r65);
        r46.append(r010);
        r46.append(r20);
        File r38 = new File(r46.toString());
    L263:
        if (r38.exists() == true) goto L265;
    L309:
        InputStream r011 = r112.byteStream();     // Catch: Exception -> L291
        FileOutputStream r47 = new FileOutputStream(r38);     // Catch: Exception -> L300
        BufferedInputStream r52 = new BufferedInputStream(r011);     // Catch: Exception -> L299
        BufferedOutputStream r74 = new BufferedOutputStream(r47);     // Catch: Exception -> L288
        DownProgressBean r84 = new DownProgressBean();     // Catch: Exception -> L279
        r84.fileSize = r112.contentLength();     // Catch: Exception -> L279
        byte[] r113 = new byte[PKIFailureInfo.signerNotTrusted];     // Catch: Exception -> L279
        int r102 = 0;
        long r162 = 0;
    L272:
        int r114 = r52.read(r113);     // Catch: Exception -> L279
        if (r114 == (-1)) goto L284;
        long r132 = r162 + r114;     // Catch: Exception -> L279
        r74.write(r113, 0, r114);     // Catch: Exception -> L279
        r74.flush();     // Catch: Exception -> L279
        r102 = r102 + 1;     // Catch: Exception -> L279
        if (r102 <= 2) goto L280;
        r84.downSize = r132;     // Catch: Exception -> L279
        double r115 = r132;
        r162 = r132;
        double r133 = r84.fileSize;     // Catch: Exception -> L279
        Double.isNaN(r115);
        Double.isNaN(r133);
        r84.bfb = (int) Math.floor((r115 / r133) * 100.0d);     // Catch: Exception -> L279
        r27.f(r84);     // Catch: Exception -> L279
        r102 = 0;
    L282:
        if (r92.isStopDown == false) goto L272;
        q4.a.e(r52);     // Catch: Exception -> L279
        q4.a.e(r74);     // Catch: Exception -> L279
        q4.a.e(r47);     // Catch: Exception -> L279
        q4.a.e(r011);     // Catch: Exception -> L279
        DecimalFormat r116 = com.yunpan.appmanage.util.k.f4034u0;     // Catch: Exception -> L279
        com.yunpan.appmanage.util.j.f4033a.getClass();     // Catch: Exception -> L279
        com.yunpan.appmanage.util.k.e(r38);     // Catch: Exception -> L279
        r27.d(new Exception("主动停止下载"));     // Catch: Exception -> L279
        return;
    L280:
        r162 = r132;
        goto L282
    L284:
        q4.a.e(r52);     // Catch: Exception -> L279
        q4.a.e(r74);     // Catch: Exception -> L279
        q4.a.e(r47);     // Catch: Exception -> L279
        q4.a.e(r011);     // Catch: Exception -> L279
        String r117 = r38.getPath();     // Catch: Exception -> L279
        StringBuilder r85 = new StringBuilder();     // Catch: Exception -> L279
        r85.append(r65);     // Catch: Exception -> L279
        DecimalFormat r66 = com.yunpan.appmanage.util.k.f4034u0;     // Catch: Exception -> L279
        r85.append(com.yunpan.appmanage.util.j.f4033a.f4041d);     // Catch: Exception -> L279
        r85.append("/cache/");     // Catch: Exception -> L279
        if (r117.contains(r85.toString()) == true) goto L293;
        MyDb.get().addFile(r38.getPath());     // Catch: Exception -> L279
    L293:
        r27.b();
        return;
    L279:
        BufferedInputStream r144 = r52;
    L292:
        android.support.v4.media.session.a.z(r144, r74, r47, r011);
        DecimalFormat r012 = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.j.f4033a.getClass();
        com.yunpan.appmanage.util.k.e(r38);
    L288:
        r144 = r52;
        r74 = null;
    L289:
        r74 = null;
        r144 = null;
    L290:
        r47 = null;
    L291:
        r011 = null;
        goto L290
    L265:
        if (r38.delete() == false) goto L309;
        MyDb.get().getFileInfoDao().delete(r38.getPath());
        goto L309
    L261:
        r65 = r21;
        r38 = new File(g.b.k(r22, r65, r010));
    L294:
        r08 = "请求出错3";
        goto L236
    L303:
    L245:
        e = e;
    L251:
        e.printStackTrace();
        r09 = null;
        goto L252
    L244:
        throw new Exception("请求出错2");     // Catch: Exception -> L245
    L250:
        throw new Exception("请求出错1");     // Catch: Exception -> L247
    L247:
        e = e;
        r112 = null;
    L232:
        r21 = "/";
        r22 = r72;
        r20 = ".rar";
        goto L234
    L106:
        if (r14.f18292c.isEmpty() == false) goto L346;
        r14.f18292c = "https://pc.woozooo.com";
    L346:
        String r53 = URLEncoder.encode(r72, HTTP.UTF_8);     // Catch: Exception -> L110
    L111:
        String r67 = g.b.l(r14.f18292c, "/doupload.php", new StringBuilder());
        String r86 = r14.f18292c + "/mydisk.php?item=files&action=index&u=" + r14.f18297h;
        if (r92.is_dir == true) goto L327;
        String r013 = "task=46&file_id=" + r92.path + "&file_name=" + r53 + "&type=2";
    L130:
        String r014 = nh.b.P(r14.f18298i, r67, r013, r86);
        if (r014.isEmpty() == true) goto L154;
        z7.s r015 = d.b.b0(r014).g();     // Catch: Exception -> L152
        if (r015.o("zt").e() != 1) goto L344;
        r92.name = r72;     // Catch: Exception -> L152
    L136:
        r15 = r4;
        goto L154
    L344:
        r4 = r015.o("info").i();     // Catch: Exception -> L139
    L139:
        r4 = r015.o("text").i();     // Catch: Exception -> L141
    L142:
        if (r4 != null) goto L144;
    L147:
        r4 = "出错";
    L149:
        if (r4.contains("会员已过期") == false) goto L136;
        r15 = "蓝奏云：需会员才能改文件名  (推荐使用123网盘)";
        goto L154
    L144:
        if (r4.isEmpty() == true) goto L147;
        if (r4.equals("null") == false) goto L149;
    L152:
        r15 = "修改出错";
    L154:
        if (r15.isEmpty() == false) goto L156;
        r27.b();
        return;
    L156:
        android.support.v4.media.session.a.B(r15, r27);
        return;
    L327:
        String r39 = nh.b.P(r14.f18298i, r67, "task=18&folder_id=" + r92.path, r86);     // Catch: Exception -> L122
        if (r39.isEmpty() == true) goto L154;
        z7.s r310 = d.b.b0(r39).g();     // Catch: Exception -> L122
        if (r310.o("zt").e() != 1) goto L123;
        String r311 = r310.o("info").g().o("des").i();     // Catch: Exception -> L122
        r311 = r311.replace("&lt;", "<").replace("&gt;", ">");     // Catch: Exception -> L121
        String r118 = r311.replace("&amp;", "&").replace("&quot;", "\"");     // Catch: Exception -> L121
    L126:
        if (r118.isEmpty() == false) goto L314;
    L128:
        StringBuilder r016 = new StringBuilder("task=4&folder_id=");
        android.support.v4.media.session.a.C(r016, r92.path, "&folder_name=", r53, "&folder_description=");
        r016.append(r118);
        r013 = r016.toString();
        goto L130
    L314:
        r118 = URLEncoder.encode(r118, HTTP.UTF_8);     // Catch: Exception -> L298
    L124:
        r118 = r311;
        goto L126
    L123:
        r118 = "";
    L122:
        r311 = "";
    L110:
        r53 = r72;
        goto L111
    L161:
        if (r14.f18292c.isEmpty() == false) goto L164;
        r14.f18292c = "https://pc.woozooo.com";
    L164:
        if (r72.length() <= 160) goto L166;
        r72 = r72.substring(0, CarSettingID.Recv.BCS_ATS_DRV_MODE_REQ);
    L166:
        String r119 = r92.name;
        r119 = URLEncoder.encode(r119, HTTP.UTF_8);     // Catch: Exception -> L169
        r72 = URLEncoder.encode(r72, HTTP.UTF_8);     // Catch: Exception -> L169
    L170:
        String r017 = g.b.l(r14.f18292c, "/doupload.php", new StringBuilder());
        String r312 = android.support.v4.media.session.a.u(new StringBuilder("task=11&file_id="), r92.path, "&desc=", r72);
        if (r92.is_dir == false) goto L173;
        StringBuilder r313 = new StringBuilder("task=4&folder_id=");
        android.support.v4.media.session.a.C(r313, r92.path, "&folder_name=", r119, "&folder_description=");
        r313.append(r72);
        r312 = r313.toString();
    L173:
        String r018 = nh.b.P(r14.f18298i, r017, r312, r14.f18292c + "/mydisk.php?item=files&action=index&u=" + r14.f18297h);
        if (r018.isEmpty() == false) goto L176;
    L175:
        r4 = "出错";
    L191:
        if (r4.isEmpty() == false) goto L193;
        r27.b();
        return;
    L193:
        android.support.v4.media.session.a.B(r4, r27);
        return;
    L176:
        z7.s r019 = d.b.b0(r018).g();
        if (r019.o("zt").e() == 1) goto L191;
        r4 = r019.o("info").i();     // Catch: Exception -> L181
    L181:
        r4 = r019.o("text").i();     // Catch: Exception -> L183
    L184:
        if (r4 == null) goto L175;
        if (r4.isEmpty() == true) goto L175;
        if (r4.equals("null") == false) goto L191;
    L326:
        z7.s r120 = new z7.s();     // Catch: Exception -> L199
        r120.m("fileId", r92.path);     // Catch: Exception -> L199
        r120.m("newName", r72);     // Catch: Exception -> L199
        z7.s r121 = d.b.b0(s1.g.H(r14, "https://api.guangyapan.com/userres/v1/file/rename", r120.toString())).g();     // Catch: Exception -> L199
        if (r121.o("msg").i().toLowerCase().equals("success") == false) goto L202;
        r92.name = r72;     // Catch: Exception -> L199
        r27.b();     // Catch: Exception -> L199
        return;
    L202:
        throw new Exception(r121.o("msg").i());     // Catch: Exception -> L199
    L199:
        e = move-exception;
        r27.d(e);
    }

    public /* synthetic */ e(WpPathBean r12, n5 r22, String r32, int r4) {
        this.f2684a = r4;
        this.f2685b = r12;
        this.f2687d = r22;
        this.f2686c = r32;
    }

    public /* synthetic */ e(n5 r12, WpPathBean r22, String r32, int r4) {
        this.f2684a = r4;
        this.f2687d = r12;
        this.f2685b = r22;
        this.f2686c = r32;
    }
}