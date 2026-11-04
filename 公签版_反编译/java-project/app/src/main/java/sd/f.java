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
    public static final Logger f14500y = LoggerFactory.getLogger((Class<?>) f.class);

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

    public f(xc.a aVar) throws UnknownHostException {
        wc.a aVar2 = aVar.f18431b;
        int i10 = aVar2.f17827b0;
        InetAddress inetAddress = aVar2.f17829c0;
        this.f14501a = new Object();
        this.f14502b = 0;
        HashMap map = new HashMap();
        this.f14503c = map;
        this.f14504d = new HashSet();
        this.l = new HashMap();
        this.f14513n = 0;
        this.f14514p = new ArrayList();
        this.f14518v = new a();
        this.f14505e = i10;
        this.f14515q = inetAddress;
        this.f14516s = aVar;
        InetAddress inetAddress2 = aVar2.f17835f0;
        this.r = inetAddress2;
        byte[] bArr = new byte[aVar2.W];
        this.f14507g = bArr;
        byte[] bArr2 = new byte[aVar2.X];
        this.f14508h = bArr2;
        this.f14511k = new DatagramPacket(bArr, aVar2.W, inetAddress2, 137);
        this.f14510j = new DatagramPacket(bArr2, aVar2.X);
        this.f14514p = aVar2.f17837g0;
        b bVar = new b(aVar2, "0.0.0.0", 0, null);
        this.f14519w = bVar;
        h hVar = new h(bVar, 0);
        this.f14520x = hVar;
        map.put(bVar, new d(hVar, -1L));
        InetAddress byName = aVar2.f17829c0;
        if (byName == null) {
            try {
                try {
                    byName = InetAddress.getLocalHost();
                } catch (UnknownHostException unused) {
                    byName = InetAddress.getByName("127.0.0.1");
                }
            } catch (UnknownHostException e7) {
                throw new b0(10, e7);
            }
        }
        String str = aVar2.T;
        if (str == null || str.length() == 0) {
            byte[] address = byName.getAddress();
            str = "JCIFS" + (address[2] & 255) + "_" + (address[3] & 255) + "_" + ge.a.l((int) (Math.random() * 255.0d), 2);
        }
        b bVar2 = new b(aVar2, str, 0, aVar2.f17825a0);
        h hVar2 = new h(bVar2, byName.hashCode(), 0);
        this.f14517t = hVar2;
        b(bVar2, hVar2, -1L);
    }

    public final void a(b bVar, h hVar) {
        int i10 = this.f14516s.f18431b.U;
        if (i10 == 0) {
            return;
        }
        b(bVar, hVar, i10 != -1 ? System.currentTimeMillis() + (r0.f18431b.U * 1000) : -1L);
    }

    public final void b(b bVar, h hVar, long j10) {
        if (this.f14516s.f18431b.U == 0) {
            return;
        }
        synchronized (this.f14503c) {
            try {
                d dVar = (d) this.f14503c.get(bVar);
                if (dVar == null) {
                    this.f14503c.put(bVar, new d(hVar, j10));
                } else {
                    dVar.f14491a = hVar;
                    dVar.f14492b = j10;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final h c(b bVar) throws UnknownHostException {
        h hVarG = null;
        InetAddress inetAddress = bVar.f14488c == 29 ? this.r : null;
        bVar.f14489d = inetAddress != null ? inetAddress.hashCode() : 0;
        h hVarG2 = g(bVar);
        if (hVarG2 == null) {
            synchronized (this.f14504d) {
                try {
                } catch (InterruptedException e7) {
                    f14500y.trace("Interrupted", (Throwable) e7);
                } finally {
                }
                if (this.f14504d.contains(bVar)) {
                    while (this.f14504d.contains(bVar)) {
                        this.f14504d.wait();
                    }
                    hVarG = g(bVar);
                    if (hVarG == null) {
                        synchronized (this.f14504d) {
                            this.f14504d.add(bVar);
                        }
                    }
                } else {
                    this.f14504d.add(bVar);
                }
            }
            if (hVarG == null) {
                try {
                    try {
                        hVarG2 = f(bVar, inetAddress);
                    } catch (UnknownHostException unused) {
                        hVarG2 = this.f14520x;
                    }
                    a(bVar, hVarG2);
                    p(bVar);
                } catch (Throwable th2) {
                    a(bVar, hVarG);
                    p(bVar);
                    throw th2;
                }
            } else {
                hVarG2 = hVarG;
            }
        }
        if (hVarG2 != this.f14520x) {
            return hVarG2;
        }
        throw new UnknownHostException(bVar.toString());
    }

    public final void d(int i10) {
        this.f14506f = 0;
        int i11 = this.f14516s.f18431b.V;
        if (i11 != 0) {
            this.f14506f = Math.max(i11, i10);
        }
        if (this.f14509i == null) {
            this.f14509i = new DatagramSocket(this.f14505e, this.f14515q);
            Thread thread = new Thread(this, "JCIFS-NameServiceClient");
            this.f14512m = thread;
            thread.setDaemon(true);
            this.f14512m.start();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0049 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0112 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final k[] e(String str, boolean z) throws UnknownHostException {
        h hVarA;
        l[] lVarArrM;
        if (str == null || str.length() == 0) {
            throw new UnknownHostException();
        }
        if (k.d(str)) {
            return new k[]{new k(i(0, str))};
        }
        Logger logger = f14500y;
        if (logger.isTraceEnabled()) {
            logger.trace("Resolver order is " + this.f14516s.f18431b.f17837g0);
        }
        Iterator it = this.f14516s.f18431b.f17837g0.iterator();
        while (it.hasNext()) {
            m mVar = (m) it.next();
            try {
                int iOrdinal = mVar.ordinal();
                if (iOrdinal != 0) {
                    if (iOrdinal != 1) {
                        if (iOrdinal == 2) {
                            for (int i10 = 0; i10 < str.length(); i10++) {
                                if (!Character.isDigit(str.charAt(i10))) {
                                    InetAddress[] allByName = InetAddress.getAllByName(str);
                                    k[] kVarArr = new k[allByName.length];
                                    for (int i11 = 0; i11 < allByName.length; i11++) {
                                        kVarArr[i11] = new k(allByName[i11]);
                                    }
                                    Logger logger2 = f14500y;
                                    if (logger2.isDebugEnabled()) {
                                        logger2.debug("Resolved '{}' to {} using DNS", str, Arrays.toString(kVarArr));
                                    }
                                    return kVarArr;
                                }
                            }
                            throw new UnknownHostException(str);
                        }
                        if (iOrdinal != 3) {
                            throw new UnknownHostException(str);
                        }
                        a aVar = this.f14518v;
                        xc.a aVar2 = this.f14516s;
                        synchronized (aVar) {
                            hVarA = aVar.a(new b(aVar2.f18431b, str, 32, null), aVar2);
                        }
                        if (hVarA != null) {
                            lVarArrM = new l[]{hVarA};
                            if (lVarArrM != null) {
                                Logger logger3 = f14500y;
                                if (logger3.isDebugEnabled()) {
                                    logger3.debug("Resolved '{}' to addrs {} via {}", str, Arrays.toString(lVarArrM), mVar);
                                }
                                k[] kVarArr2 = new k[lVarArrM.length];
                                for (int i12 = 0; i12 < lVarArrM.length; i12++) {
                                    kVarArr2[i12] = new k(lVarArrM[i12]);
                                }
                                return kVarArr2;
                            }
                        }
                    } else if (str.length() <= 15) {
                        lVarArrM = z ? m(str, this.f14516s.f18431b.f17835f0) : h(this.f14516s.f18431b.f17835f0, 32, str);
                        if (lVarArrM != null) {
                        }
                    }
                } else if (!str.equals("\u0001\u0002__MSBROWSE__\u0002") && str.length() <= 15) {
                    lVarArrM = z ? m(str, k()) : h(k(), 32, str);
                    if (lVarArrM != null) {
                    }
                }
            } catch (IOException e7) {
                Logger logger4 = f14500y;
                logger4.trace("Resolving {} via {} failed:", str, mVar);
                logger4.trace("Exception is", (Throwable) e7);
            }
        }
        throw new UnknownHostException(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:97:0x00a6, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final h f(b bVar, InetAddress inetAddress) throws UnknownHostException {
        int iOrdinal;
        h hVarA;
        xc.a aVar = this.f14516s;
        wc.a aVar2 = aVar.f18431b;
        c cVar = new c(aVar2, bVar, 0);
        c cVar2 = new c(aVar2);
        wc.a aVar3 = aVar.f18431b;
        Logger logger = f14500y;
        if (inetAddress != null) {
            cVar.f14543y = inetAddress;
            cVar.f14535p = inetAddress.equals(this.r) || inetAddress.getAddress()[3] == -1;
            int i10 = aVar3.Y;
            do {
                try {
                    n(cVar, cVar2, aVar3.Z);
                    if (!cVar2.f14530j || cVar2.f14525e != 0) {
                        i10--;
                        if (i10 <= 0) {
                            break;
                        }
                    } else {
                        h[] hVarArr = cVar2.f14522b;
                        int length = hVarArr.length - 1;
                        hVarArr[length].f14544a.f14489d = inetAddress.hashCode();
                        return cVar2.f14522b[length];
                    }
                } catch (InterruptedIOException e7) {
                    if (logger.isTraceEnabled()) {
                        logger.trace("Timeout waiting for response " + bVar.f14486a, (Throwable) e7);
                    }
                    throw new UnknownHostException(bVar.f14486a);
                } catch (IOException e10) {
                    logger.info("Failed to send nameservice request for " + bVar.f14486a, (Throwable) e10);
                    throw new UnknownHostException(bVar.f14486a);
                }
            } while (cVar.f14535p);
            throw new UnknownHostException(bVar.f14486a);
        }
        Iterator it = this.f14514p.iterator();
        while (it.hasNext()) {
            m mVar = (m) it.next();
            try {
                iOrdinal = mVar.ordinal();
            } catch (IOException e11) {
                logger.debug("Failed to lookup name", (Throwable) e11);
            }
            if (iOrdinal == 0 || iOrdinal == 1) {
                m mVar2 = m.RESOLVER_WINS;
                if (mVar != mVar2 || bVar.f14486a == "\u0001\u0002__MSBROWSE__\u0002" || bVar.f14488c == 29) {
                    cVar.f14543y = this.r;
                    cVar.f14535p = true;
                } else {
                    cVar.f14543y = k();
                    cVar.f14535p = false;
                }
                int i11 = aVar3.Y;
                while (true) {
                    int i12 = i11 - 1;
                    if (i11 > 0) {
                        try {
                            n(cVar, cVar2, aVar3.Z);
                            if (cVar2.f14530j && cVar2.f14525e == 0) {
                                cVar2.f14522b[0].f14544a.f14489d = cVar.f14543y.hashCode();
                                return cVar2.f14522b[0];
                            }
                            if (mVar == mVar2) {
                                break;
                            }
                            i11 = i12;
                        } catch (IOException e12) {
                            logger.info("Failed to send nameservice request for " + bVar.f14486a, (Throwable) e12);
                            throw new UnknownHostException(bVar.f14486a);
                        }
                    }
                }
            } else if (iOrdinal == 3 && (hVarA = this.f14518v.a(bVar, aVar)) != null) {
                hVarA.f14544a.f14489d = 0;
                return hVarA;
            }
        }
        throw new UnknownHostException(bVar.f14486a);
    }

    public final h g(b bVar) {
        h hVar;
        if (this.f14516s.f18431b.U == 0) {
            return null;
        }
        synchronized (this.f14503c) {
            try {
                d dVar = (d) this.f14503c.get(bVar);
                if (dVar != null && dVar.f14492b < System.currentTimeMillis() && dVar.f14492b >= 0) {
                    dVar = null;
                }
                hVar = dVar != null ? dVar.f14491a : null;
            } finally {
            }
        }
        return hVar;
    }

    public final h[] h(InetAddress inetAddress, int i10, String str) throws UnknownHostException {
        xc.a aVar = this.f14516s;
        b bVar = new b(aVar.f18431b, str, i10, null);
        Logger logger = f14500y;
        wc.a aVar2 = aVar.f18431b;
        c cVar = new c(aVar2, bVar, 0);
        c cVar2 = new c(aVar2);
        if (inetAddress == null) {
            inetAddress = k();
        }
        cVar.f14543y = inetAddress;
        int i11 = 1;
        boolean z = inetAddress == null || inetAddress.equals(this.r) || inetAddress.getAddress()[3] == -1;
        cVar.f14535p = z;
        if (z) {
            if (cVar.f14543y == null) {
                cVar.f14543y = this.r;
            }
            i11 = aVar2.Y;
        }
        do {
            try {
                n(cVar, cVar2, aVar2.Z);
                if (!cVar2.f14530j || cVar2.f14525e != 0) {
                    i11--;
                    if (i11 <= 0) {
                        break;
                    }
                } else {
                    return cVar2.f14522b;
                }
            } catch (InterruptedIOException e7) {
                if (logger.isTraceEnabled()) {
                    logger.trace("Failed to send nameservice request for " + bVar.f14486a, (Throwable) e7);
                }
                throw new UnknownHostException(bVar.f14486a);
            } catch (IOException e10) {
                logger.info("Failed to send nameservice request for " + bVar.f14486a, (Throwable) e10);
                throw new UnknownHostException(bVar.f14486a);
            }
        } while (cVar.f14535p);
        throw new UnknownHostException(bVar.f14486a);
    }

    public final h i(int i10, String str) {
        if (str == null || str.length() == 0) {
            return this.f14517t;
        }
        b bVar = new b(this.f14516s.f18431b, str, i10, null);
        if (!Character.isDigit(str.charAt(0))) {
            return c(bVar);
        }
        char[] charArray = str.toCharArray();
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i11 < charArray.length) {
            char c7 = charArray[i11];
            if (c7 < '0' || c7 > '9') {
                return c(bVar);
            }
            int i14 = 0;
            while (c7 != '.') {
                if (c7 < '0' || c7 > '9') {
                    return c(bVar);
                }
                i14 = ((i14 * 10) + c7) - 48;
                i11++;
                if (i11 >= charArray.length) {
                    break;
                }
                c7 = charArray[i11];
            }
            if (i14 > 255) {
                return c(bVar);
            }
            i13 = (i13 << 8) + i14;
            i12++;
            i11++;
        }
        return (i12 != 4 || str.endsWith(".")) ? c(bVar) : new h(this.f14519w, i13);
    }

    public final l[] j(h hVar) {
        xc.a aVar = this.f14516s;
        j jVar = new j(aVar.f18431b, h.class.isAssignableFrom(h.class) ? hVar : null);
        wc.a aVar2 = aVar.f18431b;
        int i10 = 0;
        g cVar = new c(aVar2, new b(aVar2, "*\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000", 0, null), 2);
        cVar.f14543y = InetAddress.getByName(hVar.b());
        int i11 = aVar2.Y;
        while (true) {
            int i12 = i11 - 1;
            if (i11 <= 0) {
                throw new UnknownHostException(hVar.c());
            }
            try {
                n(cVar, jVar, aVar2.Z);
                if (jVar.f14530j && jVar.f14525e == 0) {
                    int iHashCode = cVar.f14543y.hashCode();
                    while (true) {
                        h[] hVarArr = jVar.D;
                        if (i10 >= hVarArr.length) {
                            return hVarArr;
                        }
                        hVarArr[i10].f14544a.f14489d = iHashCode;
                        i10++;
                    }
                } else {
                    i11 = i12;
                }
            } catch (IOException e7) {
                f14500y.info("Failed to send node status request for " + hVar, (Throwable) e7);
                throw new UnknownHostException(hVar.toString());
            }
        }
    }

    public final InetAddress k() {
        InetAddress[] inetAddressArr = this.f14516s.f18431b.f17833e0;
        if (inetAddressArr.length == 0) {
            return null;
        }
        return inetAddressArr[this.f14502b];
    }

    public final boolean l(InetAddress inetAddress) {
        int i10 = 0;
        while (inetAddress != null) {
            xc.a aVar = this.f14516s;
            if (i10 >= aVar.f18431b.f17833e0.length) {
                break;
            }
            if (inetAddress.hashCode() == aVar.f18431b.f17833e0[i10].hashCode()) {
                return true;
            }
            i10++;
        }
        return false;
    }

    public final l[] m(String str, InetAddress inetAddress) throws InterruptedException, UnknownHostException {
        androidx.leanback.widget.i iVar = new androidx.leanback.widget.i(7, false);
        e eVar = new e(iVar, str, l(inetAddress) ? 27 : 29, inetAddress, this.f14516s);
        e eVar2 = new e(iVar, str, 32, inetAddress, this.f14516s);
        eVar.setDaemon(true);
        eVar2.setDaemon(true);
        try {
            synchronized (iVar) {
                try {
                    eVar.start();
                    eVar2.start();
                    while (iVar.f1647b > 0 && eVar.f14496d == null && eVar2.f14496d == null) {
                        iVar.wait();
                    }
                } finally {
                }
            }
            try {
                eVar.interrupt();
            } catch (SecurityException e7) {
                e7.printStackTrace();
            }
            try {
                eVar.join();
            } catch (InterruptedException e10) {
                e10.printStackTrace();
            }
            try {
                eVar2.interrupt();
            } catch (SecurityException e11) {
                e11.printStackTrace();
            }
            try {
                eVar2.join();
            } catch (InterruptedException e12) {
                e12.printStackTrace();
            }
            l[] lVarArr = eVar.f14496d;
            if (lVarArr != null) {
                return lVarArr;
            }
            l[] lVarArr2 = eVar2.f14496d;
            if (lVarArr2 != null) {
                return lVarArr2;
            }
            throw eVar.f14498f;
        } catch (InterruptedException unused) {
            throw new UnknownHostException(str);
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:59:0x00df
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1178)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    public final void n(sd.g r13, sd.g r14, int r15) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: sd.f.n(sd.g, sd.g, int):void");
    }

    public final void o() {
        synchronized (this.f14501a) {
            try {
                DatagramSocket datagramSocket = this.f14509i;
                if (datagramSocket != null) {
                    datagramSocket.close();
                    this.f14509i = null;
                }
                this.f14512m = null;
                this.l.clear();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void p(b bVar) {
        synchronized (this.f14504d) {
            this.f14504d.remove(bVar);
            this.f14504d.notifyAll();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        while (this.f14512m == Thread.currentThread()) {
            try {
                try {
                    try {
                        this.f14510j.setLength(this.f14516s.f18431b.X);
                        this.f14509i.setSoTimeout(this.f14506f);
                        this.f14509i.receive(this.f14510j);
                        Logger logger = f14500y;
                        logger.trace("NetBIOS: new data read from socket");
                        g gVar = (g) this.l.get(new Integer(g.b(0, this.f14508h)));
                        if (gVar != null && !gVar.f14530j) {
                            synchronized (gVar) {
                                try {
                                    gVar.f(this.f14508h);
                                    gVar.f14530j = true;
                                    if (logger.isTraceEnabled()) {
                                        logger.trace(gVar.toString());
                                        logger.trace(ge.a.m(this.f14508h, 0, this.f14510j.getLength()));
                                    }
                                    gVar.notify();
                                } finally {
                                }
                            }
                        }
                    } catch (SocketTimeoutException e7) {
                        f14500y.trace("Socket timeout", (Throwable) e7);
                    }
                } catch (Exception e10) {
                    f14500y.warn("Uncaught exception in NameServiceClient", (Throwable) e10);
                }
            } finally {
                o();
            }
        }
    }
}
