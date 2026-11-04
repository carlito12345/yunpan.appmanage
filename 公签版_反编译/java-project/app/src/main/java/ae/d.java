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
    public static final int f581n = wd.a.c(576, "jcifs.smb1.netbios.snd_buf_size");

    /* renamed from: p, reason: collision with root package name */
    public static final int f582p = wd.a.c(576, "jcifs.smb1.netbios.rcv_buf_size");

    /* renamed from: q, reason: collision with root package name */
    public static final int f583q = wd.a.c(5000, "jcifs.smb1.netbios.soTimeout");
    public static final int r = wd.a.c(2, "jcifs.smb1.netbios.retryCount");

    /* renamed from: s, reason: collision with root package name */
    public static final int f584s = wd.a.c(3000, "jcifs.smb1.netbios.retryTimeout");

    /* renamed from: t, reason: collision with root package name */
    public static final int f585t = wd.a.c(0, "jcifs.smb1.netbios.lport");

    /* renamed from: v, reason: collision with root package name */
    public static final InetAddress f586v = wd.a.b("jcifs.smb1.netbios.laddr", null);

    /* renamed from: w, reason: collision with root package name */
    public static final String f587w = wd.a.f17870a.getProperty("jcifs.smb1.resolveOrder");

    /* renamed from: x, reason: collision with root package name */
    public static final de.d f588x = de.d.r();

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

    /* renamed from: j, reason: collision with root package name */
    public Thread f598j;
    public final int[] l;

    /* renamed from: m, reason: collision with root package name */
    public final InetAddress f600m;

    /* renamed from: a, reason: collision with root package name */
    public final Object f589a = new Object();

    /* renamed from: i, reason: collision with root package name */
    public final HashMap f597i = new HashMap();

    /* renamed from: k, reason: collision with root package name */
    public int f599k = 0;

    /* renamed from: b, reason: collision with root package name */
    public final int f590b = f585t;

    public d() {
        int i10;
        try {
            this.f600m = wd.a.b("jcifs.smb1.netbios.baddr", InetAddress.getByName("255.255.255.255"));
        } catch (UnknownHostException unused) {
        }
        int i11 = f581n;
        byte[] bArr = new byte[i11];
        this.f592d = bArr;
        int i12 = f582p;
        byte[] bArr2 = new byte[i12];
        this.f593e = bArr2;
        this.f596h = new DatagramPacket(bArr, i11, this.f600m, 137);
        this.f595g = new DatagramPacket(bArr2, i12);
        String str = f587w;
        if (str == null || str.length() == 0) {
            if (g.h() == null) {
                this.l = new int[]{1, 2};
                return;
            } else {
                this.l = new int[]{1, 3, 2};
                return;
            }
        }
        int[] iArr = new int[3];
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
        int i13 = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String strTrim = stringTokenizer.nextToken().trim();
            if (strTrim.equalsIgnoreCase("LMHOSTS")) {
                i10 = i13 + 1;
                iArr[i13] = 1;
            } else {
                boolean zEqualsIgnoreCase = strTrim.equalsIgnoreCase("WINS");
                de.d dVar = f588x;
                if (zEqualsIgnoreCase) {
                    if (g.h() != null) {
                        i10 = i13 + 1;
                        iArr[i13] = 3;
                    } else if (de.d.f4630b > 1) {
                        dVar.getClass();
                    }
                } else if (strTrim.equalsIgnoreCase("BCAST")) {
                    i10 = i13 + 1;
                    iArr[i13] = 2;
                } else if (!strTrim.equalsIgnoreCase("DNS") && de.d.f4630b > 1) {
                    dVar.getClass();
                }
            }
            i13 = i10;
        }
        int[] iArr2 = new int[i13];
        this.l = iArr2;
        System.arraycopy(iArr, 0, iArr2, 0, i13);
    }

    public final void a(int i10) {
        this.f591c = 0;
        int i11 = f583q;
        if (i11 != 0) {
            this.f591c = Math.max(i11, i10);
        }
        if (this.f594f == null) {
            this.f594f = new DatagramSocket(this.f590b, f586v);
            Thread thread = new Thread(this, "JCIFS-NameServiceClient");
            this.f598j = thread;
            thread.setDaemon(true);
            this.f598j.start();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:86:0x00d4, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final g b(b bVar, InetAddress inetAddress) throws UnknownHostException {
        c cVar = new c(bVar, 0);
        c cVar2 = new c();
        de.d dVar = f588x;
        int i10 = f584s;
        int i11 = r;
        if (inetAddress != null) {
            cVar.f623y = inetAddress;
            cVar.f615p = inetAddress.getAddress()[3] == -1;
            do {
                try {
                    d(cVar, cVar2, i10);
                    if (!cVar2.f610j || cVar2.f605e != 0) {
                        i11--;
                        if (i11 <= 0) {
                            break;
                        }
                    } else {
                        g[] gVarArr = cVar2.f602b;
                        int length = gVarArr.length - 1;
                        gVarArr[length].f634a.f580d = inetAddress.hashCode();
                        return cVar2.f602b[length];
                    }
                } catch (IOException e7) {
                    if (de.d.f4630b > 1) {
                        e7.printStackTrace(dVar);
                    }
                    throw new UnknownHostException(bVar.f577a);
                }
            } while (cVar.f615p);
            throw new UnknownHostException(bVar.f577a);
        }
        int i12 = 0;
        while (true) {
            int[] iArr = this.l;
            if (i12 >= iArr.length) {
                throw new UnknownHostException(bVar.f577a);
            }
            try {
                int i13 = iArr[i12];
                if (i13 == 1) {
                    g gVarA = a.a(bVar);
                    if (gVarA != null) {
                        gVarA.f634a.f580d = 0;
                        return gVarA;
                    }
                } else if (i13 == 2 || i13 == 3) {
                    if (i13 != 3 || bVar.f577a == "\u0001\u0002__MSBROWSE__\u0002" || bVar.f579c == 29) {
                        cVar.f623y = this.f600m;
                        cVar.f615p = true;
                    } else {
                        cVar.f623y = g.h();
                        cVar.f615p = false;
                    }
                    int i14 = i11;
                    while (true) {
                        int i15 = i14 - 1;
                        if (i14 > 0) {
                            try {
                                d(cVar, cVar2, i10);
                                if (cVar2.f610j && cVar2.f605e == 0) {
                                    cVar2.f602b[0].f634a.f580d = cVar.f623y.hashCode();
                                    return cVar2.f602b[0];
                                }
                                if (iArr[i12] == 3) {
                                    break;
                                }
                                i14 = i15;
                            } catch (IOException e10) {
                                if (de.d.f4630b > 1) {
                                    e10.printStackTrace(dVar);
                                }
                                throw new UnknownHostException(bVar.f577a);
                            }
                        }
                    }
                }
            } catch (IOException unused) {
                continue;
            }
            i12++;
        }
    }

    public final g[] c(g gVar) throws UnknownHostException {
        i iVar = new i(gVar);
        int i10 = 0;
        e cVar = new c(new b("*\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000", 0, null), 2);
        cVar.f623y = InetAddress.getByName(gVar.f());
        int i11 = r;
        while (true) {
            int i12 = i11 - 1;
            if (i11 <= 0) {
                throw new UnknownHostException(gVar.f634a.f577a);
            }
            try {
                d(cVar, iVar, f584s);
                if (iVar.f610j && iVar.f605e == 0) {
                    int iHashCode = cVar.f623y.hashCode();
                    while (true) {
                        g[] gVarArr = iVar.C;
                        if (i10 >= gVarArr.length) {
                            return gVarArr;
                        }
                        gVarArr[i10].f634a.f580d = iHashCode;
                        i10++;
                    }
                } else {
                    i11 = i12;
                }
            } catch (IOException e7) {
                if (de.d.f4630b > 1) {
                    e7.printStackTrace(f588x);
                }
                throw new UnknownHostException(gVar.toString());
            }
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:68:0x00e6
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1178)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    public final void d(ae.e r13, ae.e r14, int r15) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ae.d.d(ae.e, ae.e, int):void");
    }

    public final void e() {
        synchronized (this.f589a) {
            try {
                DatagramSocket datagramSocket = this.f594f;
                if (datagramSocket != null) {
                    datagramSocket.close();
                    this.f594f = null;
                }
                this.f598j = null;
                this.f597i.clear();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        while (this.f598j == Thread.currentThread()) {
            try {
                try {
                    this.f595g.setLength(f582p);
                    this.f594f.setSoTimeout(this.f591c);
                    this.f594f.receive(this.f595g);
                    if (de.d.f4630b > 3) {
                        f588x.getClass();
                    }
                    e eVar = (e) this.f597i.get(new Integer(e.b(0, this.f593e)));
                    if (eVar != null && !eVar.f610j) {
                        synchronized (eVar) {
                            try {
                                eVar.f(this.f593e);
                                eVar.f610j = true;
                                if (de.d.f4630b > 3) {
                                    de.d dVar = f588x;
                                    dVar.getClass();
                                    de.c.a(dVar, this.f593e, 0, this.f595g.getLength());
                                }
                                eVar.notify();
                            } finally {
                            }
                        }
                    }
                } catch (SocketTimeoutException unused) {
                } catch (Exception e7) {
                    if (de.d.f4630b > 2) {
                        e7.printStackTrace(f588x);
                    }
                }
            } catch (Throwable th2) {
                e();
                throw th2;
            }
        }
        e();
    }
}
