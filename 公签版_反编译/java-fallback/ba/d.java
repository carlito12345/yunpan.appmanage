package ba;

import ce.t0;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.hierynomus.msdtyp.AccessMask;
import com.hierynomus.mssmb2.SMB2CreateDisposition;
import com.hierynomus.mssmb2.SMB2CreateOptions;
import com.hierynomus.mssmb2.SMB2ShareAccess;
import com.hierynomus.smbj.SMBClient;
import com.hierynomus.smbj.SmbConfig;
import com.hierynomus.smbj.auth.AuthenticationContext;
import com.hierynomus.smbj.connection.Connection;
import com.hierynomus.smbj.session.Session;
import com.hierynomus.smbj.share.DiskEntry;
import com.hierynomus.smbj.share.DiskShare;
import com.hierynomus.smbj.share.File;
import com.hierynomus.smbj.transport.tcp.async.AsyncDirectTcpTransportFactory;
import com.yunpan.appmanage.bean.WpPathBean;
import java.net.URLEncoder;
import java.text.DecimalFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import okhttp3.Request;
import x9.n5;

/* loaded from: classes.dex */
public final /* synthetic */ class d implements ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2680a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ n5 f2681b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WpPathBean f2682c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ WpPathBean f2683d;

    public /* synthetic */ d(WpPathBean r22, WpPathBean r32, n5 r4) {
        this.f2680a = 9;
        this.f2682c = r22;
        this.f2683d = r32;
        this.f2681b = r4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4, types: [com.hierynomus.smbj.connection.Connection] */
    /* JADX WARN: Type inference failed for: r11v5, types: [com.hierynomus.smbj.connection.Connection] */
    /* JADX WARN: Type inference failed for: r11v7, types: [com.hierynomus.smbj.connection.Connection] */
    /* JADX WARN: Type inference failed for: r4v0, types: [x9.n5] */
    /* JADX WARN: Type inference failed for: r4v13, types: [com.hierynomus.smbj.session.Session] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6, types: [com.hierynomus.smbj.session.Session] */
    /* JADX WARN: Type inference failed for: r4v7, types: [com.hierynomus.smbj.session.Session] */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    private final void a(mc.b r23) {
        ?? r4 = this.f2681b;
        boolean r5 = r4.f18308u;
        WpPathBean r62 = this.f2682c;
        WpPathBean r72 = this.f2683d;
        String r82 = "";
        if (r5 == true) goto L99;
        SmbConfig.Builder r52 = SmbConfig.builder().withMultiProtocolNegotiate(true);
        TimeUnit r10 = TimeUnit.SECONDS;
        ?? r11 = 0;
        SMBClient r102 = new SMBClient(r52.withTimeout(300, r10).withSoTimeout(0, r10).withTransportLayerFactory(new AsyncDirectTcpTransportFactory()).build());
        DiskShare r53 = null;
        r11 = r102.connect(r4.f18292c, r4.f18293d);     // Catch: Throwable -> L52 Exception -> L54
    L117:
    L24:
        e = e;
        r4 = 0;
    L56:
        r82 = qa.f.i(e);     // Catch: Throwable -> L46
        if (r53 != null) goto L105;
    L61:
        if (r4 != 0) goto L110;
    L65:
        if (r11 == 0) goto L103;
        r11.close();     // Catch: Exception -> L89
        goto L103
    L110:
        r4.close();     // Catch: Exception -> L64
        goto L65
    L105:
        r53.close();     // Catch: Exception -> L60
    L22:
        th = th;
        r4 = 0;
    L73:
        if (r53 != null) goto L113;
    L77:
        if (r4 != 0) goto L108;
    L81:
        if (r11 == 0) goto L101;
        r11.close();     // Catch: Exception -> L90
    L101:
        r102.close();     // Catch: Exception -> L91
    L85:
        throw th;
    L108:
        r4.close();     // Catch: Exception -> L80
        goto L81
    L113:
        r53.close();     // Catch: Exception -> L76
        goto L77
    L20:
        if (r4.f18294e.isEmpty() == false) goto L26;
        AuthenticationContext r42 = AuthenticationContext.guest();     // Catch: Throwable -> L22 Exception -> L24
    L27:
        r4 = r11.authenticate(r42);     // Catch: Throwable -> L22 Exception -> L24
        int r12 = r62.path.indexOf("/", 1);     // Catch: Throwable -> L46 Exception -> L48
        String r13 = r62.path.substring(1, r12);     // Catch: Throwable -> L46 Exception -> L48
        String r122 = r62.path.substring(r12);     // Catch: Throwable -> L46 Exception -> L48
        int r14 = r72.path.indexOf("/", 1);     // Catch: Throwable -> L46 Exception -> L48
        String r15 = r72.path.substring(1, r14);     // Catch: Throwable -> L46 Exception -> L48
        String r73 = r72.path.substring(r14);     // Catch: Throwable -> L46 Exception -> L48
        if (r15.equals(r13) == false) goto L51;
        String r74 = r73 + r62.name;     // Catch: Throwable -> L46 Exception -> L48
        DiskShare r132 = (DiskShare) r4.connectShare(r13);     // Catch: Throwable -> L46 Exception -> L48
        HashSet r54 = new HashSet();     // Catch: Throwable -> L34 Exception -> L36
        r54.add(AccessMask.GENERIC_ALL);     // Catch: Throwable -> L34 Exception -> L36
        HashSet r152 = new HashSet();     // Catch: Throwable -> L34 Exception -> L36
        r152.add(SMB2CreateOptions.FILE_RANDOM_ACCESS);     // Catch: Throwable -> L34 Exception -> L36
        if (r62.is_dir == false) goto L38;
        qa.f.d(r132, r122, r74 + "/");     // Catch: Throwable -> L34 Exception -> L36
    L39:
        if (r132 != null) goto L97;
    L95:
        r4.close();     // Catch: Exception -> L88
    L42:
        r11.close();     // Catch: Exception -> L89
        goto L103
    L97:
        r132.close();     // Catch: Exception -> L87
        goto L95
    L38:
        String r63 = r122.replace("//", "/").replace("/", "\\").substring(1);     // Catch: Throwable -> L34 Exception -> L36
        Set<SMB2ShareAccess> r123 = SMB2ShareAccess.ALL;     // Catch: Throwable -> L34 Exception -> L36
        File r64 = r132.openFile(r63, r54, null, r123, SMB2CreateDisposition.FILE_OPEN, null);     // Catch: Throwable -> L34 Exception -> L36
        File r02 = r132.openFile(r74.replace("//", "/").replace("/", "\\").substring(1), r54, null, r123, SMB2CreateDisposition.FILE_OVERWRITE_IF, r152);     // Catch: Throwable -> L34 Exception -> L36
        r64.remoteCopyTo(r02);     // Catch: Throwable -> L34 Exception -> L36
        r64.close();     // Catch: Throwable -> L34 Exception -> L36
        r02.close();     // Catch: Throwable -> L34 Exception -> L36
    L36:
        e = e;
        r53 = r132;
    L34:
        th = th;
        r53 = r132;
        goto L73
    L51:
        throw new Exception("暂不支持复制到不同的共享名");     // Catch: Throwable -> L46 Exception -> L48
    L48:
        e = e;
        goto L56
    L26:
        r42 = new AuthenticationContext(r4.f18294e, r4.f18295f.toCharArray(), r4.f18309v);     // Catch: Throwable -> L22 Exception -> L24
    L46:
        th = th;
    L54:
        e = e;
        r4 = 0;
        r11 = 0;
    L52:
        th = th;
        r4 = 0;
        r11 = 0;
    L103:
        r102.close();     // Catch: Exception -> L45
    L69:
        if (r82.isEmpty() == false) goto L71;
        r23.b();
        return;
    L71:
        android.support.v4.media.session.a.B(r82, r23);
        return;
    L99:
        new t0(r4.b() + r62.path).d(new t0(r4.b() + r72.path + r62.name));     // Catch: Exception -> L6
    L6:
        e = move-exception;
        String r03 = da.b.b(e, new StringBuilder(), "");
        if (r03.contains("system cannot find the file") == false) goto L11;
        r03 = "无权限查看此目录";
    L14:
        if (r03.isEmpty() == false) goto L16;
        r03 = "连接失败";
    L16:
        r82 = r03;
        goto L69
    L11:
        if (r03.contains("The parameter is incorrect") == false) goto L14;
        r03 = "已存在相同名称";
        goto L14
    }

    private final void b(mc.b r11) {
        n5 r02 = this.f2681b;
        WpPathBean r72 = this.f2682c;
        WpPathBean r82 = this.f2683d;
        String r92 = "";
        r9.a r03 = qa.g.f(r02, 60, 16, 16);     // Catch: Exception -> L6
        String r12 = r72.path + r82.name;     // Catch: Exception -> L6
        if (r82.is_dir == false) goto L8;
        r12 = r12 + "/";     // Catch: Exception -> L6
    L8:
        System.out.getClass();     // Catch: Exception -> L6
        r03.a(r82.path, r12);     // Catch: Exception -> L6
    L17:
        if (r92.isEmpty() == false) goto L19;
        r11.b();
        return;
    L19:
        android.support.v4.media.session.a.B(r92, r11);
        return;
    L6:
        e = move-exception;
        r92 = g.b.z(e, new StringBuilder(""));
        if (r92.contains("Internal Server Error") == false) goto L14;
        r92 = "WebDAV暂时不支持文件夹复制";
        goto L17
    L14:
        if (r92.isEmpty() == false) goto L17;
        r92 = "复制失败";
        goto L17
    }

    private final void c(mc.b r10) {
        WpPathBean r02 = this.f2682c;
        WpPathBean r12 = this.f2683d;
        r9.a r22 = qa.g.f(this.f2681b, 20, 16, 16);
        String r32 = "";
        p000if.a.M0(r22.f13722a.newCall(new Request.Builder().url(r9.a.f(r02.path + r12.name)).method("MKCOL", null).build()).execute());     // Catch: Exception -> L5
        r12.path = r02.path + r12.name + "/";     // Catch: Exception -> L5
        r12.is_dir = true;     // Catch: Exception -> L5
        DecimalFormat r03 = com.yunpan.appmanage.util.k.f4034u0;     // Catch: Exception -> L5
        r12.time_txt = com.yunpan.appmanage.util.j.f4033a.f4038b0.format(new Date());     // Catch: Exception -> L5
    L10:
        if (r32.isEmpty() == true) goto L12;
    L14:
        android.support.v4.media.session.a.B(r32, r10);
        return;
    L12:
        if (r12.path.isEmpty() == true) goto L14;
        r10.b();
        return;
    L5:
        e = move-exception;
        r32 = g.b.z(e, new StringBuilder(""));
        if (r32.isEmpty() == false) goto L10;
        r32 = "新建失败";
        goto L10
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:260:0x0553 -> B:352:0x0555). Please report as a decompilation issue!!! */
    @Override // ec.d
    public final void g(mc.b r30) {
        String r16 = "无权限查看此目录";
        String r62 = "";
        n5 r10 = this.f2681b;
        WpPathBean r11 = this.f2683d;
        WpPathBean r15 = this.f2682c;
        switch(this.f2680a) {
            case 0: goto L363;
            case 1: goto L269;
            case 2: goto L236;
            case 3: goto L367;
            case 4: goto L365;
            case 5: goto L316;
            case 6: goto L344;
            case 7: goto L100;
            case 8: goto L97;
            case 9: goto L20;
            case 10: goto L18;
            case 11: goto L16;
            default: goto L326;
        };
    L16:
        c(r30);
        return;
    L18:
        b(r30);
        return;
    L20:
        r15.path = r11.path + r15.name;
        if (r10.f18308u == true) goto L332;
        SmbConfig.Builder r02 = SmbConfig.builder().withMultiProtocolNegotiate(true);
        TimeUnit r32 = TimeUnit.SECONDS;
        SMBClient r33 = new SMBClient(r02.withTimeout(18, r32).withSoTimeout(18, r32).build());
        Connection r4 = r33.connect(r10.f18292c, r10.f18293d);     // Catch: Throwable -> L68 Exception -> L70
    L42:
        e = e;
    L43:
        Session r5 = null;
    L44:
        DiskShare r14 = null;
    L361:
        r30.d(new Throwable(qa.f.i(e)));     // Catch: Throwable -> L84
        if (r14 != null) goto L328;
    L77:
        if (r5 != null) goto L336;
    L81:
        if (r4 != null) goto L355;
    L318:
        r33.close();     // Catch: Exception -> L305
        return;
    L407:
        return;
    L355:
        r4.close();     // Catch: Exception -> L308
        goto L318
    L336:
        r5.close();     // Catch: Exception -> L80
        goto L81
    L328:
        r14.close();     // Catch: Exception -> L76
    L84:
        th = th;
    L85:
        if (r14 != null) goto L324;
    L89:
        if (r5 != null) goto L320;
    L93:
        if (r4 == null) goto L348;
        r4.close();     // Catch: Exception -> L309
    L348:
        r33.close();     // Catch: Exception -> L310
        throw th;
    L408:
        throw th;
    L320:
        r5.close();     // Catch: Exception -> L92
        goto L93
    L324:
        r14.close();     // Catch: Exception -> L88
    L39:
        th = th;
    L40:
        r5 = null;
    L41:
        r14 = null;
        goto L85
    L37:
        if (r10.f18294e.isEmpty() == false) goto L45;
        AuthenticationContext r03 = AuthenticationContext.guest();     // Catch: Throwable -> L39 Exception -> L42
    L46:
        r5 = r4.authenticate(r03);     // Catch: Throwable -> L39 Exception -> L42
        int r04 = r15.path.indexOf("/", 1);     // Catch: Throwable -> L62 Exception -> L64
        if (r04 == (-1)) goto L67;
        String r63 = r15.path.substring(1, r04);     // Catch: Throwable -> L62 Exception -> L64
        String r05 = r15.path.substring(r04);     // Catch: Throwable -> L62 Exception -> L64
        DiskShare r64 = (DiskShare) r5.connectShare(r63);     // Catch: Throwable -> L62 Exception -> L64
        r64.mkdir(r05);     // Catch: Throwable -> L58 Exception -> L60
        r15.path += "/";
        DecimalFormat r06 = com.yunpan.appmanage.util.k.f4034u0;     // Catch: Throwable -> L58 Exception -> L60
        r15.time_txt = com.yunpan.appmanage.util.j.f4033a.f4038b0.format(new Date());     // Catch: Throwable -> L58 Exception -> L60
        r30.b();     // Catch: Throwable -> L58 Exception -> L60
        r64.close();     // Catch: Exception -> L306
    L357:
        r5.close();     // Catch: Exception -> L307
        goto L355
    L60:
        e = e;
        r14 = r64;
    L58:
        th = th;
        r14 = r64;
        goto L85
    L67:
        throw new Exception("共享名错误");     // Catch: Throwable -> L62 Exception -> L64
    L64:
        e = e;
    L62:
        th = th;
        goto L41
    L45:
        r03 = new AuthenticationContext(r10.f18294e, r10.f18295f.toCharArray(), r10.f18309v);     // Catch: Throwable -> L39 Exception -> L42
        goto L46
    L70:
        e = e;
        r4 = null;
    L68:
        th = th;
        r4 = null;
        goto L40
    L332:
        new t0(r10.b() + r15.path).y();     // Catch: Exception -> L24
        r15.path += "/";
        DecimalFormat r07 = com.yunpan.appmanage.util.k.f4034u0;     // Catch: Exception -> L24
        r15.time_txt = com.yunpan.appmanage.util.j.f4033a.f4038b0.format(new Date());     // Catch: Exception -> L24
        r30.b();     // Catch: Exception -> L24
        return;
    L24:
        e = move-exception;
        String r08 = da.b.b(e, new StringBuilder(), "");
        if (r08.contains("system cannot find the file") == true) goto L30;
        r16 = r08;
    L30:
        if (r16.isEmpty() == false) goto L32;
        String r152 = "连接失败";
    L33:
        r30.d(new Throwable(r152));
        return;
    L32:
        r152 = r16;
        goto L33
    L97:
        a(r30);
        return;
    L316:
        String r09 = r15.path + r11.name;     // Catch: Exception -> L212
        if (r10.f18311x.u(r09) == false) goto L214;
        r11.path = r09 + "/";     // Catch: Exception -> L212
        DecimalFormat r010 = com.yunpan.appmanage.util.k.f4034u0;     // Catch: Exception -> L212
        r11.time_txt = com.yunpan.appmanage.util.j.f4033a.f4038b0.format(new Date());     // Catch: Exception -> L212
        String r011 = "";
    L219:
        if (r011.isEmpty() == true) goto L221;
    L223:
        android.support.v4.media.session.a.B(r011, r30);
        return;
    L221:
        if (r11.path.isEmpty() == true) goto L223;
        r30.b();
        return;
    L214:
        r011 = "创建失败";
    L212:
        e = move-exception;
        r011 = g.b.z(e, new StringBuilder(""));
        if (r011.isEmpty() == false) goto L219;
    L344:
        String r012 = r15.path + r11.name;     // Catch: Exception -> L195
        if (r10.A.u(r012) == false) goto L197;
        r11.path = r012 + "/";     // Catch: Exception -> L195
        DecimalFormat r013 = com.yunpan.appmanage.util.k.f4034u0;     // Catch: Exception -> L195
        r11.time_txt = com.yunpan.appmanage.util.j.f4033a.f4038b0.format(new Date());     // Catch: Exception -> L195
        String r014 = "";
    L202:
        if (r014.isEmpty() == true) goto L204;
    L206:
        android.support.v4.media.session.a.B(r014, r30);
        return;
    L204:
        if (r11.path.isEmpty() == true) goto L206;
        r30.b();
        return;
    L197:
        r014 = "创建失败";
    L195:
        e = move-exception;
        r014 = g.b.z(e, new StringBuilder(""));
        if (r014.isEmpty() == false) goto L202;
    L363:
        s1.g.c(r15, r11, r10);     // Catch: Exception -> L302
        r30.b();     // Catch: Exception -> L302
        return;
    L302:
        e = move-exception;
        r30.d(e);
        return;
    L365:
        s1.g.d(r15, r11, r10);     // Catch: Exception -> L227
        r30.b();     // Catch: Exception -> L227
        return;
    L227:
        e = move-exception;
        r30.d(e);
        return;
    L367:
        qf.c.c(r15, r11, r10);     // Catch: Exception -> L232
        r30.b();     // Catch: Exception -> L232
        return;
    L232:
        e = move-exception;
        r30.d(e);
        return;
    L326:
        qa.g.f(this.f2681b, 60, 16, 16).d(r11.path, r15.path + r11.name);     // Catch: Exception -> L7
    L12:
        if (r62.isEmpty() == false) goto L14;
        r30.b();
        return;
    L14:
        android.support.v4.media.session.a.B(r62, r30);
        return;
    L7:
        e = move-exception;
        r62 = g.b.z(e, new StringBuilder(""));
        if (r62.isEmpty() == false) goto L12;
        r62 = "移动失败";
        goto L12
    L100:
        if (r10.f18308u == true) goto L373;
        SmbConfig.Builder r34 = SmbConfig.builder().withMultiProtocolNegotiate(true);
        TimeUnit r42 = TimeUnit.SECONDS;
        SMBClient r43 = new SMBClient(r34.withTimeout(300, r42).withSoTimeout(0, r42).build());
        Connection r35 = r43.connect(r10.f18292c, r10.f18293d);     // Catch: Throwable -> L157 Exception -> L159
    L124:
        e = e;
    L125:
        Session r52 = null;
    L126:
        DiskShare r142 = null;
    L322:
        r62 = qa.f.i(e);     // Catch: Throwable -> L178
        if (r142 != null) goto L338;
    L166:
        if (r52 != null) goto L340;
    L170:
        if (r35 == null) goto L330;
        r35.close();     // Catch: Exception -> L313
        goto L330
    L340:
        r52.close();     // Catch: Exception -> L169
        goto L170
    L338:
        r142.close();     // Catch: Exception -> L165
    L178:
        th = th;
    L179:
        if (r142 != null) goto L350;
    L183:
        if (r52 != null) goto L359;
    L187:
        if (r35 != null) goto L382;
    L380:
        r43.close();     // Catch: Exception -> L315
        throw th;
    L410:
        throw th;
    L382:
        r35.close();     // Catch: Exception -> L314
        goto L380
    L359:
        r52.close();     // Catch: Exception -> L186
        goto L187
    L350:
        r142.close();     // Catch: Exception -> L182
    L121:
        th = th;
    L122:
        r52 = null;
    L123:
        r142 = null;
        goto L179
    L119:
        if (r10.f18294e.isEmpty() == false) goto L127;
        AuthenticationContext r53 = AuthenticationContext.guest();     // Catch: Throwable -> L121 Exception -> L124
    L128:
        r52 = r35.authenticate(r53);     // Catch: Throwable -> L121 Exception -> L124
    L394:
        int r72 = r15.path.indexOf("/", 1);     // Catch: Throwable -> L147 Exception -> L149
        if (r72 == (-1)) goto L156;
        String r92 = r15.path.substring(1, r72);     // Catch: Throwable -> L147 Exception -> L149
        String r73 = r15.path.substring(r72);     // Catch: Throwable -> L147 Exception -> L149
        int r102 = r11.path.indexOf("/", 1);     // Catch: Throwable -> L147 Exception -> L149
        if (r102 == (-1)) goto L154;
        String r12 = r11.path.substring(1, r102);     // Catch: Throwable -> L147 Exception -> L149
        String r82 = r11.path.substring(r102) + r15.name;     // Catch: Throwable -> L147 Exception -> L149
        if (r12.equals(r92) == false) goto L152;
        DiskShare r93 = (DiskShare) r52.connectShare(r92);     // Catch: Throwable -> L147 Exception -> L149
        HashSet r103 = new HashSet();     // Catch: Throwable -> L143 Exception -> L145
        r103.add(AccessMask.GENERIC_ALL);     // Catch: Throwable -> L143 Exception -> L145
        new HashSet().add(SMB2CreateOptions.FILE_RANDOM_ACCESS);     // Catch: Throwable -> L143 Exception -> L145
        DiskEntry r74 = r93.open(r73.substring(1).replace("/", "\\"), r103, null, SMB2ShareAccess.ALL, SMB2CreateDisposition.FILE_OPEN, null);     // Catch: Throwable -> L143 Exception -> L145
        r74.rename(r82.substring(1).replace("/", "\\"));     // Catch: Throwable -> L143 Exception -> L145
        r74.close();     // Catch: Throwable -> L143 Exception -> L145
        r93.close();     // Catch: Exception -> L311
    L376:
        r52.close();     // Catch: Exception -> L312
    L139:
        r35.close();     // Catch: Exception -> L313
        goto L330
    L145:
        e = e;
        r142 = r93;
    L143:
        th = th;
        r142 = r93;
        goto L179
    L152:
        throw new Exception("不支持移动到不同的共享名");     // Catch: Throwable -> L147 Exception -> L149
    L154:
        throw new Exception("共享名错误");     // Catch: Throwable -> L147 Exception -> L149
    L156:
        throw new Exception("共享名错误");     // Catch: Throwable -> L147 Exception -> L149
    L149:
        e = e;
    L147:
        th = th;
        goto L123
    L127:
        r53 = new AuthenticationContext(r10.f18294e, r10.f18295f.toCharArray(), r10.f18309v);     // Catch: Throwable -> L121 Exception -> L124
        goto L128
    L159:
        e = e;
        r35 = null;
    L157:
        th = th;
        r35 = null;
    L330:
        r43.close();     // Catch: Exception -> L142
    L174:
        if (r62.isEmpty() == false) goto L176;
        r30.b();
        return;
    L176:
        android.support.v4.media.session.a.B(r62, r30);
        return;
    L373:
        new t0(r10.b() + r15.path).D(new t0(r10.b() + r11.path + r15.name));     // Catch: Exception -> L103
    L103:
        e = move-exception;
        String r015 = da.b.b(e, new StringBuilder(), "");
        if (r015.contains("system cannot find the file") == true) goto L112;
        if (r015.contains("The parameter is incorrect") == false) goto L110;
        r16 = "已存在相同名称";
        goto L112
    L110:
        r16 = r015;
    L112:
        if (r16.isEmpty() == false) goto L114;
        String r153 = "连接失败";
    L115:
        r62 = r153;
        goto L174
    L114:
        r153 = r16;
        goto L115
    L236:
        if (r10.f18292c.isEmpty() == false) goto L238;
        r10.f18292c = "https://pc.woozooo.com";
    L238:
        String r016 = r11.name;
        r016 = URLEncoder.encode(r016, HTTP.UTF_8);     // Catch: Exception -> L241
    L242:
        String r017 = nh.b.P(r10.f18298i, g.b.l(r10.f18292c, "/doupload.php", new StringBuilder()), "task=2&parent_id=" + r15.path + "&folder_name=" + r016 + "&folder_description=", r10.f18292c + "/mydisk.php?item=files&action=index&u=" + r10.f18297h);
        if (r017.isEmpty() == false) goto L353;
        r62 = "请求出错";
    L262:
        if (r62.isEmpty() == true) goto L264;
    L266:
        android.support.v4.media.session.a.B(r62, r30);
        return;
    L264:
        if (r11.path.isEmpty() == true) goto L266;
        r30.b();
        return;
    L353:
        z7.s r018 = d.b.b0(r017).g();     // Catch: Exception -> L249
        if (r018.o("zt").e() != 1) goto L384;
        r11.path = r018.o("text").i();     // Catch: Exception -> L249
        r11.is_dir = true;     // Catch: Exception -> L249
    L352:
    L384:
        r62 = r018.o("info").i();     // Catch: Exception -> L252
    L252:
        r62 = r018.o("text").i();     // Catch: Exception -> L254
    L255:
        if (r62 == null) goto L260;
        if (r62.isEmpty() == true) goto L260;
        if (r62.equals("null") == false) goto L352;
    L260:
        r62 = "出错";
        goto L352
    L269:
        if (r10.f18292c.isEmpty() == false) goto L271;
        r10.f18292c = "https://pc.woozooo.com";
    L271:
        String r83 = g.b.l(r10.f18292c, "/doupload.php", new StringBuilder());
        String r75 = r10.f18292c + "/mydisk.php?item=files&action=index&u=" + r10.f18297h;
        if (r15.is_dir == false) goto L274;
        r62 = "蓝奏云不支持移动文件夹";
    L294:
        if (r62.isEmpty() == true) goto L296;
    L298:
        android.support.v4.media.session.a.B(r62, r30);
        return;
    L296:
        if (r11.path.isEmpty() == true) goto L298;
        r30.b();
        return;
    L274:
        String r76 = nh.b.P(r10.f18298i, r83, "task=20&folder_id=" + r11.path + "&file_id=" + r15.path, r75);
        if (r76.isEmpty() == false) goto L342;
        r62 = "请求出错";
        goto L294
    L342:
        z7.s r77 = d.b.b0(r76).g();     // Catch: Exception -> L292
        if (r77.o("zt").e() == 1) goto L294;
        r62 = r77.o("info").i();     // Catch: Exception -> L283
    L283:
        r62 = r77.o("text").i();     // Catch: Exception -> L285
    L286:
        if (r62 != null) goto L288;
    L291:
        r62 = "出错";
        goto L294
    L288:
        if (r62.isEmpty() == true) goto L291;
        if (r62.equals("null") == false) goto L294;
    L292:
        r62 = "修改出错";
        goto L294
    }

    public /* synthetic */ d(n5 r12, WpPathBean r22, WpPathBean r32, int r4) {
        this.f2680a = r4;
        this.f2681b = r12;
        this.f2682c = r22;
        this.f2683d = r32;
    }
}