package ba;

import ce.t0;
import com.hierynomus.smbj.SMBClient;
import com.hierynomus.smbj.SmbConfig;
import com.hierynomus.smbj.auth.AuthenticationContext;
import com.hierynomus.smbj.connection.Connection;
import com.hierynomus.smbj.session.Session;
import com.hierynomus.smbj.share.DiskShare;
import com.hierynomus.smbj.transport.tcp.async.AsyncDirectTcpTransportFactory;
import com.yunpan.appmanage.bean.WpPathBean;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import okhttp3.Request;
import x9.n5;

/* loaded from: classes.dex */
public final /* synthetic */ class c implements ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2677a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ n5 f2678b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ArrayList f2679c;

    public /* synthetic */ c(ArrayList r12, n5 r22, int r32) {
        this.f2677a = r32;
        this.f2679c = r12;
        this.f2678b = r22;
    }

    @Override // ec.d
    public final void g(mc.b r14) {
        switch(this.f2677a) {
            case 0: goto L194;
            case 1: goto L189;
            case 2: goto L164;
            case 3: goto L136;
            case 4: goto L108;
            case 5: goto L16;
            default: goto L4;
        };
    L4:
        r9.a r02 = qa.g.f(this.f2678b, 60, 16, 16);
        Iterator r12 = this.f2679c.iterator();
        String r22 = "";
    L6:
        if (r12.hasNext() == false) goto L12;
        p000if.a.M0(r02.f13722a.newCall(new Request.Builder().url(r9.a.f(((WpPathBean) r12.next()).path)).delete().build()).execute());     // Catch: Exception -> L10
    L10:
        r22 = "删除失败";
        goto L6
    L12:
        if (r22.isEmpty() == false) goto L14;
        r14.b();
        return;
    L14:
        android.support.v4.media.session.a.B(r22, r14);
        return;
    L16:
        n5 r03 = this.f2678b;
        boolean r13 = r03.f18308u;
        ArrayList r23 = this.f2679c;
        String r4 = "";
        if (r13 == true) goto L222;
        SmbConfig.Builder r15 = SmbConfig.builder().withMultiProtocolNegotiate(true);
        TimeUnit r62 = TimeUnit.SECONDS;
        SMBClient r63 = new SMBClient(r15.withTimeout(300, r62).withSoTimeout(0, r62).withTransportLayerFactory(new AsyncDirectTcpTransportFactory()).build());
        DiskShare r16 = null;
        Connection r72 = r63.connect(r03.f18292c, r03.f18293d);     // Catch: Throwable -> L73 Exception -> L75
    L248:
    L42:
        e = e;
        Session r24 = null;
    L218:
        r4 = qa.f.i(e);     // Catch: Throwable -> L94
        if (r16 != null) goto L231;
    L82:
        if (r24 != null) goto L226;
    L86:
        if (r72 == null) goto L234;
        r72.close();     // Catch: Exception -> L210
        goto L234
    L226:
        r24.close();     // Catch: Exception -> L85
        goto L86
    L231:
        r16.close();     // Catch: Exception -> L81
    L94:
        th = th;
        Session r04 = r24;
    L96:
        if (r16 != null) goto L216;
    L100:
        if (r04 != null) goto L236;
    L104:
        if (r72 != null) goto L241;
    L239:
        r63.close();     // Catch: Exception -> L209
        throw th;
    L290:
        throw th;
    L241:
        r72.close();     // Catch: Exception -> L208
        goto L239
    L236:
        r04.close();     // Catch: Exception -> L103
        goto L104
    L216:
        r16.close();     // Catch: Exception -> L99
    L40:
        th = th;
        r04 = null;
        goto L96
    L38:
        if (r03.f18294e.isEmpty() == false) goto L44;
        AuthenticationContext r05 = AuthenticationContext.guest();     // Catch: Throwable -> L40 Exception -> L42
    L45:
        r04 = r72.authenticate(r05);     // Catch: Throwable -> L40 Exception -> L42
        Iterator r25 = r23.iterator();     // Catch: Throwable -> L59 Exception -> L61
    L47:
        if (r25.hasNext() == false) goto L63;
        WpPathBean r82 = (WpPathBean) r25.next();     // Catch: Throwable -> L59 Exception -> L61
        int r92 = r82.path.indexOf("/", 1);     // Catch: Throwable -> L59 Exception -> L61
        String r10 = r82.path.substring(1, r92);     // Catch: Throwable -> L59 Exception -> L61
        String r93 = r82.path.substring(r92 + 1);     // Catch: Throwable -> L59 Exception -> L61
        DiskShare r102 = (DiskShare) r04.connectShare(r10);     // Catch: Throwable -> L59 Exception -> L61
        if (r82.is_dir == false) goto L57;
        r102.rmdir(r93, true);     // Catch: Throwable -> L53 Exception -> L55
    L58:
        r16 = r102;
        goto L47
    L57:
        r102.rm(r93);     // Catch: Throwable -> L53 Exception -> L55
        goto L58
    L55:
        e = move-exception;
        r24 = r04;
        e = e;
        r16 = r102;
    L53:
        th = th;
        r16 = r102;
        goto L96
    L63:
        if (r16 != null) goto L220;
    L67:
        if (r04 != null) goto L214;
    L69:
        r72.close();     // Catch: Exception -> L210
        goto L234
    L214:
        r04.close();     // Catch: Exception -> L211
        goto L69
    L220:
        r16.close();     // Catch: Exception -> L66
        goto L67
    L61:
        e = move-exception;
        r24 = r04;
        e = e;
    L59:
        th = th;
        goto L96
    L44:
        r05 = new AuthenticationContext(r03.f18294e, r03.f18295f.toCharArray(), r03.f18309v);     // Catch: Throwable -> L40 Exception -> L42
    L75:
        e = e;
        r24 = null;
        r72 = null;
    L73:
        th = th;
        r04 = null;
        r72 = null;
    L234:
        r63.close();     // Catch: Exception -> L72
    L90:
        if (r4.isEmpty() == false) goto L92;
        r14.b();
        return;
    L92:
        android.support.v4.media.session.a.B(r4, r14);
        return;
    L222:
        Iterator r17 = r23.iterator();     // Catch: Exception -> L24
    L19:
        if (r17.hasNext() == false) goto L90;
        WpPathBean r26 = (WpPathBean) r17.next();     // Catch: Exception -> L24
        String r5 = r03.b() + r26.path;     // Catch: Exception -> L24
        if (r26.is_dir == false) goto L26;
        r5 = r5 + "/";     // Catch: Exception -> L24
    L26:
        new t0(r5).f();     // Catch: Exception -> L24
    L24:
        e = move-exception;
        String r06 = da.b.b(e, new StringBuilder(), "");
        if (r06.contains("system cannot find the file") == false) goto L32;
        r06 = "无权限查看此目录";
    L32:
        if (r06.isEmpty() == false) goto L34;
        r06 = "连接失败";
    L34:
        r4 = r06;
        goto L90
    L108:
        String r18 = "删除失败";
        Iterator r07 = this.f2679c.iterator();     // Catch: Exception -> L118
        String r32 = "";
    L110:
        if (r07.hasNext() == false) goto L132;
        WpPathBean r42 = (WpPathBean) r07.next();     // Catch: Exception -> L118
        boolean r52 = r42.is_dir;     // Catch: Exception -> L118
        n5 r64 = this.f2678b;
        if (r52 == true) goto L116;
        if (com.bumptech.glide.c.L(r64.A.l("DELE", r42.path)) == true) goto L110;
    L117:
        r32 = "删除失败";
        goto L110
    L116:
        if (com.bumptech.glide.d.l(r64, r42.path) == true) goto L110;
    L132:
        if (r32.isEmpty() == false) goto L134;
        r14.b();
        return;
    L134:
        android.support.v4.media.session.a.B(r32, r14);
        return;
    L118:
        e = move-exception;
        String r08 = g.b.z(e, new StringBuilder(""));
        if (r08.isEmpty() == true) goto L128;
        r18 = r08;
    L128:
        if (r18.contains("Connection reset") == false) goto L130;
        r32 = "连接中断,请重新选中网盘";
        goto L132
    L130:
        r32 = r18;
        goto L132
    L136:
        String r19 = "删除失败";
        Iterator r09 = this.f2679c.iterator();     // Catch: Exception -> L146
        String r33 = "";
    L138:
        if (r09.hasNext() == false) goto L160;
        WpPathBean r43 = (WpPathBean) r09.next();     // Catch: Exception -> L146
        boolean r53 = r43.is_dir;     // Catch: Exception -> L146
        n5 r65 = this.f2678b;
        if (r53 == true) goto L144;
        if (com.bumptech.glide.c.L(r65.f18311x.l("DELE", r43.path)) == true) goto L138;
    L145:
        r33 = "删除失败";
        goto L138
    L144:
        if (com.bumptech.glide.c.p(r65, r43.path) == true) goto L138;
    L160:
        if (r33.isEmpty() == false) goto L162;
        r14.b();
        return;
    L162:
        android.support.v4.media.session.a.B(r33, r14);
        return;
    L146:
        e = move-exception;
        String r010 = g.b.z(e, new StringBuilder(""));
        if (r010.isEmpty() == true) goto L156;
        r19 = r010;
    L156:
        if (r19.contains("Connection reset") == false) goto L158;
        r33 = "连接中断,请重新选中网盘";
        goto L160
    L158:
        r33 = r19;
        goto L160
    L164:
        n5 r011 = this.f2678b;
        ArrayList r110 = this.f2679c;
        String r012 = "uuid=" + r011.l + "&devType=6&devCode=" + r011.l + "&devModel=chrome&devVersion=140&appVersion=&timestamp=" + s1.g.q(Long.toString(System.currentTimeMillis())) + "&appToken=" + r011.f18300k + "&extra=2";     // Catch: Exception -> L173
        Iterator r111 = r110.iterator();     // Catch: Exception -> L173
        String r27 = "";
        String r34 = "";
    L168:
        if (r111.hasNext() == false) goto L177;
        WpPathBean r44 = (WpPathBean) r111.next();     // Catch: Exception -> L173
        if (r44.is_dir == true) goto L172;
        r27 = r27 + r44.path + ",";     // Catch: Exception -> L173
        goto L168
    L172:
        r34 = r34 + r44.path + ",";     // Catch: Exception -> L173
        goto L168
    L177:
        if (r27.isEmpty() == true) goto L180;
        r27 = r27.substring(0, r27.length() - 1);     // Catch: Exception -> L173
    L180:
        if (r34.isEmpty() == true) goto L182;
        r34 = r34.substring(0, r34.length() - 1);     // Catch: Exception -> L173
    L182:
        z7.s r013 = d.b.b0(s1.g.I("https://api.feejii.com/app/file/delete?" + r012, "{\"fileIds\":\"" + r27 + "\",\"folderIds\":\"" + r34 + "\",\"status\":0}")).g();     // Catch: Exception -> L173
        if (r013.o("code").e() != 200) goto L186;
        r14.b();     // Catch: Exception -> L173
        return;
    L186:
        throw new Exception(r013.o("msg").i());     // Catch: Exception -> L173
    L173:
        e = move-exception;
        r14.d(e);
        return;
    L189:
        String r014 = qf.c.l(this.f2678b, this.f2679c);
        if (r014.isEmpty() == false) goto L192;
        r14.b();
        return;
    L192:
        android.support.v4.media.session.a.B(r014, r14);
        return;
    L194:
        ArrayList r015 = this.f2679c;
        n5 r112 = this.f2678b;
        z7.s r35 = new z7.s();     // Catch: Exception -> L199
        z7.o r45 = new z7.o();     // Catch: Exception -> L199
        Iterator r016 = r015.iterator();     // Catch: Exception -> L199
    L197:
        if (r016.hasNext() == false) goto L201;
        r45.j(((WpPathBean) r016.next()).path);     // Catch: Exception -> L199
        goto L197
    L201:
        r35.j("fileIds", r45);     // Catch: Exception -> L199
        z7.s r017 = d.b.b0(s1.g.H(r112, "https://api.guangyapan.com/userres/v1/file/delete_file", r35.toString())).g();     // Catch: Exception -> L199
        if (r017.o("msg").i().toLowerCase().equals("success") == false) goto L205;
        r14.b();     // Catch: Exception -> L199
        return;
    L205:
        throw new Exception(r017.o("msg").i());     // Catch: Exception -> L199
    L199:
        e = move-exception;
        r14.d(e);
    }

    public /* synthetic */ c(n5 r12, ArrayList r22, int r32) {
        this.f2677a = r32;
        this.f2678b = r12;
        this.f2679c = r22;
    }
}