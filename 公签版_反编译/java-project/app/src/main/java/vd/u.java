package vd;

import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.lang.reflect.InvocationTargetException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public class u extends InputStream {

    /* renamed from: m, reason: collision with root package name */
    public static final Logger f16920m = LoggerFactory.getLogger((Class<?>) u.class);

    /* renamed from: a, reason: collision with root package name */
    public t f16921a;

    /* renamed from: b, reason: collision with root package name */
    public long f16922b;

    /* renamed from: c, reason: collision with root package name */
    public int f16923c;

    /* renamed from: d, reason: collision with root package name */
    public int f16924d;

    /* renamed from: e, reason: collision with root package name */
    public final int f16925e;

    /* renamed from: i, reason: collision with root package name */
    public final s f16929i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f16930j;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f16931k;
    public final boolean l;

    /* renamed from: h, reason: collision with root package name */
    public byte[] f16928h = new byte[1];

    /* renamed from: f, reason: collision with root package name */
    public final int f16926f = 1;

    /* renamed from: g, reason: collision with root package name */
    public final int f16927g = 7;

    public u(s sVar, boolean z) throws IllegalAccessException, r, IllegalArgumentException, InvocationTargetException {
        this.f16929i = sVar;
        this.f16931k = z;
        this.f16925e = 0;
        try {
            g0 g0VarA = sVar.A();
            try {
                this.l = g0VarA.O();
                if (sVar.J() != 16) {
                    t tVarR = r();
                    if (tVarR != null) {
                        tVarR.M();
                    }
                    this.f16925e = 0;
                }
                A(g0VarA);
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
        } catch (vc.c e7) {
            throw r.c(e7);
        }
    }

    public static IOException K(r rVar) {
        Throwable cause = rVar.getCause();
        vc.c cVar = rVar;
        if (cause instanceof he.f) {
            vc.c cVar2 = (he.f) cause;
            cause = cVar2.getCause();
            cVar = cVar2;
        }
        if (!(cause instanceof InterruptedException)) {
            return cVar;
        }
        InterruptedIOException interruptedIOException = new InterruptedIOException(cause.getMessage());
        interruptedIOException.initCause(cause);
        return interruptedIOException;
    }

    public final void A(g0 g0Var) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (this.l) {
            this.f16923c = g0Var.K();
            this.f16924d = g0Var.K();
            return;
        }
        int iK = g0Var.K() - 70;
        z zVarI = g0Var.f16837b.i();
        try {
            b0 b0Var = zVarI.f16972d;
            b0Var.b0();
            try {
                int iN = b0Var.l0().N();
                b0Var.Y();
                zVarI.O();
                this.f16923c = Math.min(iK, iN - 70);
                boolean zN = g0Var.N(16384);
                Logger logger = f16920m;
                if (zN) {
                    this.f16930j = true;
                    this.f16924d = Math.min(((wc.a) g0Var.J()).I - 70, g0Var.A() ? 65465 : 16777145);
                    logger.debug("Enabling LARGE_READX with " + this.f16924d);
                } else {
                    logger.debug("LARGE_READX disabled");
                    this.f16924d = this.f16923c;
                }
                if (logger.isDebugEnabled()) {
                    logger.debug("Negotiated file read size is " + this.f16924d);
                }
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

    /* JADX WARN: Code restructure failed: missing block: B:95:0x01a6, code lost:
    
        r0 = (int) (r30.f16922b - r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01a8, code lost:
    
        r14.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01ab, code lost:
    
        r13.M();
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01ae, code lost:
    
        return r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:156:0x01f4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:167:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int J(int i10, int i11, byte[] bArr) throws Throwable {
        Class<Throwable> cls;
        Throwable th2;
        String str;
        Class<Throwable> cls2;
        Throwable th3;
        int i12;
        Logger logger;
        int i13;
        String str2 = "addSuppressed";
        Class<Throwable> cls3 = Throwable.class;
        Logger logger2 = f16920m;
        if (i11 <= 0) {
            return 0;
        }
        long j10 = this.f16922b;
        if (this.f16928h == null) {
            throw new IOException("Bad file descriptor");
        }
        t tVarR = r();
        try {
            g0 g0Var = tVarR.f16913f;
            g0Var.r();
            try {
                if (logger2.isTraceEnabled()) {
                    try {
                        logger2.trace("read: fid=" + tVarR + ",off=" + i10 + ",len=" + i11);
                    } catch (Throwable th4) {
                        th3 = th4;
                        str = "addSuppressed";
                        cls2 = cls3;
                        try {
                            g0Var.close();
                            str2 = str;
                            cls = cls2;
                            throw th3;
                        } catch (Throwable th5) {
                            try {
                                str2 = str;
                                cls = cls2;
                                try {
                                    try {
                                        cls.getDeclaredMethod(str2, cls2).invoke(th3, th5);
                                        throw th3;
                                    } catch (Exception unused) {
                                        throw th3;
                                    }
                                } catch (Throwable th6) {
                                    th = th6;
                                    th2 = th;
                                    if (tVarR == null) {
                                        throw th2;
                                    }
                                    try {
                                        tVarR.M();
                                        throw th2;
                                    } catch (Throwable th7) {
                                        try {
                                            cls.getDeclaredMethod(str2, cls).invoke(th2, th7);
                                            throw th2;
                                        } catch (Exception unused2) {
                                            throw th2;
                                        }
                                    }
                                }
                            } catch (Exception unused3) {
                                str2 = str;
                                cls = cls2;
                                throw th3;
                            } catch (Throwable th8) {
                                th = th8;
                                str2 = str;
                                cls = cls2;
                                th2 = th;
                                if (tVarR == null) {
                                }
                            }
                        }
                    }
                }
                fd.p pVar = new fd.p(g0Var.J(), bArr, i10);
                int iJ = this.f16929i.J();
                int i14 = iJ == 1 ? this.f16924d : this.f16923c;
                int i15 = i11;
                int i16 = i10;
                while (true) {
                    int i17 = i15 > i14 ? i14 : i15;
                    if (logger2.isTraceEnabled()) {
                        StringBuilder sb2 = new StringBuilder();
                        str = str2;
                        try {
                            sb2.append("read: len=");
                            sb2.append(i15);
                            sb2.append(",r=");
                            sb2.append(i17);
                            sb2.append(",fp=");
                            cls2 = cls3;
                            try {
                                sb2.append(this.f16922b);
                                sb2.append(",b.length=");
                                sb2.append(bArr.length);
                                logger2.trace(sb2.toString());
                            } catch (Throwable th9) {
                                th = th9;
                                th3 = th;
                                g0Var.close();
                                str2 = str;
                                cls = cls2;
                                throw th3;
                            }
                        } catch (Throwable th10) {
                            th = th10;
                            cls2 = cls3;
                            th3 = th;
                            g0Var.close();
                            str2 = str;
                            cls = cls2;
                            throw th3;
                        }
                    } else {
                        str = str2;
                        cls2 = cls3;
                    }
                    try {
                        try {
                            boolean zO = g0Var.O();
                            l lVar = l.NO_RETRY;
                            if (zO) {
                                i12 = i14;
                                ld.a aVar = new ld.a(g0Var.J(), tVarR.K(), bArr, i16);
                                aVar.D = iJ == 16 ? 0L : this.f16922b;
                                aVar.B = i17;
                                aVar.E = i15 - i17;
                                try {
                                    i13 = ((ld.b) g0Var.Q(aVar, null, lVar)).D;
                                } catch (r e7) {
                                    if (e7.f16897a != -1073741807) {
                                        throw e7;
                                    }
                                    logger2.debug("Reached end of file", (Throwable) e7);
                                    i13 = -1;
                                }
                                if (i13 <= 0) {
                                    long j11 = this.f16922b - j10;
                                    if (j11 <= 0) {
                                        j11 = -1;
                                    }
                                    int i18 = (int) j11;
                                    g0Var.close();
                                    tVarR.M();
                                    return i18;
                                }
                                logger = logger2;
                                this.f16922b += i13;
                                i16 += i13;
                                i15 -= i13;
                            } else {
                                i12 = i14;
                                logger = logger2;
                                fd.o oVar = new fd.o(g0Var.J(), tVarR.J(), this.f16922b, i17);
                                if (iJ == 16) {
                                    oVar.P = 1024;
                                    oVar.O = 1024;
                                    oVar.R = 1024;
                                } else if (this.f16930j) {
                                    oVar.O = i17 & 65535;
                                    oVar.N = 65535 & (i17 >> 16);
                                }
                                g0Var.Q(oVar, pVar, lVar);
                                i13 = pVar.O;
                                if (i13 <= 0) {
                                    long j12 = this.f16922b - j10;
                                    if (j12 <= 0) {
                                        j12 = -1;
                                    }
                                    int i19 = (int) j12;
                                    g0Var.close();
                                    tVarR.M();
                                    return i19;
                                }
                                this.f16922b += i13;
                                i15 -= i13;
                                pVar.M += i13;
                            }
                            i14 = i12;
                            if (i15 <= i14 || i13 != i17) {
                                break;
                            }
                            str2 = str;
                            cls3 = cls2;
                            logger2 = logger;
                        } catch (r e10) {
                            if (iJ != 16 || e10.f16897a != -1073741493) {
                                throw K(e10);
                            }
                            g0Var.close();
                            tVarR.M();
                            return -1;
                        }
                    } catch (Throwable th11) {
                        th2 = th11;
                        str2 = str;
                        cls = cls2;
                        if (tVarR == null) {
                        }
                    }
                }
            } catch (Throwable th12) {
                th = th12;
                str = str2;
            }
        } catch (Throwable th13) {
            th = th13;
            cls = cls3;
        }
    }

    @Override // java.io.InputStream
    public int available() {
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        s sVar = this.f16929i;
        boolean z = this.f16931k;
        try {
            try {
                t tVar = this.f16921a;
                if (tVar != null) {
                    tVar.M();
                }
            } catch (r e7) {
                throw K(e7);
            }
        } finally {
            this.f16928h = null;
            this.f16921a = null;
            if (z) {
                sVar.close();
            }
        }
    }

    public synchronized t r() {
        t tVar = this.f16921a;
        if (tVar != null && tVar.L()) {
            t tVar2 = this.f16921a;
            tVar2.r();
            return tVar2;
        }
        s sVar = this.f16929i;
        if (sVar instanceof w) {
            ((w) sVar).getClass();
            this.f16921a = sVar.M(sVar.f16905g.f(), 32, 0, this.f16927g, 0);
        } else {
            t tVarM = sVar.M(sVar.f16905g.f(), this.f16925e, this.f16926f, this.f16927g, 0);
            tVarM.r();
            this.f16921a = tVarM;
        }
        return this.f16921a;
    }

    @Override // java.io.InputStream
    public final int read() {
        if (J(0, 1, this.f16928h) == -1) {
            return -1;
        }
        return this.f16928h[0] & 255;
    }

    @Override // java.io.InputStream
    public final long skip(long j10) {
        if (j10 <= 0) {
            return 0L;
        }
        this.f16922b += j10;
        return j10;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        return J(0, bArr.length, bArr);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) {
        return J(i10, i11, bArr);
    }
}
