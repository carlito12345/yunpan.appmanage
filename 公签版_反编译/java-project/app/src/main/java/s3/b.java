package s3;

import f2.u0;
import java.io.EOFException;
import java.io.InterruptedIOException;
import java.util.List;
import r1.f0;
import u7.g0;
import u7.y0;

/* loaded from: classes.dex */
public final class b implements l2.o {

    /* renamed from: d, reason: collision with root package name */
    public final u1.q f13997d;

    /* renamed from: e, reason: collision with root package name */
    public final j3.f f13998e;

    /* renamed from: f, reason: collision with root package name */
    public u0 f13999f;

    /* renamed from: g, reason: collision with root package name */
    public long f14000g;

    /* renamed from: j, reason: collision with root package name */
    public boolean f14003j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f14004k;
    public boolean l;

    /* renamed from: a, reason: collision with root package name */
    public final int f13994a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final c f13995b = new c(null, 0, "audio/mp4a-latm", true);

    /* renamed from: c, reason: collision with root package name */
    public final u1.q f13996c = new u1.q(2048);

    /* renamed from: i, reason: collision with root package name */
    public int f14002i = -1;

    /* renamed from: h, reason: collision with root package name */
    public long f14001h = -1;

    public b() {
        u1.q qVar = new u1.q(10);
        this.f13997d = qVar;
        byte[] bArr = qVar.f15266a;
        this.f13998e = new j3.f(bArr, bArr.length);
    }

    @Override // l2.o
    public final l2.o b() {
        return this;
    }

    @Override // l2.o
    public final void c(l2.q qVar) {
        this.f13999f = (u0) qVar;
        this.f13995b.e(qVar, new d0(0, 1));
        ((u0) qVar).q();
    }

    /* JADX WARN: Removed duplicated region for block: B:73:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0021  */
    @Override // l2.o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int d(l2.p pVar, dd.c cVar) throws f0, EOFException, InterruptedIOException {
        int i10;
        this.f13999f.getClass();
        long j10 = ((l2.l) pVar).f10498c;
        int i11 = this.f13994a;
        int i12 = i11 & 2;
        int i13 = 0;
        boolean z = true;
        if (i12 != 0 || ((i11 & 1) != 0 && j10 != -1)) {
            j3.f fVar = this.f13998e;
            u1.q qVar = this.f13997d;
            if (this.f14003j) {
                i10 = -1;
            } else {
                this.f14002i = -1;
                l2.l lVar = (l2.l) pVar;
                lVar.f10501f = 0;
                long j11 = 0;
                if (lVar.f10499d == 0) {
                    h(lVar);
                }
                int i14 = 0;
                while (true) {
                    try {
                        l2.l lVar2 = (l2.l) pVar;
                        if (!lVar2.c(qVar.f15266a, i13, 2, z)) {
                            break;
                        }
                        qVar.O(i13);
                        if (!((qVar.I() & 65526) == 65520)) {
                            i14 = 0;
                            break;
                        }
                        if (!lVar2.c(qVar.f15266a, i13, 4, z)) {
                            break;
                        }
                        fVar.m(14);
                        int iG = fVar.g(13);
                        if (iG <= 6) {
                            this.f14003j = true;
                            throw f0.a(null, "Malformed ADTS stream");
                        }
                        j11 += iG;
                        i14++;
                        if (i14 != 1000 && lVar2.k(iG - 6, true)) {
                            i13 = 0;
                            z = true;
                        }
                    } catch (EOFException unused) {
                    }
                }
                lVar.f10501f = 0;
                if (i14 > 0) {
                    this.f14002i = (int) (j11 / i14);
                    i10 = -1;
                } else {
                    i10 = -1;
                    this.f14002i = -1;
                }
                this.f14003j = true;
            }
        }
        u1.q qVar2 = this.f13996c;
        int i15 = ((l2.l) pVar).read(qVar2.f15266a, 0, 2048);
        boolean z4 = i15 == i10;
        boolean z10 = this.l;
        c cVar2 = this.f13995b;
        if (!z10) {
            boolean z11 = (i11 & 1) != 0 && this.f14002i > 0;
            if (!z11 || cVar2.f14038s != -9223372036854775807L || z4) {
                if (z11) {
                    long j12 = cVar2.f14038s;
                    if (j12 != -9223372036854775807L) {
                        u0 u0Var = this.f13999f;
                        boolean z12 = i12 != 0;
                        int i16 = this.f14002i;
                        u0Var.s(new l2.k(j10, this.f14001h, (int) ((i16 * 8000000) / j12), i16, z12, true));
                    } else {
                        this.f13999f.s(new l2.s(-9223372036854775807L));
                    }
                    this.l = true;
                }
            }
        }
        if (z4) {
            return -1;
        }
        qVar2.O(0);
        qVar2.N(i15);
        if (!this.f14004k) {
            cVar2.f14040u = this.f14000g;
            this.f14004k = true;
        }
        cVar2.a(qVar2);
        return 0;
    }

    @Override // l2.o
    public final void e(long j10, long j11) {
        this.f14004k = false;
        this.f13995b.b();
        this.f14000g = j11;
    }

    @Override // l2.o
    public final List f() {
        u7.e0 e0Var = g0.f15471b;
        return y0.f15549e;
    }

    @Override // l2.o
    public final boolean g(l2.p pVar) {
        l2.l lVar = (l2.l) pVar;
        int iH = h(lVar);
        int i10 = iH;
        int i11 = 0;
        int i12 = 0;
        do {
            u1.q qVar = this.f13997d;
            lVar.c(qVar.f15266a, 0, 2, false);
            qVar.O(0);
            if ((qVar.I() & 65526) == 65520) {
                i11++;
                if (i11 >= 4 && i12 > 188) {
                    return true;
                }
                lVar.c(qVar.f15266a, 0, 4, false);
                j3.f fVar = this.f13998e;
                fVar.m(14);
                int iG = fVar.g(13);
                if (iG <= 6) {
                    i10++;
                    lVar.f10501f = 0;
                    lVar.k(i10, false);
                } else {
                    lVar.k(iG - 6, false);
                    i12 += iG;
                }
            } else {
                i10++;
                lVar.f10501f = 0;
                lVar.k(i10, false);
            }
            i11 = 0;
            i12 = 0;
        } while (i10 - iH < 8192);
        return false;
    }

    public final int h(l2.l lVar) {
        int i10 = 0;
        while (true) {
            u1.q qVar = this.f13997d;
            lVar.c(qVar.f15266a, 0, 10, false);
            qVar.O(0);
            if (qVar.E() != 4801587) {
                break;
            }
            qVar.P(3);
            int iA = qVar.A();
            i10 += iA + 10;
            lVar.k(iA, false);
        }
        lVar.f10501f = 0;
        lVar.k(i10, false);
        if (this.f14001h == -1) {
            this.f14001h = i10;
        }
        return i10;
    }

    @Override // l2.o
    public final void a() {
    }
}
