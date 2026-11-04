package vd;

import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.Collection;
import java.util.EnumSet;
import java.util.concurrent.atomic.AtomicLong;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public final class g0 implements AutoCloseable {

    /* renamed from: d, reason: collision with root package name */
    public static final Logger f16835d = LoggerFactory.getLogger((Class<?>) g0.class);

    /* renamed from: a, reason: collision with root package name */
    public final y f16836a;

    /* renamed from: b, reason: collision with root package name */
    public final e0 f16837b;

    /* renamed from: c, reason: collision with root package name */
    public final AtomicLong f16838c = new AtomicLong(1);

    public g0(y yVar, e0 e0Var) {
        this.f16836a = yVar;
        e0Var.a();
        this.f16837b = e0Var;
    }

    public final boolean A() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        z zVarI = this.f16837b.i();
        try {
            b0 b0Var = zVarI.f16972d;
            b0Var.b0();
            try {
                boolean zM = b0Var.l0().m();
                b0Var.Y();
                zVarI.O();
                return zM;
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
        } catch (Throwable th4) {
            if (zVarI != null) {
                try {
                    zVarI.O();
                } catch (Throwable th5) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th4, th5);
                    } catch (Exception unused2) {
                    }
                }
            }
            throw th4;
        }
    }

    public final vc.f J() {
        return this.f16837b.f16828a.e();
    }

    public final int K() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        z zVarI = this.f16837b.i();
        try {
            b0 b0Var = zVarI.f16972d;
            b0Var.b0();
            try {
                int iH = b0Var.l0().H();
                b0Var.Y();
                zVarI.O();
                return iH;
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
        } catch (Throwable th4) {
            if (zVarI != null) {
                try {
                    zVarI.O();
                } catch (Throwable th5) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th4, th5);
                    } catch (Exception unused2) {
                    }
                }
            }
            throw th4;
        }
    }

    public final int L() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        z zVarI = this.f16837b.i();
        try {
            b0 b0Var = zVarI.f16972d;
            b0Var.b0();
            try {
                int iO = b0Var.l0().o();
                b0Var.Y();
                zVarI.O();
                return iO;
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
        } catch (Throwable th4) {
            if (zVarI != null) {
                try {
                    zVarI.O();
                } catch (Throwable th5) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th4, th5);
                    } catch (Exception unused2) {
                    }
                }
            }
            throw th4;
        }
    }

    public final int M() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        h0 h0VarJ = this.f16837b.j();
        try {
            String str = h0VarJ.f16845f;
            int i10 = "LPT1:".equals(str) ? 32 : "COMM".equals(str) ? 64 : 8;
            h0VarJ.M(false);
            return i10;
        } catch (Throwable th2) {
            if (h0VarJ != null) {
                try {
                    h0VarJ.M(false);
                } catch (Throwable th3) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                    } catch (Exception unused) {
                    }
                }
            }
            throw th2;
        }
    }

    public final boolean N(int i10) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        z zVarI = this.f16837b.i();
        try {
            if (zVarI == null) {
                throw new r("Not connected");
            }
            b0 b0Var = zVarI.f16972d;
            b0Var.b0();
            try {
                boolean zX = b0Var.l0().x(i10);
                b0Var.Y();
                zVarI.O();
                return zX;
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
        } catch (Throwable th4) {
            if (zVarI != null) {
                try {
                    zVarI.O();
                } catch (Throwable th5) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th4, th5);
                    } catch (Exception unused2) {
                    }
                }
            }
            throw th4;
        }
    }

    public final boolean O() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            z zVarI = this.f16837b.i();
            try {
                b0 b0Var = zVarI.f16972d;
                b0Var.b0();
                try {
                    boolean zN0 = b0Var.n0();
                    b0Var.Y();
                    zVarI.O();
                    return zN0;
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
            } catch (Throwable th4) {
                if (zVarI != null) {
                    try {
                        zVarI.O();
                    } catch (Throwable th5) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th4, th5);
                        } catch (Exception unused2) {
                        }
                    }
                }
                throw th4;
            }
        } catch (r e7) {
            f16835d.debug("Failed to connect for determining SMB2 support", (Throwable) e7);
            return false;
        }
    }

    public final void P() {
        long jDecrementAndGet = this.f16838c.decrementAndGet();
        if (jDecrementAndGet != 0) {
            if (jDecrementAndGet < 0) {
                throw new androidx.fragment.app.b0("Usage count dropped below zero", 10);
            }
            return;
        }
        e0 e0Var = this.f16837b;
        long jDecrementAndGet2 = e0Var.f16832e.decrementAndGet();
        Logger logger = e0.f16826f;
        if (logger.isTraceEnabled()) {
            logger.trace("Release tree connection " + jDecrementAndGet2 + " " + e0Var);
        }
        if (jDecrementAndGet2 != 0) {
            if (jDecrementAndGet2 >= 0) {
                return;
            }
            logger.error("Usage count dropped below zero " + e0Var);
            throw new androidx.fragment.app.b0("Usage count dropped below zero", 10);
        }
        synchronized (e0Var) {
            h0 h0VarJ = e0Var.j();
            try {
                if (e0Var.f16830c && h0VarJ != null) {
                    if (logger.isDebugEnabled()) {
                        logger.debug("Tree connection no longer in use, release tree " + h0VarJ);
                    }
                    e0Var.f16830c = false;
                    h0VarJ.M(true);
                }
                if (h0VarJ != null) {
                    h0VarJ.M(false);
                }
            } catch (Throwable th2) {
                if (h0VarJ != null) {
                    try {
                        h0VarJ.M(false);
                    } catch (Throwable th3) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                        } catch (Exception unused) {
                        }
                    }
                }
                throw th2;
            }
        }
        Object obj = e0Var.f16831d;
        if (obj != null) {
            synchronized (e0Var) {
                try {
                    logger.debug("Disconnecting exclusive transport");
                    e0Var.f16831d = null;
                    e0Var.f16829b = null;
                    e0Var.f16830c = false;
                    ((he.e) obj).Y();
                    ((he.e) obj).K(false, false);
                } catch (Exception e7) {
                    e0.f16826f.error("Failed to close exclusive transport", (Throwable) e7);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x00d5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0166  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ad.d Q(ad.c cVar, ad.d dVar, l... lVarArr) throws IllegalAccessException, InterruptedException, vc.c, IllegalArgumentException, InvocationTargetException {
        Logger logger;
        vc.c cVar2;
        EnumSet enumSet;
        int i10;
        Class<Throwable> cls;
        String str;
        Class<?>[] clsArr;
        ad.c cVar3 = cVar;
        ad.d dVar2 = dVar;
        e0 e0Var = this.f16837b;
        y yVar = this.f16836a;
        e0Var.getClass();
        EnumSet enumSetNoneOf = lVarArr.length == 0 ? EnumSet.noneOf(l.class) : EnumSet.copyOf((Collection) Arrays.asList(lVarArr));
        String str2 = null;
        ad.f fVar = cVar3 instanceof ad.f ? (ad.f) cVar3 : null;
        String path = fVar != null ? fVar.getPath() : null;
        String strW = fVar != null ? fVar.W() : null;
        String str3 = "\\" + yVar.c() + "\\" + yVar.d() + yVar.f();
        int i11 = ((wc.a) e0Var.f16828a.e()).f17848m0;
        vc.c e7 = null;
        int i12 = 1;
        while (true) {
            logger = e0.f16826f;
            if (i12 > i11) {
                break;
            }
            if (fVar != null) {
                fVar.q(str2, str2, str3);
            }
            try {
                return e0Var.n(yVar, cVar3, dVar2, enumSetNoneOf);
            } catch (r e10) {
                r rVar = e10;
                if (enumSetNoneOf.contains(l.NO_RETRY) || !((rVar.getCause() instanceof he.f) || rVar.f16897a == -1073741811)) {
                    logger.debug("Not retrying", (Throwable) rVar);
                    throw rVar;
                }
                logger.debug("send", (Throwable) rVar);
                cVar2 = rVar;
                if (logger.isDebugEnabled()) {
                    enumSet = enumSetNoneOf;
                } else {
                    enumSet = enumSetNoneOf;
                    logger.debug(String.format("Retrying (%d/%d) request %s", Integer.valueOf(i12), Integer.valueOf(i11), cVar3));
                }
                logger.debug("Disconnecting tree on send retry", (Throwable) cVar2);
                e0Var.g();
                if (i12 < i11) {
                    e7 = cVar2;
                    if (e7 != null) {
                    }
                } else {
                    if (i12 != 1) {
                        try {
                            Thread.sleep(e0.f16827g.nextInt(1000) + 500);
                        } catch (InterruptedException e11) {
                            logger.debug("interrupted sleep in send", (Throwable) e11);
                        }
                    }
                    if (cVar3 != null) {
                        logger.debug("Restting request");
                        cVar.reset();
                    }
                    if (fVar != null) {
                        fVar.k(path);
                        fVar.q(fVar.V(), fVar.g(), strW);
                    }
                    if (dVar2 != null) {
                        dVar.reset();
                    }
                    try {
                        g0 g0VarF = e0Var.f(yVar);
                        try {
                            logger.debug("Have new tree connection for retry");
                            g0VarF.close();
                            e7 = cVar2;
                            i10 = 1;
                        } finally {
                            try {
                                try {
                                } catch (Throwable th2) {
                                    try {
                                        try {
                                            clsArr[0] = cls;
                                            cls.getDeclaredMethod(str, clsArr).invoke(th, th2);
                                        } catch (Exception unused) {
                                        }
                                    } catch (Exception unused2) {
                                    }
                                }
                            } catch (r e12) {
                                e7 = e12;
                                logger.debug("Failed to connect tree on retry", (Throwable) e7);
                                i10 = 1;
                                i12 += i10;
                                cVar3 = cVar;
                                dVar2 = dVar;
                                enumSetNoneOf = enumSet;
                                str2 = null;
                            }
                        }
                    } catch (r e13) {
                        e7 = e13;
                    }
                    i12 += i10;
                    cVar3 = cVar;
                    dVar2 = dVar;
                    enumSetNoneOf = enumSet;
                    str2 = null;
                }
            } catch (vc.c e14) {
                vc.c cVar4 = e14;
                logger.debug("send", (Throwable) cVar4);
                cVar2 = cVar4;
                if (logger.isDebugEnabled()) {
                }
                logger.debug("Disconnecting tree on send retry", (Throwable) cVar2);
                e0Var.g();
                if (i12 < i11) {
                }
            }
            i12 += i10;
            cVar3 = cVar;
            dVar2 = dVar;
            enumSetNoneOf = enumSet;
            str2 = null;
        }
        if (e7 != null) {
            throw new r("All attempts failed, but no exception");
        }
        logger.debug("All attempts have failed, last exception", (Throwable) e7);
        throw e7;
    }

    @Override // java.lang.AutoCloseable
    public final synchronized void close() {
        P();
    }

    public final void finalize() {
        if (this.f16838c.get() != 0) {
            f16835d.warn("Tree handle was not properly released " + this.f16836a.f16959a);
        }
    }

    public final void r() {
        if (this.f16838c.incrementAndGet() == 1) {
            this.f16837b.a();
        }
    }
}
