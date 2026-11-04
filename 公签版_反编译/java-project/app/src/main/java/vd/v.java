package vd;

import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.InvocationTargetException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public class v extends OutputStream {

    /* renamed from: q, reason: collision with root package name */
    public static final Logger f16932q = LoggerFactory.getLogger((Class<?>) v.class);

    /* renamed from: a, reason: collision with root package name */
    public final s f16933a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f16934b;

    /* renamed from: e, reason: collision with root package name */
    public int f16937e;

    /* renamed from: f, reason: collision with root package name */
    public int f16938f;

    /* renamed from: g, reason: collision with root package name */
    public long f16939g;

    /* renamed from: i, reason: collision with root package name */
    public fd.y f16941i;

    /* renamed from: j, reason: collision with root package name */
    public fd.z f16942j;

    /* renamed from: k, reason: collision with root package name */
    public fd.x f16943k;
    public fd.a0 l;

    /* renamed from: m, reason: collision with root package name */
    public t f16944m;

    /* renamed from: p, reason: collision with root package name */
    public final boolean f16946p;

    /* renamed from: h, reason: collision with root package name */
    public byte[] f16940h = new byte[1];

    /* renamed from: c, reason: collision with root package name */
    public int f16935c = 82;

    /* renamed from: n, reason: collision with root package name */
    public final int f16945n = 7;

    /* renamed from: d, reason: collision with root package name */
    public final int f16936d = 2;

    public v(s sVar) throws IllegalAccessException, r, IllegalArgumentException, InvocationTargetException {
        this.f16933a = sVar;
        try {
            g0 g0VarA = sVar.A();
            try {
                boolean zO = g0VarA.O();
                this.f16946p = zO;
                t tVarR = r();
                try {
                    A(g0VarA);
                    if (zO) {
                        kd.c cVar = new kd.c(g0VarA.J(), tVarR.K());
                        dd.c cVar2 = new dd.c(0);
                        cVar.z = (byte) 1;
                        cVar.A = (byte) 20;
                        cVar.B = cVar2;
                        g0VarA.Q(cVar, null, l.NO_RETRY);
                    }
                    tVarR.M();
                    g0VarA.close();
                } catch (Throwable th2) {
                    try {
                        tVarR.M();
                    } catch (Throwable th3) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                        } catch (Exception unused) {
                        }
                    }
                    throw th2;
                }
            } catch (Throwable th4) {
                if (g0VarA != null) {
                    try {
                        g0VarA.close();
                    } catch (Throwable th5) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th4, th5);
                        } catch (Exception unused2) {
                        }
                    }
                }
                throw th4;
            }
        } catch (vc.c e7) {
            throw r.c(e7);
        }
    }

    public final void A(g0 g0Var) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        int iL = g0Var.L();
        if (this.f16946p) {
            this.f16937e = iL;
            this.f16938f = iL;
            return;
        }
        this.f16935c &= -81;
        this.f16937e = iL - 70;
        boolean zN = g0Var.N(16);
        this.f16934b = zN;
        Logger logger = f16932q;
        if (!zN) {
            logger.debug("No support for NT SMBs");
        }
        if (!g0Var.N(32768) || g0Var.A()) {
            logger.debug("No support or SMB signing is enabled, not enabling large writes");
            this.f16938f = this.f16937e;
        } else {
            this.f16938f = Math.min(((wc.a) g0Var.J()).H - 70, 65465);
        }
        if (logger.isDebugEnabled()) {
            logger.debug("Negotiated file write size is " + this.f16938f);
        }
        if (this.f16934b) {
            this.f16941i = new fd.y(g0Var.J());
            this.f16942j = new fd.z(g0Var.J());
        } else {
            this.f16943k = new fd.x(g0Var.J());
            this.l = new fd.a0(g0Var.J());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x01bb A[LOOP:0: B:15:0x0057->B:52:0x01bb, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01b1 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void J(int i10, int i11, int i12, byte[] bArr) throws IllegalAccessException, NoSuchMethodException, SecurityException, IOException, IllegalArgumentException, InvocationTargetException {
        int i13;
        String str;
        int i14;
        char c7;
        long j10;
        int i15 = i11;
        int i16 = 1;
        Logger logger = f16932q;
        if (i15 <= 0) {
            return;
        }
        if (this.f16940h == null) {
            throw new IOException("Bad file descriptor");
        }
        t tVarR = r();
        try {
            g0 g0Var = tVarR.f16913f;
            g0Var.r();
            try {
                if (logger.isDebugEnabled()) {
                    StringBuilder sb2 = new StringBuilder("write: fid=");
                    sb2.append(tVarR);
                    sb2.append(",off=");
                    i13 = i10;
                    sb2.append(i13);
                    sb2.append(",len=");
                    sb2.append(i15);
                    sb2.append(",fp=");
                    sb2.append(this.f16939g);
                    logger.debug(sb2.toString());
                } else {
                    i13 = i10;
                }
                while (true) {
                    int i17 = this.f16933a.J() == i16 ? this.f16938f : this.f16937e;
                    if (i15 <= i17) {
                        i17 = i15;
                    }
                    boolean z = this.f16946p;
                    l lVar = l.NO_RETRY;
                    if (z) {
                        ld.a aVar = new ld.a(g0Var.J(), tVarR.K());
                        aVar.D = this.f16939g;
                        aVar.z = bArr;
                        aVar.A = i13;
                        aVar.B = i17;
                        j10 = ((ld.c) g0Var.Q(aVar, null, lVar)).D;
                        this.f16939g += j10;
                    } else if (this.f16934b) {
                        fd.y yVar = this.f16941i;
                        int iJ = tVarR.J();
                        long j11 = this.f16939g;
                        yVar.L = iJ;
                        yVar.S = j11;
                        yVar.M = i15 - i17;
                        yVar.R = bArr;
                        yVar.P = i13;
                        yVar.N = i17;
                        yVar.f4944v = null;
                        if ((i12 & 1) != 0) {
                            fd.y yVar2 = this.f16941i;
                            int iJ2 = tVarR.J();
                            long j12 = this.f16939g;
                            yVar2.L = iJ2;
                            yVar2.S = j12;
                            yVar2.M = i15;
                            yVar2.R = bArr;
                            yVar2.P = i13;
                            yVar2.N = i17;
                            yVar2.f4944v = null;
                            this.f16941i.V = 8;
                            c7 = 0;
                        } else {
                            c7 = 0;
                            this.f16941i.V = 0;
                        }
                        fd.y yVar3 = this.f16941i;
                        fd.z zVar = this.f16942j;
                        l[] lVarArr = new l[1];
                        lVarArr[c7] = lVar;
                        g0Var.Q(yVar3, zVar, lVarArr);
                        j10 = this.f16942j.L;
                        this.f16939g += j10;
                    } else {
                        if (logger.isTraceEnabled()) {
                            str = "Wrote at %d remain %d off %d len %d";
                            logger.trace(String.format(str, Long.valueOf(this.f16939g), Integer.valueOf(i15 - i17), Integer.valueOf(i13), Integer.valueOf(i17)));
                        } else {
                            str = "Wrote at %d remain %d off %d len %d";
                        }
                        fd.x xVar = this.f16943k;
                        int iJ3 = tVarR.J();
                        long j13 = this.f16939g;
                        xVar.G = iJ3;
                        xVar.I = (int) (j13 & 4294967295L);
                        xVar.K = i15 - i17;
                        xVar.M = bArr;
                        xVar.L = i13;
                        xVar.H = i17;
                        xVar.f4944v = null;
                        g0Var.Q(this.f16943k, this.l, new l[0]);
                        long j14 = this.l.G;
                        this.f16939g += j14;
                        i15 = (int) (i15 - j14);
                        int i18 = (int) (i13 + j14);
                        if (logger.isTraceEnabled()) {
                            logger.trace(String.format(str, Long.valueOf(this.f16939g), Integer.valueOf(i15 - i17), Integer.valueOf(i18), Integer.valueOf(i17)));
                        }
                        i14 = i18;
                        if (i15 > 0) {
                            g0Var.close();
                            tVarR.M();
                            return;
                        } else {
                            i13 = i14;
                            i16 = 1;
                        }
                    }
                    i15 = (int) (i15 - j10);
                    i14 = (int) (i13 + j10);
                    if (i15 > 0) {
                    }
                }
            } finally {
            }
        } finally {
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        s sVar = this.f16933a;
        try {
            if (this.f16944m.L()) {
                this.f16944m.M();
            }
        } finally {
            sVar.f16900b = 0L;
            sVar.f16902d = 0L;
            this.f16940h = null;
        }
    }

    public synchronized t r() {
        t tVar = this.f16944m;
        if (tVar != null && tVar.L()) {
            f16932q.trace("File already open");
            t tVar2 = this.f16944m;
            tVar2.r();
            return tVar2;
        }
        s sVar = this.f16933a;
        t tVarM = sVar.M(sVar.f16905g.f(), this.f16935c, this.f16936d, this.f16945n, 0);
        tVarM.r();
        this.f16944m = tVarM;
        return tVarM;
    }

    @Override // java.io.OutputStream
    public final void write(int i10) throws IllegalAccessException, NoSuchMethodException, SecurityException, IOException, IllegalArgumentException, InvocationTargetException {
        byte[] bArr = this.f16940h;
        bArr[0] = (byte) i10;
        J(0, 1, 0, bArr);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IllegalAccessException, NoSuchMethodException, SecurityException, IOException, IllegalArgumentException, InvocationTargetException {
        J(0, bArr.length, 0, bArr);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i10, int i11) throws IllegalAccessException, NoSuchMethodException, SecurityException, IOException, IllegalArgumentException, InvocationTargetException {
        J(i10, i11, 0, bArr);
    }
}
