package f2;

import java.io.IOException;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import ua.i8;

/* loaded from: classes.dex */
public final class s0 implements c1 {

    /* renamed from: a, reason: collision with root package name */
    public final int f5380a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ u0 f5381b;

    public s0(u0 u0Var, int i10) {
        this.f5381b = u0Var;
        this.f5380a = i10;
    }

    @Override // f2.c1
    public final boolean isReady() {
        u0 u0Var = this.f5381b;
        return !u0Var.E() && u0Var.f5410w[this.f5380a].o(u0Var.T);
    }

    @Override // f2.c1
    public final void j() throws IOException {
        u0 u0Var = this.f5381b;
        b1 b1Var = u0Var.f5410w[this.f5380a];
        a1.i iVar = b1Var.f5212h;
        if (iVar != null && iVar.t() == 1) {
            b2.b bVarO = b1Var.f5212h.o();
            bVarO.getClass();
            throw bVarO;
        }
        int iD = u0Var.f5395d.d(u0Var.G);
        i2.j jVar = u0Var.l;
        IOException iOException = jVar.f8472c;
        if (iOException != null) {
            throw iOException;
        }
        i2.h hVar = jVar.f8471b;
        if (hVar != null) {
            if (iD == Integer.MIN_VALUE) {
                iD = hVar.f8458a;
            }
            IOException iOException2 = hVar.f8462e;
            if (iOException2 != null && hVar.f8463f > iD) {
                throw iOException2;
            }
        }
    }

    @Override // f2.c1
    public final int m(long j10) {
        u0 u0Var = this.f5381b;
        int i10 = this.f5380a;
        int i11 = 0;
        if (!u0Var.E()) {
            u0Var.y(i10);
            b1 b1Var = u0Var.f5410w[i10];
            boolean z = u0Var.T;
            synchronized (b1Var) {
                int iM = b1Var.m(b1Var.f5221s);
                int i12 = b1Var.f5221s;
                int i13 = b1Var.f5219p;
                if ((i12 != i13) && j10 >= b1Var.f5217n[iM]) {
                    if (j10 <= b1Var.f5225w || !z) {
                        int iK = b1Var.k(iM, i13 - i12, j10, true);
                        if (iK != -1) {
                            i11 = iK;
                        }
                    } else {
                        i11 = i13 - i12;
                    }
                }
            }
            b1Var.v(i11);
            if (i11 == 0) {
                u0Var.A(i10);
            }
        }
        return i11;
    }

    @Override // f2.c1
    public final int n(i8 i8Var, x1.g gVar, int i10) {
        int i11;
        u0 u0Var = this.f5381b;
        int i12 = this.f5380a;
        if (u0Var.E()) {
            return -3;
        }
        u0Var.y(i12);
        b1 b1Var = u0Var.f5410w[i12];
        boolean z = u0Var.T;
        b1Var.getClass();
        boolean z4 = (i10 & 2) != 0;
        c2.g gVar2 = b1Var.f5206b;
        synchronized (b1Var) {
            gVar.f18088f = false;
            int i13 = b1Var.f5220q;
            int i14 = b1Var.f5221s;
            int i15 = i13 + i14;
            int i16 = b1Var.f5226x;
            boolean z10 = i16 != -1 && i15 >= i16;
            if (!(i14 != b1Var.f5219p) || z10) {
                if (!z && !b1Var.f5227y && !z10) {
                    r1.p pVar = b1Var.B;
                    if (pVar == null || (!z4 && pVar == b1Var.f5211g)) {
                        i11 = -3;
                    } else {
                        b1Var.q(pVar, i8Var);
                        i11 = -5;
                    }
                }
                gVar.f567b = 4;
                gVar.f18089g = Long.MIN_VALUE;
                i11 = -4;
            } else {
                r1.p pVar2 = ((a1) b1Var.f5207c.g(i15)).f5200a;
                if (!z4 && pVar2 == b1Var.f5211g) {
                    int iM = b1Var.m(b1Var.f5221s);
                    if (b1Var.p(iM)) {
                        gVar.f567b = b1Var.f5216m[iM];
                        if (b1Var.f5221s == b1Var.f5219p - 1 && (z || b1Var.f5227y)) {
                            gVar.a(PKIFailureInfo.duplicateCertReq);
                        }
                        gVar.f18089g = b1Var.f5217n[iM];
                        gVar2.f2862a = b1Var.l[iM];
                        gVar2.f2863b = b1Var.f5215k[iM];
                        gVar2.f2864c = b1Var.f5218o[iM];
                        i11 = -4;
                    } else {
                        gVar.f18088f = true;
                        i11 = -3;
                    }
                }
                b1Var.q(pVar2, i8Var);
                i11 = -5;
            }
        }
        if (i11 == -4 && !gVar.c(4)) {
            boolean z11 = (i10 & 1) != 0;
            if ((i10 & 4) == 0) {
                if (z11) {
                    z0 z0Var = b1Var.f5205a;
                    z0.e(z0Var.f5451e, gVar, b1Var.f5206b, z0Var.f5449c);
                } else {
                    z0 z0Var2 = b1Var.f5205a;
                    z0Var2.f5451e = z0.e(z0Var2.f5451e, gVar, b1Var.f5206b, z0Var2.f5449c);
                }
            }
            if (!z11) {
                b1Var.f5221s++;
            }
        }
        if (i11 == -3) {
            u0Var.A(i12);
        }
        return i11;
    }
}
