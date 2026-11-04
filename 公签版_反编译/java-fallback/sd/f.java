package sd;

import androidx.fragment.app.b0;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import vc.l;
import vc.m;

/* loaded from: classes.dex */
public final class f implements Runnable, vc.k {

    /* renamed from: y, reason: collision with root package name */
    public static final Logger f14500y = null;

    /* renamed from: a, reason: collision with root package name */
    public final Object f14501a;

    /* renamed from: b, reason: collision with root package name */
    public int f14502b;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f14503c;

    /* renamed from: d, reason: collision with root package name */
    public final HashSet f14504d;

    /* renamed from: e, reason: collision with root package name */
    public final int f14505e;

    /* renamed from: f, reason: collision with root package name */
    public int f14506f;

    /* renamed from: g, reason: collision with root package name */
    public final byte[] f14507g;

    /* renamed from: h, reason: collision with root package name */
    public final byte[] f14508h;

    /* renamed from: i, reason: collision with root package name */
    public DatagramSocket f14509i;

    /* renamed from: j, reason: collision with root package name */
    public final DatagramPacket f14510j;

    /* renamed from: k, reason: collision with root package name */
    public final DatagramPacket f14511k;
    public final HashMap l;

    /* renamed from: m, reason: collision with root package name */
    public Thread f14512m;

    /* renamed from: n, reason: collision with root package name */
    public int f14513n;

    /* renamed from: p, reason: collision with root package name */
    public final ArrayList f14514p;

    /* renamed from: q, reason: collision with root package name */
    public final InetAddress f14515q;
    public final InetAddress r;

    /* renamed from: s, reason: collision with root package name */
    public final xc.a f14516s;

    /* renamed from: t, reason: collision with root package name */
    public final h f14517t;

    /* renamed from: v, reason: collision with root package name */
    public final a f14518v;

    /* renamed from: w, reason: collision with root package name */
    public final b f14519w;

    /* renamed from: x, reason: collision with root package name */
    public final h f14520x;

    static {
        f14500y = LoggerFactory.getLogger(f.class);
    }

    public f(xc.a r12) {
        wc.a r02 = r12.f18431b;
        int r13 = r02.f17827b0;
        InetAddress r22 = r02.f17829c0;
        this.f14501a = new Object();
        this.f14502b = 0;
        HashMap r4 = new HashMap();
        this.f14503c = r4;
        this.f14504d = new HashSet();
        this.l = new HashMap();
        this.f14513n = 0;
        this.f14514p = new ArrayList();
        this.f14518v = new a();
        this.f14505e = r13;
        this.f14515q = r22;
        this.f14516s = r12;
        InetAddress r122 = r02.f17835f0;
        this.r = r122;
        byte[] r14 = new byte[r02.W];
        this.f14507g = r14;
        byte[] r23 = new byte[r02.X];
        this.f14508h = r23;
        this.f14511k = new DatagramPacket(r14, r02.W, r122, 137);
        this.f14510j = new DatagramPacket(r23, r02.X);
        this.f14514p = r02.f17837g0;
        b r123 = new b(r02, "0.0.0.0", 0, null);
        this.f14519w = r123;
        h r15 = new h(r123, 0);
        this.f14520x = r15;
        r4.put(r123, new d(r15, -1));
        InetAddress r124 = r02.f17829c0;
        if (r124 == null) goto L18;
    L11:
        String r16 = r02.T;
        if (r16 != null) goto L14;
    L15:
        byte[] r17 = r124.getAddress();
        r16 = "JCIFS" + (r17[2] & 255) + "_" + (r17[3] & 255) + "_" + ge.a.l((int) (Math.random() * 255.0d), 2);
    L16:
        b r24 = new b(r02, r16, 0, r02.f17825a0);
        h r03 = new h(r24, r124.hashCode(), 0);
        this.f14517t = r03;
        b(r24, r03, -1);
        return;
    L14:
        if (r16.length() != 0) goto L16;
    L18:
        r124 = InetAddress.getLocalHost();     // Catch: UnknownHostException -> L6
    L6:
        r124 = InetAddress.getByName("127.0.0.1");     // Catch: UnknownHostException -> L8
    L8:
        e = move-exception;
        throw new b0(10, e);
    }

    public final void a(b r62, h r72) {
        int r12 = this.f14516s.f18431b.U;
        if (r12 != 0) goto L6;
        return;
    L6:
        if (r12 == (-1)) goto L8;
        long r13 = System.currentTimeMillis() + (r0.f18431b.U * 1000);
    L9:
        b(r62, r72, r13);
        return;
    L8:
        r13 = -1;
        goto L9
    }

    public final void b(b r32, h r4, long r5) {
        if (this.f14516s.f18431b.U != 0) goto L5;
        return;
    L5:
        HashMap r02 = this.f14503c;
        monitor-enter(r02);
        d r12 = (d) this.f14503c.get(r32);     // Catch: Throwable -> L10
        if (r12 != null) goto L12;
        d r13 = new d(r4, r5);     // Catch: Throwable -> L10
        this.f14503c.put(r32, r13);     // Catch: Throwable -> L10
    L13:
        monitor-exit(r02);     // Catch: Throwable -> L10
        return;
    L12:
        r12.f14491a = r4;     // Catch: Throwable -> L10
        r12.f14492b = r5;     // Catch: Throwable -> L10
    L10:
        th = move-exception;
        throw th;
    }

    public final h c(b r62) {
        h r22 = null;
        if (r62.f14488c != 29) goto L5;
        InetAddress r02 = this.r;
    L6:
        if (r02 == null) goto L8;
        int r12 = r02.hashCode();
    L9:
        r62.f14489d = r12;
        h r13 = g(r62);
        if (r13 != null) goto L50;
        HashSet r32 = this.f14504d;
        monitor-enter(r32);
    L18:
        th = move-exception;
        throw th;
    L14:
        if (this.f14504d.contains(r62) == true) goto L21;
        this.f14504d.add(r62);     // Catch: Throwable -> L18
        monitor-exit(r32);     // Catch: Throwable -> L18
    L37:
        if (r22 == null) goto L55;
        r13 = r22;
        goto L50
    L55:
        r13 = f(r62, r02);     // Catch: Throwable -> L40 UnknownHostException -> L42
    L39:
        a(r62, r13);
        p(r62);
        goto L50
    L42:
        r13 = this.f14520x;     // Catch: Throwable -> L40
    L40:
        th = move-exception;
        a(r62, r22);
        p(r62);
        throw th;
    L21:
        if (this.f14504d.contains(r62) == false) goto L26;
        this.f14504d.wait();     // Catch: Throwable -> L18 InterruptedException -> L24
    L24:
        e = move-exception;
        f14500y.trace("Interrupted", e);     // Catch: Throwable -> L18
        goto L21
    L26:
        monitor-exit(r32);     // Catch: Throwable -> L18
        r22 = g(r62);
        if (r22 != null) goto L37;
        HashSet r14 = this.f14504d;
        monitor-enter(r14);
        this.f14504d.add(r62);     // Catch: Throwable -> L34
        monitor-exit(r14);     // Catch: Throwable -> L34
    L34:
        th = move-exception;
        throw th;
    L50:
        if (r13 == this.f14520x) goto L53;
        return r13;
    L53:
        throw new UnknownHostException(r62.toString());
    L8:
        r12 = 0;
        goto L9
    L5:
        r02 = null;
        goto L6
    }

    public final void d(int r32) {
        this.f14506f = 0;
        int r02 = this.f14516s.f18431b.V;
        if (r02 == 0) goto L6;
        this.f14506f = Math.max(r02, r32);
    L6:
        if (this.f14509i != null) goto L9;
        this.f14509i = new DatagramSocket(this.f14505e, this.f14515q);
        Thread r33 = new Thread(this, "JCIFS-NameServiceClient");
        this.f14512m = r33;
        r33.setDaemon(true);
        this.f14512m.start();
        return;
    }

    public final k[] e(String r13, boolean r14) {
        if (r13 == null) goto L81;
        if (r13.length() == 0) goto L81;
        if (k.d(r13) == true) goto L9;
        Logger r4 = f14500y;
        if (r4.isTraceEnabled() == false) goto L13;
        r4.trace("Resolver order is " + this.f14516s.f18431b.f17837g0);
    L13:
        Iterator r42 = this.f14516s.f18431b.f17837g0.iterator();
    L15:
        if (r42.hasNext() == false) goto L79;
        m r5 = (m) r42.next();
        int r62 = r5.ordinal();     // Catch: IOException -> L33
        if (r62 != 0) goto L19;
        if (r13.equals("\u0001\u0002__MSBROWSE__\u0002") == true) goto L15;
        if (r13.length() > 15) goto L15;
        if (r14 == false) goto L66;
        l[] r63 = m(r13, k());     // Catch: IOException -> L33
    L67:
        if (r63 == null) goto L15;
        Logger r72 = f14500y;     // Catch: IOException -> L33
        if (r72.isDebugEnabled() == false) goto L71;
        r72.debug("Resolved '{}' to addrs {} via {}", new Object[]{r13, Arrays.toString(r63), r5});     // Catch: IOException -> L33
    L71:
        k[] r73 = new k[r63.length];     // Catch: IOException -> L33
        int r82 = 0;
    L73:
        if (r82 >= r63.length) goto L76;
        r73[r82] = new k(r63[r82]);     // Catch: IOException -> L33
        r82 = r82 + 1;
        goto L73
    L76:
        return r73;
    L66:
        r63 = h(k(), 32, r13);     // Catch: IOException -> L33
        goto L67
    L19:
        if (r62 != 1) goto L20;
        if (r13.length() > 15) goto L15;
        if (r14 == false) goto L58;
        r63 = m(r13, this.f14516s.f18431b.f17835f0);     // Catch: IOException -> L33
        goto L67
    L58:
        r63 = h(this.f14516s.f18431b.f17835f0, 32, r13);     // Catch: IOException -> L33
        goto L67
    L20:
        if (r62 == 2) goto L37;
        if (r62 != 3) goto L36;
        a r64 = this.f14518v;     // Catch: IOException -> L33
        xc.a r74 = this.f14516s;     // Catch: IOException -> L33
        monitor-enter(r64);     // Catch: IOException -> L33
        h r75 = r64.a(new b(r74.f18431b, r13, 32, null), r74);     // Catch: Throwable -> L30
    L25:
        monitor-exit(r64);     // Catch: IOException -> L33
        if (r75 == null) goto L15;
        r63 = new l[]{r75};     // Catch: IOException -> L33
    L30:
        th = move-exception;
        throw th;     // Catch: IOException -> L33
    L36:
        throw new UnknownHostException(r13);     // Catch: IOException -> L33
    L37:
        int r65 = 0;
    L39:
        if (r65 >= r13.length()) goto L52;
        if (Character.isDigit(r13.charAt(r65)) == false) goto L42;
        r65 = r65 + 1;     // Catch: IOException -> L33
        goto L39
    L42:
        InetAddress[] r66 = InetAddress.getAllByName(r13);     // Catch: IOException -> L33
        k[] r76 = new k[r66.length];     // Catch: IOException -> L33
        int r83 = 0;
    L44:
        if (r83 >= r66.length) goto L46;
        r76[r83] = new k(r66[r83]);     // Catch: IOException -> L33
        r83 = r83 + 1;     // Catch: IOException -> L33
        goto L44
    L46:
        Logger r67 = f14500y;     // Catch: IOException -> L33
        if (r67.isDebugEnabled() == false) goto L49;
        r67.debug("Resolved '{}' to {} using DNS", r13, Arrays.toString(r76));     // Catch: IOException -> L33
    L49:
        return r76;
    L52:
        throw new UnknownHostException(r13);     // Catch: IOException -> L33
    L33:
        e = move-exception;
        Logger r77 = f14500y;
        r77.trace("Resolving {} via {} failed:", r13, r5);
        r77.trace("Exception is", e);
        goto L15
    L79:
        throw new UnknownHostException(r13);
    L9:
        return new k[]{new k(i(0, r13))};
    L81:
        throw new UnknownHostException();
    }

    public final h f(b r14, InetAddress r15) {
        xc.a r12 = this.f14516s;
        wc.a r22 = r12.f18431b;
        c r02 = new c(r22, r14, 0);
        c r32 = new c(r22);
        boolean r23 = false;
        wc.a r62 = r12.f18431b;
        Logger r82 = f14500y;
        if (r15 == null) goto L35;
        r02.f14543y = r15;
        if (r15.equals(this.r) == false) goto L7;
    L8:
        r23 = true;
    L9:
        r02.f14535p = r23;
        int r13 = r62.Y;
    L81:
        n(r02, r32, r62.Z);     // Catch: IOException -> L24 InterruptedIOException -> L26
    L12:
        if (r32.f14530j == true) goto L14;
    L17:
        r13 = r13 - 1;
        if (r13 <= 0) goto L23;
        if (r02.f14535p == true) goto L81;
    L23:
        throw new UnknownHostException(r14.f14486a);
    L14:
        if (r32.f14525e != 0) goto L17;
        h[] r142 = r32.f14522b;
        int r03 = r142.length - 1;
        r142[r03].f14544a.f14489d = r15.hashCode();
        return r32.f14522b[r03];
    L26:
        e = move-exception;
        if (r82.isTraceEnabled() == false) goto L34;
        r82.trace("Timeout waiting for response " + r14.f14486a, e);
    L34:
        throw new UnknownHostException(r14.f14486a);
    L24:
        e = move-exception;
        r82.info("Failed to send nameservice request for " + r14.f14486a, e);
        throw new UnknownHostException(r14.f14486a);
    L7:
        if (r15.getAddress()[3] != (-1)) goto L9;
    L35:
        Iterator r152 = this.f14514p.iterator();
    L37:
        if (r152.hasNext() == false) goto L76;
        m r92 = (m) r152.next();
        int r10 = r92.ordinal();     // Catch: IOException -> L48
        if (r10 == 0) goto L50;
        if (r10 == 1) goto L50;
        if (r10 != 3) goto L37;
        h r93 = this.f14518v.a(r14, r12);     // Catch: IOException -> L48
        if (r93 == null) goto L37;
        r93.f14544a.f14489d = 0;     // Catch: IOException -> L48
        return r93;
    L50:
        m r102 = m.f16794a;
        if (r92 == r102) goto L53;
    L57:
        r02.f14543y = this.r;     // Catch: IOException -> L48
        r02.f14535p = true;     // Catch: IOException -> L48
    L58:
        int r11 = r62.Y;     // Catch: IOException -> L48
    L59:
        int r122 = r11 - 1;
        if (r11 <= 0) goto L37;
        n(r02, r32, r62.Z);     // Catch: IOException -> L71
    L63:
        if (r32.f14530j == true) goto L65;
    L68:
        if (r92 == r102) goto L37;
        r11 = r122;
        goto L59
    L65:
        if (r32.f14525e != 0) goto L68;
        r32.f14522b[0].f14544a.f14489d = r02.f14543y.hashCode();     // Catch: IOException -> L48
        return r32.f14522b[0];
    L71:
        e = move-exception;
        r82.info("Failed to send nameservice request for " + r14.f14486a, e);     // Catch: IOException -> L48
        throw new UnknownHostException(r14.f14486a);     // Catch: IOException -> L48
    L53:
        if (r14.f14486a == "\u0001\u0002__MSBROWSE__\u0002") goto L57;
        if (r14.f14488c == 29) goto L57;
        r02.f14543y = k();     // Catch: IOException -> L48
        r02.f14535p = false;     // Catch: IOException -> L48
    L48:
        e = move-exception;
        r82.debug("Failed to lookup name", e);
        goto L37
    L76:
        throw new UnknownHostException(r14.f14486a);
    }

    public final h g(b r82) {
        h r12 = null;
        if (this.f14516s.f18431b.U != 0) goto L5;
        return null;
    L5:
        HashMap r02 = this.f14503c;
        monitor-enter(r02);
        d r83 = (d) this.f14503c.get(r82);     // Catch: Throwable -> L14
        if (r83 != null) goto L10;
    L16:
        if (r83 == null) goto L18;
        r12 = r83.f14491a;     // Catch: Throwable -> L14
    L18:
        monitor-exit(r02);     // Catch: Throwable -> L14
        return r12;
    L10:
        if (r83.f14492b >= System.currentTimeMillis()) goto L16;
        if (r83.f14492b < 0) goto L16;
        r83 = null;
    L14:
        th = move-exception;
        throw th;
    }

    public final h[] h(InetAddress r82, int r92, String r10) {
        xc.a r12 = this.f14516s;
        b r02 = new b(r12.f18431b, r10, r92, null);
        Logger r102 = f14500y;
        wc.a r13 = r12.f18431b;
        c r22 = new c(r13, r02, 0);
        c r32 = new c(r13);
        if (r82 != null) goto L6;
        r82 = k();
    L6:
        r22.f14543y = r82;
        int r5 = 1;
        if (r82 != null) goto L9;
    L14:
        boolean r83 = true;
    L15:
        r22.f14535p = r83;
        if (r83 == false) goto L47;
        if (r22.f14543y != null) goto L20;
        r22.f14543y = this.r;
    L20:
        r5 = r13.Y;
    L47:
        n(r22, r32, r13.Z);     // Catch: IOException -> L35 InterruptedIOException -> L37
    L23:
        if (r32.f14530j == true) goto L25;
    L28:
        r5 = r5 - 1;
        if (r5 <= 0) goto L34;
        if (r22.f14535p == true) goto L47;
    L34:
        throw new UnknownHostException(r02.f14486a);
    L25:
        if (r32.f14525e != 0) goto L28;
        return r32.f14522b;
    L37:
        e = move-exception;
        if (r102.isTraceEnabled() == false) goto L45;
        r102.trace("Failed to send nameservice request for " + r02.f14486a, e);
    L45:
        throw new UnknownHostException(r02.f14486a);
    L35:
        e = move-exception;
        r102.info("Failed to send nameservice request for " + r02.f14486a, e);
        throw new UnknownHostException(r02.f14486a);
    L9:
        if (r82.equals(this.r) == true) goto L14;
        if (r82.getAddress()[3] == (-1)) goto L14;
        r83 = false;
        goto L15
    }

    public final h i(int r11, String r12) {
        if (r12 == null) goto L41;
        if (r12.length() == 0) goto L41;
        b r02 = new b(this.f14516s.f18431b, r12, r11, null);
        if (Character.isDigit(r12.charAt(0)) == false) goto L50;
        char[] r13 = r12.toCharArray();
        int r22 = 0;
        int r32 = 0;
        int r4 = 0;
    L11:
        if (r22 >= r13.length) goto L34;
        char r5 = r13[r22];
        if (r5 < '0') goto L53;
        if (r5 > '9') goto L53;
        int r82 = 0;
    L19:
        if (r5 == '.') goto L29;
        if (r5 < '0') goto L51;
        if (r5 > '9') goto L51;
        r82 = ((r82 * 10) + r5) - 48;
        r22 = r22 + 1;
        if (r22 >= r13.length) goto L29;
        r5 = r13[r22];
    L51:
        return c(r02);
    L29:
        if (r82 > 255) goto L52;
        r4 = (r4 << 8) + r82;
        r32 = r32 + 1;
        r22 = r22 + 1;
        goto L11
    L52:
        return c(r02);
    L53:
        return c(r02);
    L34:
        if (r32 != 4) goto L55;
        if (r12.endsWith(".") == true) goto L55;
        return new h(this.f14519w, r4);
    L55:
        return c(r02);
    L50:
        return c(r02);
    L41:
        return this.f14517t;
    }

    public final l[] j(h r82) {
        xc.a r12 = this.f14516s;
        wc.a r22 = r12.f18431b;
        if (h.class.isAssignableFrom(h.class) == false) goto L5;
        h r32 = r82;
    L6:
        j r02 = new j(r22, r32);
        wc.a r13 = r12.f18431b;
        int r62 = 0;
        g r23 = new c(r13, new b(r13, "*\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000", 0, null), 2);
        r23.f14543y = InetAddress.getByName(r82.b());
        int r33 = r13.Y;
    L7:
        int r4 = r33 - 1;
        if (r33 <= 0) goto L24;
        n(r23, r02, r13.Z);     // Catch: IOException -> L20
        if (r02.f14530j == false) goto L19;
        if (r02.f14525e != 0) goto L19;
        int r83 = r23.f14543y.hashCode();
    L15:
        h[] r14 = r02.D;
        if (r62 >= r14.length) goto L18;
        r14[r62].f14544a.f14489d = r83;
        r62 = r62 + 1;
        goto L15
    L18:
        return r14;
    L19:
        r33 = r4;
    L20:
        e = move-exception;
        f14500y.info("Failed to send node status request for " + r82, e);
        throw new UnknownHostException(r82.toString());
    L24:
        throw new UnknownHostException(r82.c());
    L5:
        r32 = null;
        goto L6
    }

    public final InetAddress k() {
        InetAddress[] r02 = this.f14516s.f18431b.f17833e0;
        if (r02.length != 0) goto L6;
        return null;
    L6:
        return r02[this.f14502b];
    }

    public final boolean l(InetAddress r5) {
        int r12 = 0;
    L3:
        if (r5 == null) goto L11;
        xc.a r22 = this.f14516s;
        if (r12 >= r22.f18431b.f17833e0.length) goto L11;
        if (r5.hashCode() == r22.f18431b.f17833e0[r12].hashCode()) goto L8;
        r12 = r12 + 1;
        goto L3
    L8:
        return true;
    L11:
        return false;
    }

    public final l[] m(String r10, InetAddress r11) {
        androidx.leanback.widget.i r62 = new androidx.leanback.widget.i(7, false);
        if (l(r11) == false) goto L5;
        int r32 = 27;
    L6:
        e r72 = new e(r62, r10, r32, r11, this.f14516s);
        e r82 = new e(r62, r10, 32, r11, this.f14516s);
        r72.setDaemon(true);
        r82.setDaemon(true);
        monitor-enter(r62);     // Catch: InterruptedException -> L45
        r72.start();     // Catch: Throwable -> L16
        r82.start();     // Catch: Throwable -> L16
    L10:
        if (r62.f1647b <= 0) goto L18;
        if (r72.f14496d != null) goto L18;
        if (r82.f14496d != null) goto L18;
        r62.wait();     // Catch: Throwable -> L16
    L18:
        monitor-exit(r62);     // Catch: Throwable -> L16
        goto L46
    L58:
        r72.interrupt();     // Catch: SecurityException -> L21
    L54:
        r72.join();     // Catch: InterruptedException -> L25
    L56:
        r82.interrupt();     // Catch: SecurityException -> L29
    L52:
        r82.join();     // Catch: InterruptedException -> L33
    L35:
        l[] r102 = r72.f14496d;
        if (r102 == null) goto L38;
        return r102;
    L38:
        l[] r103 = r82.f14496d;
        if (r103 == null) goto L42;
        return r103;
    L42:
        throw r72.f14498f;
    L33:
        e = move-exception;
        e.printStackTrace();
    L29:
        e = move-exception;
        e.printStackTrace();
    L25:
        e = move-exception;
        e.printStackTrace();
    L21:
        e = move-exception;
        e.printStackTrace();
    L16:
        th = move-exception;
        throw th;     // Catch: InterruptedException -> L45
    L46:
        throw new UnknownHostException(r10);
    L5:
        r32 = 29;
        goto L6
    }

    public final void n(g r13, g r14, int r15) {
        int r02 = this.f14516s.f18431b.f17833e0.length;
        if (r02 != 0) goto L5;
        r02 = 1;
    L5:
        monitor-enter(r14);
        Integer r22 = null;
    L7:
        int r32 = r02 - 1;
        if (r02 <= 0) goto L68;
        Object r03 = this.f14501a;     // Catch: Throwable -> L62 InterruptedException -> L74
        monitor-enter(r03);     // Catch: Throwable -> L62 InterruptedException -> L74
        int r4 = this.f14513n + 1;     // Catch: Throwable -> L59
        this.f14513n = r4;     // Catch: Throwable -> L59
        if ((r4 & 65535) != 0) goto L14;
        this.f14513n = 1;     // Catch: Throwable -> L59
    L14:
        int r42 = this.f14513n;     // Catch: Throwable -> L59
        r13.f14523c = r42;     // Catch: Throwable -> L59
        Integer r5 = new Integer(r42);     // Catch: Throwable -> L59
        this.f14511k.setAddress(r13.f14543y);     // Catch: Throwable -> L18
        this.f14511k.setLength(r13.i(this.f14507g));     // Catch: Throwable -> L18
        int r23 = 0;
        r14.f14530j = false;     // Catch: Throwable -> L18
        this.l.put(r5, r14);     // Catch: Throwable -> L18
        d(r15 + 1000);     // Catch: Throwable -> L18
        this.f14509i.send(this.f14511k);     // Catch: Throwable -> L18
        Logger r43 = f14500y;     // Catch: Throwable -> L18
        if (r43.isTraceEnabled() == false) goto L20;
        r43.trace(r13.toString());     // Catch: Throwable -> L18
        r43.trace(ge.a.m(this.f14507g, 0, this.f14511k.getLength()));     // Catch: Throwable -> L18
    L20:
        monitor-exit(r03);     // Catch: Throwable -> L18
        long r62 = System.currentTimeMillis();     // Catch: Throwable -> L32 InterruptedException -> L34
    L22:
        if (r15 <= 0) goto L80;
        long r82 = r15;
        r14.wait(r82);     // Catch: Throwable -> L32 InterruptedException -> L34
        if (r14.f14530j == true) goto L26;
    L35:
        r14.f14530j = false;     // Catch: Throwable -> L32 InterruptedException -> L34
        r15 = (int) (r82 - (System.currentTimeMillis() - r62));
        goto L22
    L26:
        if (r13.f14537s != r14.f14539u) goto L35;
        this.l.remove(r5);     // Catch: Throwable -> L30
        monitor-exit(r14);     // Catch: Throwable -> L30
        return;
    L80:
        this.l.remove(r5);     // Catch: Throwable -> L30
        Object r04 = this.f14501a;     // Catch: Throwable -> L30
        monitor-enter(r04);     // Catch: Throwable -> L30
    L43:
        th = move-exception;
        throw th;     // Catch: Throwable -> L30
    L40:
        if (l(r13.f14543y) == false) goto L41;
        if (r13.f14543y != k()) goto L54;
        int r44 = this.f14502b + 1;     // Catch: Throwable -> L43
        InetAddress[] r63 = this.f14516s.f18431b.f17833e0;     // Catch: Throwable -> L43
        if (r44 >= r63.length) goto L50;
        r23 = r44;
    L50:
        this.f14502b = r23;     // Catch: Throwable -> L43
        if (r63.length == 0) goto L54;
        InetAddress r24 = r63[r23];     // Catch: Throwable -> L43
    L54:
        r13.f14543y = k();     // Catch: Throwable -> L43
        monitor-exit(r04);     // Catch: Throwable -> L43
        r02 = r32;
        r22 = r5;
        goto L7
    L41:
        monitor-exit(r04);     // Catch: Throwable -> L43
    L30:
        th = move-exception;
        throw th;
    L34:
        r22 = r5;
    L32:
        th = th;
        r22 = r5;
    L66:
        this.l.remove(r22);     // Catch: Throwable -> L30
        throw th;     // Catch: Throwable -> L30
    L18:
        th = th;
        r22 = r5;
    L60:
        monitor-exit(r03);     // Catch: Throwable -> L59
    L59:
        th = th;
        goto L60
    L61:
        throw th;     // Catch: Throwable -> L62 InterruptedException -> L74
    L87:
        th = th;
    L62:
        th = th;
    L65:
        throw new InterruptedIOException();     // Catch: Throwable -> L62
    L68:
        monitor-exit(r14);     // Catch: Throwable -> L30
    }

    public final void o() {
        Object r02 = this.f14501a;
        monitor-enter(r02);
        DatagramSocket r12 = this.f14509i;     // Catch: Throwable -> L7
        if (r12 == null) goto L9;
        r12.close();     // Catch: Throwable -> L7
        this.f14509i = null;     // Catch: Throwable -> L7
    L9:
        this.f14512m = null;     // Catch: Throwable -> L7
        this.l.clear();     // Catch: Throwable -> L7
        monitor-exit(r02);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        throw th;
    }

    public final void p(b r32) {
        HashSet r02 = this.f14504d;
        monitor-enter(r02);
        this.f14504d.remove(r32);     // Catch: Throwable -> L7
        this.f14504d.notifyAll();     // Catch: Throwable -> L7
        monitor-exit(r02);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        throw th;
    }

    @Override // java.lang.Runnable
    public final void run() {
        /*  JADX ERROR: Simple mode code generation failed
            java.lang.IndexOutOfBoundsException: Index 0 out of bounds for length 0
            	at java.base/jdk.internal.util.Preconditions.outOfBounds(Preconditions.java:64)
            	at java.base/jdk.internal.util.Preconditions.outOfBoundsCheckIndex(Preconditions.java:70)
            	at java.base/jdk.internal.util.Preconditions.checkIndex(Preconditions.java:266)
            	at java.base/java.util.Objects.checkIndex(Objects.java:361)
            	at java.base/java.util.ArrayList.get(ArrayList.java:427)
            	at jadx.core.codegen.MethodGen.generateSimpleCode(MethodGen.java:361)
            	at jadx.core.codegen.MethodGen.addSimpleMethodCode(MethodGen.java:323)
            	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:286)
            	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:410)
            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
            	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
            	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
            	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
            */
        /*
            this = this;
        L0:
            java.lang.Thread r0 = r5.f14512m     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L74 java.net.SocketTimeoutException -> L76
            java.lang.Thread r1 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L74 java.net.SocketTimeoutException -> L76
            if (r0 != r1) goto L78
            java.net.DatagramPacket r0 = r5.f14510j     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L74 java.net.SocketTimeoutException -> L76
            xc.a r1 = r5.f14516s     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L74 java.net.SocketTimeoutException -> L76
            wc.a r1 = r1.f18431b     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L74 java.net.SocketTimeoutException -> L76
            int r1 = r1.X     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L74 java.net.SocketTimeoutException -> L76
            r0.setLength(r1)     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L74 java.net.SocketTimeoutException -> L76
            java.net.DatagramSocket r0 = r5.f14509i     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L74 java.net.SocketTimeoutException -> L76
            int r1 = r5.f14506f     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L74 java.net.SocketTimeoutException -> L76
            r0.setSoTimeout(r1)     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L74 java.net.SocketTimeoutException -> L76
            java.net.DatagramSocket r0 = r5.f14509i     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L74 java.net.SocketTimeoutException -> L76
            java.net.DatagramPacket r1 = r5.f14510j     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L74 java.net.SocketTimeoutException -> L76
            r0.receive(r1)     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L74 java.net.SocketTimeoutException -> L76
            org.slf4j.Logger r0 = sd.f.f14500y     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L74 java.net.SocketTimeoutException -> L76
            java.lang.String r1 = "NetBIOS: new data read from socket"
            r0.trace(r1)     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L74 java.net.SocketTimeoutException -> L76
            byte[] r1 = r5.f14508h     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L74 java.net.SocketTimeoutException -> L76
            r2 = 0
            int r1 = sd.g.b(r2, r1)     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L74 java.net.SocketTimeoutException -> L76
            java.util.HashMap r3 = r5.l     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L74 java.net.SocketTimeoutException -> L76
            java.lang.Integer r4 = new java.lang.Integer     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L74 java.net.SocketTimeoutException -> L76
            r4.<init>(r1)     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L74 java.net.SocketTimeoutException -> L76
            java.lang.Object r1 = r3.get(r4)     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L74 java.net.SocketTimeoutException -> L76
            sd.g r1 = (sd.g) r1     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L74 java.net.SocketTimeoutException -> L76
            if (r1 == 0) goto L0
            boolean r3 = r1.f14530j     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L74 java.net.SocketTimeoutException -> L76
            if (r3 == 0) goto L43
            goto L0
        L43:
            monitor-enter(r1)     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L74 java.net.SocketTimeoutException -> L76
            byte[] r3 = r5.f14508h     // Catch: java.lang.Throwable -> L69
            r1.f(r3)     // Catch: java.lang.Throwable -> L69
            r3 = 1
            r1.f14530j = r3     // Catch: java.lang.Throwable -> L69
            boolean r3 = r0.isTraceEnabled()     // Catch: java.lang.Throwable -> L69
            if (r3 == 0) goto L6b
            java.lang.String r3 = r1.toString()     // Catch: java.lang.Throwable -> L69
            r0.trace(r3)     // Catch: java.lang.Throwable -> L69
            byte[] r3 = r5.f14508h     // Catch: java.lang.Throwable -> L69
            java.net.DatagramPacket r4 = r5.f14510j     // Catch: java.lang.Throwable -> L69
            int r4 = r4.getLength()     // Catch: java.lang.Throwable -> L69
            java.lang.String r2 = ge.a.m(r3, r2, r4)     // Catch: java.lang.Throwable -> L69
            r0.trace(r2)     // Catch: java.lang.Throwable -> L69
            goto L6b
        L69:
            r0 = move-exception
            goto L70
        L6b:
            r1.notify()     // Catch: java.lang.Throwable -> L69
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L69
            goto L0
        L70:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L69
            throw r0     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L74 java.net.SocketTimeoutException -> L76
        L72:
            r0 = move-exception
            goto L8d
        L74:
            r0 = move-exception
            goto L7c
        L76:
            r0 = move-exception
            goto L84
        L78:
            r5.o()
            goto L8c
        L7c:
            org.slf4j.Logger r1 = sd.f.f14500y     // Catch: java.lang.Throwable -> L72
            java.lang.String r2 = "Uncaught exception in NameServiceClient"
            r1.warn(r2, r0)     // Catch: java.lang.Throwable -> L72
            goto L78
        L84:
            org.slf4j.Logger r1 = sd.f.f14500y     // Catch: java.lang.Throwable -> L72
            java.lang.String r2 = "Socket timeout"
            r1.trace(r2, r0)     // Catch: java.lang.Throwable -> L72
            goto L78
        L8c:
            return
        L8d:
            r5.o()
            goto L92
        L91:
            throw r0
        L92:
            goto L91
        */
        throw new UnsupportedOperationException("Method not decompiled: sd.f.run():void");
    }
}