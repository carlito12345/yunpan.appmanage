package qa;

import ce.t0;
import ce.x0;
import com.hierynomus.msdtyp.AccessMask;
import com.hierynomus.msfscc.FileAttributes;
import com.hierynomus.msfscc.fileinformation.FileIdBothDirectoryInformation;
import com.hierynomus.mssmb2.SMB2CreateDisposition;
import com.hierynomus.mssmb2.SMB2CreateOptions;
import com.hierynomus.mssmb2.SMB2ShareAccess;
import com.hierynomus.smbj.SMBClient;
import com.hierynomus.smbj.SmbConfig;
import com.hierynomus.smbj.auth.AuthenticationContext;
import com.hierynomus.smbj.connection.Connection;
import com.hierynomus.smbj.session.Session;
import com.hierynomus.smbj.share.DiskShare;
import com.hierynomus.smbj.transport.tcp.async.AsyncDirectTcpTransportFactory;
import com.yunpan.appmanage.bean.FtpCopyProgressBean;
import com.yunpan.appmanage.bean.JcifsBean;
import com.yunpan.appmanage.bean.WpPathBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import com.yunpan.appmanage.util.v;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.text.DecimalFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Properties;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import vd.s;
import vd.x;
import x9.n5;

/* loaded from: classes.dex */
public abstract class f {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v15 */
    /* JADX WARN: Type inference failed for: r11v16 */
    /* JADX WARN: Type inference failed for: r11v2, types: [java.io.BufferedOutputStream] */
    /* JADX WARN: Type inference failed for: r11v3, types: [java.io.BufferedOutputStream] */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r12v15 */
    /* JADX WARN: Type inference failed for: r12v16 */
    /* JADX WARN: Type inference failed for: r12v17 */
    /* JADX WARN: Type inference failed for: r12v18 */
    /* JADX WARN: Type inference failed for: r12v19 */
    /* JADX WARN: Type inference failed for: r12v20 */
    /* JADX WARN: Type inference failed for: r12v8, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r12v9, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v14 */
    /* JADX WARN: Type inference failed for: r13v15 */
    /* JADX WARN: Type inference failed for: r13v16 */
    /* JADX WARN: Type inference failed for: r13v17 */
    /* JADX WARN: Type inference failed for: r13v18 */
    /* JADX WARN: Type inference failed for: r13v19, types: [java.io.BufferedOutputStream] */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6, types: [java.io.BufferedOutputStream] */
    /* JADX WARN: Type inference failed for: r13v7, types: [java.io.BufferedOutputStream] */
    /* JADX WARN: Type inference failed for: r5v20, types: [com.hierynomus.smbj.share.DiskShare, com.hierynomus.smbj.share.Share] */
    public static boolean a(WpPathBean r23, String r24, n5 r25) {
        BufferedInputStream r10 = null;
        if (r25.f18308u == true) goto L174;
        int r32 = r23.path.indexOf("/", 1);
        String r12 = r23.path.substring(1, r32);
        String r15 = r23.path.substring(r32 + 1).replace("//", "/").replace("/", "\\");
        SmbConfig.Builder r33 = SmbConfig.builder().withMultiProtocolNegotiate(true);
        TimeUnit r11 = TimeUnit.SECONDS;
        SMBClient r112 = new SMBClient(r33.withTimeout(20, r11).withSoTimeout(20, r11).build());
        Connection r34 = r112.connect(r25.f18292c, r25.f18293d);     // Catch: Throwable -> L97 Exception -> L99
    L48:
        Session r22 = null;
        InputStream r5 = null;
    L49:
        InputStream r62 = r5;
        InputStream r52 = r5;
    L50:
        InputStream r122 = r62;
        InputStream r53 = r52;
    L51:
        ?? r13 = r122;
        InputStream r54 = r53;
        ?? r123 = r122;
    L113:
        android.support.v4.media.session.a.z(r10, r13, r123, r62);
        if (r54 != null) goto L154;
    L118:
        if (r22 != null) goto L156;
    L122:
        if (r34 == null) goto L148;
    L140:
        r34.close();     // Catch: Exception -> L133
    L148:
        r112.close();     // Catch: Exception -> L125
    L124:
        return false;
    L156:
        r22.close();     // Catch: Exception -> L121
        goto L122
    L154:
        r54.close();     // Catch: Exception -> L117
    L43:
        th = th;
        r22 = null;
        InputStream r55 = null;
    L45:
        r62 = r55;
        InputStream r56 = r55;
    L46:
        InputStream r124 = r62;
        InputStream r57 = r56;
    L47:
        r13 = r124;
        InputStream r58 = r57;
        ?? r125 = r124;
    L100:
        android.support.v4.media.session.a.z(r10, r13, r125, r62);
        if (r58 != null) goto L142;
    L105:
        if (r22 != null) goto L158;
    L109:
        if (r34 != null) goto L162;
    L160:
        r112.close();     // Catch: Exception -> L135
        throw th;
    L192:
        throw th;
    L162:
        r34.close();     // Catch: Exception -> L134
        goto L160
    L158:
        r22.close();     // Catch: Exception -> L108
        goto L109
    L142:
        r58.close();     // Catch: Exception -> L104
        goto L105
    L41:
        if (r25.f18294e.isEmpty() == false) goto L52;
        AuthenticationContext r26 = AuthenticationContext.guest();     // Catch: Throwable -> L43 Exception -> L48
    L53:
        r22 = r34.authenticate(r26);     // Catch: Throwable -> L43 Exception -> L48
    L172:
        ?? r59 = (DiskShare) r22.connectShare(r12);     // Catch: Throwable -> L94 Exception -> L96
    L186:
        HashSet r63 = new HashSet();     // Catch: Throwable -> L91 Exception -> L93
        r63.add(AccessMask.GENERIC_READ);     // Catch: Throwable -> L91 Exception -> L93
        HashSet r126 = new HashSet();     // Catch: Throwable -> L91 Exception -> L93
        r126.add(SMB2ShareAccess.FILE_SHARE_READ);     // Catch: Throwable -> L91 Exception -> L93
        r62 = r59.openFile(r15, r63, null, r126, SMB2CreateDisposition.FILE_OPEN, null).getInputStream();     // Catch: Throwable -> L91 Exception -> L93
        FileOutputStream r127 = new FileOutputStream(r24);     // Catch: Throwable -> L88 Exception -> L90
        BufferedInputStream r14 = new BufferedInputStream(r62);     // Catch: Throwable -> L85 Exception -> L87
        r13 = new BufferedOutputStream(r127);     // Catch: Throwable -> L82 Exception -> L84
    L180:
        byte[] r72 = new byte[PKIFailureInfo.signerNotTrusted];     // Catch: Throwable -> L63 Exception -> L65
        long r21 = 0;
    L60:
        int r102 = r14.read(r72);     // Catch: Throwable -> L63 Exception -> L65
        if (r102 == (-1)) goto L67;
        r13.write(r72, 0, r102);     // Catch: Throwable -> L63 Exception -> L65
        r13.flush();     // Catch: Throwable -> L63 Exception -> L65
        r21 = r21 + r102;     // Catch: Throwable -> L63 Exception -> L65
        goto L60
    L67:
        goto L66
    L69:
        if (r21 < r23.size_long) goto L76;
        android.support.v4.media.session.a.z(r14, r13, r127, r62);
        r59.close();     // Catch: Exception -> L127
    L152:
        r22.close();     // Catch: Exception -> L128
    L150:
        r34.close();     // Catch: Exception -> L129
    L138:
        r112.close();     // Catch: Exception -> L130
    L75:
        return true;
    L76:
        android.support.v4.media.session.a.z(r14, r13, r127, r62);
        r59.close();     // Catch: Exception -> L131
    L144:
        r22.close();     // Catch: Exception -> L132
    L63:
        th = th;
    L64:
        r10 = r14;
        r58 = r59;
        r125 = r127;
    L66:
        r10 = r14;
        r54 = r59;
        r123 = r127;
    L84:
        r13 = null;
    L82:
        th = th;
        r13 = null;
        goto L64
    L87:
        r13 = null;
        r54 = r59;
        r123 = r127;
    L85:
        th = th;
        r13 = null;
        r58 = r59;
        r125 = r127;
        goto L100
    L90:
        r122 = null;
        r53 = r59;
    L88:
        th = th;
        r124 = null;
        r57 = r59;
        goto L47
    L93:
        r62 = null;
        r52 = r59;
    L91:
        th = th;
        r62 = null;
        r56 = r59;
    L96:
        r5 = null;
    L94:
        th = th;
        r55 = null;
        goto L45
    L52:
        r26 = new AuthenticationContext(r25.f18294e, r25.f18295f.toCharArray(), r25.f18309v);     // Catch: Throwable -> L43 Exception -> L48
        goto L53
    L99:
        r22 = null;
        r34 = null;
        r5 = null;
    L97:
        th = th;
        r22 = null;
        r34 = null;
        r55 = null;
        goto L45
    L174:
        InputStream r27 = new t0(r25.b() + r23.path).getInputStream();     // Catch: Throwable -> L32 Exception -> L34
        FileOutputStream r35 = new FileOutputStream(r24);     // Catch: Throwable -> L27 Exception -> L30
        BufferedInputStream r16 = new BufferedInputStream(r27);     // Catch: Throwable -> L24 Exception -> L26
        BufferedOutputStream r113 = new BufferedOutputStream(r35);     // Catch: Throwable -> L21 Exception -> L23
    L188:
        byte[] r73 = new byte[PKIFailureInfo.signerNotTrusted];     // Catch: Throwable -> L12 Exception -> L126
        long r510 = 0;
    L9:
        int r103 = r16.read(r73);     // Catch: Throwable -> L12 Exception -> L126
        if (r103 == (-1)) goto L15;
        r113.write(r73, 0, r103);     // Catch: Throwable -> L12 Exception -> L126
        r113.flush();     // Catch: Throwable -> L12 Exception -> L126
        r510 = r510 + r103;     // Catch: Throwable -> L12 Exception -> L126
        goto L9
    L15:
        goto L14
    L17:
        if (r510 < r23.size_long) goto L20;
        android.support.v4.media.session.a.z(r16, r113, r35, r27);
        return true;
    L20:
        android.support.v4.media.session.a.z(r16, r113, r35, r27);
    L12:
        th = th;
    L13:
        r10 = r16;
        ?? r114 = r113;
    L35:
        android.support.v4.media.session.a.z(r10, r114, r35, r27);
        throw th;
    L14:
        r10 = r16;
        ?? r115 = r113;
    L37:
        android.support.v4.media.session.a.z(r10, r115, r35, r27);
    L23:
        r113 = null;
    L21:
        th = th;
        r113 = null;
        goto L13
    L26:
        r115 = 0;
    L24:
        th = th;
        r114 = 0;
        goto L35
    L30:
        r35 = null;
    L31:
        r115 = r35;
    L27:
        th = th;
        r35 = null;
    L29:
        r114 = r35;
        goto L35
    L34:
        r27 = null;
        r35 = null;
    L32:
        th = th;
        r27 = null;
        r35 = null;
        goto L29
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [com.hierynomus.smbj.connection.Connection] */
    /* JADX WARN: Type inference failed for: r0v11, types: [com.hierynomus.smbj.connection.Connection] */
    /* JADX WARN: Type inference failed for: r0v13, types: [com.hierynomus.smbj.connection.Connection] */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.hierynomus.smbj.SmbConfig] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r10v0, types: [x9.n5] */
    /* JADX WARN: Type inference failed for: r10v13, types: [com.hierynomus.smbj.session.Session] */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6, types: [com.hierynomus.smbj.session.Session] */
    /* JADX WARN: Type inference failed for: r10v7, types: [com.hierynomus.smbj.session.Session] */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r10v9 */
    public static WpPathBean b(WpPathBean r82, String r92, n5 r10) {
        AutoCloseable r22 = null;
        if (r10.f18308u == true) goto L79;
        SmbConfig.Builder r02 = SmbConfig.builder().withMultiProtocolNegotiate(true);
        TimeUnit r4 = TimeUnit.SECONDS;
        ?? r03 = r02.withTimeout(18, r4).withSoTimeout(18, r4).build();
        SMBClient r42 = new SMBClient(r03);
        r03 = r42.connect(r10.f18292c, r10.f18293d);     // Catch: Throwable -> L39 Exception -> L41
    L107:
    L16:
        e = e;
        r10 = 0;
        DiskShare r32 = null;
    L43:
        i(e);     // Catch: Throwable -> L29
        if (r32 != null) goto L99;
    L48:
        if (r10 != 0) goto L81;
    L52:
        if (r03 == 0) goto L87;
        r03.close();     // Catch: Exception -> L74
    L87:
        r42.close();     // Catch: Exception -> L75
    L55:
        return null;
    L81:
        r10.close();     // Catch: Exception -> L51
        goto L52
    L99:
        r32.close();     // Catch: Exception -> L47
    L14:
        th = th;
        r10 = 0;
    L56:
        if (r22 != null) goto L93;
    L60:
        if (r10 != 0) goto L103;
    L64:
        if (r03 != 0) goto L97;
    L83:
        r42.close();     // Catch: Exception -> L73
        throw th;
    L109:
        throw th;
    L97:
        r03.close();     // Catch: Exception -> L72
        goto L83
    L103:
        r10.close();     // Catch: Exception -> L63
        goto L64
    L93:
        r22.close();     // Catch: Exception -> L59
        goto L60
    L12:
        if (r10.f18294e.isEmpty() == false) goto L18;
        AuthenticationContext r102 = AuthenticationContext.guest();     // Catch: Throwable -> L14 Exception -> L16
    L19:
        r10 = r03.authenticate(r102);     // Catch: Throwable -> L14 Exception -> L16
        int r5 = r82.path.indexOf("/", 1);     // Catch: Throwable -> L33 Exception -> L35
        if (r5 == (-1)) goto L38;
        String r33 = r82.path.substring(1, r5);     // Catch: Throwable -> L33 Exception -> L35
        String r52 = r82.path.substring(r5);     // Catch: Throwable -> L33 Exception -> L35
        r32 = (DiskShare) r10.connectShare(r33);     // Catch: Throwable -> L33 Exception -> L35
        r32.mkdir(r52 + r92);     // Catch: Throwable -> L29 Exception -> L31
        WpPathBean r53 = new WpPathBean(r92, r82.path + r92 + "/");     // Catch: Throwable -> L29 Exception -> L31
        DecimalFormat r83 = k.f4034u0;     // Catch: Throwable -> L29 Exception -> L31
        r53.time_txt = j.f4033a.f4038b0.format(new Date());     // Catch: Throwable -> L29 Exception -> L31
        r32.close();     // Catch: Exception -> L68
    L95:
        r10.close();     // Catch: Exception -> L69
    L91:
        r03.close();     // Catch: Exception -> L70
    L89:
        r42.close();     // Catch: Exception -> L71
    L28:
        return r53;
    L31:
        e = e;
        goto L43
    L38:
        throw new Exception("共享名错误");     // Catch: Throwable -> L33 Exception -> L35
    L35:
        e = e;
        r32 = null;
    L33:
        th = th;
        goto L56
    L18:
        r102 = new AuthenticationContext(r10.f18294e, r10.f18295f.toCharArray(), r10.f18309v);     // Catch: Throwable -> L14 Exception -> L16
    L29:
        th = th;
        r22 = 1;
    L41:
        e = e;
        r10 = 0;
        r03 = 0;
        r32 = null;
    L39:
        th = th;
        r10 = 0;
        r03 = 0;
        goto L56
    L79:
        new t0(r10.b() + "/" + r92).y();     // Catch: Exception -> L6
        WpPathBean r103 = new WpPathBean(r92, r82.path + r92 + "/");     // Catch: Exception -> L6
        DecimalFormat r84 = k.f4034u0;     // Catch: Exception -> L6
        r103.time_txt = j.f4033a.f4038b0.format(new Date());     // Catch: Exception -> L6
        return r103;
    L6:
        e = move-exception;
        (e.getMessage() + "").contains("system cannot find the file");
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v12, types: [java.io.BufferedOutputStream, java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r11v2, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r11v23 */
    /* JADX WARN: Type inference failed for: r11v25, types: [com.hierynomus.smbj.share.Share] */
    /* JADX WARN: Type inference failed for: r11v26, types: [com.hierynomus.smbj.share.Share] */
    /* JADX WARN: Type inference failed for: r11v3, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r11v33, types: [com.hierynomus.smbj.share.DiskShare, com.hierynomus.smbj.share.Share] */
    /* JADX WARN: Type inference failed for: r11v34 */
    /* JADX WARN: Type inference failed for: r11v35 */
    /* JADX WARN: Type inference failed for: r11v36 */
    /* JADX WARN: Type inference failed for: r11v39 */
    /* JADX WARN: Type inference failed for: r11v40 */
    /* JADX WARN: Type inference failed for: r11v45 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v15, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r12v8, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r12v9, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v10 */
    /* JADX WARN: Type inference failed for: r15v11 */
    /* JADX WARN: Type inference failed for: r15v12 */
    /* JADX WARN: Type inference failed for: r15v13, types: [java.io.BufferedOutputStream, java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r15v2, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r15v3, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r15v7 */
    /* JADX WARN: Type inference failed for: r15v8 */
    /* JADX WARN: Type inference failed for: r15v9 */
    public static String c(FtpCopyProgressBean r20, String r21, String r22) {
        if (r20.isStop == false) goto L6;
        return "已主动停止下载";
    L6:
        String r4 = "主动停止任务";
        int r5 = -1;
        int r72 = 0;
        BufferedInputStream r82 = null;
        if (r20.userInfo.f18308u == true) goto L311;
        int r11 = r21.indexOf("/", 1);
        String r12 = r21.substring(1, r11);
        String r14 = r21.substring(r11 + 1).replace("//", "/").replace("/", "\\");
        SmbConfig.Builder r13 = SmbConfig.builder().withMultiProtocolNegotiate(true);
        TimeUnit r32 = TimeUnit.SECONDS;
        SMBClient r33 = new SMBClient(r13.withTimeout(0, r32).withSoTimeout(0, r32).withEncryptData(false).withTransportLayerFactory(new AsyncDirectTcpTransportFactory()).build());
        n5 r15 = r20.userInfo;     // Catch: Throwable -> L146 Exception -> L148
        Connection r16 = r33.connect(r15.f18292c, r15.f18293d);     // Catch: Throwable -> L146 Exception -> L148
    L89:
        e = e;
        Session r10 = null;
    L91:
        Session r112 = r10;
    L92:
        ?? r122 = r112;
        Session r113 = r112;
    L93:
        FileOutputStream r132 = r122;
        Session r114 = r113;
    L94:
        ?? r152 = r132;
        ?? r115 = r114;
        FileOutputStream r133 = r132;
    L246:
        r4 = i(e);     // Catch: Throwable -> L182
        if (r82 != null) goto L244;
    L155:
        if (r152 != null) goto L248;
    L159:
        if (r122 != null) goto L262;
    L163:
        if (r133 != null) goto L268;
    L167:
        if (r115 != 0) goto L264;
    L171:
        if (r10 != null) goto L256;
    L175:
        if (r16 == null) goto L124;
        r16.close();     // Catch: Exception -> L222
    L274:
        goto L124
    L256:
        r10.close();     // Catch: Exception -> L174
        goto L175
    L264:
        r115.close();     // Catch: Exception -> L170
        goto L171
    L268:
        r133.close();     // Catch: Exception -> L166
        goto L167
    L262:
        r122.close();     // Catch: Exception -> L162
        goto L163
    L248:
        r152.close();     // Catch: Exception -> L158
        goto L159
    L244:
        r82.close();     // Catch: Exception -> L154
    L182:
        th = th;
    L183:
        if (r82 != null) goto L270;
    L187:
        if (r152 != null) goto L281;
    L191:
        if (r122 != null) goto L238;
    L195:
        if (r133 != null) goto L242;
    L199:
        if (r115 != 0) goto L229;
    L203:
        if (r10 != null) goto L234;
    L207:
        if (r16 != null) goto L252;
    L250:
        r33.close();     // Catch: Exception -> L224
    L211:
        throw th;
    L252:
        r16.close();     // Catch: Exception -> L223
        goto L250
    L234:
        r10.close();     // Catch: Exception -> L206
        goto L207
    L229:
        r115.close();     // Catch: Exception -> L202
        goto L203
    L242:
        r133.close();     // Catch: Exception -> L198
        goto L199
    L238:
        r122.close();     // Catch: Exception -> L194
        goto L195
    L281:
        r152.close();     // Catch: Exception -> L190
        goto L191
    L270:
        r82.close();     // Catch: Exception -> L186
    L83:
        th = th;
        r10 = null;
    L85:
        Session r116 = r10;
    L86:
        r122 = r116;
        Session r117 = r116;
    L87:
        r133 = r122;
        r115 = r117;
    L88:
        r152 = r133;
        goto L183
    L81:
        if (r20.userInfo.f18294e.isEmpty() == false) goto L95;
        AuthenticationContext r102 = AuthenticationContext.guest();     // Catch: Throwable -> L83 Exception -> L89
    L96:
        r10 = r16.authenticate(r102);     // Catch: Throwable -> L83 Exception -> L89
        r115 = (DiskShare) r10.connectShare(r12);     // Catch: Throwable -> L142 Exception -> L144
        HashSet r153 = new HashSet();     // Catch: Throwable -> L138 Exception -> L140
        r153.add(AccessMask.GENERIC_READ);     // Catch: Throwable -> L138 Exception -> L140
        HashSet r123 = new HashSet();     // Catch: Throwable -> L138 Exception -> L140
        r123.add(SMB2ShareAccess.FILE_SHARE_READ);     // Catch: Throwable -> L138 Exception -> L140
        r122 = r115.openFile(r14, r153, null, r123, SMB2CreateDisposition.FILE_OPEN, null).getInputStream();     // Catch: Throwable -> L138 Exception -> L140
    L307:
        r133 = new FileOutputStream(r22);     // Catch: Throwable -> L134 Exception -> L136
        BufferedInputStream r142 = new BufferedInputStream(r122);     // Catch: Throwable -> L130 Exception -> L132
    L315:
        r152 = new BufferedOutputStream(r133);     // Catch: Throwable -> L126 Exception -> L128
        byte[] r62 = new byte[PKIFailureInfo.signerNotTrusted];     // Catch: Throwable -> L109 Exception -> L111
    L103:
        int r83 = r142.read(r62);     // Catch: Throwable -> L109 Exception -> L111
        if (r83 == r5) goto L113;
        r152.write(r62, r72, r83);     // Catch: Throwable -> L109 Exception -> L111
        r152.flush();     // Catch: Throwable -> L109 Exception -> L111
        r20.size_success.getAndAdd(r83);     // Catch: Throwable -> L109 Exception -> L111
        if (r20.isStop == true) goto L260;
        r5 = -1;
        r72 = 0;
    L260:
        r142.close();     // Catch: Exception -> L217
    L283:
        r152.close();     // Catch: Exception -> L117
    L118:
        if (r122 != null) goto L291;
    L289:
        r133.close();     // Catch: Exception -> L219
    L287:
        r115.close();     // Catch: Exception -> L220
    L277:
        r10.close();     // Catch: Exception -> L221
    L123:
        r16.close();     // Catch: Exception -> L222
        goto L274
    L291:
        r122.close();     // Catch: Exception -> L218
        goto L289
    L113:
        r4 = "";
        goto L260
    L111:
        e = e;
    L112:
        r82 = r142;
        r115 = r115;
        r133 = r133;
    L109:
        th = th;
    L110:
        r82 = r142;
        goto L183
    L128:
        e = e;
        r152 = null;
    L126:
        th = th;
        r152 = null;
    L132:
        e = e;
        r152 = null;
        r115 = r115;
        r133 = r133;
    L130:
        th = th;
        r152 = null;
        goto L183
    L136:
        e = e;
        r132 = null;
        r114 = r115;
    L134:
        th = th;
        r133 = null;
        r115 = r115;
    L140:
        e = e;
        r122 = null;
        r113 = r115;
    L138:
        th = th;
        r122 = null;
        r117 = r115;
        goto L87
    L144:
        e = e;
        r112 = null;
    L142:
        th = th;
        r116 = null;
        goto L86
    L95:
        n5 r118 = r20.userInfo;     // Catch: Throwable -> L83 Exception -> L89
        r102 = new AuthenticationContext(r118.f18294e, r118.f18295f.toCharArray(), r20.userInfo.f18309v);     // Catch: Throwable -> L83 Exception -> L89
        goto L96
    L148:
        e = e;
        r16 = null;
        r10 = null;
    L146:
        th = th;
        r16 = null;
        r10 = null;
    L124:
        r33.close();     // Catch: Exception -> L28
        goto L231
    L311:
        InputStream r17 = new t0(r20.userInfo.b() + r21).getInputStream();     // Catch: Throwable -> L43 Exception -> L45
        FileOutputStream r34 = new FileOutputStream(r22);     // Catch: Throwable -> L37 Exception -> L40
    L318:
        BufferedInputStream r103 = new BufferedInputStream(r17);     // Catch: Throwable -> L33 Exception -> L35
        ?? r119 = new BufferedOutputStream(r34);     // Catch: Throwable -> L29 Exception -> L31
        byte[] r63 = new byte[PKIFailureInfo.signerNotTrusted];     // Catch: Throwable -> L18 Exception -> L20
    L13:
        int r84 = r103.read(r63);     // Catch: Throwable -> L18 Exception -> L20
        if (r84 == (-1)) goto L22;
        r119.write(r63, 0, r84);     // Catch: Throwable -> L18 Exception -> L20
        r119.flush();     // Catch: Throwable -> L18 Exception -> L20
        r20.size_success.getAndAdd(r84);     // Catch: Throwable -> L18 Exception -> L20
        if (r20.isStop == false) goto L13;
    L227:
        r103.close();     // Catch: Exception -> L213
    L225:
        r119.close();     // Catch: Exception -> L214
    L236:
        r17.close();     // Catch: Exception -> L215
    L26:
        r34.close();     // Catch: Exception -> L28
        goto L231
    L22:
        r4 = "";
        goto L227
    L20:
        e = e;
    L21:
        r82 = r103;
        r119 = r119;
    L240:
        e.printStackTrace();     // Catch: Throwable -> L62
        r4 = "下载失败";
        if (r82 != null) goto L266;
    L52:
        if (r119 != 0) goto L258;
    L56:
        if (r17 != null) goto L254;
    L60:
        if (r34 != null) goto L26;
    L179:
        if (new File(r22).exists() == false) goto L181;
        MyDb.get().addFile(r22);
    L181:
        return r4;
    L254:
        r17.close();     // Catch: Exception -> L59
        goto L60
    L258:
        r119.close();     // Catch: Exception -> L55
        goto L56
    L266:
        r82.close();     // Catch: Exception -> L51
    L62:
        th = th;
    L63:
        if (r82 != null) goto L285;
    L67:
        if (r119 != 0) goto L293;
    L71:
        if (r17 != null) goto L279;
    L75:
        if (r34 == null) goto L325;
        r34.close();     // Catch: Exception -> L216
        throw th;
    L326:
        throw th;
    L325:
        throw th;
    L279:
        r17.close();     // Catch: Exception -> L74
        goto L75
    L293:
        r119.close();     // Catch: Exception -> L70
        goto L71
    L285:
        r82.close();     // Catch: Exception -> L66
    L18:
        th = th;
    L19:
        r82 = r103;
        goto L63
    L31:
        e = e;
        r119 = 0;
    L29:
        th = th;
        r119 = 0;
        goto L19
    L35:
        e = e;
        r119 = 0;
    L33:
        th = th;
        r119 = 0;
    L40:
        e = e;
        r34 = null;
    L42:
        r119 = r34;
    L37:
        th = th;
        r34 = null;
    L39:
        r119 = r34;
        goto L63
    L45:
        e = e;
        r17 = null;
        r34 = null;
    L43:
        th = th;
        r17 = null;
        r34 = null;
    L231:
        goto L179
    }

    public static void d(DiskShare r19, String r20, String r21) {
        DiskShare r02 = r19;
        String r82 = r20;
        r02.mkdir(r21);     // Catch: Exception -> L21
    L4:
        HashSet r10 = new HashSet();
        r10.add(AccessMask.GENERIC_ALL);
        HashSet r11 = new HashSet();
        r11.add(SMB2CreateOptions.FILE_RANDOM_ACCESS);
        Iterator<FileIdBothDirectoryInformation> r15 = r02.list(r82.replace("//", "/").replace("/", "\\")).iterator();
    L6:
        if (r15.hasNext() == false) goto L20;
        FileIdBothDirectoryInformation r12 = r15.next();
        String r22 = r12.getFileName();
        if (r22.replace(".", "").isEmpty() == true) goto L6;
        String r32 = r82.concat(r22);
        String r72 = g.b.j(r21, r22);
        if ((r12.getFileAttributes() & FileAttributes.FILE_ATTRIBUTE_DIRECTORY.getValue()) == 0) goto L13;
        d(r02, g.b.j(r32, "/"), r72 + "/");
    L19:
        r02 = r19;
        r82 = r20;
        goto L6
    L13:
        String r23 = r32.replace("//", "/").replace("/", "\\").substring(1);
        Set<SMB2ShareAccess> r16 = SMB2ShareAccess.ALL;
        com.hierynomus.smbj.share.File r73 = r19.openFile(r23, r10, null, r16, SMB2CreateDisposition.FILE_OPEN, null);
        com.hierynomus.smbj.share.File r13 = r19.openFile(r72.replace("//", "/").replace("/", "\\").substring(1), r10, null, r16, SMB2CreateDisposition.FILE_OVERWRITE_IF, r11);
        r73.remoteCopyTo(r13);     // Catch: Exception -> L22 Throwable -> L16
    L16:
        th = move-exception;
        r73.close();
        r13.close();
        throw th;
    L15:
        r73.close();
        r13.close();
        goto L19
    }

    public static JcifsBean e(n5 r13, String r14) {
        JcifsBean r02 = new JcifsBean();
        r02.url = r14;
        if (r13.f18308u == true) goto L38;
        int r4 = r14.indexOf("/", 1);
        String r5 = r14.substring(1, r4);
        String r72 = r14.substring(r4 + 1).replace("/", "\\");
        System.out.getClass();
        SmbConfig.Builder r142 = SmbConfig.builder().withMultiProtocolNegotiate(true);
        TimeUnit r12 = TimeUnit.SECONDS;
        SMBClient r15 = new SMBClient(r142.withTimeout(0, r12).withSoTimeout(0, r12).withReadTimeout(0, r12).build());     // Catch: Exception -> L13
        r02.client = r15;     // Catch: Exception -> L13
        r02.connection = r15.connect(r13.f18292c, r13.f18293d);     // Catch: Exception -> L13
        if (r13.f18294e.isEmpty() == false) goto L14;
        AuthenticationContext r132 = AuthenticationContext.guest();     // Catch: Exception -> L13
    L15:
        Session r133 = r02.connection.authenticate(r132);     // Catch: Exception -> L13
        r02.session = r133;     // Catch: Exception -> L13
        r02.share = (DiskShare) r133.connectShare(r5);     // Catch: Exception -> L13
        HashSet r82 = new HashSet();     // Catch: Exception -> L13
        r82.add(AccessMask.GENERIC_READ);     // Catch: Exception -> L13
        HashSet r10 = new HashSet();     // Catch: Exception -> L13
        r10.add(SMB2ShareAccess.FILE_SHARE_READ);     // Catch: Exception -> L13
        r02.in = r02.share.openFile(r72, r82, null, r10, SMB2CreateDisposition.FILE_OPEN, null).getInputStream();     // Catch: Exception -> L13
    L16:
        return r02;
    L14:
        r132 = new AuthenticationContext(r13.f18294e, r13.f18295f.toCharArray(), r13.f18309v);     // Catch: Exception -> L13
    L17:
        DiskShare r134 = r02.share;
        if (r134 != null) goto L44;
    L21:
        Session r135 = r02.session;
        if (r135 != null) goto L48;
    L25:
        Connection r136 = r02.connection;
        if (r136 != null) goto L40;
    L29:
        SMBClient r137 = r02.client;
        if (r137 != null) goto L46;
    L33:
        return null;
    L46:
        r137.close();     // Catch: Exception -> L34
    L32:
        r02.client = null;
        goto L33
    L40:
        r136.close();     // Catch: Exception -> L35
    L28:
        r02.connection = null;
        goto L29
    L48:
        r135.close();     // Catch: Exception -> L36
    L24:
        r02.session = null;
        goto L25
    L44:
        r134.close();     // Catch: Exception -> L37
    L20:
        r02.share = null;
        goto L21
    L38:
        r02.in = new t0(r13.b() + r14).getInputStream();     // Catch: Exception -> L6
    L6:
        e = move-exception;
        e.printStackTrace();
        q4.a.e(r02.in);
        return null;
    }

    public static InputStream f(n5 r4, String r5) {
        if (r4.f18308u == true) goto L10;
        Properties r02 = new Properties();
        if (r4.f18309v.isEmpty() == true) goto L8;
        r02.setProperty("jcifs.smb.client.domain", r4.f18309v);
    L8:
        r02.setProperty("jcifs.smb.client.username", r4.f18294e);
        r02.setProperty("jcifs.smb.client.password", r4.f18295f);
        xc.a r03 = new xc.a(new wc.a(r02));
        StringBuilder r22 = new StringBuilder("smb://");
        r22.append(r4.f18292c);
        r22.append(":");
        return new s(android.support.v4.media.session.a.s(r22, r4.f18293d, r5), r03).getInputStream();
    L10:
        return new t0(r4.b() + r5).getInputStream();
    }

    public static Object g(n5 r4, String r5) {
        if (r4.f18308u == true) goto L5;
        Properties r02 = new Properties();
        if (r4.f18309v.isEmpty() == true) goto L9;
        r02.setProperty("jcifs.smb.client.domain", r4.f18309v);
    L9:
        r02.setProperty("jcifs.smb.client.username", r4.f18294e);
        r02.setProperty("jcifs.smb.client.password", r4.f18295f);
        xc.a r03 = new xc.a(new wc.a(r02));
        StringBuilder r22 = new StringBuilder("smb://");
        r22.append(r4.f18292c);
        r22.append(":");
        return new x(new s(android.support.v4.media.session.a.s(r22, r4.f18293d, r5), r03));
    L5:
        return new x0(new t0(r4.b() + r5));
    }

    public static void h(FtpCopyProgressBean r10, WpPathBean r11) {
        if (r10.isStop == false) goto L5;
        return;
    L5:
        String r02 = (r10.rootDirPath_to + "/" + r11.path.substring(r10.rootDirPath_form.length())).replace("//", "/");
        System.out.getClass();
        new File(r02).mkdir();
        if (new File(r02).exists() == false) goto L25;
        MyDb.get().addFile(r02);
    L25:
        t0[] r03 = new t0(r10.userInfo.b() + r11.path).x();     // Catch: Exception -> L24
        int r22 = r03.length;     // Catch: Exception -> L24
        int r4 = 0;
    L9:
        if (r4 >= r22) goto L31;
        t0 r5 = r03[r4];     // Catch: Exception -> L24
        WpPathBean r62 = new WpPathBean();     // Catch: Exception -> L24
        String r72 = r5.p();     // Catch: Exception -> L24
        r62.name = r72;     // Catch: Exception -> L24
        if (v.f4106a.f4129l0 == false) goto L13;
    L15:
        DecimalFormat r73 = k.f4034u0;     // Catch: Exception -> L24
        r62.time_txt = j.f4033a.f4038b0.format(Long.valueOf(r5.getLastModified()));     // Catch: Exception -> L24
        boolean r74 = r5.u();     // Catch: Exception -> L24
        r62.is_dir = r74;     // Catch: Exception -> L24
        if (r74 == true) goto L18;
        r62.path = r11.path + "/" + r62.name;     // Catch: Exception -> L24
        long r75 = r5.w();     // Catch: Exception -> L24
        r62.size_long = r75;     // Catch: Exception -> L24
        r62.size_txt = p000if.a.D0((double) r75);     // Catch: Exception -> L24
        r10.filePaths.add(r62);     // Catch: Exception -> L24
    L22:
        r4 = r4 + 1;
        goto L9
    L18:
        if (r62.name.endsWith("/") == false) goto L20;
        r62.name = r62.name.substring(0, r5.length() - 1);     // Catch: Exception -> L24
    L20:
        r62.path = r11.path + r62.name + "/";     // Catch: Exception -> L24
        h(r10, r62);     // Catch: Exception -> L24
        goto L22
    L13:
        if (r72.startsWith(".") == false) goto L15;
    L31:
        return;
    }

    public static String i(Exception r22) {
        r22.printStackTrace();
        String r23 = ("" + r22.getMessage()).replace("com.hierynomus.smbj", "");
        if (r23.contains("SMBv1 is not supported by SMBJ") == false) goto L6;
        r23 = "协议识别出错";
    L30:
        if (r23.isEmpty() == false) goto L33;
        return "连接失败";
    L33:
        return r23;
    L6:
        if (r23.contains("Authentication failed") == false) goto L8;
    L28:
        r23 = "用户名或密码错误";
        goto L30
    L8:
        if (r23.contains("STATUS_ACCOUNT_DISABLED") == true) goto L28;
        if (r23.contains("STATUS_BAD_NETWORK_NAME") == false) goto L14;
        r23 = "请确保分享目录正确";
        goto L30
    L14:
        if (r23.contains("STATUS_INVALID_PARAMETER") == false) goto L17;
        r23 = "无效的参数";
        goto L30
    L17:
        if (r23.contains("STATUS_OBJECT_NAME_COLLISION") == false) goto L20;
        r23 = "目录已存在";
        goto L30
    L20:
        if (r23.contains("STATUS_OBJECT_NAME_NOT_FOUND") == false) goto L23;
        r23 = "不存在";
        goto L30
    L23:
        if (r23.contains("STATUS_ACCESS_DENIED") == false) goto L26;
        r23 = "无权限";
        goto L30
    L26:
        if (r23.contains("Timeout expired") == false) goto L30;
        r23 = "连接超时";
        goto L30
    }

    public static void j(FtpCopyProgressBean r11, DiskShare r12, WpPathBean r13) {
        if (r11.isStop == false) goto L5;
        return;
    L5:
        String r14 = (r11.rootDirPath_to + "/" + r13.path.substring(r11.rootDirPath_form.length())).replace("//", "/");
        new File(r14).mkdir();
        if (new File(r14).exists() == false) goto L26;
        MyDb.get().addFile(r14);
    L26:
        Iterator<FileIdBothDirectoryInformation> r15 = r12.list(r13.path.substring(r13.path.indexOf("/", 1) + 1).replace("/", "\\")).iterator();     // Catch: Exception -> L25
    L9:
        if (r15.hasNext() == false) goto L41;
        FileIdBothDirectoryInformation r4 = r15.next();     // Catch: Exception -> L25
        WpPathBean r5 = new WpPathBean(r4.getFileName(), r13.path + r4.getFileName());     // Catch: Exception -> L25
        if (r5.name.replace(".", "").isEmpty() == true) goto L9;
        if (v.f4106a.f4129l0 == true) goto L19;
        if (r5.name.startsWith(".") == true) goto L9;
    L19:
        Date r62 = r4.getLastWriteTime().toDate();     // Catch: Exception -> L25
        DecimalFormat r72 = k.f4034u0;     // Catch: Exception -> L25
        r5.time_txt = j.f4033a.f4038b0.format(r62);     // Catch: Exception -> L25
        if ((r4.getFileAttributes() & FileAttributes.FILE_ATTRIBUTE_DIRECTORY.getValue()) != 0) goto L21;
        r5.is_dir = false;     // Catch: Exception -> L25
        long r63 = r4.getEndOfFile();     // Catch: Exception -> L25
        r5.size_long = r63;     // Catch: Exception -> L25
        r5.size_txt = p000if.a.D0(r63);     // Catch: Exception -> L25
        r11.filePaths.add(r5);     // Catch: Exception -> L25
        goto L9
    L21:
        r5.is_dir = true;     // Catch: Exception -> L25
        r5.path += "/";
        j(r11, r12, r5);     // Catch: Exception -> L25
        goto L9
    L41:
        return;
    }
}