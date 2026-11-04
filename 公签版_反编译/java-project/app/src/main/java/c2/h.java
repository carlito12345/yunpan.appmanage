package c2;

import a9.o;
import android.graphics.Bitmap;
import android.os.Trace;
import androidx.media3.exoplayer.image.ImageOutput;
import f2.c0;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import r1.p;
import ta.q;
import ua.i8;
import y1.f0;
import y1.k;
import y1.y;

/* loaded from: classes.dex */
public final class h extends y1.a {
    public long A;
    public long B;
    public int C;
    public int D;
    public p E;
    public c F;
    public x1.g G;
    public ImageOutput H;
    public y I;
    public Bitmap K;
    public boolean L;
    public g M;
    public g N;
    public int O;
    public boolean P;

    /* renamed from: t, reason: collision with root package name */
    public final b f2865t;

    /* renamed from: v, reason: collision with root package name */
    public final x1.g f2866v;

    /* renamed from: w, reason: collision with root package name */
    public final ArrayDeque f2867w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f2868x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f2869y;
    public f z;

    public h(b bVar) {
        super(4);
        this.f2865t = bVar;
        this.H = ImageOutput.f1849a;
        this.f2866v = new x1.g(0);
        this.z = f.f2859c;
        this.f2867w = new ArrayDeque();
        this.B = -9223372036854775807L;
        this.A = -9223372036854775807L;
        this.C = 0;
        this.D = 1;
    }

    @Override // y1.a
    public final int B(p pVar) {
        this.f2865t.getClass();
        return b.a(pVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:83:0x0166  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean E(long j10) throws k, InterruptedException {
        boolean z;
        Bitmap bitmapCreateBitmap;
        Bitmap bitmap = this.K;
        if (bitmap != null && this.M == null) {
            return false;
        }
        if (this.D == 0 && this.f18559h != 2) {
            return false;
        }
        ArrayDeque arrayDeque = this.f2867w;
        if (bitmap == null) {
            this.F.getClass();
            a aVar = (a) this.F.e();
            if (aVar == null) {
                return false;
            }
            if (aVar.c(4)) {
                if (this.C == 3) {
                    H();
                    this.E.getClass();
                    G();
                } else {
                    aVar.i();
                    if (arrayDeque.isEmpty()) {
                        this.f2869y = true;
                    }
                }
                return false;
            }
            o.o(aVar.f2854e, "Non-EOS buffer came back from the decoder without bitmap.");
            this.K = aVar.f2854e;
            aVar.i();
        }
        if (!this.L || this.K == null || this.M == null) {
            return false;
        }
        this.E.getClass();
        p pVar = this.E;
        int i10 = pVar.N;
        int i11 = pVar.O;
        boolean z4 = ((i10 == 1 && i11 == 1) || i10 == -1 || i11 == -1) ? false : true;
        g gVar = this.M;
        if (((Bitmap) gVar.f2864c) == null) {
            if (z4) {
                this.K.getClass();
                int width = this.K.getWidth();
                p pVar2 = this.E;
                pVar2.getClass();
                int i12 = width / pVar2.N;
                int height = this.K.getHeight();
                p pVar3 = this.E;
                pVar3.getClass();
                int i13 = height / pVar3.O;
                int i14 = this.E.N;
                int i15 = gVar.f2862a;
                bitmapCreateBitmap = Bitmap.createBitmap(this.K, (i15 % i14) * i12, (i15 / i14) * i13, i12, i13);
            } else {
                bitmapCreateBitmap = this.K;
                bitmapCreateBitmap.getClass();
            }
            gVar.f2864c = bitmapCreateBitmap;
        }
        Bitmap bitmap2 = (Bitmap) this.M.f2864c;
        bitmap2.getClass();
        long j11 = this.M.f2863b;
        long j12 = j11 - j10;
        boolean z10 = this.f18559h == 2;
        int i16 = this.D;
        if (i16 != 0) {
            if (i16 == 1) {
                z10 = true;
            } else {
                if (i16 != 3) {
                    throw new IllegalStateException();
                }
                z10 = false;
            }
        }
        if (z10 || j12 < 30000) {
            y yVar = this.I;
            if (yVar != null) {
                long j13 = this.z.f2861b;
                this.E.getClass();
                f0 f0Var = yVar.f18872a;
                if (f0Var.G) {
                    f0Var.f18660h.a(37).b();
                }
            }
            this.H.onImageAvailable(j11 - this.z.f2861b, bitmap2);
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return false;
        }
        g gVar2 = this.M;
        gVar2.getClass();
        long j14 = gVar2.f2863b;
        this.A = j14;
        while (!arrayDeque.isEmpty() && j14 >= ((f) arrayDeque.peek()).f2860a) {
            this.z = (f) arrayDeque.removeFirst();
        }
        this.D = 3;
        if (z4) {
            g gVar3 = this.M;
            gVar3.getClass();
            p pVar4 = this.E;
            pVar4.getClass();
            p pVar5 = this.E;
            pVar5.getClass();
            if (gVar3.f2862a == (pVar4.O * pVar5.N) - 1) {
                this.K = null;
            }
        }
        this.M = this.N;
        this.N = null;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x010b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean F(long j10) {
        boolean z;
        p pVar;
        int i10;
        if (this.L && this.M != null) {
            return false;
        }
        i8 i8Var = this.f18554c;
        i8Var.n();
        c cVar = this.F;
        if (cVar == null || this.C == 3 || this.f2868x) {
            return false;
        }
        if (this.G == null) {
            x1.g gVar = (x1.g) cVar.f();
            this.G = gVar;
            if (gVar == null) {
                return false;
            }
        }
        if (this.C == 2) {
            this.G.getClass();
            this.G.f567b = 4;
            c cVar2 = this.F;
            cVar2.getClass();
            cVar2.b(this.G);
            this.G = null;
            this.C = 3;
            return false;
        }
        int iW = w(i8Var, this.G, 0);
        if (iW == -5) {
            p pVar2 = (p) i8Var.f15742c;
            pVar2.getClass();
            this.E = pVar2;
            this.P = true;
            this.C = 2;
            return true;
        }
        if (iW != -4) {
            if (iW == -3) {
                return false;
            }
            throw new IllegalStateException();
        }
        this.G.l();
        ByteBuffer byteBuffer = this.G.f18087e;
        if (byteBuffer == null || byteBuffer.remaining() <= 0) {
            x1.g gVar2 = this.G;
            gVar2.getClass();
            z = gVar2.c(4);
        }
        if (z) {
            x1.g gVar3 = this.G;
            gVar3.getClass();
            gVar3.f18085c = this.E;
            c cVar3 = this.F;
            cVar3.getClass();
            x1.g gVar4 = this.G;
            gVar4.getClass();
            cVar3.b(gVar4);
            this.O = 0;
        }
        x1.g gVar5 = this.G;
        gVar5.getClass();
        if (gVar5.c(4)) {
            this.L = true;
        } else {
            int i11 = this.O;
            long j11 = gVar5.f18089g;
            this.N = new g(i11, j11);
            this.O = i11 + 1;
            if (this.L) {
                this.M = this.N;
                this.N = null;
            } else {
                boolean z4 = j11 - 30000 <= j10 && j10 <= 30000 + j11;
                g gVar6 = this.M;
                boolean z10 = gVar6 != null && gVar6.f2863b <= j10 && j10 < j11;
                p pVar3 = this.E;
                pVar3.getClass();
                this.L = z4 || z10 || (pVar3.N == -1 || (i10 = (pVar = this.E).O) == -1 || i11 == (i10 * pVar.N) - 1);
                if (!z10 || z4) {
                }
            }
        }
        x1.g gVar7 = this.G;
        gVar7.getClass();
        if (gVar7.c(4)) {
            this.f2868x = true;
            this.G = null;
            return false;
        }
        long j12 = this.B;
        x1.g gVar8 = this.G;
        gVar8.getClass();
        this.B = Math.max(j12, gVar8.f18089g);
        if (z) {
            this.G = null;
        } else {
            x1.g gVar9 = this.G;
            gVar9.getClass();
            gVar9.g();
        }
        return !this.L;
    }

    public final void G() throws k, InterruptedException {
        if (this.P) {
            p pVar = this.E;
            pVar.getClass();
            b bVar = this.f2865t;
            bVar.getClass();
            int iA = b.a(pVar);
            if (iA != q.a(4, 0, 0, 0) && iA != q.a(3, 0, 0, 0)) {
                throw f(new d(), this.E, false, 4005);
            }
            c cVar = this.F;
            if (cVar != null) {
                cVar.a();
            }
            this.F = new c(bVar.f2856a);
            this.P = false;
        }
    }

    public final void H() throws InterruptedException {
        this.G = null;
        this.C = 0;
        this.B = -9223372036854775807L;
        c cVar = this.F;
        if (cVar != null) {
            cVar.a();
            this.F = null;
        }
    }

    @Override // y1.a, y1.x0
    public final void d(int i10, Object obj) {
        if (i10 != 15) {
            if (i10 != 23) {
                return;
            }
            this.I = (y) obj;
        } else {
            ImageOutput imageOutput = obj instanceof ImageOutput ? (ImageOutput) obj : null;
            if (imageOutput == null) {
                imageOutput = ImageOutput.f1849a;
            }
            this.H = imageOutput;
        }
    }

    @Override // y1.a
    public final String j() {
        return "ImageRenderer";
    }

    @Override // y1.a
    public final boolean l() {
        return this.f2869y;
    }

    @Override // y1.a
    public final boolean m() {
        int i10 = this.D;
        return i10 == 3 || (i10 == 0 && this.L);
    }

    @Override // y1.a
    public final void n() throws InterruptedException {
        this.E = null;
        this.z = f.f2859c;
        this.f2867w.clear();
        H();
        this.H.a();
    }

    @Override // y1.a
    public final void o(boolean z, boolean z4) {
        this.D = z4 ? 1 : 0;
    }

    @Override // y1.a
    public final void p(long j10, boolean z, boolean z4) {
        this.D = Math.min(this.D, 1);
        this.f2869y = false;
        this.f2868x = false;
        this.K = null;
        this.M = null;
        this.N = null;
        this.L = false;
        this.G = null;
        c cVar = this.F;
        if (cVar != null) {
            cVar.flush();
        }
        this.f2867w.clear();
    }

    @Override // y1.a
    public final void q() throws InterruptedException {
        H();
    }

    @Override // y1.a
    public final void r() throws InterruptedException {
        H();
        this.D = Math.min(this.D, 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0023, code lost:
    
        if (r2 >= r6) goto L14;
     */
    @Override // y1.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void u(p[] pVarArr, long j10, long j11, c0 c0Var) {
        if (this.z.f2861b != -9223372036854775807L) {
            ArrayDeque arrayDeque = this.f2867w;
            if (arrayDeque.isEmpty()) {
                long j12 = this.B;
                if (j12 != -9223372036854775807L) {
                    long j13 = this.A;
                    if (j13 != -9223372036854775807L) {
                    }
                }
            }
            arrayDeque.add(new f(this.B, j11));
            return;
        }
        this.z = new f(-9223372036854775807L, j11);
    }

    @Override // y1.a
    public final void x(long j10, long j11) throws k, InterruptedException {
        if (this.f2869y) {
            return;
        }
        if (this.E == null) {
            i8 i8Var = this.f18554c;
            i8Var.n();
            x1.g gVar = this.f2866v;
            gVar.g();
            int iW = w(i8Var, gVar, 2);
            if (iW != -5) {
                if (iW == -4) {
                    o.t(gVar.c(4));
                    this.f2868x = true;
                    this.f2869y = true;
                    return;
                }
                return;
            }
            p pVar = (p) i8Var.f15742c;
            pVar.getClass();
            this.E = pVar;
            this.P = true;
        }
        if (this.F == null) {
            G();
        }
        try {
            Trace.beginSection("drainAndFeedDecoder");
            while (E(j10)) {
            }
            while (F(j10)) {
            }
            Trace.endSection();
        } catch (d e7) {
            throw f(e7, null, false, 4003);
        }
    }
}
