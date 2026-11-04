package vd;

import com.hierynomus.smbfs.SmbPath;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.LinkedList;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public final class h0 implements AutoCloseable {

    /* renamed from: q, reason: collision with root package name */
    public static final Logger f16839q = LoggerFactory.getLogger((Class<?>) h0.class);
    public static final AtomicLong r = new AtomicLong();

    /* renamed from: b, reason: collision with root package name */
    public final String f16841b;

    /* renamed from: c, reason: collision with root package name */
    public final String f16842c;

    /* renamed from: d, reason: collision with root package name */
    public final z f16843d;

    /* renamed from: g, reason: collision with root package name */
    public volatile boolean f16846g;

    /* renamed from: h, reason: collision with root package name */
    public volatile boolean f16847h;

    /* renamed from: i, reason: collision with root package name */
    public volatile long f16848i;
    public final boolean l;

    /* renamed from: m, reason: collision with root package name */
    public final LinkedList f16851m;

    /* renamed from: n, reason: collision with root package name */
    public final LinkedList f16852n;

    /* renamed from: p, reason: collision with root package name */
    public bd.b f16853p;

    /* renamed from: a, reason: collision with root package name */
    public final AtomicInteger f16840a = new AtomicInteger();

    /* renamed from: e, reason: collision with root package name */
    public volatile int f16844e = -1;

    /* renamed from: f, reason: collision with root package name */
    public volatile String f16845f = "?????";

    /* renamed from: j, reason: collision with root package name */
    public final AtomicLong f16849j = new AtomicLong(0);

    /* renamed from: k, reason: collision with root package name */
    public final AtomicBoolean f16850k = new AtomicBoolean(true);

    public h0(z zVar, String str) {
        zVar.r();
        this.f16843d = zVar;
        this.f16841b = str.toUpperCase();
        this.f16842c = this.f16845f;
        boolean z = ((wc.a) zVar.f16975g.e()).f17850n0;
        this.l = z;
        if (z) {
            this.f16851m = new LinkedList();
            this.f16852n = new LinkedList();
        } else {
            this.f16851m = null;
            this.f16852n = null;
        }
    }

    public static void A(ed.c cVar, String str) throws r {
        byte b10;
        if ("A:".equals(str) || (b10 = cVar.f4927a) == -94 || b10 == 4) {
            return;
        }
        if (b10 != 37 && b10 != 50) {
            if (b10 != 113) {
                switch (b10) {
                    case 45:
                    case 46:
                    case 47:
                        return;
                    default:
                        throw new r("Invalid operation for " + str + " service" + cVar);
                }
            }
            return;
        }
        int i10 = ((gd.a) cVar).f6131t0 & 255;
        if (i10 == -41 || i10 == 0 || i10 == 16 || i10 == 35 || i10 == 38 || i10 == 104 || i10 == 83 || i10 == 84) {
            return;
        }
        throw new r("Invalid operation for " + str + " service: " + cVar);
    }

    public static StackTraceElement[] S(StackTraceElement[] stackTraceElementArr) {
        int length = stackTraceElementArr.length;
        int i10 = 2;
        int i11 = 2;
        while (true) {
            if (i10 >= length) {
                break;
            }
            StackTraceElement stackTraceElement = stackTraceElementArr[i10];
            if (i10 == i11 && h0.class.getName().equals(stackTraceElement.getClassName()) && "close".equals(stackTraceElement.getMethodName())) {
                i11++;
            } else if (stackTraceElement.getClassName().startsWith("org.junit.runners.")) {
                length = i10 - 4;
                break;
            }
            i10++;
        }
        int i12 = length - i11;
        StackTraceElement[] stackTraceElementArr2 = new StackTraceElement[i12];
        System.arraycopy(stackTraceElementArr, i11, stackTraceElementArr2, 0, i12);
        return stackTraceElementArr2;
    }

    public final void J() {
        if (this.l) {
            synchronized (this.f16851m) {
                try {
                    for (StackTraceElement[] stackTraceElementArr : this.f16851m) {
                        f16839q.debug("Acquire " + Arrays.toString(stackTraceElementArr));
                    }
                } finally {
                }
            }
            synchronized (this.f16852n) {
                try {
                    for (StackTraceElement[] stackTraceElementArr2 : this.f16852n) {
                        f16839q.debug("Release " + Arrays.toString(stackTraceElementArr2));
                    }
                } finally {
                }
            }
        }
    }

    public final boolean K() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (this.f16840a.get() == 2) {
            return this.f16846g;
        }
        b0 b0Var = this.f16843d.f16972d;
        b0Var.b0();
        try {
            boolean zB0 = b0Var.l0().b0();
            b0Var.Y();
            return zB0;
        } catch (Throwable th2) {
            try {
                b0Var.Y();
            } catch (Throwable th3) {
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                } catch (Exception unused) {
                }
            }
            throw th2;
        }
    }

    public final boolean L(String str, String str2) {
        return this.f16841b.equalsIgnoreCase(str) && (str2 == null || str2.startsWith("??") || this.f16845f.equalsIgnoreCase(str2));
    }

    public final void M(boolean z) {
        long jDecrementAndGet = this.f16849j.decrementAndGet();
        Logger logger = f16839q;
        if (logger.isTraceEnabled()) {
            logger.trace("Release tree " + jDecrementAndGet + " " + this);
        }
        if (z && this.l) {
            synchronized (this.f16852n) {
                this.f16852n.add(S(Thread.currentThread().getStackTrace()));
            }
        }
        if (jDecrementAndGet == 0) {
            synchronized (this) {
                try {
                    logger.debug("Usage dropped to zero, release session");
                    if (this.f16850k.compareAndSet(true, false)) {
                        this.f16843d.O();
                    }
                } finally {
                }
            }
            return;
        }
        if (jDecrementAndGet >= 0) {
            return;
        }
        logger.error("Usage count dropped below zero " + this);
        J();
        throw new androidx.fragment.app.b0("Usage count dropped below zero", 10);
    }

    public final ad.d N(ad.c cVar, ad.d dVar, Set set) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        z zVar = this.f16843d;
        zVar.r();
        try {
            b0 b0Var = zVar.f16972d;
            b0Var.b0();
            if (dVar != null) {
                try {
                    dVar.O();
                } catch (Throwable th2) {
                    try {
                        b0Var.Y();
                    } catch (Throwable th3) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                        } catch (Exception unused) {
                        }
                    }
                    throw th2;
                }
            }
            String str = null;
            ad.d dVarP = ((cVar instanceof fd.w) || (cVar instanceof qd.c)) ? null : P(cVar, dVar);
            if (cVar != null && (dVarP == null || !dVarP.c0())) {
                cVar.L(this.f16844e);
                if (!b0Var.n0()) {
                    ed.c cVar2 = (ed.c) cVar;
                    str = this.f16845f;
                    if (str == null) {
                        throw new r("Service is null in state " + this.f16840a.get());
                    }
                    A(cVar2, str);
                }
                boolean z = this.f16846g;
                Logger logger = f16839q;
                if (z && !"IPC".equals(str) && !"IPC$".equals(this.f16841b) && (cVar instanceof ad.f)) {
                    ad.f fVar = (ad.f) cVar;
                    if (fVar.getPath() != null && fVar.getPath().length() > 0) {
                        if (logger.isDebugEnabled()) {
                            logger.debug("Setting DFS request path from " + fVar.getPath() + " to " + fVar.W());
                        }
                        fVar.j();
                        fVar.k(fVar.W());
                    }
                }
                try {
                    ad.d dVarP2 = zVar.P(cVar, dVar, set);
                    b0Var.Y();
                    zVar.O();
                    return dVarP2;
                } catch (r e7) {
                    if (e7.f16897a == -1073741623) {
                        logger.debug("Disconnect tree on NT_STATUS_NETWORK_NAME_DELETED");
                        R(true, true);
                    }
                    throw e7;
                }
            }
            b0Var.Y();
            zVar.O();
            return dVarP;
        } catch (Throwable th4) {
            try {
                zVar.O();
            } catch (Throwable th5) {
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th4, th5);
                } catch (Exception unused2) {
                }
            }
            throw th4;
        }
    }

    public final ad.d O(id.c cVar, l... lVarArr) {
        return N(cVar, cVar.f8674x, lVarArr.length > 0 ? EnumSet.copyOf((Collection) Arrays.asList(lVarArr)) : EnumSet.noneOf(l.class));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [qd.a] */
    /* JADX WARN: Type inference failed for: r19v0, types: [ad.c] */
    public final ad.d P(ad.c cVar, ad.d dVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        fd.v vVar;
        fd.u uVar;
        z zVar = this.f16843d;
        zVar.r();
        try {
            b0 b0Var = zVar.f16972d;
            b0Var.b0();
            try {
                synchronized (b0Var) {
                    b0Var.j0();
                    fd.u uVar2 = null;
                    if (V(b0Var) == 2) {
                        b0Var.Y();
                        zVar.O();
                        return null;
                    }
                    int andSet = this.f16840a.getAndSet(1);
                    if (andSet == 1) {
                        if (V(b0Var) != 2) {
                            throw new r("Tree disconnected while waiting for connection");
                        }
                        b0Var.Y();
                        zVar.O();
                        return null;
                    }
                    if (andSet == 2) {
                        b0Var.Y();
                        zVar.O();
                        return null;
                    }
                    Logger logger = f16839q;
                    if (logger.isDebugEnabled()) {
                        logger.debug("Connection state was " + andSet);
                    }
                    try {
                        try {
                            String str = zVar.f16983q;
                            if (str == null) {
                                throw new r("Transport disconnected while waiting for connection");
                            }
                            ad.k kVarL0 = b0Var.l0();
                            String str2 = "\\\\" + str + SmbPath.SEPARATOR + this.f16841b;
                            String str3 = this.f16842c;
                            if (logger.isDebugEnabled()) {
                                logger.debug("treeConnect: unc=" + str2 + ",service=" + str3);
                            }
                            if (b0Var.n0()) {
                                ?? aVar = new qd.a(str2, zVar.f16975g.e());
                                if (cVar != 0) {
                                    aVar.g0((id.b) cVar);
                                }
                                uVar = aVar;
                                vVar = null;
                            } else {
                                vVar = new fd.v(zVar.f16975g.e(), (ed.c) dVar);
                                uVar = new fd.u(zVar.f16972d.z, ((fd.j) kVarL0).H, str2, str3, (ed.c) cVar);
                            }
                            try {
                                ad.l lVar = (ad.l) zVar.P(uVar, vVar, Collections.emptySet());
                                Q(b0Var, zVar, lVar);
                                if (dVar != null && dVar.c0()) {
                                    b0Var.notifyAll();
                                    b0Var.Y();
                                    zVar.O();
                                    return dVar;
                                }
                                if (!b0Var.n0()) {
                                    b0Var.notifyAll();
                                    b0Var.Y();
                                    zVar.O();
                                    return null;
                                }
                                ad.d dVarT = lVar.t();
                                b0Var.notifyAll();
                                b0Var.Y();
                                zVar.O();
                                return dVarT;
                            } catch (IOException e7) {
                                e = e7;
                                uVar2 = uVar;
                                if (uVar2 != null && uVar2.b() != null) {
                                    ad.l lVar2 = (ad.l) uVar2.b();
                                    if (lVar2.c0() && !lVar2.T() && lVar2.r() == 0) {
                                        if (!b0Var.T()) {
                                            Q(b0Var, zVar, lVar2);
                                        }
                                        throw e;
                                    }
                                }
                                try {
                                    f16839q.debug("Disconnect tree on treeConnectFailure", (Throwable) e);
                                    R(true, true);
                                    throw e;
                                } finally {
                                    this.f16840a.set(0);
                                }
                            }
                        } catch (Throwable th2) {
                            b0Var.notifyAll();
                            throw th2;
                        }
                    } catch (IOException e10) {
                        e = e10;
                    }
                }
            } finally {
            }
        } catch (Throwable th3) {
            try {
                zVar.O();
            } catch (Throwable th4) {
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th3, th4);
                } catch (Exception unused) {
                }
            }
            throw th3;
        }
    }

    public final void Q(b0 b0Var, z zVar, ad.l lVar) throws IllegalAccessException, vc.c, IllegalArgumentException, InvocationTargetException {
        if (!lVar.A()) {
            throw new r("TreeID is invalid");
        }
        this.f16844e = lVar.Z();
        String strG = lVar.G();
        if (strG == null && !b0Var.n0()) {
            throw new r("Service is NULL");
        }
        if (((wc.a) b0Var.z.e()).f17840i && (("IPC$".equals(this.f16841b) || "IPC".equals(strG)) && !zVar.f16976h.d() && zVar.J() == null)) {
            throw new r("IPC signing is enforced, but no signing is available");
        }
        this.f16845f = strG;
        this.f16846g = lVar.U();
        this.f16848i = r.incrementAndGet();
        this.f16840a.set(2);
        try {
            U(b0Var, zVar);
        } catch (vc.c e7) {
            try {
                b0Var.J();
            } catch (IOException e10) {
                f16839q.warn("Failed to disconnect transport", (Throwable) e10);
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(e7, e10);
                } catch (Exception unused) {
                }
            }
            throw e7;
        }
    }

    public final boolean R(boolean z, boolean z4) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        boolean z10;
        z zVar = this.f16843d;
        zVar.r();
        try {
            b0 b0Var = zVar.f16972d;
            b0Var.b0();
            try {
                synchronized (b0Var) {
                    try {
                        if (this.f16840a.getAndSet(3) == 2) {
                            long j10 = this.f16849j.get();
                            if ((!z4 || j10 == 1) && (z4 || j10 <= 0)) {
                                z10 = false;
                            } else {
                                f16839q.warn("Disconnected tree while still in use " + this);
                                J();
                                if (((wc.a) zVar.f16975g.e()).f17850n0) {
                                    throw new androidx.fragment.app.b0("Disconnected tree while still in use", 10);
                                }
                                z10 = true;
                            }
                            if (!z && this.f16844e != -1) {
                                try {
                                    if (b0Var.n0()) {
                                        O(new qd.c(zVar.f16975g.e()), new l[0]);
                                    } else {
                                        N(new fd.w(zVar.f16975g.e()), new fd.c(zVar.f16975g.e()), Collections.emptySet());
                                    }
                                } catch (vc.c e7) {
                                    f16839q.error("Tree disconnect failed", (Throwable) e7);
                                }
                            }
                        } else {
                            z10 = false;
                        }
                        this.f16846g = false;
                        this.f16847h = false;
                        this.f16840a.set(0);
                        b0Var.notifyAll();
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                b0Var.Y();
                zVar.O();
                return z10;
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
        } catch (Throwable th5) {
            try {
                zVar.O();
            } catch (Throwable th6) {
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th5, th6);
                } catch (Exception unused2) {
                }
            }
            throw th5;
        }
    }

    public final h0 T(Class cls) {
        if (cls.isAssignableFrom(h0.class)) {
            return this;
        }
        throw new ClassCastException();
    }

    public final void U(b0 b0Var, z zVar) throws vc.c {
        boolean zN0 = b0Var.n0();
        Logger logger = f16839q;
        if (!zN0 || b0Var.C == null || !((wc.a) zVar.f16975g.e()).s0) {
            logger.debug("Secure negotiation does not apply");
            return;
        }
        od.f fVar = (od.f) b0Var.l0();
        if (fVar.P.a(vc.i.f16790g)) {
            logger.debug("Secure negotiation does not apply, is SMB3.1");
            return;
        }
        vc.f fVarE = zVar.f16975g.e();
        int i10 = (b0Var.A || fVar.Q()) ? 3 : 1;
        od.e eVar = new od.e(fVarE, i10);
        logger.debug("Sending VALIDATE_NEGOTIATE_INFO");
        md.a aVar = new md.a(zVar.f16975g.e(), 1311236);
        aVar.C = 1;
        aVar.D = new a9.a(eVar.z, eVar.A, (short) i10, eVar.f11770y);
        try {
            md.c cVar = (md.c) ((md.b) O(aVar, l.NO_RETRY)).r0(md.c.class);
            if (fVar.D == cVar.f11195c && fVar.G == cVar.f11193a && fVar.E == cVar.f11196d && Arrays.equals(fVar.F, cVar.f11194b)) {
                logger.debug("Secure negotiation OK");
            } else {
                logger.debug("Secure negotiation failure");
                throw new vc.c("Mismatched attributes validating negotiate info");
            }
        } catch (n e7) {
            throw new ad.g(e7);
        } catch (r e10) {
            boolean zIsDebugEnabled = logger.isDebugEnabled();
            int i11 = e10.f16897a;
            if (zIsDebugEnabled) {
                logger.debug(String.format("VALIDATE_NEGOTIATE_INFO response code 0x%x", Integer.valueOf(i11)));
            }
            logger.trace("VALIDATE_NEGOTIATE_INFO returned error", (Throwable) e10);
            md.b bVar = (md.b) aVar.f8674x;
            if ((bVar.f8675x && bVar.A) || i11 == -1073741790) {
                throw new ad.g(e10);
            }
        }
    }

    public final int V(b0 b0Var) throws InterruptedException, r {
        while (true) {
            int i10 = this.f16840a.get();
            if (i10 == 0) {
                return i10;
            }
            if (i10 == 2) {
                return i10;
            }
            if (i10 == 3) {
                throw new r("Disconnecting during tree connect");
            }
            try {
                f16839q.debug("Waiting for transport");
                b0Var.wait();
            } catch (InterruptedException e7) {
                throw new r(e7.getMessage(), e7);
            }
        }
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        M(false);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof h0)) {
            return false;
        }
        h0 h0Var = (h0) obj;
        return L(h0Var.f16841b, h0Var.f16845f);
    }

    public final void finalize() {
        if (this.f16844e != -1) {
            z zVar = this.f16843d;
            if (zVar.f16972d.T() || zVar.f16969a.get() != 2 || this.f16840a.get() != 2 || this.f16849j.get() == 0) {
                return;
            }
            f16839q.warn("Tree was not properly released");
        }
    }

    public final int hashCode() {
        return (this.f16845f.hashCode() * 7) + this.f16841b.hashCode();
    }

    public final void r(boolean z) {
        long jIncrementAndGet = this.f16849j.incrementAndGet();
        Logger logger = f16839q;
        if (logger.isTraceEnabled()) {
            logger.trace("Acquire tree " + jIncrementAndGet + " " + this);
        }
        if (z && this.l) {
            synchronized (this.f16851m) {
                this.f16851m.add(S(Thread.currentThread().getStackTrace()));
            }
        }
        if (jIncrementAndGet == 1) {
            synchronized (this) {
                try {
                    if (this.f16850k.compareAndSet(false, true)) {
                        logger.debug("Reacquire session");
                        this.f16843d.r();
                    }
                } finally {
                }
            }
        }
    }

    public final String toString() {
        return "SmbTree[share=" + this.f16841b + ",service=" + this.f16845f + ",tid=" + this.f16844e + ",inDfs=" + this.f16846g + ",inDomainDfs=" + this.f16847h + ",connectionState=" + this.f16840a + ",usage=" + this.f16849j.get() + "]";
    }
}
