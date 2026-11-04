package vd;

import com.hierynomus.smbfs.SmbPath;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.EnumSet;
import java.util.Locale;
import java.util.Random;
import java.util.concurrent.atomic.AtomicLong;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public class e0 {

    /* renamed from: f, reason: collision with root package name */
    public static final Logger f16826f = LoggerFactory.getLogger((Class<?>) e0.class);

    /* renamed from: g, reason: collision with root package name */
    public static final Random f16827g = new Random();

    /* renamed from: a, reason: collision with root package name */
    public final vc.b f16828a;

    /* renamed from: b, reason: collision with root package name */
    public h0 f16829b;

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f16830c;

    /* renamed from: d, reason: collision with root package name */
    public c0 f16831d;

    /* renamed from: e, reason: collision with root package name */
    public final AtomicLong f16832e = new AtomicLong();

    public e0(vc.b bVar) {
        this.f16828a = bVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0073, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x007d, code lost:
    
        throw r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a() {
        h0 h0VarJ;
        long jIncrementAndGet = this.f16832e.incrementAndGet();
        Logger logger = f16826f;
        if (logger.isTraceEnabled()) {
            logger.trace("Acquire tree connection " + jIncrementAndGet + " " + this);
        }
        if (jIncrementAndGet == 1) {
            synchronized (this) {
                try {
                    h0VarJ = j();
                    if (h0VarJ != null) {
                        if (!this.f16830c) {
                            if (logger.isDebugEnabled()) {
                                logger.debug("Acquire tree on first usage " + h0VarJ);
                            }
                            h0VarJ.r(true);
                            this.f16830c = true;
                        }
                    }
                    if (h0VarJ != null) {
                        h0VarJ.M(false);
                    }
                } finally {
                    try {
                        h0VarJ.M(false);
                    } catch (Throwable th2) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                        } catch (Exception unused) {
                        }
                    }
                }
            }
        }
    }

    public final synchronized g0 b(y yVar) {
        z zVarI = i();
        try {
            if (l()) {
                b0 b0Var = zVarI.f16972d;
                b0Var.b0();
                try {
                    if (b0Var.T() || b0Var.f16811y == null) {
                        f16826f.debug("Disconnecting failed tree and session");
                        g();
                    }
                    b0Var.Y();
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
            if (l()) {
                f16826f.trace("Already connected");
                g0 g0Var = new g0(yVar, this);
                if (zVarI != null) {
                    zVarI.O();
                }
                return g0Var;
            }
            bd.b bVar = yVar.f16960b;
            g0 g0VarC = c(yVar, bVar != null ? ((bd.a) bVar).f2768c : yVar.c());
            if (zVarI != null) {
                zVarI.O();
            }
            return g0VarC;
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

    public final synchronized g0 c(y yVar, String str) {
        return d(yVar, str, null);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0291 A[Catch: all -> 0x0101, TryCatch #17 {all -> 0x0101, all -> 0x0028, blocks: (B:4:0x0009, B:33:0x0081, B:79:0x0107, B:80:0x010a, B:82:0x010e, B:85:0x0119, B:87:0x0121, B:89:0x0127, B:92:0x0134, B:93:0x0138, B:99:0x0160, B:103:0x017c, B:122:0x01f5, B:174:0x0288, B:176:0x0291, B:179:0x029d, B:169:0x0282, B:168:0x0271, B:96:0x0143, B:84:0x0114, B:74:0x0100, B:73:0x00ef, B:7:0x0010, B:9:0x0018, B:12:0x002c, B:14:0x0038, B:32:0x007e, B:59:0x00c9, B:67:0x00e6, B:66:0x00d5, B:15:0x003d, B:17:0x0048, B:21:0x0050, B:27:0x005c, B:31:0x007b, B:55:0x00c1, B:54:0x00b0, B:58:0x00c4), top: B:219:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0297 A[LOOP:0: B:98:0x015e->B:178:0x0297, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:241:0x029d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0104  */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3, types: [he.e] */
    /* JADX WARN: Type inference failed for: r19v0, types: [vd.e0] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized g0 d(y yVar, String str, bd.b bVar) {
        h0 h0VarJ;
        String str2;
        ?? r17;
        bd.b bVarH;
        String str3;
        String str4;
        String str5;
        Throwable th2;
        z zVar;
        h0 h0Var;
        String str6;
        Class<Throwable> cls;
        synchronized (this) {
            try {
                h0VarJ = j();
                String strF = null;
                if (h0VarJ != null) {
                    Logger logger = f16826f;
                    if (logger.isDebugEnabled()) {
                        logger.debug("Tree is " + h0VarJ);
                    }
                    if (Objects.equals(yVar.d(), h0VarJ.f16841b)) {
                        z zVar2 = h0VarJ.f16843d;
                        zVar2.r();
                        try {
                            str2 = zVar2.f16982p;
                            b0 b0Var = zVar2.f16972d;
                            Socket socket = b0Var.f16804p;
                            if (b0Var.f8193a == 5 || b0Var.f8193a == 6 || socket == null || socket.isClosed()) {
                                logger.debug("Session no longer valid");
                                zVar2.O();
                            } else {
                                b0 b0Var2 = zVar2.f16972d;
                                b0Var2.b0();
                                try {
                                    h0 h0VarE = e(yVar, str, h0VarJ.f16841b, b0Var2, h0VarJ, null);
                                    try {
                                        o(h0VarE);
                                        g0 g0Var = new g0(yVar, this);
                                        h0VarE.M(false);
                                        b0Var2.Y();
                                        zVar2.O();
                                        h0VarJ.M(false);
                                        return g0Var;
                                    } finally {
                                        try {
                                            h0VarE.M(false);
                                            throw th;
                                        } catch (Throwable th3) {
                                            Class<Throwable> cls2 = Throwable.class;
                                            try {
                                                cls2.getDeclaredMethod("addSuppressed", cls2).invoke(th, th3);
                                            } catch (Exception unused) {
                                                throw th;
                                            }
                                        }
                                    }
                                } finally {
                                }
                            }
                        } catch (Throwable th4) {
                            try {
                                zVar2.O();
                                throw th4;
                            } catch (Throwable th5) {
                                try {
                                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th4, th5);
                                    throw th4;
                                } catch (Exception unused2) {
                                    throw th4;
                                }
                            }
                        }
                    } else {
                        str2 = null;
                    }
                }
                if (h0VarJ != null) {
                    h0VarJ.M(false);
                }
                bd.b bVar2 = yVar.f16960b;
                String strC = bVar2 != null ? ((bd.a) bVar2).f2768c : yVar.c();
                if (yVar.e() != 8 && yVar.f() != null && !"\\".equals(yVar.f())) {
                    strF = yVar.f();
                }
                String str7 = strF;
                String strD = yVar.d();
                if (bVar != null) {
                    bVarH = bVar;
                } else {
                    r17 = 5;
                    bVarH = ((d) this.f16828a.k()).h(this.f16828a, strC, yVar.d(), str7, 5);
                }
                String str8 = strD;
                bd.b bVar3 = bVarH;
                String str9 = str2;
                String str10 = str;
                while (true) {
                    if (bVar3 != null) {
                        String str11 = ((bd.a) bVar3).l;
                        String lowerCase = ((bd.a) bVar3).f2768c.toLowerCase(Locale.ROOT);
                        str8 = ((bd.a) bVar3).f2769d;
                        str4 = str11;
                        str3 = lowerCase;
                    } else {
                        str3 = str10;
                        str4 = str9;
                    }
                    String str12 = str8;
                    try {
                        try {
                            b0 b0VarC = ((d0) this.f16828a.b()).c(this.f16828a, str3, yVar.f16959a.getPort(), false, yVar.j());
                            b0VarC.y0(c0.class);
                            try {
                                try {
                                    z zVarM0 = b0VarC.m0(this.f16828a, str3, str4);
                                    zVarM0.U(a0.class);
                                    try {
                                        h0 h0VarK = zVarM0.K(str12);
                                        h0VarK.T(h0.class);
                                        zVar = zVarM0;
                                        try {
                                            try {
                                                h0 h0VarE2 = e(yVar, str3, str12, b0VarC, h0VarK, bVar3);
                                                if (bVar3 != null) {
                                                    try {
                                                        h0VarE2.f16853p = bVar3;
                                                        if (bVar3 != bVarH) {
                                                            bd.a aVar = (bd.a) bVar3;
                                                            aVar.e();
                                                            ConcurrentHashMap concurrentHashMap = aVar.f2775j;
                                                            if (concurrentHashMap != null && (str6 = aVar.f2776k) != null) {
                                                                concurrentHashMap.put(str6, aVar);
                                                            }
                                                        }
                                                    } catch (Throwable th6) {
                                                        h0Var = h0VarK;
                                                        try {
                                                        } catch (Throwable th7) {
                                                            try {
                                                                try {
                                                                    cls.getDeclaredMethod("addSuppressed", cls).invoke(th6, th7);
                                                                    throw th6;
                                                                } catch (Exception unused3) {
                                                                    throw th6;
                                                                }
                                                            } catch (Throwable th8) {
                                                                th = th8;
                                                                Throwable th9 = th;
                                                                try {
                                                                    h0Var.M(false);
                                                                    throw th9;
                                                                } catch (Throwable th10) {
                                                                    try {
                                                                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th9, th10);
                                                                        throw th9;
                                                                    } catch (Exception unused4) {
                                                                        throw th9;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                                o(h0VarE2);
                                                g0 g0Var2 = new g0(yVar, this);
                                                h0VarE2.M(false);
                                                h0VarK.M(false);
                                                zVar.O();
                                                b0VarC.Y();
                                                return g0Var2;
                                            } catch (Throwable th11) {
                                                th = th11;
                                                Throwable th12 = th;
                                                try {
                                                    zVar.O();
                                                    throw th12;
                                                } catch (Throwable th13) {
                                                    try {
                                                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th12, th13);
                                                        throw th12;
                                                    } catch (Exception unused5) {
                                                        throw th12;
                                                    }
                                                }
                                            }
                                        } catch (Throwable th14) {
                                            th = th14;
                                            h0Var = h0VarK;
                                        }
                                    } catch (Throwable th15) {
                                        th = th15;
                                        zVar = zVarM0;
                                    }
                                } catch (Throwable th16) {
                                    th = th16;
                                    th2 = th;
                                    try {
                                        r17.Y();
                                        throw th2;
                                    } catch (Throwable th17) {
                                        try {
                                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th17);
                                            throw th2;
                                        } catch (Exception unused6) {
                                            throw th2;
                                        }
                                    }
                                }
                            } catch (Throwable th18) {
                                th = th18;
                                r17 = b0VarC;
                                th2 = th;
                                r17.Y();
                                throw th2;
                            }
                        } catch (IOException e7) {
                            e = e7;
                            str5 = str12;
                            f16826f.debug("Referral failed, trying next", (Throwable) e);
                            if (bVar3 != null) {
                                bVar3 = ((bd.a) bVar3).f2774i;
                            }
                            if (bVar3 != bVarH) {
                                throw e;
                            }
                            str10 = str3;
                            str9 = str4;
                            str8 = str5;
                        }
                    } catch (IOException e10) {
                        e = e10;
                        f16826f.debug("Referral failed, trying next", (Throwable) e);
                        if (bVar3 != null) {
                        }
                        if (bVar3 != bVarH) {
                        }
                    }
                    str10 = str3;
                    str9 = str4;
                    str8 = str5;
                }
            } catch (Throwable th19) {
                try {
                    h0VarJ.M(false);
                    throw th19;
                } catch (Throwable th20) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th19, th20);
                        throw th19;
                    } catch (Exception unused7) {
                        throw th19;
                    }
                }
            } finally {
            }
        }
    }

    public final h0 e(y yVar, String str, String str2, c0 c0Var, h0 h0Var, bd.b bVar) throws IllegalAccessException, r, IllegalArgumentException, InvocationTargetException {
        Logger logger = f16826f;
        if (logger.isDebugEnabled()) {
            b0 b0Var = (b0) c0Var;
            if (!b0Var.A) {
                ad.k kVarL0 = b0Var.l0();
                if (kVarL0.m() && !kVarL0.Q() && !yVar.h() && !((wc.a) this.f16828a.e()).f17838h) {
                    logger.debug("Signatures for file enabled but not required " + this);
                }
            }
        }
        if (bVar != null) {
            h0Var.f16847h = true;
        }
        try {
            if (logger.isTraceEnabled()) {
                logger.trace("doConnect: " + str);
            }
            h0Var.P(null, null);
            h0Var.r(true);
            return h0Var;
        } catch (p e7) {
            logger.debug("Authentication failed", (Throwable) e7);
            z zVar = h0Var.f16843d;
            zVar.r();
            try {
                if (!zVar.f16976h.d() && !zVar.f16976h.f()) {
                    vc.b bVar2 = this.f16828a;
                    yVar.f16959a.toString();
                    bVar2.getClass();
                    throw e7;
                }
                try {
                    z zVarM0 = ((b0) c0Var).m0(this.f16828a.d(), zVar.f16983q, zVar.f16982p);
                    zVarM0.U(a0.class);
                    try {
                        h0 h0VarK = zVarM0.K(str2);
                        h0VarK.T(h0.class);
                        try {
                            h0VarK.P(null, null);
                            logger.debug("Anonymous retry succeeded");
                            h0VarK.r(true);
                            h0VarK.M(false);
                            zVarM0.O();
                            zVar.O();
                            return h0VarK;
                        } catch (Throwable th2) {
                            try {
                                h0VarK.M(false);
                            } catch (Throwable th3) {
                                try {
                                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                                } catch (Exception unused) {
                                }
                            }
                            throw th2;
                        }
                    } catch (Throwable th4) {
                        try {
                            zVarM0.O();
                        } catch (Throwable th5) {
                            try {
                                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th4, th5);
                            } catch (Exception unused2) {
                            }
                        }
                        throw th4;
                    }
                } catch (Exception e10) {
                    logger.debug("Retry also failed", (Throwable) e10);
                    throw e7;
                }
            } catch (Throwable th6) {
                try {
                    zVar.O();
                } catch (Throwable th7) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th6, th7);
                    } catch (Exception unused3) {
                    }
                }
                throw th6;
            }
        }
    }

    public final g0 f(y yVar) {
        try {
            return b(yVar);
        } catch (UnknownHostException e7) {
            throw new r("Failed to connect to server", e7);
        } catch (r e10) {
            throw e10;
        } catch (IOException e11) {
            throw new r("Failed to connect to server", e11);
        }
    }

    public final synchronized void g() {
        synchronized (this) {
            z zVarI = i();
            if (zVarI == null) {
                if (zVarI != null) {
                    zVarI.O();
                }
                return;
            }
            try {
                b0 b0Var = zVarI.f16972d;
                b0Var.b0();
                try {
                    synchronized (b0Var) {
                        h0 h0VarK = k();
                        if (h0VarK == null) {
                            throw null;
                        }
                        try {
                            h0VarK.R(true, true);
                        } finally {
                            this.f16829b = null;
                            this.f16830c = false;
                        }
                    }
                    b0Var.Y();
                    zVarI.O();
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
                try {
                    zVarI.O();
                } catch (Throwable th5) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th4, th5);
                    } catch (Exception unused2) {
                    }
                }
                throw th4;
            }
        }
    }

    public final y h(y yVar, ad.f fVar) throws r, InterruptedException {
        if (fVar instanceof fd.d) {
            return yVar;
        }
        for (int i10 = 0; i10 < ((wc.a) this.f16828a.e()).f17848m0 + 1; i10++) {
            try {
                return m(yVar, fVar);
            } catch (r e7) {
                if (e7.f16897a != -1073741275 && !(e7.getCause() instanceof he.f)) {
                    throw e7;
                }
                Logger logger = f16826f;
                logger.debug("resolveDfs", (Throwable) e7);
                if (logger.isDebugEnabled()) {
                    logger.debug("Retrying (" + i10 + ") resolveDfs: " + fVar);
                }
                logger.debug("Disconnecting tree on DFS retry");
                g();
                try {
                    Thread.sleep(f16827g.nextInt(5000) + 500);
                } catch (InterruptedException e10) {
                    logger.debug("resolveDfs", (Throwable) e10);
                }
                f(yVar).close();
            }
        }
        return yVar;
    }

    public final z i() {
        h0 h0VarK = k();
        if (h0VarK == null) {
            return null;
        }
        z zVar = h0VarK.f16843d;
        zVar.r();
        return zVar;
    }

    public final synchronized h0 j() {
        h0 h0Var = this.f16829b;
        if (h0Var == null) {
            return h0Var;
        }
        h0Var.r(false);
        return h0Var;
    }

    public final synchronized h0 k() {
        h0 h0Var = this.f16829b;
        if (h0Var != null) {
            return h0Var;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized boolean l() {
        boolean z;
        boolean z4;
        h0 h0VarK = k();
        z = false;
        if (h0VarK != null) {
            if (h0VarK.f16844e != -1) {
                z zVar = h0VarK.f16843d;
                if (zVar.f16972d.T() || zVar.f16969a.get() != 2) {
                    z4 = false;
                    if (z4) {
                        z = true;
                    }
                } else {
                    if (h0VarK.f16840a.get() == 2) {
                        z4 = true;
                    }
                    if (z4) {
                    }
                }
            }
        }
        return z;
    }

    /* JADX WARN: Finally extract failed */
    public final y m(y yVar, ad.f fVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        String strW;
        String str;
        e0 e0Var = this;
        g0 g0VarF = f(yVar);
        try {
            z zVarI = g0VarF.f16837b.i();
            try {
                b0 b0Var = zVarI.f16972d;
                b0Var.b0();
                try {
                    h0 h0VarJ = j();
                    try {
                        b0Var.j0();
                        String path = fVar != null ? fVar.getPath() : yVar.f();
                        if (fVar != null) {
                            strW = fVar.W();
                        } else {
                            strW = "\\" + yVar.c() + SmbPath.SEPARATOR + yVar.d() + yVar.f();
                        }
                        boolean z = h0VarJ.f16847h;
                        Logger logger = f16826f;
                        if (z || !h0VarJ.K()) {
                            if (!h0VarJ.f16847h) {
                                logger.trace("Not in DFS");
                                h0VarJ.M(false);
                                b0Var.Y();
                                zVarI.O();
                                g0VarF.close();
                                return yVar;
                            }
                            bd.b bVar = h0VarJ.f16853p;
                            if (bVar != null) {
                                if (logger.isDebugEnabled()) {
                                    logger.debug(String.format("Need to adjust request path %s (full: %s) -> %s", path, strW, bVar));
                                }
                                String strG = yVar.g(bVar, path);
                                if (fVar != null) {
                                    fVar.k(strG);
                                }
                                h0VarJ.M(false);
                                b0Var.Y();
                                zVarI.O();
                                g0VarF.close();
                                return yVar;
                            }
                            logger.debug("No tree referral but in DFS");
                        }
                        if (fVar != null) {
                            str = "Not in DFS";
                            fVar.q(zVarI.f16982p, zVarI.f16983q, strW);
                        } else {
                            str = "Not in DFS";
                        }
                        bd.b bVarH = ((d) e0Var.f16828a.k()).h(e0Var.f16828a, yVar.c(), yVar.d(), yVar.f(), 5);
                        if (bVarH == null) {
                            if (!h0VarJ.f16847h || (fVar instanceof fd.d)) {
                                logger.trace(str);
                                h0VarJ.M(false);
                                b0Var.Y();
                                zVarI.O();
                                g0VarF.close();
                                return yVar;
                            }
                            if (logger.isDebugEnabled()) {
                                logger.debug("No referral available for  " + strW);
                            }
                            throw new vc.c("No referral but in domain DFS " + strW);
                        }
                        if (logger.isDebugEnabled()) {
                            logger.debug("Resolved " + strW + " -> " + bVarH);
                        }
                        String strG2 = yVar.g(bVarH, path);
                        if (fVar != null) {
                            fVar.k(strG2);
                        }
                        if (h0VarJ.f16841b.equals(((bd.a) bVarH).f2769d)) {
                            h0VarJ.M(false);
                            b0Var.Y();
                            zVarI.O();
                            g0VarF.close();
                            return yVar;
                        }
                        bd.b bVar2 = bVarH;
                        while (true) {
                            if (logger.isDebugEnabled()) {
                                logger.debug("Need to switch tree for " + bVar2);
                            }
                            try {
                                g0 g0VarD = e0Var.d(yVar, zVarI.f16983q, bVar2);
                                try {
                                    logger.debug("Switched tree");
                                    g0VarD.close();
                                    h0VarJ.M(false);
                                    b0Var.Y();
                                    zVarI.O();
                                    g0VarF.close();
                                    return yVar;
                                } finally {
                                }
                            } catch (IOException e7) {
                                logger.debug("Failed to connect tree", (Throwable) e7);
                                bVar2 = ((bd.a) bVar2).f2774i;
                                if (bVar2 == bVarH) {
                                    throw new vc.c("All referral tree connections failed", e7);
                                }
                                e0Var = this;
                            }
                        }
                    } catch (Throwable th2) {
                        if (h0VarJ == null) {
                            throw th2;
                        }
                        try {
                            h0VarJ.M(false);
                            throw th2;
                        } catch (Throwable th3) {
                            try {
                                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                                throw th2;
                            } catch (Exception unused) {
                                throw th2;
                            }
                        }
                    }
                } finally {
                }
            } finally {
            }
        } catch (Throwable th4) {
            try {
                g0VarF.close();
            } catch (Throwable th5) {
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th4, th5);
                } catch (Exception unused2) {
                }
            }
            throw th4;
        }
    }

    public final ad.d n(y yVar, ad.c cVar, ad.d dVar, EnumSet enumSet) throws IllegalAccessException, InterruptedException, vc.c, IllegalArgumentException, InvocationTargetException {
        for (int i10 = 10; i10 > 0; i10--) {
            if (cVar instanceof ad.f) {
                h(yVar, (ad.f) cVar);
            }
            try {
                h0 h0VarJ = j();
                try {
                    if (h0VarJ == null) {
                        throw new vc.c("Failed to get tree connection");
                    }
                    ad.d dVarN = h0VarJ.N(cVar, dVar, enumSet);
                    h0VarJ.M(false);
                    return dVarN;
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
            } catch (e e7) {
                e7.f16825d.e();
                cVar.reset();
                f16826f.trace("send0", (Throwable) e7);
            }
        }
        throw new vc.c("Loop in DFS referrals");
    }

    public final synchronized void o(h0 h0Var) {
        h0 h0VarJ = j();
        if (h0VarJ == h0Var) {
            if (h0VarJ != null) {
                h0VarJ.M(false);
            }
            return;
        }
        try {
            boolean z = this.f16830c;
            Logger logger = f16826f;
            logger.debug("Switching tree");
            logger.debug("Acquired tree on switch " + h0Var);
            h0Var.r(true);
            this.f16830c = true;
            this.f16829b = h0Var;
            if (h0VarJ != null && z) {
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
}
