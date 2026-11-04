package t3;

import android.util.Pair;
import f2.u0;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.List;
import l2.j0;
import l2.l;
import l2.o;
import l2.p;
import l2.q;
import r1.f0;
import u7.e0;
import u7.g0;
import u7.y0;

/* loaded from: classes.dex */
public final class d implements o {

    /* renamed from: a, reason: collision with root package name */
    public u0 f14737a;

    /* renamed from: b, reason: collision with root package name */
    public j0 f14738b;

    /* renamed from: e, reason: collision with root package name */
    public b f14741e;

    /* renamed from: c, reason: collision with root package name */
    public int f14739c = 0;

    /* renamed from: d, reason: collision with root package name */
    public long f14740d = -1;

    /* renamed from: f, reason: collision with root package name */
    public int f14742f = -1;

    /* renamed from: g, reason: collision with root package name */
    public long f14743g = -1;

    @Override // l2.o
    public final o b() {
        return this;
    }

    @Override // l2.o
    public final void c(q qVar) {
        u0 u0Var = (u0) qVar;
        this.f14737a = u0Var;
        this.f14738b = u0Var.z(0, 1);
        u0Var.q();
    }

    /* JADX WARN: Removed duplicated region for block: B:86:0x0236  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0240  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0258  */
    @Override // l2.o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int d(p pVar, dd.c cVar) throws f0 {
        byte[] bArr;
        int iT;
        this.f14738b.getClass();
        String str = u1.f0.f15206a;
        int i10 = this.f14739c;
        if (i10 == 0) {
            a9.o.t(((l) pVar).f10499d == 0);
            int i11 = this.f14742f;
            if (i11 != -1) {
                ((l) pVar).o(i11, false);
                this.f14739c = 4;
            } else {
                l lVar = (l) pVar;
                if (!f.a(lVar)) {
                    throw f0.a(null, "Unsupported or unrecognized wav file type.");
                }
                lVar.o((int) (lVar.d() - lVar.f10499d), false);
                this.f14739c = 1;
            }
            return 0;
        }
        long jR = -1;
        if (i10 == 1) {
            u1.q qVar = new u1.q(8);
            l lVar2 = (l) pVar;
            ai.a aVarA = ai.a.a(lVar2, qVar);
            if (aVarA.f717a != 1685272116) {
                lVar2.f10501f = 0;
            } else {
                lVar2.k(8, false);
                qVar.O(0);
                l lVar3 = (l) pVar;
                lVar3.c(qVar.f15266a, 0, 8, false);
                jR = qVar.r();
                lVar3.o(((int) aVarA.f718b) + 8, false);
            }
            this.f14740d = jR;
            this.f14739c = 2;
            return 0;
        }
        if (i10 != 2) {
            if (i10 != 3) {
                if (i10 != 4) {
                    throw new IllegalStateException();
                }
                a9.o.t(this.f14743g != -1);
                long j10 = this.f14743g - ((l) pVar).f10499d;
                b bVar = this.f14741e;
                bVar.getClass();
                return bVar.a((l) pVar, j10) ? -1 : 0;
            }
            ((l) pVar).f10501f = 0;
            l lVar4 = (l) pVar;
            ai.a aVarB = f.b(1684108385, lVar4, new u1.q(8));
            lVar4.o(8, false);
            Pair pairCreate = Pair.create(Long.valueOf(lVar4.f10499d), Long.valueOf(aVarB.f718b));
            this.f14742f = ((Long) pairCreate.first).intValue();
            long jLongValue = ((Long) pairCreate.second).longValue();
            long j11 = this.f14740d;
            if (j11 != -1 && jLongValue == 4294967295L) {
                jLongValue = j11;
            }
            long j12 = this.f14742f + jLongValue;
            this.f14743g = j12;
            long j13 = lVar4.f10498c;
            if (j13 != -1 && j12 > j13) {
                u1.a.p("Data exceeds input length: " + this.f14743g + ", " + j13);
                this.f14743g = j13;
            }
            b bVar2 = this.f14741e;
            bVar2.getClass();
            bVar2.c(this.f14742f, this.f14743g);
            this.f14739c = 4;
            return 0;
        }
        u1.q qVar2 = new u1.q(16);
        l lVar5 = (l) pVar;
        long j14 = f.b(1718449184, lVar5, qVar2).f718b;
        a9.o.t(j14 >= 16);
        lVar5.c(qVar2.f15266a, 0, 16, false);
        qVar2.O(0);
        int iU = qVar2.u();
        int iU2 = qVar2.u();
        int iT2 = qVar2.t();
        qVar2.t();
        int iU3 = qVar2.u();
        int iU4 = qVar2.u();
        int i12 = ((int) j14) - 16;
        if (i12 > 0) {
            byte[] bArr2 = new byte[i12];
            ((l) pVar).c(bArr2, 0, i12, false);
            if (iU == 65534 && i12 == 24) {
                u1.q qVar3 = new u1.q(bArr2);
                qVar3.u();
                int iU5 = qVar3.u();
                if (iU5 != 0 && iU5 != iU4) {
                    throw f0.b("validBits ( " + iU5 + ")  != bitsPerSample( " + iU4 + ") are not supported");
                }
                int iT3 = qVar3.t();
                if ((iT3 >> 18) != 0) {
                    throw f0.b("invalid channel mask " + iT3);
                }
                if (iT3 != 0 && Integer.bitCount(iT3) != iU2) {
                    throw f0.b("invalid number of channels (" + Integer.bitCount(iT3) + ") in channel mask " + iT3);
                }
                int iU6 = qVar3.u();
                byte[] bArr3 = new byte[14];
                qVar3.l(0, 14, bArr3);
                if (!Arrays.equals(bArr3, f.f14749a) && !Arrays.equals(bArr3, f.f14750b)) {
                    throw f0.b("invalid wav format extension guid");
                }
                iU = iU6;
            }
            bArr = bArr2;
        } else {
            bArr = u1.f0.f15207b;
        }
        l lVar6 = (l) pVar;
        lVar6.o((int) (lVar6.d() - lVar6.f10499d), false);
        e eVar = new e(iU, iU2, iT2, bArr, iU3, iU4);
        if (iU == 17) {
            this.f14741e = new a(this.f14737a, this.f14738b, eVar);
        } else if (iU == 6) {
            this.f14741e = new c(this.f14737a, this.f14738b, eVar, "audio/g711-alaw", -1);
        } else if (iU == 7) {
            this.f14741e = new c(this.f14737a, this.f14738b, eVar, "audio/g711-mlaw", -1);
        } else if (iU == 1) {
            iT = u1.f0.t(iU4, ByteOrder.LITTLE_ENDIAN);
            if (iT != 0) {
                throw f0.b("Unsupported WAV format type: " + iU);
            }
            this.f14741e = new c(this.f14737a, this.f14738b, eVar, "audio/raw", iT);
        } else {
            if (iU == 3) {
                iT = iU4 != 32 ? 0 : 4;
            } else if (iU != 65534) {
                iT = 0;
            }
            if (iT != 0) {
            }
        }
        this.f14739c = 3;
        return 0;
    }

    @Override // l2.o
    public final void e(long j10, long j11) {
        this.f14739c = j10 == 0 ? 0 : 4;
        b bVar = this.f14741e;
        if (bVar != null) {
            bVar.b(j11);
        }
    }

    @Override // l2.o
    public final List f() {
        e0 e0Var = g0.f15471b;
        return y0.f15549e;
    }

    @Override // l2.o
    public final boolean g(p pVar) {
        return f.a((l) pVar);
    }

    @Override // l2.o
    public final void a() {
    }
}
