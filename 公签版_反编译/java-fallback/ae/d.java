package ae;

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.StringTokenizer;

/* loaded from: classes.dex */
public final class d implements Runnable {

    /* renamed from: n, reason: collision with root package name */
    public static final int f581n = 0;

    /* renamed from: p, reason: collision with root package name */
    public static final int f582p = 0;

    /* renamed from: q, reason: collision with root package name */
    public static final int f583q = 0;
    public static final int r = 0;

    /* renamed from: s, reason: collision with root package name */
    public static final int f584s = 0;

    /* renamed from: t, reason: collision with root package name */
    public static final int f585t = 0;

    /* renamed from: v, reason: collision with root package name */
    public static final InetAddress f586v = null;

    /* renamed from: w, reason: collision with root package name */
    public static final String f587w = null;

    /* renamed from: x, reason: collision with root package name */
    public static final de.d f588x = null;

    /* renamed from: a, reason: collision with root package name */
    public final Object f589a;

    /* renamed from: b, reason: collision with root package name */
    public final int f590b;

    /* renamed from: c, reason: collision with root package name */
    public int f591c;

    /* renamed from: d, reason: collision with root package name */
    public final byte[] f592d;

    /* renamed from: e, reason: collision with root package name */
    public final byte[] f593e;

    /* renamed from: f, reason: collision with root package name */
    public DatagramSocket f594f;

    /* renamed from: g, reason: collision with root package name */
    public final DatagramPacket f595g;

    /* renamed from: h, reason: collision with root package name */
    public final DatagramPacket f596h;

    /* renamed from: i, reason: collision with root package name */
    public final HashMap f597i;

    /* renamed from: j, reason: collision with root package name */
    public Thread f598j;

    /* renamed from: k, reason: collision with root package name */
    public int f599k;
    public final int[] l;

    /* renamed from: m, reason: collision with root package name */
    public final InetAddress f600m;

    static {
        f581n = wd.a.c(576, "jcifs.smb1.netbios.snd_buf_size");
        f582p = wd.a.c(576, "jcifs.smb1.netbios.rcv_buf_size");
        f583q = wd.a.c(5000, "jcifs.smb1.netbios.soTimeout");
        r = wd.a.c(2, "jcifs.smb1.netbios.retryCount");
        f584s = wd.a.c(3000, "jcifs.smb1.netbios.retryTimeout");
        f585t = wd.a.c(0, "jcifs.smb1.netbios.lport");
        f586v = wd.a.b("jcifs.smb1.netbios.laddr", null);
        f587w = wd.a.f17870a.getProperty("jcifs.smb1.resolveOrder");
        f588x = de.d.r();
    }

    public d() {
        this.f589a = new Object();
        this.f597i = new HashMap();
        this.f599k = 0;
        this.f590b = f585t;
        this.f600m = wd.a.b("jcifs.smb1.netbios.baddr", InetAddress.getByName("255.255.255.255"));     // Catch: UnknownHostException -> L5
    L6:
        int r12 = f581n;
        byte[] r22 = new byte[r12];
        this.f592d = r22;
        int r32 = f582p;
        byte[] r4 = new byte[r32];
        this.f593e = r4;
        this.f596h = new DatagramPacket(r22, r12, this.f600m, 137);
        this.f595g = new DatagramPacket(r4, r32);
        String r42 = f587w;
        if (r42 == null) goto L37;
        if (r42.length() == 0) goto L37;
        int[] r5 = new int[3];
        StringTokenizer r62 = new StringTokenizer(r42, ",");
        int r43 = 0;
    L13:
        if (r62.hasMoreTokens() == false) goto L35;
        String r72 = r62.nextToken().trim();
        if (r72.equalsIgnoreCase("LMHOSTS") == true) goto L16;
        boolean r82 = r72.equalsIgnoreCase("WINS");
        de.d r92 = f588x;
        if (r82 == true) goto L21;
        if (r72.equalsIgnoreCase("BCAST") == true) goto L28;
        if (r72.equalsIgnoreCase("DNS") == true) goto L13;
        if (de.d.f4630b <= 1) goto L13;
        r92.getClass();
        goto L13
    L28:
        int r73 = r43 + 1;
        r5[r43] = 2;
    L17:
        r43 = r73;
        goto L13
    L21:
        if (g.h() != null) goto L25;
        if (de.d.f4630b <= 1) goto L13;
        r92.getClass();
        goto L13
    L25:
        r73 = r43 + 1;
        r5[r43] = 3;
        goto L17
    L16:
        r73 = r43 + 1;
        r5[r43] = 1;
        goto L17
    L35:
        int[] r13 = new int[r43];
        this.l = r13;
        System.arraycopy(r5, 0, r13, 0, r43);
        return;
    L37:
        if (g.h() != null) goto L39;
        this.l = new int[]{1, 2};
        return;
    L39:
        this.l = new int[]{1, 3, 2};
    }

    public final void a(int r32) {
        this.f591c = 0;
        int r02 = f583q;
        if (r02 == 0) goto L6;
        this.f591c = Math.max(r02, r32);
    L6:
        if (this.f594f != null) goto L9;
        this.f594f = new DatagramSocket(this.f590b, f586v);
        Thread r33 = new Thread(this, "JCIFS-NameServiceClient");
        this.f598j = r33;
        r33.setDaemon(true);
        this.f598j.start();
        return;
    }

    public final g b(b r12, InetAddress r13) {
        c r02 = new c(r12, 0);
        c r14 = new c();
        de.d r22 = f588x;
        int r32 = f584s;
        int r4 = r;
        boolean r62 = false;
        if (r13 == null) goto L28;
        r02.f623y = r13;
        if (r13.getAddress()[3] != (-1)) goto L7;
        r62 = true;
    L7:
        r02.f615p = r62;
    L76:
        d(r02, r14, r32);     // Catch: IOException -> L22
        if (r14.f610j == true) goto L12;
    L15:
        r4 = r4 - 1;
        if (r4 <= 0) goto L21;
        if (r02.f615p == true) goto L76;
    L21:
        throw new UnknownHostException(r12.f577a);
    L12:
        if (r14.f605e != 0) goto L15;
        g[] r122 = r14.f602b;
        int r03 = r122.length - 1;
        r122[r03].f634a.f580d = r13.hashCode();
        return r14.f602b[r03];
    L22:
        e = move-exception;
        if (de.d.f4630b <= 1) goto L27;
        e.printStackTrace(r22);
    L27:
        throw new UnknownHostException(r12.f577a);
    L28:
        int r132 = 0;
    L29:
        int[] r82 = this.l;
        if (r132 >= r82.length) goto L70;
        int r92 = r82[r132];     // Catch: IOException -> L72
        if (r92 != 1) goto L34;
        g r83 = a.a(r12);     // Catch: IOException -> L72
        if (r83 == null) goto L68;
        r83.f634a.f580d = 0;     // Catch: IOException -> L72
        return r83;
    L34:
        if (r92 == 2) goto L37;
        if (r92 != 3) goto L68;
    L37:
        if (r92 == 3) goto L39;
    L43:
        r02.f623y = this.f600m;     // Catch: IOException -> L72
        r02.f615p = true;     // Catch: IOException -> L72
    L44:
        int r93 = r4;
    L45:
        int r10 = r93 - 1;
        if (r93 <= 0) goto L68;
        d(r02, r14, r32);     // Catch: IOException -> L58
        goto L68
    L49:
        if (r14.f610j == false) goto L55;
        if (r14.f605e != 0) goto L55;
        r14.f602b[0].f634a.f580d = r02.f623y.hashCode();     // Catch: IOException -> L72
        return r14.f602b[0];
    L55:
        if (r82[r132] == 3) goto L68;
        r93 = r10;
    L58:
        e = move-exception;
        if (de.d.f4630b <= 1) goto L63;
        e.printStackTrace(r22);     // Catch: IOException -> L72
    L63:
        throw new UnknownHostException(r12.f577a);     // Catch: IOException -> L72
    L39:
        if (r12.f577a == "\u0001\u0002__MSBROWSE__\u0002") goto L43;
        if (r12.f579c == 29) goto L43;
        r02.f623y = g.h();     // Catch: IOException -> L72
        r02.f615p = false;     // Catch: IOException -> L72
    L68:
        r132 = r132 + 1;
        goto L29
    L70:
        throw new UnknownHostException(r12.f577a);
    }

    public final g[] c(g r72) {
        i r02 = new i(r72);
        int r4 = 0;
        e r12 = new c(new b("*\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000", 0, null), 2);
        r12.f623y = InetAddress.getByName(r72.f());
        int r22 = r;
    L3:
        int r32 = r22 - 1;
        if (r22 <= 0) goto L23;
        d(r12, r02, f584s);     // Catch: IOException -> L16
        if (r02.f610j == false) goto L15;
        if (r02.f605e != 0) goto L15;
        int r73 = r12.f623y.hashCode();
    L11:
        g[] r13 = r02.C;
        if (r4 >= r13.length) goto L14;
        r13[r4].f634a.f580d = r73;
        r4 = r4 + 1;
        goto L11
    L14:
        return r13;
    L15:
        r22 = r32;
    L16:
        e = move-exception;
        if (de.d.f4630b <= 1) goto L21;
        e.printStackTrace(f588x);
    L21:
        throw new UnknownHostException(r72.toString());
    L23:
        throw new UnknownHostException(r72.f634a.f577a);
    }

    public final void d(e r13, e r14, int r15) {
        int r02 = g.f626e.length;
        if (r02 != 0) goto L5;
        r02 = 1;
    L5:
        monitor-enter(r14);
        Integer r22 = null;
    L7:
        int r32 = r02 - 1;
        if (r02 <= 0) goto L78;
        Object r03 = this.f589a;     // Catch: Throwable -> L71 InterruptedException -> L73
        monitor-enter(r03);     // Catch: Throwable -> L71 InterruptedException -> L73
        int r4 = this.f599k + 1;     // Catch: Throwable -> L68
        this.f599k = r4;     // Catch: Throwable -> L68
        if ((r4 & 65535) != 0) goto L14;
        this.f599k = 1;     // Catch: Throwable -> L68
    L14:
        int r42 = this.f599k;     // Catch: Throwable -> L68
        r13.f603c = r42;     // Catch: Throwable -> L68
        Integer r5 = new Integer(r42);     // Catch: Throwable -> L68
        this.f596h.setAddress(r13.f623y);     // Catch: Throwable -> L18
        this.f596h.setLength(r13.i(this.f592d));     // Catch: Throwable -> L18
        int r23 = 0;
        r14.f610j = false;     // Catch: Throwable -> L18
        this.f597i.put(r5, r14);     // Catch: Throwable -> L18
        a(r15 + 1000);     // Catch: Throwable -> L18
        this.f594f.send(this.f596h);     // Catch: Throwable -> L18
        if (de.d.f4630b <= 3) goto L20;
        de.d r43 = f588x;     // Catch: Throwable -> L18
        r43.getClass();     // Catch: Throwable -> L18
        de.c.a(r43, this.f592d, 0, this.f596h.getLength());     // Catch: Throwable -> L18
    L20:
        monitor-exit(r03);     // Catch: Throwable -> L18
        long r62 = System.currentTimeMillis();     // Catch: Throwable -> L32 InterruptedException -> L34
    L22:
        if (r15 <= 0) goto L84;
        long r82 = r15;
        r14.wait(r82);     // Catch: Throwable -> L32 InterruptedException -> L34
        if (r14.f610j == true) goto L26;
    L36:
        r14.f610j = false;     // Catch: Throwable -> L32 InterruptedException -> L34
        r15 = (int) (r82 - (System.currentTimeMillis() - r62));
        goto L22
    L26:
        if (r13.f617s != r14.f619u) goto L36;
        this.f597i.remove(r5);     // Catch: Throwable -> L30
        monitor-exit(r14);     // Catch: Throwable -> L30
        return;
    L84:
        this.f597i.remove(r5);     // Catch: Throwable -> L30
        Object r04 = this.f589a;     // Catch: Throwable -> L30
        monitor-enter(r04);     // Catch: Throwable -> L30
        InetAddress r44 = r13.f623y;     // Catch: Throwable -> L52
        int r63 = 0;
    L41:
        if (r44 == null) goto L48;
        InetAddress[] r72 = g.f626e;     // Catch: Throwable -> L52
        if (r63 >= r72.length) goto L48;
        if (r44.hashCode() == r72[r63].hashCode()) goto L46;
        r63 = r63 + 1;     // Catch: Throwable -> L52
        goto L41
    L46:
        boolean r45 = true;
    L49:
        if (r45 == false) goto L50;
        if (r13.f623y != g.h()) goto L63;
        int r46 = g.f629h + 1;     // Catch: Throwable -> L52
        InetAddress[] r64 = g.f626e;     // Catch: Throwable -> L52
        if (r46 >= r64.length) goto L59;
        r23 = r46;
    L59:
        g.f629h = r23;     // Catch: Throwable -> L52
        if (r64.length == 0) goto L63;
        InetAddress r24 = r64[r23];     // Catch: Throwable -> L52
    L63:
        r13.f623y = g.h();     // Catch: Throwable -> L52
        monitor-exit(r04);     // Catch: Throwable -> L52
        r02 = r32;
        r22 = r5;
        goto L7
    L50:
        monitor-exit(r04);     // Catch: Throwable -> L52
    L48:
        r45 = false;
    L52:
        th = move-exception;
        throw th;     // Catch: Throwable -> L30
    L30:
        th = move-exception;
        throw th;
    L34:
        e = e;
    L75:
        throw new IOException(e.getMessage());     // Catch: Throwable -> L71
    L32:
        th = th;
        r22 = r5;
    L76:
        this.f597i.remove(r22);     // Catch: Throwable -> L30
        throw th;     // Catch: Throwable -> L30
    L18:
        th = th;
    L69:
        monitor-exit(r03);     // Catch: Throwable -> L68
    L68:
        th = th;
        goto L69
    L70:
        throw th;     // Catch: Throwable -> L71 InterruptedException -> L73
    L95:
        th = th;
    L71:
        th = th;
    L73:
        e = e;
    L78:
        monitor-exit(r14);     // Catch: Throwable -> L30
    }

    public final void e() {
        Object r02 = this.f589a;
        monitor-enter(r02);
        DatagramSocket r12 = this.f594f;     // Catch: Throwable -> L7
        if (r12 == null) goto L9;
        r12.close();     // Catch: Throwable -> L7
        this.f594f = null;     // Catch: Throwable -> L7
    L9:
        this.f598j = null;     // Catch: Throwable -> L7
        this.f597i.clear();     // Catch: Throwable -> L7
        monitor-exit(r02);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        throw th;
    }

    @Override // java.lang.Runnable
    public final void run() {
    L38:
    L7:
        th = move-exception;
        e();
        throw th;
    L9:
        e = move-exception;
        if (de.d.f4630b <= 2) goto L27;
        e.printStackTrace(f588x);     // Catch: Throwable -> L7
        goto L27
    L3:
        if (this.f598j != Thread.currentThread()) goto L27;
        this.f595g.setLength(f582p);     // Catch: Throwable -> L7 Exception -> L9 SocketTimeoutException -> L35
        this.f594f.setSoTimeout(this.f591c);     // Catch: Throwable -> L7 Exception -> L9 SocketTimeoutException -> L35
        this.f594f.receive(this.f595g);     // Catch: Throwable -> L7 Exception -> L9 SocketTimeoutException -> L35
        if (de.d.f4630b <= 3) goto L11;
        f588x.getClass();     // Catch: Throwable -> L7 Exception -> L9 SocketTimeoutException -> L35
    L11:
        int r02 = e.b(0, this.f593e);     // Catch: Throwable -> L7 Exception -> L9 SocketTimeoutException -> L35
        e r03 = (e) this.f597i.get(new Integer(r02));     // Catch: Throwable -> L7 Exception -> L9 SocketTimeoutException -> L35
        if (r03 == null) goto L38;
        if (r03.f610j == true) goto L38;
        monitor-enter(r03);     // Catch: Throwable -> L7 Exception -> L9 SocketTimeoutException -> L35
        r03.f(this.f593e);     // Catch: Throwable -> L20
        r03.f610j = true;     // Catch: Throwable -> L20
        if (de.d.f4630b <= 3) goto L22;
        de.d r12 = f588x;     // Catch: Throwable -> L20
        r12.getClass();     // Catch: Throwable -> L20
        de.c.a(r12, this.f593e, 0, this.f595g.getLength());     // Catch: Throwable -> L20
    L22:
        r03.notify();     // Catch: Throwable -> L20
        monitor-exit(r03);     // Catch: Throwable -> L20
    L20:
        th = move-exception;
        throw th;     // Catch: Throwable -> L7 Exception -> L9 SocketTimeoutException -> L35
    L27:
        e();
    }
}