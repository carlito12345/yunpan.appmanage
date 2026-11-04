package vd;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicLong;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public final class t implements AutoCloseable {

    /* renamed from: n, reason: collision with root package name */
    public static final Logger f16907n = LoggerFactory.getLogger((Class<?>) t.class);

    /* renamed from: a, reason: collision with root package name */
    public final vc.f f16908a;

    /* renamed from: b, reason: collision with root package name */
    public final int f16909b;

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f16910c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f16911d;

    /* renamed from: e, reason: collision with root package name */
    public final long f16912e;

    /* renamed from: f, reason: collision with root package name */
    public g0 f16913f;

    /* renamed from: g, reason: collision with root package name */
    public final AtomicLong f16914g;

    /* renamed from: h, reason: collision with root package name */
    public final int f16915h;

    /* renamed from: i, reason: collision with root package name */
    public final int f16916i;

    /* renamed from: j, reason: collision with root package name */
    public final int f16917j;

    /* renamed from: k, reason: collision with root package name */
    public final int f16918k;
    public final String l;

    /* renamed from: m, reason: collision with root package name */
    public final StackTraceElement[] f16919m;

    public t(vc.f fVar, byte[] bArr, g0 g0Var, String str, int i10, int i11, long j10) {
        this.f16911d = true;
        this.f16914g = new AtomicLong(1L);
        this.f16908a = fVar;
        this.f16910c = bArr;
        this.f16909b = 0;
        this.l = str;
        this.f16915h = i10;
        this.f16916i = i11;
        this.f16917j = 0;
        this.f16918k = 0;
        g0Var.r();
        this.f16913f = g0Var;
        h0 h0VarK = g0Var.f16837b.k();
        this.f16912e = h0VarK == null ? -1L : h0VarK.f16848i;
        if (((wc.a) fVar).f17850n0) {
            this.f16919m = Thread.currentThread().getStackTrace();
        } else {
            this.f16919m = null;
        }
    }

    public final void A() {
        g0 g0Var = this.f16913f;
        if (g0Var != null) {
            try {
                if (L()) {
                    Logger logger = f16907n;
                    if (logger.isDebugEnabled()) {
                        logger.debug("Closing file handle " + this);
                    }
                    boolean zO = g0Var.O();
                    l lVar = l.NO_RETRY;
                    if (zO) {
                        g0Var.Q(new jd.b(this.f16908a, this.f16910c), null, lVar);
                    } else {
                        g0Var.Q(new fd.d(this.f16908a, this.f16909b), new fd.c(this.f16908a), lVar);
                    }
                }
            } catch (Throwable th2) {
                this.f16911d = false;
                g0Var.P();
                this.f16913f = null;
                throw th2;
            }
        }
        this.f16911d = false;
        if (g0Var != null) {
            g0Var.P();
        }
        this.f16913f = null;
    }

    public final int J() throws r {
        if (L()) {
            return this.f16909b;
        }
        throw new r("Descriptor is no longer valid");
    }

    public final byte[] K() throws r {
        if (L()) {
            return this.f16910c;
        }
        throw new r("Descriptor is no longer valid");
    }

    public final boolean L() {
        if (this.f16911d) {
            long j10 = this.f16912e;
            h0 h0VarK = this.f16913f.f16837b.k();
            if (j10 == (h0VarK == null ? -1L : h0VarK.f16848i) && this.f16913f.f16837b.l()) {
                return true;
            }
        }
        return false;
    }

    public final synchronized void M() {
        try {
            long jDecrementAndGet = this.f16914g.decrementAndGet();
            if (jDecrementAndGet == 0) {
                A();
            } else {
                Logger logger = f16907n;
                if (logger.isTraceEnabled()) {
                    logger.trace(String.format("Release %s (%d)", this, Long.valueOf(jDecrementAndGet)));
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        M();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof t)) {
            return false;
        }
        t tVar = (t) obj;
        byte[] bArr = this.f16910c;
        return bArr != null ? Arrays.equals(bArr, tVar.f16910c) && this.f16912e == tVar.f16912e : this.f16909b == tVar.f16909b && this.f16912e == tVar.f16912e;
    }

    public final void finalize() {
        if (this.f16914g.get() == 0 || !this.f16911d) {
            return;
        }
        Logger logger = f16907n;
        logger.warn("File handle was not properly closed: " + this);
        StackTraceElement[] stackTraceElementArr = this.f16919m;
        if (stackTraceElementArr != null) {
            logger.warn(Arrays.toString(stackTraceElementArr));
        }
    }

    public final int hashCode() {
        long jHashCode;
        long j10;
        byte[] bArr = this.f16910c;
        if (bArr != null) {
            jHashCode = Arrays.hashCode(bArr);
            j10 = this.f16912e;
        } else {
            jHashCode = this.f16909b;
            j10 = this.f16912e;
        }
        return (int) ((j10 * 3) + jHashCode);
    }

    public final void r() {
        long jIncrementAndGet = this.f16914g.incrementAndGet();
        Logger logger = f16907n;
        if (logger.isTraceEnabled()) {
            logger.trace(String.format("Acquire %s (%d)", this, Long.valueOf(jIncrementAndGet)));
        }
    }

    public final String toString() {
        String str = this.l;
        byte[] bArr = this.f16910c;
        return String.format("FileHandle %s [fid=%s,tree=%d,flags=%x,access=%x,attrs=%x,options=%x]", str, bArr != null ? ge.a.m(bArr, 0, bArr.length) : Integer.valueOf(this.f16909b), Long.valueOf(this.f16912e), Integer.valueOf(this.f16915h), Integer.valueOf(this.f16916i), Integer.valueOf(this.f16917j), Integer.valueOf(this.f16918k));
    }

    public t(vc.f fVar, int i10, g0 g0Var, String str, int i11, int i12, int i13, int i14, long j10) {
        this.f16911d = true;
        this.f16914g = new AtomicLong(1L);
        this.f16908a = fVar;
        this.f16909b = i10;
        this.f16910c = null;
        this.l = str;
        this.f16915h = i11;
        this.f16916i = i12;
        this.f16917j = i13;
        this.f16918k = i14;
        g0Var.r();
        this.f16913f = g0Var;
        h0 h0VarK = g0Var.f16837b.k();
        this.f16912e = h0VarK == null ? -1L : h0VarK.f16848i;
        if (((wc.a) fVar).f17850n0) {
            this.f16919m = Thread.currentThread().getStackTrace();
        } else {
            this.f16919m = null;
        }
    }
}
