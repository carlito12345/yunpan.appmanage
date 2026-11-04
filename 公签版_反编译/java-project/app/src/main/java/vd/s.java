package vd;

import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.InvocationTargetException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.UnknownHostException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public class s extends URLConnection implements vc.n {

    /* renamed from: i, reason: collision with root package name */
    public static final Logger f16898i = LoggerFactory.getLogger((Class<?>) s.class);

    /* renamed from: a, reason: collision with root package name */
    public long f16899a;

    /* renamed from: b, reason: collision with root package name */
    public long f16900b;

    /* renamed from: c, reason: collision with root package name */
    public long f16901c;

    /* renamed from: d, reason: collision with root package name */
    public long f16902d;

    /* renamed from: e, reason: collision with root package name */
    public final vc.b f16903e;

    /* renamed from: f, reason: collision with root package name */
    public final e0 f16904f;

    /* renamed from: g, reason: collision with root package name */
    public final y f16905g;

    /* renamed from: h, reason: collision with root package name */
    public g0 f16906h;

    public s(String str, xc.a aVar) {
        this(new URL((URL) null, str, aVar.f18433d), aVar);
    }

    public final synchronized g0 A() {
        g0 g0Var = this.f16906h;
        if (g0Var != null && g0Var.f16837b.l()) {
            g0 g0Var2 = this.f16906h;
            g0Var2.r();
            return g0Var2;
        }
        if (this.f16906h != null && ((wc.a) this.f16903e.e()).f17852o0) {
            this.f16906h.P();
        }
        g0 g0VarF = this.f16904f.f(this.f16905g);
        this.f16906h = g0VarF;
        g0VarF.f16837b.h(g0VarF.f16836a, null);
        if (!((wc.a) this.f16903e.e()).f17852o0) {
            return this.f16906h;
        }
        g0 g0Var3 = this.f16906h;
        g0Var3.r();
        return g0Var3;
    }

    public int J() throws IllegalAccessException, r, IllegalArgumentException, InvocationTargetException {
        try {
            int iE = this.f16905g.e();
            if (iE == 8) {
                g0 g0VarA = A();
                try {
                    this.f16905g.f16966h = g0VarA.M();
                    g0VarA.close();
                } catch (Throwable th2) {
                    if (g0VarA != null) {
                        try {
                            g0VarA.close();
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
            return iE;
        } catch (vc.c e7) {
            throw r.c(e7);
        }
    }

    public final long K() throws IllegalAccessException, r, IllegalArgumentException, InvocationTargetException {
        if (this.f16905g.f().length() <= 1) {
            return 0L;
        }
        long j10 = this.f16900b;
        long jCurrentTimeMillis = System.currentTimeMillis();
        Logger logger = f16898i;
        if (j10 > jCurrentTimeMillis) {
            logger.trace("Using cached attributes");
        } else {
            this.f16899a = 0L;
            try {
                if (((URLConnection) this).url.getHost().length() != 0) {
                    if (this.f16905g.d() != null) {
                        g0 g0VarA = A();
                        try {
                            if (this.f16905g.e() == 8) {
                                g0 g0VarA2 = A();
                                if (g0VarA2 != null) {
                                    g0VarA2.close();
                                }
                            } else {
                                O(g0VarA, this.f16905g.f(), 4);
                            }
                            if (g0VarA != null) {
                                g0VarA.close();
                            }
                        } finally {
                        }
                    } else if (this.f16905g.e() == 2) {
                        sd.k kVar = ((sd.f) this.f16903e.i()).e(((URLConnection) this).url.getHost(), true)[0];
                    } else {
                        ((sd.f) this.f16903e.i()).e(((URLConnection) this).url.getHost(), false)[0].c();
                    }
                }
            } catch (UnknownHostException e7) {
                logger.debug("Unknown host", (Throwable) e7);
            } catch (r e10) {
                logger.trace("exists:", (Throwable) e10);
                switch (e10.f16897a) {
                    case -1073741809:
                    case -1073741773:
                    case -1073741772:
                    case -1073741766:
                        break;
                    default:
                        throw e10;
                }
                return this.f16899a;
            } catch (vc.c e11) {
                throw r.c(e11);
            }
            this.f16900b = System.currentTimeMillis() + ((wc.a) this.f16903e.e()).f17846l0;
        }
        return this.f16899a;
    }

    public final long L() throws IllegalAccessException, r, IllegalArgumentException, InvocationTargetException {
        ad.a aVar;
        if (this.f16902d > System.currentTimeMillis()) {
            return this.f16901c;
        }
        try {
            g0 g0VarA = A();
            try {
                int iJ = J();
                if (iJ == 8) {
                    try {
                        aVar = (ad.a) N(g0VarA, (byte) 3);
                    } catch (r e7) {
                        f16898i.debug("getDiskFreeSpace", (Throwable) e7);
                        int i10 = e7.f16897a;
                        if ((i10 != -1073741823 && i10 != -1073741821) || g0VarA.O()) {
                            throw e7;
                        }
                        aVar = (ad.a) N(g0VarA, (byte) -1);
                    }
                    this.f16901c = aVar.w();
                } else {
                    y yVar = this.f16905g;
                    if ((yVar.d() != null || yVar.f().length() > 1) && iJ != 16) {
                        O(g0VarA, this.f16905g.f(), 5);
                    } else {
                        this.f16901c = 0L;
                    }
                }
                this.f16902d = System.currentTimeMillis() + ((wc.a) this.f16903e.e()).f17846l0;
                long j10 = this.f16901c;
                if (g0VarA != null) {
                    g0VarA.close();
                }
                return j10;
            } catch (Throwable th2) {
                if (g0VarA != null) {
                    try {
                        g0VarA.close();
                    } catch (Throwable th3) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                        } catch (Exception unused) {
                        }
                    }
                }
                throw th2;
            }
        } catch (vc.c e10) {
            throw r.c(e10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final t M(String str, int i10, int i11, int i12, int i13) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        vc.f fVar;
        long j10;
        boolean z;
        boolean z4;
        fd.l lVar;
        long j11;
        t tVar;
        boolean z10;
        Logger logger = f16898i;
        g0 g0VarA = A();
        try {
            if (logger.isDebugEnabled()) {
                logger.debug(String.format("openUnshared: %s flags: %x access: %x attrs: %x options: %x", str, Integer.valueOf(i10), Integer.valueOf(i11), 128, Integer.valueOf(i13)));
            }
            vc.f fVarJ = g0VarA.J();
            if (g0VarA.O()) {
                jd.d dVar = new jd.d(str, fVarJ);
                dVar.f9855y = i11;
                int i14 = i10 & 64;
                if (i14 == 64 && (i10 & 16) == 16) {
                    dVar.B = 5;
                } else if (i14 == 64) {
                    dVar.B = 4;
                } else if ((i10 & 32) == 32) {
                    dVar.B = 2;
                } else if ((i10 & 16) == 16) {
                    dVar.B = 3;
                } else {
                    dVar.B = 1;
                }
                dVar.A = i12;
                dVar.z = 128;
                jd.e eVar = (jd.e) g0VarA.Q(dVar, null, new l[0]);
                long j12 = eVar.E;
                tVar = new t(fVarJ, eVar.F, g0VarA, str, i10, i11, eVar.E);
                fVar = fVarJ;
                j11 = j12;
                z10 = true;
                z4 = true;
                lVar = eVar;
            } else if (g0VarA.N(16)) {
                fd.h hVar = new fd.h(fVarJ);
                g0VarA.Q(new fd.g(fVarJ, str, i10, i11, i12, i13), hVar, new l[0]);
                long j13 = hVar.Z;
                this.f16905g.f16966h = hVar.P;
                fVar = fVarJ;
                j11 = j13;
                z10 = true;
                z4 = true;
                tVar = new t(fVarJ, hVar.M, g0VarA, str, i10, i11, 128, i13, hVar.Z);
                lVar = hVar;
            } else {
                fVar = fVarJ;
                fd.l lVar2 = new fd.l(fVar);
                g0VarA.Q(new fd.k(fVar, str, i11, i12, i10), lVar2, new l[0]);
                this.f16905g.f16966h = lVar2.P;
                long j14 = lVar2.N;
                fd.q qVar = new fd.q(fVar);
                qVar.H = 2;
                fd.r rVar = new fd.r(fVar);
                qVar.G = lVar2.L;
                try {
                    g0VarA.Q(qVar, rVar, new l[0]);
                    if (logger.isDebugEnabled() && rVar.G != j14) {
                        logger.debug(String.format("Open returned wrong size %d != %d", Long.valueOf(j14), Long.valueOf(rVar.G)));
                    }
                    j10 = rVar.G;
                    z = true;
                } catch (Exception e7) {
                    logger.debug("Seek failed", (Throwable) e7);
                    j10 = j14;
                    z = false;
                }
                z4 = z;
                lVar = lVar2;
                j11 = j10;
                tVar = new t(fVar, lVar2.L, g0VarA, str, i10, i11, 0, 0, j10);
                z10 = false;
            }
            long jCurrentTimeMillis = System.currentTimeMillis() + ((wc.a) fVar).f17846l0;
            if (z4) {
                this.f16901c = j11;
                this.f16902d = jCurrentTimeMillis;
            }
            if (z10) {
                this.f16899a = lVar.getLastWriteTime();
                this.f16900b = jCurrentTimeMillis;
            }
            g0VarA.close();
            return tVar;
        } catch (Throwable th2) {
            if (g0VarA != null) {
                try {
                    g0VarA.close();
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

    public final dd.h N(g0 g0Var, byte b10) throws IllegalAccessException, vc.c, InterruptedException, IllegalArgumentException, InvocationTargetException {
        if (!g0Var.O()) {
            hd.d dVar = new hd.d(g0Var.J(), b10);
            g0Var.Q(new hd.c(g0Var.J(), b10), dVar, new l[0]);
            if (ad.a.class.isAssignableFrom(dVar.M0.getClass())) {
                return dVar.M0;
            }
            throw new vc.c("Incompatible file information class");
        }
        kd.a aVar = new kd.a(g0Var.J());
        aVar.f10232y = (byte) 2;
        aVar.z = b10;
        kd.b bVar = (kd.b) P(g0Var, aVar, new id.c[0]);
        if (ad.a.class.isAssignableFrom(bVar.F.getClass())) {
            return (dd.h) bVar.F;
        }
        throw new vc.c("Incompatible file information class");
    }

    public final void O(g0 g0Var, String str, int i10) throws IllegalAccessException, vc.c, IllegalArgumentException, InvocationTargetException {
        long j10;
        Logger logger = f16898i;
        if (logger.isDebugEnabled()) {
            logger.debug("queryPath: " + str);
        }
        if (g0Var.O()) {
            return;
        }
        if (g0Var.N(16)) {
            hd.f fVar = (hd.f) g0Var.Q(new hd.e(g0Var.J(), str, i10), new hd.f(g0Var.J(), i10), new l[0]);
            if (logger.isDebugEnabled()) {
                logger.debug("Path information " + fVar);
            }
            if (!dd.a.class.isAssignableFrom(fVar.M0.getClass())) {
                throw new vc.c("Incompatible file information class");
            }
            dd.a aVar = (dd.a) fVar.M0;
            if (!(aVar instanceof dd.b)) {
                if (aVar instanceof dd.g) {
                    this.f16901c = ((dd.g) aVar).f4602b;
                    this.f16902d = System.currentTimeMillis() + ((wc.a) g0Var.J()).f17846l0;
                    return;
                }
                return;
            }
            dd.b bVar = (dd.b) aVar;
            int i11 = bVar.f4589e;
            aVar.getClass();
            this.f16899a = bVar.f4587c;
            aVar.getClass();
            this.f16900b = System.currentTimeMillis() + ((wc.a) g0Var.J()).f17846l0;
            return;
        }
        vc.f fVarJ = g0Var.J();
        z zVarI = g0Var.f16837b.i();
        try {
            b0 b0Var = zVarI.f16972d;
            b0Var.b0();
            try {
                if (b0Var.l0() instanceof fd.j) {
                    j10 = ((fd.j) r8).H.f5788n * 1000 * 60;
                    b0Var.Y();
                    zVarI.O();
                } else {
                    b0Var.Y();
                    zVarI.O();
                    j10 = 0;
                }
                fd.n nVar = (fd.n) g0Var.Q(new fd.m(str, g0Var.J()), new fd.n(fVarJ, j10), new l[0]);
                if (logger.isDebugEnabled()) {
                    logger.debug("Legacy path information " + nVar);
                }
                int i12 = nVar.G;
                this.f16899a = nVar.getLastWriteTime();
                this.f16900b = System.currentTimeMillis() + ((wc.a) g0Var.J()).f17846l0;
                this.f16901c = nVar.K;
                this.f16902d = System.currentTimeMillis() + ((wc.a) g0Var.J()).f17846l0;
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

    /* JADX WARN: Multi-variable type inference failed */
    public final id.d P(g0 g0Var, kd.a aVar, id.c... cVarArr) throws Throwable {
        jd.e eVar;
        id.b bVar;
        jd.d dVar = new jd.d(this.f16905g.f(), g0Var.J());
        try {
            dVar.B = 1;
            dVar.z = 128;
            dVar.f9855y = 128;
            dVar.A = 3;
            if (aVar != null) {
                dVar.g0(aVar);
                int length = cVarArr.length;
                int i10 = 0;
                bVar = aVar;
                while (i10 < length) {
                    id.c cVar = cVarArr[i10];
                    bVar.g0(cVar);
                    i10++;
                    bVar = cVar;
                }
            } else {
                bVar = dVar;
            }
            jd.b bVar2 = new jd.b(g0Var.J(), id.e.f8677a, this.f16905g.f());
            bVar2.A = 1;
            bVar.g0(bVar2);
            jd.e eVar2 = (jd.e) g0Var.Q(dVar, null, new l[0]);
            jd.c cVar2 = (jd.c) bVar2.f8674x;
            jd.e eVar3 = (cVar2.F & 1) != 0 ? cVar2 : eVar2;
            eVar3.getClass();
            this.f16899a = eVar3.getLastWriteTime();
            this.f16900b = System.currentTimeMillis() + ((wc.a) g0Var.J()).f17846l0;
            this.f16901c = eVar3.getSize();
            this.f16902d = System.currentTimeMillis() + ((wc.a) g0Var.J()).f17846l0;
            return (id.d) ((ad.d) eVar2.f8673w);
        } catch (RuntimeException e7) {
            e = e7;
            try {
                eVar = (jd.e) dVar.f8674x;
                if (eVar.f8675x && eVar.f8664j == 0) {
                    g0Var.Q(new jd.b(g0Var.J(), eVar.F), null, l.NO_RETRY);
                }
            } catch (Exception e10) {
                f16898i.debug("Failed to close after failure", (Throwable) e10);
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(e, e10);
                } catch (Exception unused) {
                }
            }
            throw e;
        } catch (vc.c e11) {
            e = e11;
            eVar = (jd.e) dVar.f8674x;
            if (eVar.f8675x) {
                g0Var.Q(new jd.b(g0Var.J(), eVar.F), null, l.NO_RETRY);
            }
            throw e;
        }
    }

    @Override // java.lang.AutoCloseable
    public final synchronized void close() {
        g0 g0Var = this.f16906h;
        if (g0Var != null) {
            this.f16906h = null;
            if (((wc.a) this.f16903e.e()).f17852o0) {
                g0Var.close();
            }
        }
    }

    @Override // java.net.URLConnection
    public final void connect() {
        g0 g0VarA = A();
        if (g0VarA != null) {
            g0VarA.close();
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof s)) {
            return false;
        }
        vc.n nVar = (vc.n) obj;
        if (this == nVar) {
            return true;
        }
        return this.f16905g.equals(((s) nVar).f16905g);
    }

    @Override // java.net.URLConnection
    public final int getContentLength() {
        try {
            return (int) (L() & 4294967295L);
        } catch (r e7) {
            f16898i.debug("getContentLength", (Throwable) e7);
            return 0;
        }
    }

    @Override // java.net.URLConnection
    public final long getContentLengthLong() {
        try {
            return L();
        } catch (r e7) {
            f16898i.debug("getContentLength", (Throwable) e7);
            return 0L;
        }
    }

    @Override // java.net.URLConnection
    public final long getDate() {
        try {
            return K();
        } catch (r e7) {
            f16898i.debug("getDate", (Throwable) e7);
            return 0L;
        }
    }

    @Override // java.net.URLConnection
    public final InputStream getInputStream() {
        return new u(this, false);
    }

    @Override // java.net.URLConnection
    public final long getLastModified() {
        try {
            return K();
        } catch (r e7) {
            f16898i.debug("getLastModified", (Throwable) e7);
            return 0L;
        }
    }

    @Override // java.net.URLConnection
    public final OutputStream getOutputStream() {
        return new v(this);
    }

    public final int hashCode() {
        return this.f16905g.hashCode();
    }

    @Override // java.net.URLConnection
    public final String toString() {
        String string = ((URLConnection) this).url.toString();
        return (!ge.b.f6138d || string == null) ? string : string.replaceFirst("^(smb.*:).*(@.*)$", "$1******$2");
    }

    public s(URL url, vc.b bVar) throws MalformedURLException {
        e0 e0Var;
        super(url);
        if (url.getPath() != null && !url.getPath().isEmpty() && url.getPath().charAt(0) != '/') {
            throw new MalformedURLException("Invalid SMB URL: " + url);
        }
        this.f16903e = bVar;
        this.f16905g = new y(url, bVar);
        Logger logger = e0.f16826f;
        if (((wc.a) bVar.e()).f17850n0) {
            e0Var = new f0(bVar);
        } else {
            e0Var = new e0(bVar);
        }
        this.f16904f = e0Var;
    }

    public void r(fd.g gVar, fd.h hVar) {
    }
}
