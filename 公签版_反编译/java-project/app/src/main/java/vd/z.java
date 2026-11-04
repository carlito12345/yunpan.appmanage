package vd;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;
import java.security.DigestException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public final class z implements a0 {

    /* renamed from: s, reason: collision with root package name */
    public static final Logger f16968s = LoggerFactory.getLogger((Class<?>) z.class);

    /* renamed from: b, reason: collision with root package name */
    public int f16970b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f16971c;

    /* renamed from: d, reason: collision with root package name */
    public final b0 f16972d;

    /* renamed from: e, reason: collision with root package name */
    public long f16973e;

    /* renamed from: g, reason: collision with root package name */
    public final vc.b f16975g;

    /* renamed from: h, reason: collision with root package name */
    public final j f16976h;

    /* renamed from: i, reason: collision with root package name */
    public byte[] f16977i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f16978j;

    /* renamed from: m, reason: collision with root package name */
    public long f16980m;

    /* renamed from: n, reason: collision with root package name */
    public ad.h f16981n;

    /* renamed from: p, reason: collision with root package name */
    public final String f16982p;

    /* renamed from: q, reason: collision with root package name */
    public final String f16983q;
    public byte[] r;

    /* renamed from: a, reason: collision with root package name */
    public final AtomicInteger f16969a = new AtomicInteger();

    /* renamed from: f, reason: collision with root package name */
    public String f16974f = null;

    /* renamed from: k, reason: collision with root package name */
    public final AtomicLong f16979k = new AtomicLong(1);
    public final AtomicBoolean l = new AtomicBoolean(true);

    public z(vc.b bVar, String str, String str2, b0 b0Var) {
        this.f16975g = bVar;
        this.f16982p = str2;
        this.f16983q = str;
        b0Var.b0();
        this.f16972d = b0Var;
        this.f16971c = new ArrayList();
        j jVar = (j) bVar.g();
        jVar.getClass();
        j jVar2 = a.class.isAssignableFrom(j.class) ? jVar : null;
        jVar2.getClass();
        j jVar3 = new j();
        jVar3.f16875b = jVar2.f16875b;
        jVar3.f16876c = jVar2.f16876c;
        jVar3.f16877d = jVar2.f16877d;
        jVar3.f16874a = jVar2.f16874a;
        this.f16976h = jVar3;
    }

    public final o A(b0 b0Var, String str, od.f fVar, boolean z) {
        String strB = this.f16983q;
        Logger logger = f16968s;
        if (strB == null) {
            strB = b0Var.f16803n.b();
            try {
                strB = b0Var.f16803n.c();
            } catch (Exception e7) {
                logger.debug("Failed to resolve host name", (Throwable) e7);
            }
        }
        if (logger.isDebugEnabled()) {
            logger.debug("Remote host is " + strB);
        }
        return this.f16976h.a(this.f16972d.z, strB, fVar.O, z);
    }

    public final ad.h J() {
        ad.h hVar = this.f16981n;
        return hVar != null ? hVar : this.f16972d.C;
    }

    public final h0 K(String str) {
        if (str == null) {
            str = "IPC$";
        }
        synchronized (this.f16971c) {
            try {
                Iterator it = this.f16971c.iterator();
                while (it.hasNext()) {
                    h0 h0Var = (h0) it.next();
                    if (h0Var.L(str, null)) {
                        h0Var.r(true);
                        return h0Var;
                    }
                }
                h0 h0Var2 = new h0(this, str);
                h0Var2.r(true);
                this.f16971c.add(h0Var2);
                return h0Var2;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean L() {
        if (J() != null) {
            return false;
        }
        if (this.f16972d.o0()) {
            return true;
        }
        return this.f16972d.l0().m();
    }

    public final boolean M(boolean z, boolean z4) {
        b0 b0Var;
        try {
            try {
                try {
                    b0Var = this.f16972d;
                    b0Var.b0();
                    try {
                        try {
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        try {
                            b0Var.Y();
                        } catch (Throwable th4) {
                            try {
                                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th4);
                            } catch (Exception unused) {
                            }
                        }
                        throw th;
                    }
                } catch (r e7) {
                    e = e7;
                    f16968s.warn("Error in logoff", (Throwable) e);
                    return z4;
                }
            } catch (r e10) {
                e = e10;
                z4 = false;
                f16968s.warn("Error in logoff", (Throwable) e);
                return z4;
            }
            synchronized (b0Var) {
                try {
                    if (!this.f16969a.compareAndSet(2, 3)) {
                        b0Var.Y();
                        return false;
                    }
                    Logger logger = f16968s;
                    if (logger.isDebugEnabled()) {
                        logger.debug("Logging off session on " + b0Var);
                    }
                    this.f16974f = null;
                    try {
                        synchronized (this.f16971c) {
                            try {
                                long j10 = this.f16979k.get();
                                if ((!z4 || j10 == 1) && (z4 || j10 <= 0)) {
                                    z4 = false;
                                } else {
                                    logger.warn("Logging off session while still in use " + this + ":" + this.f16971c);
                                    z4 = true;
                                }
                                Iterator it = this.f16971c.iterator();
                                while (it.hasNext()) {
                                    h0 h0Var = (h0) it.next();
                                    try {
                                        f16968s.debug("Disconnect tree on logoff");
                                        z4 |= h0Var.R(z, false);
                                    } catch (Exception e11) {
                                        f16968s.warn("Failed to disconnect tree " + h0Var, (Throwable) e11);
                                    }
                                }
                                if (!z && b0Var.n0()) {
                                    pd.a aVar = new pd.a(this.f16975g.e());
                                    aVar.i(J());
                                    aVar.f(this.f16980m);
                                    try {
                                        b0 b0Var2 = this.f16972d;
                                        b0Var2.getClass();
                                        b0Var2.t0(aVar, null, Collections.emptySet());
                                    } catch (r e12) {
                                        f16968s.debug("Smb2LogoffRequest failed", (Throwable) e12);
                                    }
                                } else if (!z && ((fd.j) b0Var.l0()).H.f5782g != 0) {
                                    fd.f fVar = new fd.f(this.f16975g.e());
                                    fVar.f4944v = (ed.b) J();
                                    fVar.f4935i = this.f16970b;
                                    try {
                                        b0 b0Var3 = this.f16972d;
                                        fd.c cVar = new fd.c(this.f16975g.e());
                                        b0Var3.getClass();
                                        b0Var3.t0(fVar, cVar, Collections.emptySet());
                                    } catch (r e13) {
                                        f16968s.debug("SmbComLogoffAndX failed", (Throwable) e13);
                                    }
                                    this.f16970b = 0;
                                }
                                b0Var.Y();
                                return z4;
                            } catch (Throwable th5) {
                                th = th5;
                                throw th;
                            }
                        }
                    } catch (Throwable th6) {
                        th = th6;
                    }
                } catch (Throwable th7) {
                    th = th7;
                    try {
                        throw th;
                    } catch (Throwable th8) {
                        th = th8;
                        b0Var.Y();
                        throw th;
                    }
                }
            }
        } finally {
            this.f16969a.set(0);
            this.f16981n = null;
            this.f16972d.notifyAll();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final ad.d N(b0 b0Var, String str, ad.c cVar, Set set) {
        long j10;
        pd.c cVar2;
        od.f fVar = (od.f) b0Var.l0();
        byte[] bArr = fVar.O;
        boolean z = (fVar.D == 0 || this.f16976h.d()) ? false : true;
        long j11 = this.f16980m;
        synchronized (b0Var) {
            try {
                this.f16976h.getClass();
                this.f16976h.getClass();
                o oVarA = A(b0Var, str, fVar, z);
                pd.c cVar3 = null;
                r rVar = null;
                while (true) {
                    byte[] bArrA = oVarA.a(bArr == null ? 0 : bArr.length, bArr);
                    if (bArrA != null) {
                        long j12 = j11;
                        pd.b bVar = new pd.b(this.f16972d.z, fVar.D, fVar.H, j11, bArrA);
                        if (cVar != 0) {
                            bVar.g0((id.b) cVar);
                        }
                        bVar.i(this.f16981n);
                        j10 = j12;
                        bVar.f(j10);
                        try {
                            cVar2 = (pd.c) b0Var.t0(bVar, null, EnumSet.of(l.RETAIN_PAYLOAD));
                            if (cVar2.f8670s != j10) {
                                throw new p("Server did not reauthenticate after expiration");
                            }
                        } catch (p e7) {
                            throw e7;
                        } catch (r e10) {
                            rVar = e10;
                            cVar2 = (pd.c) bVar.f8674x;
                            if (!cVar2.f8675x) {
                                throw rVar;
                            }
                            if (cVar2.f8676y) {
                                throw rVar;
                            }
                            int i10 = cVar2.f8664j;
                            if (i10 != 0 && i10 != -1073741802) {
                                throw rVar;
                            }
                        }
                        cVar3 = cVar2;
                        if (!((wc.a) this.f16975g.e()).f17868x0) {
                            if (((cVar3.D & 3) != 0) && !this.f16976h.f() && !this.f16976h.d()) {
                                throw new p(-1073741715);
                            }
                        }
                        this.f16976h.getClass();
                        if (bVar.f8661g != null) {
                            f16968s.debug("Setting digest");
                            T(bVar.f8661g);
                        }
                        bArr = cVar3.E;
                    } else {
                        j10 = j11;
                        bArr = bArrA;
                    }
                    if (rVar != null) {
                        throw rVar;
                    }
                    if (oVarA.b()) {
                        this.f16978j = true;
                        this.f16969a.set(2);
                        this.f16980m = cVar3.f8670s;
                        ad.d dVar = (ad.d) cVar3.f8673w;
                        if (dVar != null && dVar.c0()) {
                            return dVar;
                        }
                        if (cVar != 0) {
                            return this.f16972d.t0(cVar, null, set);
                        }
                        return null;
                    }
                    j11 = j10;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void O() {
        long jDecrementAndGet = this.f16979k.decrementAndGet();
        Logger logger = f16968s;
        if (logger.isTraceEnabled()) {
            logger.trace("Release session " + jDecrementAndGet + " " + this);
        }
        if (jDecrementAndGet != 0) {
            if (jDecrementAndGet < 0) {
                throw new androidx.fragment.app.b0("Usage count dropped below zero", 10);
            }
            return;
        }
        if (logger.isDebugEnabled()) {
            logger.debug("Usage dropped to zero, release connection " + this.f16972d);
        }
        synchronized (this) {
            try {
                if (this.l.compareAndSet(true, false)) {
                    this.f16972d.Y();
                }
            } finally {
            }
        }
    }

    public final ad.d P(ad.c cVar, ad.d dVar, Set set) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Logger logger;
        String str;
        String str2;
        Logger logger2;
        Logger logger3 = f16968s;
        b0 b0Var = this.f16972d;
        b0Var.b0();
        if (dVar != null) {
            try {
                dVar.O();
                dVar.B(this.f16978j);
            } finally {
            }
        }
        try {
            if (set.contains(l.NO_TIMEOUT)) {
                logger = logger3;
                this.f16973e = -1L;
                str = "Have referral ";
                str2 = "Response: ";
            } else {
                logger = logger3;
                str = "Have referral ";
                str2 = "Response: ";
                this.f16973e = System.currentTimeMillis() + ((wc.a) this.f16975g.e()).B;
            }
            try {
                ad.d dVar2 = (ad.d) Q(cVar, dVar);
                if (dVar2 != null && dVar2.c0()) {
                    cVar.i(null);
                    this.f16973e = System.currentTimeMillis() + ((wc.a) this.f16975g.e()).B;
                    b0Var.Y();
                    return dVar2;
                }
                if (cVar instanceof fd.u) {
                    fd.u uVar = (fd.u) cVar;
                    if (this.f16974f != null && uVar.f4943t.endsWith("\\IPC$")) {
                        uVar.f4943t = "\\\\" + this.f16974f + "\\IPC$";
                    }
                }
                cVar.f(this.f16980m);
                cVar.X(this.f16970b);
                if (cVar.getDigest() == null) {
                    cVar.i(J());
                }
                if (cVar instanceof ad.f) {
                    ((ad.f) cVar).q(this.f16982p, this.f16983q, ((ad.f) cVar).W());
                }
                try {
                    if (logger.isTraceEnabled()) {
                        logger2 = logger;
                        try {
                            logger2.trace("Request " + cVar);
                        } catch (e e7) {
                            e = e7;
                            if (logger2.isDebugEnabled()) {
                                logger2.debug(str + e);
                            }
                            throw e;
                        } catch (r e10) {
                            e = e10;
                            if (logger2.isTraceEnabled()) {
                                logger2.trace("Send failed", (Throwable) e);
                                logger2.trace("Request: " + cVar);
                                logger2.trace(str2 + dVar);
                            }
                            throw e;
                        }
                    } else {
                        logger2 = logger;
                    }
                    try {
                        ad.d dVarT0 = this.f16972d.t0(cVar, dVar, set);
                        if (logger2.isTraceEnabled()) {
                            logger2.trace("Response " + dVarT0);
                        }
                        cVar.i(null);
                        this.f16973e = System.currentTimeMillis() + ((wc.a) this.f16975g.e()).B;
                        b0Var.Y();
                        return dVarT0;
                    } catch (r e11) {
                        int i10 = e11.f16897a;
                        if ((i10 != -1073740964 && i10 != -1073741309) || !b0Var.n0()) {
                            throw e11;
                        }
                        if (e11.f16897a == -1073741309) {
                            try {
                                logger2.warn("Got NT_STATUS_USER_SESSION_DELETED, disconnecting transport");
                                this.f16972d.J();
                            } catch (IOException e12) {
                                logger2.warn("Got NT_STATUS_USER_SESSION_DELETED, disconnected transport with error", (Throwable) e12);
                            }
                        }
                        logger2.debug("Session expired, trying reauth", (Throwable) e11);
                        ad.d dVarN = N(b0Var, this.f16982p, cVar, set);
                        cVar.i(null);
                        this.f16973e = System.currentTimeMillis() + ((wc.a) this.f16975g.e()).B;
                        b0Var.Y();
                        return dVarN;
                    }
                } catch (e e13) {
                    e = e13;
                    logger2 = logger;
                } catch (r e14) {
                    e = e14;
                    logger2 = logger;
                }
            } catch (GeneralSecurityException e15) {
                throw new r("Session setup failed", e15);
            }
        } catch (Throwable th2) {
            cVar.i(null);
            this.f16973e = System.currentTimeMillis() + ((wc.a) this.f16975g.e()).B;
            throw th2;
        }
    }

    public final ad.b Q(ad.c cVar, ad.d dVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        b0 b0Var = this.f16972d;
        b0Var.b0();
        try {
            synchronized (b0Var) {
                while (!this.f16969a.compareAndSet(0, 1)) {
                    try {
                        int i10 = this.f16969a.get();
                        if (i10 == 2 || i10 == 3) {
                            b0Var.Y();
                            return dVar;
                        }
                        try {
                            this.f16972d.wait();
                        } catch (InterruptedException e7) {
                            throw new r(e7.getMessage(), e7);
                        }
                    } catch (Throwable th2) {
                        b0Var.notifyAll();
                        throw th2;
                    }
                }
                try {
                    b0Var.j0();
                    Logger logger = f16968s;
                    if (logger.isDebugEnabled()) {
                        logger.debug("sessionSetup: " + this.f16976h);
                    }
                    this.f16970b = 0;
                    if (!b0Var.n0()) {
                        R(b0Var, this.f16982p, (ed.c) cVar, (ed.c) dVar);
                        b0Var.notifyAll();
                        b0Var.Y();
                        return dVar;
                    }
                    ad.d dVarS = S(b0Var, this.f16982p);
                    b0Var.notifyAll();
                    b0Var.Y();
                    return dVarS;
                } catch (Exception e10) {
                    f16968s.debug("Session setup failed", (Throwable) e10);
                    if (this.f16969a.compareAndSet(1, 0)) {
                        M(true, true);
                    }
                    throw e10;
                }
            }
        } catch (Throwable th3) {
            try {
                b0Var.Y();
            } catch (Throwable th4) {
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th3, th4);
                } catch (Exception unused) {
                }
            }
            throw th3;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:135:0x027f, code lost:
    
        throw new vd.r("NTLMv2 requires extended security (jcifs.smb.client.useExtendedSecurity must be true if jcifs.smb.lmCompatibility >= 3)");
     */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [ed.c, java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v21 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void R(b0 b0Var, String str, ed.c cVar, ed.c cVar2) throws IllegalAccessException, r, InterruptedException, DigestException, IllegalArgumentException, InvocationTargetException {
        byte[] bArr;
        boolean z;
        o oVar;
        byte[] bArrA;
        byte[] bArr2;
        int i10;
        int i11;
        int length;
        ed.b bVar;
        fd.j jVar = (fd.j) b0Var.l0();
        ?? r62 = 0;
        int i12 = 10;
        boolean zD = this.f16976h.d();
        o oVarA = null;
        r pVar = null;
        fd.s sVar = null;
        fd.t tVar = null;
        int i13 = 10;
        byte[] bArr3 = new byte[0];
        while (true) {
            if (i13 != i12) {
                if (i13 != 20) {
                    throw new r(da.b.a(i13, "Unexpected session setup state: "));
                }
                this.f16976h.getClass();
                boolean z4 = (zD || (4 & jVar.I) == 0) ? false : true;
                if (oVarA == null) {
                    String strC = this.f16983q;
                    if (strC == null) {
                        String strB = b0Var.f16803n.b();
                        try {
                            strC = b0Var.f16803n.c();
                        } catch (Exception e7) {
                            f16968s.debug("Failed to resolve host name", (Throwable) e7);
                            strC = strB;
                        }
                    }
                    Logger logger = f16968s;
                    if (logger.isDebugEnabled()) {
                        logger.debug("Remote host is " + strC);
                    }
                    oVarA = this.f16976h.a(this.f16972d.z, strC, jVar.H.f5790p, z4);
                }
                Logger logger2 = f16968s;
                if (logger2.isTraceEnabled()) {
                    logger2.trace(oVarA.toString());
                }
                if (bArr3 == null) {
                    length = 0;
                } else {
                    try {
                        length = bArr3.length;
                    } catch (r e10) {
                        try {
                            f16968s.warn("Exception during SSP authentication", (Throwable) e10);
                            b0Var.J();
                        } catch (IOException unused) {
                            f16968s.debug("Disconnect failed");
                        }
                        this.f16970b = 0;
                        throw e10;
                    }
                }
                bArrA = oVarA.a(length, bArr3);
                if (bArrA != null) {
                    sVar = new fd.s(this.f16972d.z, jVar, r62, bArrA);
                    sVar.f4944v = (ed.b) J();
                    if (z4 && oVarA.b() && L()) {
                        byte[] bArrC = oVarA.c();
                        if (bArrC != null) {
                            sVar.f4944v = new ed.b(bArrC);
                        }
                        this.f16977i = bArrC;
                    } else {
                        logger2.trace("Not yet initializing signing");
                    }
                    tVar = new fd.t(this.f16972d.z.e(), r62);
                    tVar.f4940p = true;
                    sVar.f4935i = this.f16970b;
                    this.f16970b = 0;
                    try {
                        b0Var.u0(sVar, tVar);
                    } catch (p e11) {
                        throw e11;
                    } catch (r e12) {
                        pVar = e12.f16897a == -1073741811 ? new p(e12) : e12;
                        try {
                            b0Var.J();
                        } catch (Exception e13) {
                            f16968s.debug("Failed to disconnect transport", (Throwable) e13);
                        }
                    }
                    if (!((wc.a) this.f16975g.e()).f17868x0 && tVar.O && !this.f16976h.f() && !this.f16976h.d()) {
                        throw new p(-1073741715);
                    }
                    if (!this.f16976h.d() && tVar.O) {
                        zD = true;
                    }
                    if (pVar != null) {
                        throw pVar;
                    }
                    this.f16970b = tVar.f4935i;
                    if (sVar.f4944v != null) {
                        f16968s.debug("Setting digest");
                        T(sVar.f4944v);
                    }
                    bArrA = tVar.P;
                }
                if (oVarA.b()) {
                    f16968s.debug("Context is established");
                    this.f16974f = r62;
                    this.f16977i = oVarA.c();
                    if (sVar != null && (bVar = sVar.f4944v) != null) {
                        T(bVar);
                    } else if (!zD && L()) {
                        byte[] bArrC2 = oVarA.c();
                        if (bArrC2 != null && tVar != null) {
                            T(new ed.b(bArrC2, (Object) r62));
                        } else if (((wc.a) b0Var.z.e()).f17836g) {
                            throw new r("Signing required but no session key available");
                        }
                        this.f16977i = bArrC2;
                    }
                    this.f16978j = tVar.f4940p;
                    this.f16969a.set(2);
                    i13 = 0;
                }
            } else if (b0Var.l0().x(Integer.MIN_VALUE)) {
                f16968s.debug("Extended security negotiated");
                bArrA = bArr3;
                i13 = 20;
            } else {
                if (((wc.a) this.f16972d.z.e()).f17847m) {
                    throw new r("Server does not supported extended security");
                }
                Logger logger3 = f16968s;
                logger3.debug("Performing legacy session setup");
                j jVar2 = this.f16976h;
                if (!(jVar2 instanceof j)) {
                    throw new p("Incompatible credentials");
                }
                sVar = new fd.s(this.f16972d.z, jVar, cVar, this.f16976h);
                sVar.f4944v = (ed.b) J();
                tVar = new fd.t(this.f16972d.z.e(), cVar2);
                tVar.f4940p = false;
                if (zD || !L()) {
                    bArr = bArr3;
                    z = zD;
                    oVar = oVarA;
                } else {
                    vc.b bVar2 = this.f16972d.z;
                    logger3.debug("Initialize signing");
                    vc.b bVar3 = this.f16972d.z;
                    byte[] bArr4 = jVar.H.f5790p;
                    jVar2.getClass();
                    int i14 = ((wc.a) bVar3.e()).r;
                    if (i14 == 0 || i14 == 1 || i14 == 2) {
                        bArr2 = new byte[40];
                        try {
                            MessageDigest messageDigestJ = ge.a.j();
                            bArr = bArr3;
                            MessageDigest messageDigestJ2 = ge.a.j();
                            String str2 = jVar2.f16877d;
                            z = zD;
                            Charset charset = ge.b.f6136b;
                            messageDigestJ2.update(ge.b.d(str2, charset));
                            byte[] bArrDigest = messageDigestJ2.digest();
                            int i15 = ((wc.a) bVar3.e()).r;
                            oVar = oVarA;
                            if (i15 == 0 || i15 == 1 || i15 == 2) {
                                messageDigestJ.update(bArrDigest);
                                i10 = 0;
                                i11 = 16;
                                messageDigestJ.digest(bArr2, 0, 16);
                            } else {
                                if (i15 == 3 || i15 == 4 || i15 == 5) {
                                    synchronized (jVar2) {
                                        try {
                                            if (jVar2.f16878e == null) {
                                                jVar2.f16878e = new byte[8];
                                                ((wc.a) bVar3.e()).f17828c.nextBytes(jVar2.f16878e);
                                            }
                                        } finally {
                                        }
                                    }
                                    de.b bVar4 = new de.b(bArrDigest, 1);
                                    bVar4.update(ge.b.d(jVar2.f16876c.toUpperCase(), charset));
                                    bVar4.update(ge.b.d(jVar2.f16875b.toUpperCase(), charset));
                                    byte[] bArrDigest2 = bVar4.digest();
                                    de.b bVar5 = new de.b(bArrDigest2, 1);
                                    bVar5.update(bArr4);
                                    bVar5.update(jVar2.f16878e);
                                    de.b bVar6 = new de.b(bArrDigest2, 1);
                                    bVar6.update(bVar5.digest());
                                    bVar6.digest(bArr2, 0, 16);
                                } else {
                                    messageDigestJ.update(bArrDigest);
                                    messageDigestJ.digest(bArr2, 0, 16);
                                }
                                i10 = 0;
                                i11 = 16;
                            }
                            System.arraycopy(jVar2.c(bVar3, bArr4), i10, bArr2, i11, 24);
                        } catch (Exception e14) {
                            throw new r("", e14);
                        }
                    } else {
                        if (i14 == 3 || i14 == 4 || i14 == 5) {
                            break;
                        }
                        bArr = bArr3;
                        z = zD;
                        oVar = oVarA;
                        bArr2 = null;
                        i10 = 0;
                    }
                    if (bArr2 == null) {
                        throw new r("Need a signature key but the server did not provide one");
                    }
                    sVar.f4944v = new ed.b(bArr2, i10);
                }
                try {
                    b0Var.u0(sVar, tVar);
                } catch (p e15) {
                    throw e15;
                } catch (r e16) {
                    pVar = e16;
                }
                if (!((wc.a) this.f16975g.e()).f17868x0 && tVar.O && jVar.H.f5782g != 0 && !this.f16976h.f() && !this.f16976h.d()) {
                    throw new p(-1073741715);
                }
                zD = (this.f16976h.d() || !tVar.O) ? z : true;
                if (pVar != null) {
                    throw pVar;
                }
                this.f16970b = tVar.f4935i;
                ed.b bVar7 = sVar.f4944v;
                if (bVar7 != null) {
                    T(bVar7);
                } else if (!zD && L()) {
                    throw new r("Signing required but no session key available");
                }
                this.f16978j = tVar.f4940p;
                this.f16969a.set(2);
                bArrA = bArr;
                oVarA = oVar;
                i13 = 0;
            }
            if (i13 == 0) {
                return;
            }
            bArr3 = bArrA;
            r62 = 0;
            i12 = 10;
        }
    }

    public final ad.d S(b0 b0Var, String str) throws r, NoSuchAlgorithmException {
        o oVar;
        Logger logger;
        int i10;
        od.f fVar = (od.f) b0Var.l0();
        byte[] bArrA = fVar.O;
        int i11 = ((fVar.D & 2) != 0 || b0Var.o0()) ? 2 : 1;
        boolean zD = this.f16976h.d();
        boolean zA = fVar.P.a(vc.i.f16790g);
        byte[] bArr = zA ? b0Var.E : null;
        this.r = bArr;
        Logger logger2 = f16968s;
        int length = 0;
        if (bArr != null && logger2.isDebugEnabled()) {
            byte[] bArr2 = this.r;
            logger2.debug("Initial session preauth hash ".concat(ge.a.m(bArr2, 0, bArr2.length)));
        }
        boolean z = zD;
        long j10 = 0;
        o oVarA = null;
        pd.c cVar = null;
        r rVar = null;
        while (true) {
            this.f16976h.getClass();
            if (oVarA == null) {
                oVarA = A(b0Var, str, fVar, !z);
            }
            if (bArrA != null) {
                length = bArrA.length;
            }
            bArrA = oVarA.a(length, bArrA);
            if (bArrA != null) {
                oVar = oVarA;
                logger = logger2;
                pd.b bVar = new pd.b(this.f16972d.z, i11, fVar.H, 0L, bArrA);
                j10 = j10;
                bVar.f(j10);
                bVar.f8671t = true;
                try {
                    pd.c cVar2 = (pd.c) b0Var.t0(bVar, null, EnumSet.of(l.RETAIN_PAYLOAD));
                    j10 = cVar2.f8670s;
                    cVar = cVar2;
                } catch (p e7) {
                    throw e7;
                } catch (r e10) {
                    cVar = (pd.c) bVar.f8674x;
                    if (e10.f16897a == -1073741811) {
                        throw new p(e10);
                    }
                    if (!cVar.f8675x || cVar.f8676y || ((i10 = cVar.f8664j) != 0 && i10 != -1073741802)) {
                        throw e10;
                    }
                    rVar = e10;
                }
                if (!((wc.a) this.f16975g.e()).f17868x0 && (cVar.D & 3) != 0 && !this.f16976h.f() && !this.f16976h.d()) {
                    throw new p(-1073741715);
                }
                if (!this.f16976h.d() && (cVar.D & 3) != 0) {
                    z = true;
                }
                if ((cVar.D & 4) != 0) {
                    throw new i0("Server requires encryption, not yet supported.");
                }
                if (zA) {
                    byte[] bArr3 = bVar.f8672v;
                    byte[] bArrC0 = b0Var.c0(bArr3.length, bArr3, this.r);
                    this.r = bArrC0;
                    if (cVar.f8664j == -1073741802) {
                        byte[] bArr4 = cVar.f8672v;
                        this.r = b0Var.c0(bArr4.length, bArr4, bArrC0);
                    }
                }
                bArrA = cVar.E;
            } else {
                oVar = oVarA;
                logger = logger2;
            }
            boolean z4 = z;
            if (oVar.b()) {
                Logger logger3 = logger;
                logger3.debug("Context is established");
                this.f16974f = null;
                byte[] bArrC = oVar.c();
                if (bArrC != null) {
                    byte[] bArr5 = new byte[16];
                    System.arraycopy(bArrC, 0, bArr5, 0, Math.min(16, bArrC.length));
                    this.f16977i = bArr5;
                }
                boolean z10 = (cVar == null || (cVar.f8656b & 8) == 0) ? false : true;
                if (z4 || !(L() || z10)) {
                    if (logger3.isDebugEnabled()) {
                        logger3.debug("No digest setup " + z4 + " B " + L());
                    }
                } else if (oVar.c() != null && cVar != null) {
                    if (this.r != null && logger3.isDebugEnabled()) {
                        byte[] bArr6 = this.r;
                        logger3.debug("Final preauth integrity hash ".concat(ge.a.m(bArr6, 0, bArr6.length)));
                    }
                    id.f fVar2 = new id.f(this.f16977i, fVar.E, this.r);
                    if (fVar.P.a(vc.i.f16789f) || (cVar.f8656b & 8) != 0) {
                        cVar.i(fVar2);
                        byte[] bArr7 = cVar.f8672v;
                        if (!cVar.q0(0, bArr7.length, bArr7)) {
                            throw new r("Signature validation failed");
                        }
                    }
                    T(fVar2);
                } else if (((wc.a) b0Var.z.e()).f17836g) {
                    throw new r("Signing enabled but no session key available");
                }
                this.f16978j = true;
                this.f16969a.set(2);
                this.f16980m = cVar.f8670s;
                if (rVar == null) {
                    return (ad.d) cVar.f8673w;
                }
                throw rVar;
            }
            z = z4;
            oVarA = oVar;
            logger2 = logger;
            length = 0;
        }
    }

    public final void T(ad.h hVar) {
        if (this.f16972d.n0()) {
            this.f16981n = hVar;
        } else {
            this.f16972d.C = hVar;
        }
    }

    public final z U(Class cls) {
        if (cls.isAssignableFrom(z.class)) {
            return this;
        }
        throw new ClassCastException();
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        O();
    }

    public final void finalize() {
        if (this.f16972d.T() || this.f16969a.get() != 2 || this.f16979k.get() == 0) {
            return;
        }
        f16968s.warn("Session was not properly released");
    }

    public final void r() {
        long jIncrementAndGet = this.f16979k.incrementAndGet();
        Logger logger = f16968s;
        if (logger.isTraceEnabled()) {
            logger.trace("Acquire session " + jIncrementAndGet + " " + this);
        }
        if (jIncrementAndGet == 1) {
            synchronized (this) {
                try {
                    if (this.l.compareAndSet(false, true)) {
                        logger.debug("Reacquire transport");
                        this.f16972d.b0();
                    }
                } finally {
                }
            }
        }
    }

    public final String toString() {
        return "SmbSession[credentials=" + this.f16975g.g() + ",targetHost=" + this.f16983q + ",targetDomain=" + this.f16982p + ",uid=" + this.f16970b + ",connectionState=" + this.f16969a + ",usage=" + this.f16979k.get() + "]";
    }
}
