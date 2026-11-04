package vd;

import a2.w0;
import com.hierynomus.smbj.SMBClient;
import j$.util.Objects;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.lang.reflect.InvocationTargetException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedList;
import java.util.ListIterator;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import org.bouncycastle.crypto.hpke.HPKE;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public final class b0 extends he.e implements c0 {
    public static final Logger F = LoggerFactory.getLogger((Class<?>) b0.class);
    public final boolean A;
    public Object B;
    public ad.h C;
    public final InetAddress l;

    /* renamed from: m, reason: collision with root package name */
    public final int f16802m;

    /* renamed from: n, reason: collision with root package name */
    public final sd.k f16803n;

    /* renamed from: p, reason: collision with root package name */
    public Socket f16804p;

    /* renamed from: q, reason: collision with root package name */
    public int f16805q;

    /* renamed from: s, reason: collision with root package name */
    public OutputStream f16806s;

    /* renamed from: t, reason: collision with root package name */
    public InputStream f16807t;

    /* renamed from: w, reason: collision with root package name */
    public long f16809w;
    public final vc.b z;

    /* renamed from: k, reason: collision with root package name */
    public boolean f16801k = false;
    public final AtomicLong r = new AtomicLong();

    /* renamed from: v, reason: collision with root package name */
    public final byte[] f16808v = new byte[1024];

    /* renamed from: x, reason: collision with root package name */
    public final LinkedList f16810x = new LinkedList();

    /* renamed from: y, reason: collision with root package name */
    public String f16811y = null;
    public final Semaphore D = new Semaphore(1, true);
    public byte[] E = new byte[64];

    public b0(vc.b bVar, sd.k kVar, int i10, InetAddress inetAddress, int i11, boolean z) {
        this.z = bVar;
        this.A = z || ((wc.a) bVar.e()).f17838h;
        this.f16809w = System.currentTimeMillis() + ((wc.a) bVar.e()).D;
        this.f16803n = kVar;
        this.f16805q = i10;
        this.l = inetAddress;
        this.f16802m = i11;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0046  */
    /* JADX WARN: Type inference failed for: r3v1, types: [ad.k, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v3, types: [ad.k, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v7, types: [ad.k, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v1, types: [ad.k, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v0, types: [ad.j, java.lang.Object] */
    @Override // he.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void L() throws IOException {
        w0 w0VarP0;
        Logger logger = F;
        if (logger.isDebugEnabled()) {
            logger.debug("Connecting in state " + this.f8193a + " addr " + this.f16803n.b());
        }
        try {
            w0VarP0 = p0(this.f16805q);
        } catch (IOException e7) {
            if (!((wc.a) this.z.e()).f17851o) {
                throw e7;
            }
            int i10 = this.f16805q;
            if (i10 != 0) {
                int i11 = SMBClient.DEFAULT_PORT;
                if (i10 == 445) {
                    i11 = 139;
                }
                this.f16805q = i11;
                this.f16801k = false;
                this.r.set(0L);
                w0VarP0 = p0(this.f16805q);
            }
        }
        Logger logger2 = F;
        if (logger2.isDebugEnabled()) {
            logger2.debug("Negotiation response on " + this.f8194b + " :" + w0VarP0);
        }
        if (!w0VarP0.f347c.f0(this.z, w0VarP0.f346b)) {
            throw new r("This client is not compatible with the server.");
        }
        boolean zQ = w0VarP0.f347c.Q();
        boolean zD0 = w0VarP0.f347c.d0();
        if (logger2.isDebugEnabled()) {
            logger2.debug("Signature negotiation enforced " + this.A + " (server " + zQ + ") enabled " + ((wc.a) this.z.e()).f17836g + " (server " + zD0 + ")");
        }
        this.f16811y = this.f16803n.c();
        ?? r32 = w0VarP0.f347c;
        this.B = r32;
        if (r32.n().a(vc.i.f16790g)) {
            byte[] bArr = (byte[]) w0VarP0.f348d;
            synchronized (this.E) {
                this.E = c0(bArr.length, bArr, this.E);
            }
            z0((byte[]) w0VarP0.f349e);
            if (logger2.isDebugEnabled()) {
                byte[] bArr2 = this.E;
                logger2.debug("Preauth hash after negotiate ".concat(ge.a.m(bArr2, 0, bArr2.length)));
            }
        }
    }

    @Override // he.e
    public final synchronized boolean M(boolean z, boolean z4) {
        boolean zM;
        d0 d0Var;
        try {
            ListIterator listIterator = this.f16810x.listIterator();
            long j10 = this.f8200h.get();
            if ((!z4 || j10 == 1) && (z4 || j10 <= 0)) {
                zM = false;
            } else {
                F.warn("Disconnecting transport while still in use " + this + ": " + this.f16810x);
                zM = true;
            }
            Logger logger = F;
            if (logger.isDebugEnabled()) {
                logger.debug("Disconnecting transport " + this);
            }
            try {
                try {
                    if (logger.isTraceEnabled()) {
                        logger.trace("Currently " + this.f16810x.size() + " session(s) active for " + this);
                    }
                    while (listIterator.hasNext()) {
                        try {
                            try {
                                zM |= ((z) listIterator.next()).M(z, false);
                            } catch (Exception e7) {
                                F.debug("Failed to close session", (Throwable) e7);
                            }
                        } finally {
                            listIterator.remove();
                        }
                    }
                    Socket socket = this.f16804p;
                    if (socket != null) {
                        socket.shutdownOutput();
                        this.f16806s.close();
                        this.f16807t.close();
                        this.f16804p.close();
                        F.trace("Socket closed");
                    } else {
                        F.trace("Not yet initialized");
                    }
                    this.f16804p = null;
                    this.C = null;
                    this.f16811y = null;
                    d0Var = (d0) this.z.b();
                } catch (Throwable th2) {
                    this.f16804p = null;
                    this.C = null;
                    this.f16811y = null;
                    ((d0) this.z.b()).e(this);
                    throw th2;
                }
            } catch (Exception e10) {
                F.debug("Exception in disconnect", (Throwable) e10);
                this.f16804p = null;
                this.C = null;
                this.f16811y = null;
                d0Var = (d0) this.z.b();
            }
            d0Var.e(this);
        } catch (Throwable th3) {
            throw th3;
        }
        return zM;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [ad.k, java.lang.Object] */
    @Override // he.e
    public final void N(he.d dVar) throws Exception {
        ad.b bVar = (ad.b) dVar;
        this.B.K(dVar);
        try {
            if (this.f16801k) {
                i0(bVar);
            } else {
                h0(bVar);
            }
        } catch (Exception e7) {
            F.warn("Failure decoding message, disconnecting transport", (Throwable) e7);
            dVar.l(e7);
            synchronized (dVar) {
                dVar.notifyAll();
                throw e7;
            }
        }
    }

    @Override // he.e
    public final void P(ad.c cVar) {
        Logger logger;
        byte[] bArrL = this.z.h().l();
        try {
            synchronized (this.f8198f) {
                try {
                    int iC = cVar.c(4, bArrL);
                    ge.a.f(65535 & iC, 0, bArrL);
                    if (F.isTraceEnabled()) {
                        do {
                            logger = F;
                            logger.trace(cVar.toString());
                            if (!(cVar instanceof ed.a)) {
                                break;
                            } else {
                                cVar = ((ed.a) cVar).I;
                            }
                        } while (cVar != null);
                        logger.trace(ge.a.m(bArrL, 4, iC));
                    }
                    this.f16806s.write(bArrL, 0, iC + 4);
                    this.f16806s.flush();
                } finally {
                }
            }
        } finally {
            this.z.h().m(bArrL);
        }
    }

    @Override // he.e
    public final void Q(Long l) {
        synchronized (this.f8197e) {
            try {
                int iA = ge.a.a(2, this.f16808v) & HPKE.aead_EXPORT_ONLY;
                if (iA < 33 || iA + 4 > ((wc.a) this.z.e()).I) {
                    F.warn("Flusing stream input");
                    this.f16807t.skip(r6.available());
                } else {
                    ad.d dVarG0 = g0(l);
                    if (dVarG0 != null) {
                        Logger logger = F;
                        logger.debug("Parsing notification");
                        N(dVarG0);
                        logger.info("Received notification " + dVarG0);
                        return;
                    }
                    F.warn("Skipping message " + l);
                    if (n0()) {
                        this.f16807t.skip(iA - 64);
                    } else {
                        this.f16807t.skip(iA - 32);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // he.e
    public final int R(ad.c cVar) {
        if (cVar instanceof ad.c) {
            cVar.getClass();
        }
        return ((wc.a) this.z.e()).A;
    }

    @Override // he.e
    public final boolean S(ad.c cVar, he.d dVar) {
        if (!this.f16801k) {
            return false;
        }
        id.c cVar2 = (id.c) cVar;
        id.d dVar2 = (id.d) dVar;
        synchronized (dVar2) {
            try {
                if (dVar2.f8667n && !dVar2.C && dVar2.f8664j == 259) {
                    long j10 = dVar2.r;
                    if (j10 != 0) {
                        dVar2.C = true;
                        boolean z = cVar2.f8667n;
                        cVar2.r = j10;
                        if (dVar2.z != null) {
                            dVar2.z = Long.valueOf(System.currentTimeMillis() + R(cVar));
                        }
                        Logger logger = F;
                        if (logger.isDebugEnabled()) {
                            logger.debug("Have intermediate reply " + dVar);
                        }
                        if (!z) {
                            int i10 = dVar2.f8665k;
                            if (logger.isDebugEnabled()) {
                                logger.debug("Credit from intermediate " + i10);
                            }
                            this.D.release(i10);
                        }
                        return true;
                    }
                }
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // he.e
    public final boolean T() {
        Socket socket = this.f16804p;
        return this.f8193a == 4 || this.f8193a == 5 || this.f8193a == 6 || this.f8193a == 0 || socket == null || socket.isClosed();
    }

    @Override // he.e
    public final long V(ad.c cVar) {
        long jIncrementAndGet = this.r.incrementAndGet() - 1;
        if (!this.f16801k) {
            jIncrementAndGet %= 32000;
        }
        cVar.a(jIncrementAndGet);
        return jIncrementAndGet;
    }

    @Override // he.e
    public final Long W() throws IOException {
        while (he.e.X(this.f16807t, this.f16808v, 0, 4) >= 4) {
            byte[] bArr = this.f16808v;
            if (bArr[0] != -123) {
                if (he.e.X(this.f16807t, bArr, 4, 32) < 32) {
                    return null;
                }
                Logger logger = F;
                if (logger.isTraceEnabled()) {
                    logger.trace("New data read: " + this);
                    logger.trace(ge.a.m(this.f16808v, 4, 32));
                }
                while (true) {
                    byte[] bArr2 = this.f16808v;
                    byte b10 = bArr2[0];
                    if (b10 == 0 && bArr2[4] == -2 && bArr2[5] == 83 && bArr2[6] == 77 && bArr2[7] == 66) {
                        this.f16801k = true;
                        if (he.e.X(this.f16807t, bArr2, 36, 32) < 32) {
                            return null;
                        }
                        byte[] bArr3 = this.f16808v;
                        return Long.valueOf(((ge.a.d(32, bArr3) & 4294967295L) << 32) | (4294967295L & ge.a.d(28, bArr3)));
                    }
                    if (b10 == 0 && bArr2[1] == 0 && bArr2[4] == -1 && bArr2[5] == 83 && bArr2[6] == 77 && bArr2[7] == 66) {
                        return Long.valueOf(ge.a.b(34, bArr2) & 65535);
                    }
                    int i10 = 0;
                    while (i10 < 35) {
                        F.warn("Possibly out of phase, trying to resync ".concat(ge.a.m(this.f16808v, 0, 16)));
                        byte[] bArr4 = this.f16808v;
                        int i11 = i10 + 1;
                        bArr4[i10] = bArr4[i11];
                        i10 = i11;
                    }
                    int i12 = this.f16807t.read();
                    if (i12 == -1) {
                        return null;
                    }
                    this.f16808v[35] = (byte) i12;
                }
            }
        }
        return null;
    }

    public final void b0() {
        long jIncrementAndGet = this.f8200h.incrementAndGet();
        Logger logger = he.e.f8192j;
        if (logger.isTraceEnabled()) {
            logger.trace("Acquire transport " + jIncrementAndGet + " " + this);
        }
    }

    public final byte[] c0(int i10, byte[] bArr, byte[] bArr2) throws NoSuchAlgorithmException, i0 {
        Object obj;
        if (!this.f16801k || (obj = this.B) == null) {
            throw new i0();
        }
        od.f fVar = (od.f) obj;
        if (!fVar.P.a(vc.i.f16790g)) {
            throw new i0();
        }
        if (fVar.R != 1) {
            throw new i0();
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-512");
            if (bArr2 != null) {
                messageDigest.update(bArr2);
            }
            messageDigest.update(bArr, 0, i10);
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException e7) {
            throw new vc.d(e7);
        }
    }

    public final void d0(ad.d dVar, String str, ad.f fVar) throws IllegalAccessException, r, IllegalArgumentException, InvocationTargetException {
        bd.a aVarK0;
        if (((wc.a) this.z.e()).M) {
            aVarK0 = null;
        } else {
            try {
                aVarK0 = k0(this.z, str, fVar.g(), fVar.V(), 1);
            } catch (vc.c e7) {
                throw new r("Failed to get DFS referral", e7);
            }
        }
        if (aVarK0 == null) {
            Logger logger = F;
            if (logger.isDebugEnabled()) {
                logger.debug("Error code: 0x".concat(ge.a.l(dVar.r(), 8)));
            }
            throw new r(dVar.r());
        }
        if (fVar.V() != null && ((wc.a) this.z.e()).P) {
            aVarK0.b(fVar.V());
        }
        Logger logger2 = F;
        if (logger2.isDebugEnabled()) {
            logger2.debug("Got referral " + aVarK0);
        }
        vc.h hVarK = this.z.k();
        vc.b bVar = this.z;
        d dVar2 = (d) hVarK;
        synchronized (dVar2) {
            try {
                if (!((wc.a) bVar.e()).M) {
                    Logger logger3 = d.f16813h;
                    if (logger3.isDebugEnabled()) {
                        logger3.debug("Inserting referral for " + str);
                    }
                    int iIndexOf = str.indexOf(92, 1);
                    int i10 = iIndexOf + 1;
                    int iIndexOf2 = str.indexOf(92, i10);
                    if (iIndexOf < 0 || iIndexOf2 < 0) {
                        logger3.error("Invalid UNC path ".concat(str));
                    } else {
                        String strSubstring = str.substring(1, iIndexOf);
                        Locale locale = Locale.ROOT;
                        String lowerCase = strSubstring.toLowerCase(locale);
                        String strSubstring2 = str.substring(i10, iIndexOf2);
                        String lowerCase2 = str.substring(0, aVarK0.f2766a).toLowerCase(locale);
                        if (((wc.a) bVar.e()).P) {
                            aVarK0.c(lowerCase);
                        }
                        if (logger3.isDebugEnabled()) {
                            logger3.debug("Adding key " + lowerCase2 + " to " + aVarK0);
                        }
                        int length = lowerCase.length() + 2 + strSubstring2.length();
                        int i11 = aVarK0.f2766a;
                        if (length > i11) {
                            throw new IllegalArgumentException("Stripping more than consumed");
                        }
                        aVarK0.f2766a = i11 - length;
                        if (lowerCase2.charAt(lowerCase2.length() - 1) != '\\') {
                            lowerCase2 = lowerCase2.concat("\\");
                        }
                        if (logger3.isDebugEnabled()) {
                            logger3.debug("Key is " + lowerCase2);
                        }
                        b bVar2 = dVar2.f16818e;
                        synchronized (dVar2.f16819f) {
                            if (bVar2 != null) {
                                try {
                                    if (System.currentTimeMillis() + 10000 > bVar2.f16799a) {
                                        bVar2 = new b(((wc.a) bVar.e()).N);
                                    }
                                    dVar2.f16818e = bVar2;
                                } finally {
                                }
                            } else {
                                bVar2 = new b(((wc.a) bVar.e()).N);
                                dVar2.f16818e = bVar2;
                            }
                        }
                        bVar2.f16800b.put(lowerCase2, aVarK0);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        throw new e(aVarK0);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0074, code lost:
    
        r6 = vd.b0.F;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x007a, code lost:
    
        if (r6.isDebugEnabled() == false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x007c, code lost:
    
        r6.debug("Error code: 0x" + ge.a.l(r3.r(), 8) + " for " + r1.getClass().getSimpleName());
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00b0, code lost:
    
        throw new vd.r(r3.r());
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x006e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean e0(ad.c cVar) throws IllegalAccessException, r, IllegalArgumentException, InvocationTargetException {
        int i10;
        while (true) {
            boolean z = true;
            if (cVar == null) {
                return true;
            }
            if (this.f16801k) {
                he.b bVar = (id.b) cVar;
                ad.d dVarB = cVar.b();
                switch (dVarB.r()) {
                    case -2147483643:
                        if (!(dVarB instanceof ld.b) && (!(dVarB instanceof md.b) || ((i10 = ((md.b) dVarB).E) != 1163287 && i10 != 1130508))) {
                            break;
                        }
                        z = false;
                        if (!dVarB.F()) {
                            if (!z) {
                                return false;
                            }
                            break;
                        } else {
                            throw new n();
                        }
                        break;
                    case -2147483642:
                    case 0:
                        if (!dVarB.F()) {
                        }
                        break;
                    case -1073741808:
                    case -1073741637:
                        throw new i0();
                    case -1073741802:
                    case 259:
                    case 267:
                    case 268:
                        z = false;
                        if (!dVarB.F()) {
                        }
                        break;
                    case -1073741790:
                    case -1073741718:
                    case -1073741715:
                    case -1073741714:
                    case -1073741713:
                    case -1073741712:
                    case -1073741711:
                    case -1073741710:
                    case -1073741428:
                    case -1073741260:
                        throw new p(dVarB.r());
                    case -1073741225:
                        if (!(bVar instanceof ad.f)) {
                            throw new r("Invalid request for a DFS NT_STATUS_PATH_NOT_COVERED response ".concat(bVar.getClass().getName()));
                        }
                        ad.f fVar = (ad.f) bVar;
                        d0(dVarB, fVar.W(), fVar);
                        throw null;
                }
            } else if (!f0((ed.c) cVar, (ed.c) cVar.b())) {
                return false;
            }
            cVar = cVar.h();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean f0(ed.c cVar, ed.c cVar2) throws IllegalAccessException, r, IllegalArgumentException, InvocationTargetException {
        boolean z;
        int i10 = cVar2.f4932f;
        if (i10 == 196610) {
            cVar2.f4932f = -1073741225;
        } else {
            cVar2.f4932f = r.b(i10);
        }
        int i11 = cVar2.f4932f;
        if (i11 != 0) {
            switch (i11) {
                case -2147483643:
                case -1073741802:
                    z = false;
                    break;
                case -1073741790:
                case -1073741718:
                case -1073741428:
                case -1073741260:
                    throw new p(cVar2.f4932f);
                case -1073741662:
                case -1073741225:
                    d0(cVar2, cVar.f4943t, cVar);
                    throw null;
                case -1073741637:
                    throw new i0();
                case 0:
                    z = true;
                    break;
                default:
                    switch (i11) {
                        case -1073741715:
                        case -1073741714:
                        case -1073741713:
                        case -1073741712:
                        case -1073741711:
                        case -1073741710:
                            break;
                        default:
                            Logger logger = F;
                            if (logger.isDebugEnabled()) {
                                logger.debug("Error code: 0x" + ge.a.l(cVar2.f4932f, 8) + " for " + cVar.getClass().getSimpleName());
                            }
                            throw new r(cVar2.f4932f);
                    }
            }
        }
        if (cVar2.f4942s) {
            throw new r("Signature verification failed.");
        }
        return z;
    }

    public final ad.d g0(Long l) {
        if (this.f16801k) {
            if (l.longValue() == -1 && (ge.a.b(16, this.f16808v) & HPKE.aead_EXPORT_ONLY) == 18) {
                return new nd.a(this.z.e());
            }
        } else if (l.longValue() == 65535 && this.f16808v[8] == 36) {
            return new fd.e(this.z.e());
        }
        return null;
    }

    public final void h0(ad.b bVar) {
        byte[] bArrL = this.z.h().l();
        try {
            System.arraycopy(this.f16808v, 0, bArrL, 0, 36);
            int iA = ge.a.a(2, bArrL) & HPKE.aead_EXPORT_ONLY;
            if (iA < 33 || iA + 4 > Math.min(65535, ((wc.a) this.z.e()).f17839h0)) {
                throw new IOException("Invalid payload size: " + iA);
            }
            int iD = ge.a.d(9, bArrL);
            if (bVar.y() == 46 && (iD == 0 || iD == -2147483643)) {
                fd.p pVar = (fd.p) bVar;
                he.e.X(this.f16807t, bArrL, 36, 27);
                bVar.decode(bArrL);
                int i10 = pVar.P - 59;
                if (pVar.l > 0 && i10 > 0 && i10 < 4) {
                    he.e.X(this.f16807t, bArrL, 63, i10);
                }
                int i11 = pVar.O;
                if (i11 > 0) {
                    he.e.X(this.f16807t, pVar.L, pVar.M, i11);
                }
            } else {
                he.e.X(this.f16807t, bArrL, 36, iA - 32);
                bVar.decode(bArrL);
            }
            this.z.h().m(bArrL);
        } catch (Throwable th2) {
            this.z.h().m(bArrL);
            throw th2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x00c2, code lost:
    
        if (r8 == 0) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00c4, code lost:
    
        r4 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00c5, code lost:
    
        r2 = java.lang.Integer.valueOf(r4);
        r4 = java.lang.Integer.valueOf(r9);
        r5 = new java.lang.Object[r5];
        r5[0] = r2;
        r5[1] = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00da, code lost:
    
        throw new java.io.IOException(java.lang.String.format("Message size %d exceeds maxiumum buffer size %d", r5));
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0143, code lost:
    
        r20.z.h().m(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x014c, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void i0(ad.b bVar) throws IOException {
        int i10 = 64;
        int i11 = 2;
        int iA = ge.a.a(2, this.f16808v) & HPKE.aead_EXPORT_ONLY;
        byte[] bArr = this.f16808v;
        int i12 = iA | ((bArr[1] & 255) << 16);
        if (i12 < 65) {
            throw new IOException(da.b.a(i12, "Invalid payload size: "));
        }
        if (bArr[0] != 0 || bArr[4] != -2 || bArr[5] != 83 || bArr[6] != 77 || bArr[7] != 66) {
            throw new IOException("Houston we have a synchronization problem");
        }
        int iD = ge.a.d(24, bArr);
        int i13 = ((wc.a) this.z.e()).f17839h0;
        int i14 = iD != 0 ? iD : i12;
        if (i14 > i13) {
            throw new IOException(String.format("Message size %d exceeds maxiumum buffer size %d", Integer.valueOf(i14), Integer.valueOf(i13)));
        }
        id.d dVar = (id.d) bVar;
        byte[] bArrL = this.z.h().l();
        int i15 = iD != 0 ? iD : i12;
        try {
            System.arraycopy(this.f16808v, 4, bArrL, 0, 64);
            he.e.X(this.f16807t, bArrL, 64, i15 - 64);
            dVar.f8666m = i15;
            int iH0 = dVar.h0(0, bArrL, false);
            if (iH0 > i15) {
                throw new IOException(String.format("WHAT? ( read %d decoded %d ): %s", Integer.valueOf(i15), Integer.valueOf(iH0), dVar));
            }
            if (iD != 0 && iH0 > iD) {
                throw new IOException("Overlapping commands");
            }
            int i16 = i12 - i15;
            while (true) {
                if (i16 > 0 && iD != 0) {
                    dVar = (id.d) ((ad.d) dVar.f8673w);
                    Logger logger = F;
                    if (dVar != null) {
                        he.e.X(this.f16807t, bArrL, 0, i10);
                        int iD2 = ge.a.d(20, bArrL);
                        if ((iD2 != 0 && iD2 > i13) || (iD2 == 0 && i16 > i13)) {
                            break;
                        }
                        int i17 = iD2 != 0 ? iD2 : i16;
                        if (logger.isDebugEnabled()) {
                            logger.debug(String.format("Compound next command %d read size %d remain %d", Integer.valueOf(iD2), Integer.valueOf(i17), Integer.valueOf(i16)));
                        }
                        dVar.f8666m = i17;
                        he.e.X(this.f16807t, bArrL, 64, i17 - 64);
                        int iH02 = dVar.h0(0, bArrL, true);
                        if (iH02 > i17) {
                            throw new IOException(String.format("WHAT? ( read %d decoded %d ): %s", Integer.valueOf(i17), Integer.valueOf(iH02), dVar));
                        }
                        if (iD2 != 0 && iH02 > iD2) {
                            throw new IOException("Overlapping commands");
                        }
                        i16 -= i17;
                        iD = iD2;
                        i10 = 64;
                        i11 = 2;
                    } else {
                        logger.warn("Response not properly set up");
                        this.f16807t.skip(i16);
                        break;
                    }
                } else {
                    break;
                }
            }
        } catch (Throwable th2) {
            this.z.h().m(bArrL);
            throw th2;
        }
    }

    public final boolean j0() throws r {
        try {
            return A(((wc.a) this.z.e()).A);
        } catch (he.f e7) {
            throw new r("Failed to connect: " + this.f16803n, e7);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final bd.a k0(vc.b bVar, String str, String str2, String str3, int i10) throws IllegalAccessException, r, IllegalArgumentException, InvocationTargetException {
        bd.d dVar;
        String str4 = str;
        int i11 = i10;
        int i12 = 0;
        Logger logger = F;
        if (logger.isDebugEnabled()) {
            logger.debug("Resolving DFS path " + str4);
        }
        if (str.length() >= 2 && str4.charAt(0) == '\\' && str4.charAt(1) == '\\') {
            throw new r("Path must not start with double slash: ".concat(str4));
        }
        z zVarM0 = m0(bVar, str2, str3);
        try {
            b0 b0Var = zVarM0.f16972d;
            b0Var.b0();
            try {
                h0 h0VarK = zVarM0.K("IPC$");
                try {
                    bd.c cVar = new bd.c(str4, i12);
                    if (n0()) {
                        md.a aVar = new md.a(bVar.e(), 393620);
                        aVar.C = 1;
                        aVar.D = cVar;
                        dVar = (bd.d) ((md.b) h0VarK.O(aVar, new l[0])).r0(bd.d.class);
                    } else {
                        hd.b bVar2 = new hd.b(bVar.e());
                        h0VarK.N(new hd.a(str4, bVar.e()), bVar2, Collections.emptySet());
                        dVar = bVar2.f8188t0;
                    }
                    int i13 = dVar.f2781b;
                    bd.a aVar2 = null;
                    if (i13 == 0) {
                        h0VarK.M(false);
                        b0Var.Y();
                        zVarM0.O();
                        return null;
                    }
                    if (i11 == 0 || i13 < i11) {
                        i11 = i13;
                    }
                    long jCurrentTimeMillis = (((wc.a) bVar.e()).N * 1000) + System.currentTimeMillis();
                    bd.e[] eVarArr = dVar.f2783d;
                    int i14 = 0;
                    while (i14 < i11) {
                        int i15 = i11;
                        bd.a aVarD = bd.a.d(eVarArr[i14], str4, jCurrentTimeMillis, dVar.f2780a);
                        aVarD.l = str3;
                        if ((dVar.f2782c & 2) == 0 && (aVarD.f2773h & 2) == 0) {
                            logger.debug("Non-root referral is not final " + dVar);
                            aVarD.f2777m = true;
                        }
                        if (aVar2 != null) {
                            aVarD.f2774i = aVar2.f2774i;
                            aVar2.f2774i = aVarD;
                        }
                        i14++;
                        str4 = str;
                        aVar2 = aVarD;
                        i11 = i15;
                    }
                    if (logger.isDebugEnabled()) {
                        logger.debug("Got referral " + aVar2);
                    }
                    h0VarK.M(false);
                    b0Var.Y();
                    zVarM0.O();
                    return aVar2;
                } finally {
                }
            } finally {
            }
        } catch (Throwable th2) {
            try {
                zVarM0.O();
            } catch (Throwable th3) {
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                } catch (Exception unused) {
                }
            }
            throw th2;
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [ad.k, java.lang.Object] */
    public final ad.k l0() throws r {
        try {
            if (this.B == null) {
                A(((wc.a) this.z.e()).A);
            }
            ?? r02 = this.B;
            if (r02 != 0) {
                return r02;
            }
            throw new r("Connection did not complete, failed to get negotiation response");
        } catch (IOException e7) {
            throw new r(e7.getMessage(), e7);
        }
    }

    public final synchronized z m0(vc.b bVar, String str, String str2) {
        try {
            Logger logger = F;
            if (logger.isTraceEnabled()) {
                logger.trace("Currently " + this.f16810x.size() + " session(s) active for " + this);
            }
            if (str != null) {
                str = str.toLowerCase(Locale.ROOT);
            }
            if (str2 != null) {
                str2 = str2.toUpperCase(Locale.ROOT);
            }
            ListIterator listIterator = this.f16810x.listIterator();
            while (listIterator.hasNext()) {
                z zVar = (z) listIterator.next();
                if (Objects.equals(zVar.f16976h, bVar.g()) && Objects.equals(zVar.f16983q, str) && Objects.equals(zVar.f16982p, str2)) {
                    Logger logger2 = F;
                    if (logger2.isTraceEnabled()) {
                        logger2.trace("Reusing existing session " + zVar);
                    }
                    zVar.r();
                    return zVar;
                }
                Logger logger3 = F;
                if (logger3.isTraceEnabled()) {
                    logger3.trace("Existing session " + zVar + " does not match " + bVar.g());
                }
            }
            if (((wc.a) bVar.e()).D > 0) {
                long j10 = this.f16809w;
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (j10 < jCurrentTimeMillis) {
                    this.f16809w = ((wc.a) bVar.e()).D + jCurrentTimeMillis;
                    ListIterator listIterator2 = this.f16810x.listIterator();
                    while (listIterator2.hasNext()) {
                        z zVar2 = (z) listIterator2.next();
                        long j11 = zVar2.f16973e;
                        if ((j11 > 0 ? Long.valueOf(j11) : null) != null) {
                            long j12 = zVar2.f16973e;
                            if ((j12 > 0 ? Long.valueOf(j12) : null).longValue() < jCurrentTimeMillis && zVar2.f16979k.get() <= 0) {
                                Logger logger4 = F;
                                if (logger4.isDebugEnabled()) {
                                    logger4.debug("Closing session after timeout " + zVar2);
                                }
                                zVar2.M(false, false);
                            }
                        }
                    }
                }
            }
            z zVar3 = new z(bVar, str, str2, this);
            Logger logger5 = F;
            if (logger5.isDebugEnabled()) {
                logger5.debug("Establishing new session " + zVar3 + " on " + this.f8194b);
            }
            this.f16810x.add(zVar3);
            return zVar3;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final boolean n0() {
        return this.f16801k || (l0() instanceof od.f);
    }

    public final boolean o0() {
        if (this.A) {
            return true;
        }
        return l0().Q();
    }

    public final w0 p0(int i10) {
        synchronized (this.f8197e) {
            try {
                if (i10 == 139) {
                    x0();
                } else {
                    if (i10 == 0) {
                        i10 = SMBClient.DEFAULT_PORT;
                    }
                    Socket socket = new Socket();
                    this.f16804p = socket;
                    if (this.l != null) {
                        socket.bind(new InetSocketAddress(this.l, this.f16802m));
                    }
                    this.f16804p.connect(new InetSocketAddress(this.f16803n.b(), i10), ((wc.a) this.z.e()).C);
                    this.f16804p.setSoTimeout(((wc.a) this.z.e()).B);
                    this.f16806s = this.f16804p.getOutputStream();
                    this.f16807t = this.f16804p.getInputStream();
                }
                if (this.D.drainPermits() == 0) {
                    F.debug("It appears we previously lost some credits");
                }
                Object obj = null;
                if (!this.f16801k && !((wc.a) this.z.e()).f17849n) {
                    fd.i iVar = new fd.i(this.z.e(), this.A);
                    int iS0 = s0(iVar, true);
                    r0();
                    if (this.f16801k) {
                        od.f fVar = new od.f(this.z.e());
                        fVar.h0(4, this.f16808v, false);
                        fVar.C();
                        int i11 = fVar.E;
                        if (i11 == 767) {
                            return q0(fVar);
                        }
                        if (i11 != 514) {
                            throw new vc.c("Server returned invalid dialect verison in multi protocol negotiation");
                        }
                        int i12 = fVar.f8665k;
                        if (i12 > 0) {
                            this.D.release(i12);
                        }
                        Arrays.fill(this.f16808v, (byte) 0);
                        return new w0(new od.e(this.z.e(), this.A ? 2 : 1), fVar, obj, obj, 1);
                    }
                    if (((wc.a) this.z.e()).f17856q0.f16792a) {
                        throw new vc.c("Server does not support SMB2");
                    }
                    fd.j jVar = new fd.j(this.z);
                    jVar.decode(this.f16808v);
                    jVar.C();
                    Logger logger = F;
                    if (logger.isTraceEnabled()) {
                        logger.trace(jVar.toString());
                        logger.trace(ge.a.m(this.f16808v, 4, iS0));
                    }
                    int i13 = jVar.K;
                    if (i13 > 0) {
                        this.D.release(i13);
                    }
                    Arrays.fill(this.f16808v, (byte) 0);
                    return new w0(iVar, jVar, obj, obj, 1);
                }
                F.debug("Using SMB2 only negotiation");
                return q0(null);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final w0 q0(od.f fVar) throws Throwable {
        boolean zA;
        byte[] bArr;
        od.f fVar2;
        byte[] bArr2;
        od.e eVar = new od.e(this.z.e(), (this.A || (fVar != null && fVar.Q())) ? 3 : 1);
        od.f fVar3 = null;
        try {
            eVar.f8665k = Math.max(1, 512 - this.D.availablePermits());
            int iS0 = s0(eVar, fVar != null);
            zA = ((wc.a) this.z.e()).f17857r0.a(vc.i.f16790g);
            if (zA) {
                bArr = new byte[iS0];
                System.arraycopy(this.f16808v, 4, bArr, 0, iS0);
            } else {
                bArr = null;
            }
            r0();
            fVar2 = (od.f) eVar.M(this.z);
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            int iH0 = fVar2.h0(4, this.f16808v, false);
            fVar2.C();
            if (zA) {
                byte[] bArr3 = new byte[iH0];
                System.arraycopy(this.f16808v, 4, bArr3, 0, iH0);
                bArr2 = bArr3;
            } else {
                bArr = null;
                bArr2 = null;
            }
            Logger logger = F;
            if (logger.isTraceEnabled()) {
                logger.trace(fVar2.toString());
                logger.trace(ge.a.m(this.f16808v, 4, 0));
            }
            w0 w0Var = new w0(eVar, fVar2, bArr, bArr2, 1);
            int i10 = fVar2.f8665k;
            this.D.release(i10 != 0 ? i10 : 1);
            Arrays.fill(this.f16808v, (byte) 0);
            return w0Var;
        } catch (Throwable th3) {
            fVar3 = fVar2;
            th = th3;
            int i11 = fVar3 != null ? fVar3.f8665k : 0;
            this.D.release(i11 != 0 ? i11 : 1);
            Arrays.fill(this.f16808v, (byte) 0);
            throw th;
        }
    }

    public final void r0() throws IOException {
        try {
            this.f16804p.setSoTimeout(((wc.a) this.z.e()).C);
            if (W() == null) {
                throw new IOException("transport closed in negotiate");
            }
            this.f16804p.setSoTimeout(((wc.a) this.z.e()).B);
            int iA = ge.a.a(2, this.f16808v) & HPKE.aead_EXPORT_ONLY;
            if (iA >= 33) {
                int i10 = iA + 4;
                byte[] bArr = this.f16808v;
                if (i10 <= bArr.length) {
                    int i11 = this.f16801k ? 64 : 32;
                    he.e.X(this.f16807t, bArr, i11 + 4, iA - i11);
                    F.trace("Read negotiate response");
                    return;
                }
            }
            throw new IOException(da.b.a(iA, "Invalid payload size: "));
        } catch (Throwable th2) {
            this.f16804p.setSoTimeout(((wc.a) this.z.e()).B);
            throw th2;
        }
    }

    public final int s0(ad.c cVar, boolean z) throws IOException {
        if (z) {
            V(cVar);
        } else {
            cVar.a(0L);
            this.r.set(1L);
        }
        int iC = cVar.c(4, this.f16808v);
        ge.a.f(65535 & iC, 0, this.f16808v);
        Logger logger = F;
        if (logger.isTraceEnabled()) {
            logger.trace(cVar.toString());
            logger.trace(ge.a.m(this.f16808v, 4, iC));
        }
        this.f16806s.write(this.f16808v, 0, iC + 4);
        this.f16806s.flush();
        logger.trace("Wrote negotiate request");
        return iC;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [ad.k, java.lang.Object] */
    public final ad.d t0(ad.c cVar, ad.d dVar, Set set) throws IllegalAccessException, r, InterruptedException, IllegalArgumentException, InvocationTargetException {
        j0();
        boolean z = this.f16801k;
        if (z && !(cVar instanceof id.b)) {
            throw new r("Not an SMB2 request ".concat(cVar.getClass().getName()));
        }
        if (!z && !(cVar instanceof ed.c)) {
            throw new r("Not an SMB1 request");
        }
        this.B.z(cVar);
        if (dVar != null) {
            cVar.s(dVar);
            dVar.i(cVar.getDigest());
        }
        try {
            Logger logger = F;
            if (logger.isTraceEnabled()) {
                logger.trace("Sending " + cVar);
            }
            cVar.getClass();
            if (cVar instanceof gd.a) {
                v0(cVar, dVar, set);
            } else {
                if (dVar != null) {
                    dVar.S(cVar.y());
                }
                dVar = w0(cVar, dVar, set);
            }
            if (logger.isTraceEnabled()) {
                logger.trace("Response is " + dVar);
            }
            e0(cVar);
            return dVar;
        } catch (r e7) {
            throw e7;
        } catch (IOException e10) {
            throw new r(e10.getMessage(), e10);
        }
    }

    public final String toString() {
        return this.f8194b + "[" + this.f16803n + ":" + this.f16805q + ",state=" + this.f8193a + ",signingEnforced=" + this.A + ",usage=" + this.f8200h.get() + "]";
    }

    public final void u0(ad.c cVar, ed.c cVar2) throws IllegalAccessException, r, InterruptedException, IllegalArgumentException, InvocationTargetException {
        t0(cVar, cVar2, Collections.emptySet());
    }

    public final void v0(ad.c cVar, ad.d dVar, Set set) {
        long jV;
        dVar.S(cVar.y());
        gd.a aVar = (gd.a) cVar;
        gd.b bVar = (gd.b) dVar;
        bVar.reset();
        try {
            try {
                aVar.O0 = this.z.h().l();
                aVar.s0();
                if (aVar.I) {
                    ed.c cVar2 = new fd.c(this.z.e());
                    Z(aVar, cVar2, set);
                    if (cVar2.f4932f != 0) {
                        f0(aVar, cVar2);
                    }
                    aVar.s0();
                    jV = aVar.f4936j;
                } else {
                    jV = V(aVar);
                }
                try {
                    bVar.f4941q = false;
                    long jR = R(aVar);
                    if (set.contains(l.NO_TIMEOUT)) {
                        bVar.f4947y = null;
                    } else {
                        bVar.f4947y = Long.valueOf(System.currentTimeMillis() + jR);
                    }
                    bVar.f6132h0 = this.z.h().l();
                    this.f8199g.put(Long.valueOf(jV), bVar);
                    while (true) {
                        try {
                            P(aVar);
                            if (!aVar.I) {
                                break;
                            } else {
                                aVar.s0();
                            }
                        } catch (IOException e7) {
                            Logger logger = F;
                            logger.warn("send failed", (Throwable) e7);
                            try {
                                J();
                            } catch (IOException e10) {
                                try {
                                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(e7, e10);
                                } catch (Exception unused) {
                                }
                                logger.error("disconnect failed", (Throwable) e10);
                            }
                            throw e7;
                        }
                    }
                    synchronized (bVar) {
                        while (true) {
                            if (bVar.f4941q && !bVar.hasMoreElements()) {
                            }
                            if (set.contains(l.NO_TIMEOUT)) {
                                bVar.wait();
                                Logger logger2 = F;
                                if (logger2.isTraceEnabled()) {
                                    logger2.trace("Wait returned " + T());
                                }
                                if (T()) {
                                    throw new EOFException("Transport closed while waiting for result");
                                }
                            } else {
                                bVar.wait(jR);
                                jR = bVar.f4947y.longValue() - System.currentTimeMillis();
                                if (jR <= 0) {
                                    throw new he.f(this + " timedout waiting for response to " + aVar);
                                }
                            }
                        }
                    }
                    if (!bVar.f4941q) {
                        throw new he.f("Failed to read response");
                    }
                    if (bVar.f4932f != 0) {
                        f0(aVar, bVar);
                    }
                    this.f8199g.remove(Long.valueOf(jV));
                    a0.h hVarH = this.z.h();
                    byte[] bArr = bVar.f6132h0;
                    bVar.f6132h0 = null;
                    hVarH.m(bArr);
                    a0.h hVarH2 = this.z.h();
                    byte[] bArr2 = aVar.O0;
                    aVar.O0 = null;
                    hVarH2.m(bArr2);
                } catch (Throwable th2) {
                    this.f8199g.remove(Long.valueOf(jV));
                    a0.h hVarH3 = this.z.h();
                    byte[] bArr3 = bVar.f6132h0;
                    bVar.f6132h0 = null;
                    hVarH3.m(bArr3);
                    throw th2;
                }
            } catch (InterruptedException e11) {
                throw new he.f(e11);
            }
        } finally {
            a0.h hVarH4 = this.z.h();
            byte[] bArr4 = aVar.O0;
            aVar.O0 = null;
            hVarH4.m(bArr4);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0201, code lost:
    
        vd.b0.F.trace("Async");
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0209, code lost:
    
        r0 = r9.b();
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x020d, code lost:
    
        if (r0 != null) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x020f, code lost:
    
        vd.b0.F.warn("Response not properly set up for" + r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0227, code lost:
    
        if (r0.c0() == false) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0229, code lost:
    
        r6 = r0.e() + r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x022f, code lost:
    
        r0 = r9.h();
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0233, code lost:
    
        if (r0 != null) goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0239, code lost:
    
        if (T() != false) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x023f, code lost:
    
        if (r9.I() != false) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0249, code lost:
    
        if (r9.b().Y() != false) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0253, code lost:
    
        if (r9.b().T() != false) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0255, code lost:
    
        if (r6 != 0) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x025d, code lost:
    
        if (r21.D.availablePermits() > 0) goto L123;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x025f, code lost:
    
        if (r12 <= 0) goto L122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0262, code lost:
    
        vd.b0.F.warn("Server " + r21 + " took away all our credits");
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x027c, code lost:
    
        vd.b0.F.debug("Server " + r21 + " returned zero credits for " + r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x029d, code lost:
    
        if (r9.I() != false) goto L203;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x029f, code lost:
    
        r0 = vd.b0.F;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x02a5, code lost:
    
        if (r0.isTraceEnabled() == false) goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x02a7, code lost:
    
        r0.trace("Adding credits " + r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x02b8, code lost:
    
        r21.D.release(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x02bf, code lost:
    
        r9 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01e4, code lost:
    
        if (r11.isDebugEnabled() == false) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01e6, code lost:
    
        r11.debug("Breaking on error " + r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01fa, code lost:
    
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01ff, code lost:
    
        if (r9.I() == false) goto L101;
     */
    /* JADX WARN: Removed duplicated region for block: B:131:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x01e0 A[EDGE_INSN: B:221:0x01e0->B:94:0x01e0 BREAK  A[LOOP:0: B:28:0x0061->B:166:0x0388], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01bc A[Catch: all -> 0x01d1, TryCatch #0 {all -> 0x01d1, blocks: (B:87:0x01b2, B:89:0x01bc, B:92:0x01d4, B:94:0x01e0, B:96:0x01e6, B:132:0x02c4), top: B:211:0x01b2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ad.d w0(ad.c cVar, ad.d dVar, Set set) throws InterruptedException, IOException {
        ad.c cVarE0;
        Logger logger;
        int i10;
        int i11;
        ad.d dVarM = dVar;
        int i12 = 1;
        if (cVar instanceof ad.e) {
            if (dVarM == null) {
                dVarM = ((ad.e) cVar).M(this.z);
            } else if (n0()) {
                throw new IOException("Should not provide response argument for SMB2");
            }
        } else if ((cVar instanceof ed.a) && (dVarM instanceof ed.a)) {
            ed.a aVar = (ed.a) cVar;
            ad.d dVar2 = dVarM;
            while (true) {
                ed.a aVar2 = (ed.a) dVar2;
                aVar.s(aVar2);
                ad.d dVar3 = aVar.I;
                if (dVar3 == null) {
                    break;
                }
                dVar2 = aVar2.I;
                dVar3.s(dVar3);
                if (!(dVar3 instanceof ed.a) || !(dVar2 instanceof ed.a)) {
                    break;
                }
                aVar = (ed.a) dVar3;
            }
        } else {
            cVar.s(dVar);
        }
        if (dVarM == null) {
            throw new IOException("Invalid response");
        }
        int i13 = ((wc.a) this.z.e()).f17839h0;
        ad.c cVar2 = cVar;
        while (true) {
            if (cVar2 == null) {
                break;
            }
            ad.c cVar3 = cVar2;
            int i14 = 0;
            int i15 = 0;
            ad.c cVar4 = null;
            try {
                while (cVar3 != null) {
                    int i16 = i14 + i12;
                    int size = cVar3.size();
                    ad.c cVarH = cVar3.h();
                    Logger logger2 = F;
                    if (logger2.isTraceEnabled()) {
                        i10 = i16;
                        logger2.trace(String.format("%s costs %d avail %d (%s)", cVar3.getClass().getName(), Integer.valueOf(i12), Integer.valueOf(this.D.availablePermits()), this.f8194b));
                    } else {
                        i10 = i16;
                    }
                    if ((cVarH == null || cVar3.u(cVarH)) && (i11 = i15 + size) < i13 && this.D.tryAcquire(1)) {
                        i15 = i11;
                        cVar4 = cVar3;
                        i14 = i10;
                        i12 = 1;
                        cVar3 = cVarH;
                    } else {
                        if (cVar4 == null && i15 + size > i13) {
                            throw new r(String.format("Request size %d exceeds allowable size %d: %s", Integer.valueOf(size), Integer.valueOf(i13), cVar3));
                        }
                        if (cVar4 == null) {
                            try {
                                long jR = R(cVar3);
                                if (set.contains(l.NO_TIMEOUT)) {
                                    this.D.acquire(1);
                                } else if (!this.D.tryAcquire(1, jR, TimeUnit.MILLISECONDS)) {
                                    throw new r("Failed to acquire credits in time");
                                }
                                synchronized (cVar3) {
                                    try {
                                        cVarE0 = cVar3.e0();
                                        if (logger2.isDebugEnabled() && cVarE0 != null) {
                                            logger2.debug("Insufficient credits, send only first " + cVar3 + " next is " + cVarE0);
                                        }
                                    } finally {
                                    }
                                }
                            } catch (InterruptedException e7) {
                                InterruptedIOException interruptedIOException = new InterruptedIOException("Interrupted while acquiring credits");
                                interruptedIOException.initCause(e7);
                                throw interruptedIOException;
                            }
                        } else {
                            if (logger2.isDebugEnabled()) {
                                logger2.debug("Not enough credits, split at " + cVar4);
                            }
                            synchronized (cVar4) {
                                cVarE0 = cVar4.e0();
                            }
                        }
                        i14 = i10;
                        i12 = 1;
                        int iMax = Math.max(1, ((512 - this.D.availablePermits()) - i14) + 1);
                        logger = F;
                        if (logger.isTraceEnabled()) {
                            logger.trace("Request credits " + iMax);
                        }
                        cVar.v(iMax);
                        ad.d dVarB = cVar2.b();
                        if (logger.isTraceEnabled()) {
                            logger.trace("Sending " + cVar2);
                        }
                        ad.d dVar4 = (ad.d) Z(cVar2, dVarB, set);
                        if (e0(cVar2)) {
                            break;
                        }
                        if (cVarE0 != null) {
                            dVar4.E(cVarE0);
                        }
                        int iE = 0;
                        while (true) {
                            if (cVar2.I()) {
                                F.trace("Async");
                                break;
                            }
                            ad.d dVarB2 = cVar2.b();
                            if (dVarB2 == null) {
                                F.warn("Response not properly set up for" + cVar2);
                            } else if (dVarB2.c0()) {
                                iE = dVarB2.e() + iE;
                            }
                            ad.c cVarH2 = cVar2.h();
                            if (cVarH2 == null) {
                                break;
                            }
                            cVar2 = cVarH2;
                        }
                        if (T() || cVar2.I() || cVar2.b().Y() || cVar2.b().T() || iE != 0) {
                            if (!cVar2.I()) {
                                Logger logger3 = F;
                                if (logger3.isTraceEnabled()) {
                                    logger3.trace("Adding credits " + iE);
                                }
                                this.D.release(iE);
                            }
                        } else if (this.D.availablePermits() > 0 || i14 > 0) {
                            F.debug("Server " + this + " returned zero credits for " + cVar2);
                        } else {
                            F.warn("Server " + this + " took away all our credits");
                        }
                        cVar2 = cVarE0;
                    }
                }
                ad.d dVarB3 = cVar2.b();
                if (logger.isTraceEnabled()) {
                }
                ad.d dVar42 = (ad.d) Z(cVar2, dVarB3, set);
                if (e0(cVar2)) {
                }
            } catch (Throwable th2) {
                int iE2 = 0;
                while (true) {
                    if (cVar2.I()) {
                        F.trace("Async");
                        break;
                    }
                    ad.d dVarB4 = cVar2.b();
                    if (dVarB4 == null) {
                        F.warn("Response not properly set up for" + cVar2);
                    } else if (dVarB4.c0()) {
                        iE2 = dVarB4.e() + iE2;
                    }
                    ad.c cVarH3 = cVar2.h();
                    if (cVarH3 == null) {
                        break;
                    }
                    cVar2 = cVarH3;
                }
                if (T() || cVar2.I() || cVar2.b().Y() || cVar2.b().T() || iE2 != 0) {
                    if (!cVar2.I()) {
                        Logger logger4 = F;
                        if (logger4.isTraceEnabled()) {
                            logger4.trace("Adding credits " + iE2);
                        }
                        this.D.release(iE2);
                    }
                } else if (this.D.availablePermits() > 0 || i14 > 0) {
                    F.debug("Server " + this + " returned zero credits for " + cVar2);
                } else {
                    F.warn("Server " + this + " took away all our credits");
                }
                throw th2;
            }
            cVarE0 = null;
            i12 = 1;
            int iMax2 = Math.max(1, ((512 - this.D.availablePermits()) - i14) + 1);
            logger = F;
            if (logger.isTraceEnabled()) {
            }
            cVar.v(iMax2);
        }
        if (dVarM.c0()) {
            return dVarM;
        }
        throw new IOException("No response", dVarM.getException());
    }

    public final void x0() throws IOException {
        String str;
        String strC;
        vc.b bVar = this.z;
        vc.f fVarE = bVar.e();
        sd.k kVar = this.f16803n;
        Object obj = kVar.f14550a;
        if (obj instanceof sd.h) {
            sd.h hVar = (sd.h) obj;
            String str2 = hVar.f14544a.f14486a;
            hVar.f14547d = str2;
            int i10 = 0;
            if (!Character.isDigit(str2.charAt(0))) {
                switch (hVar.f14544a.f14488c) {
                    case 27:
                    case 28:
                    case 29:
                        hVar.f14547d = "*SMBSERVER     ";
                        break;
                }
            } else {
                int length = hVar.f14547d.length();
                char[] charArray = hVar.f14547d.toCharArray();
                int i11 = 0;
                while (true) {
                    if (i10 >= length) {
                        break;
                    }
                    int i12 = i10 + 1;
                    if (!Character.isDigit(charArray[i10])) {
                        break;
                    }
                    if (i12 == length && i11 == 3) {
                        hVar.f14547d = "*SMBSERVER     ";
                        break;
                    } else if (i12 >= length || charArray[i12] != '.') {
                        i10 = i12;
                    } else {
                        i11++;
                        i10 += 2;
                    }
                }
            }
            str = hVar.f14547d;
        } else {
            String hostName = ((InetAddress) obj).getHostName();
            kVar.f14551b = hostName;
            if (sd.k.d(hostName)) {
                kVar.f14551b = "*SMBSERVER     ";
            } else {
                int iIndexOf = kVar.f14551b.indexOf(46);
                if (iIndexOf > 1 && iIndexOf < 15) {
                    kVar.f14551b = kVar.f14551b.substring(0, iIndexOf).toUpperCase();
                } else if (kVar.f14551b.length() > 15) {
                    kVar.f14551b = "*SMBSERVER     ";
                } else {
                    kVar.f14551b = kVar.f14551b.toUpperCase();
                }
            }
            str = kVar.f14551b;
        }
        sd.b bVar2 = new sd.b(fVarE, str, 32, null);
        do {
            Socket socket = new Socket();
            this.f16804p = socket;
            if (this.l != null) {
                socket.bind(new InetSocketAddress(this.l, this.f16802m));
            }
            this.f16804p.connect(new InetSocketAddress(this.f16803n.b(), 139), ((wc.a) bVar.e()).C);
            this.f16804p.setSoTimeout(((wc.a) bVar.e()).B);
            this.f16806s = this.f16804p.getOutputStream();
            this.f16807t = this.f16804p.getInputStream();
            vc.f fVarE2 = bVar.e();
            sd.h hVar2 = ((sd.f) bVar.i()).f14517t;
            sd.b bVar3 = hVar2 != null ? hVar2.f14544a : null;
            sd.b bVar4 = new sd.b(fVarE2, bVar2);
            sd.b bVar5 = new sd.b(fVarE2, bVar3);
            OutputStream outputStream = this.f16806s;
            byte[] bArr = this.f16808v;
            int iC = bVar4.c(4, bArr) + 4;
            int iC2 = bVar5.c(iC, bArr) + iC;
            int i13 = iC2 - 4;
            bArr[0] = (byte) 129;
            if (i13 > 65535) {
                bArr[1] = 1;
            }
            bArr[2] = (byte) ((i13 >> 8) & 255);
            bArr[3] = (byte) (i13 & 255);
            outputStream.write(bArr, 0, iC2);
            int iX = he.e.X(this.f16807t, this.f16808v, 0, 4);
            Logger logger = F;
            if (iX < 4) {
                try {
                    this.f16804p.close();
                } catch (IOException e7) {
                    logger.debug("Failed to close socket", (Throwable) e7);
                }
                throw new r("EOF during NetBIOS session request");
            }
            int i14 = this.f16808v[0] & 255;
            if (i14 == -1) {
                J();
                throw new sd.i(-1);
            }
            if (i14 == 130) {
                if (logger.isDebugEnabled()) {
                    logger.debug("session established ok with " + this.f16803n);
                    return;
                }
                return;
            }
            if (i14 != 131) {
                J();
                throw new sd.i(0);
            }
            int i15 = this.f16807t.read() & 255;
            if (i15 != 128 && i15 != 130) {
                J();
                throw new sd.i(i15);
            }
            this.f16804p.close();
            sd.k kVar2 = this.f16803n;
            Object obj2 = kVar2.f14550a;
            if (obj2 instanceof sd.h) {
                sd.h hVar3 = (sd.h) obj2;
                String str3 = hVar3.f14547d;
                if (str3 == hVar3.f14544a.f14486a) {
                    hVar3.f14547d = "*SMBSERVER     ";
                } else {
                    strC = null;
                    if ("*SMBSERVER     ".equals(str3)) {
                        try {
                            vc.l[] lVarArrJ = ((sd.f) bVar.i()).j(hVar3);
                            if (hVar3.f14544a.f14488c == 29) {
                                int i16 = 0;
                                while (true) {
                                    if (i16 < lVarArrJ.length) {
                                        vc.l lVar = lVarArrJ[i16];
                                        if (((sd.h) lVar).f14544a.f14488c == 32) {
                                            strC = ((sd.h) lVar).c();
                                        } else {
                                            i16++;
                                        }
                                    }
                                }
                            } else if (hVar3.f14546c) {
                                hVar3.f14547d = null;
                                strC = hVar3.c();
                            }
                        } catch (UnknownHostException unused) {
                            hVar3.f14547d = null;
                        }
                    } else {
                        hVar3.f14547d = null;
                    }
                }
                strC = hVar3.f14547d;
            } else if (kVar2.f14551b != "*SMBSERVER     ") {
                kVar2.f14551b = "*SMBSERVER     ";
                strC = "*SMBSERVER     ";
            } else {
                strC = null;
            }
            bVar2.f14486a = strC;
        } while (strC != null);
        throw new IOException("Failed to establish session with " + this.f16803n);
    }

    public final b0 y0(Class cls) {
        if (cls.isAssignableFrom(b0.class)) {
            return this;
        }
        throw new ClassCastException();
    }

    public final void z0(byte[] bArr) {
        synchronized (this.E) {
            this.E = c0(bArr.length, bArr, this.E);
        }
    }
}
