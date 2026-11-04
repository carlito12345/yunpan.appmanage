package g3;

import a2.g1;
import f2.u0;
import f2.y0;
import java.io.EOFException;
import java.io.InterruptedIOException;
import java.util.Arrays;
import java.util.List;
import l2.c0;
import l2.j0;
import l2.l;
import l2.o;
import l2.p;
import l2.s;
import r1.f0;
import s3.d0;
import u1.q;
import u7.e0;
import u7.g0;

/* loaded from: classes.dex */
public final class d implements o {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6003a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f6004b;

    /* renamed from: c, reason: collision with root package name */
    public Object f6005c;

    /* renamed from: d, reason: collision with root package name */
    public Object f6006d;

    public d(int i10) {
        this.f6003a = i10;
        switch (i10) {
            case 1:
                this.f6005c = new s3.a("audio/ac3");
                this.f6006d = new q(2786);
                break;
            case 2:
                this.f6005c = new s3.a(null, 0, "audio/ac4", 1);
                this.f6006d = new q(16384);
                break;
        }
    }

    @Override // l2.o
    public final void a() {
        int i10 = this.f6003a;
    }

    @Override // l2.o
    public final o b() {
        int i10 = this.f6003a;
        return this;
    }

    @Override // l2.o
    public final void c(l2.q qVar) {
        switch (this.f6003a) {
            case 0:
                this.f6005c = (u0) qVar;
                break;
            case 1:
                ((s3.a) this.f6005c).e(qVar, new d0(0, 1));
                u0 u0Var = (u0) qVar;
                u0Var.q();
                u0Var.s(new s(-9223372036854775807L));
                break;
            default:
                ((s3.a) this.f6005c).e(qVar, new d0(0, 1));
                u0 u0Var2 = (u0) qVar;
                u0Var2.q();
                u0Var2.s(new s(-9223372036854775807L));
                break;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:86:0x01f4  */
    @Override // l2.o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int d(p pVar, dd.c cVar) throws f0, EOFException, InterruptedIOException {
        int i10;
        byte[] bArr;
        int i11 = 1;
        switch (this.f6003a) {
            case 0:
                ((u0) this.f6005c).getClass();
                if (((i) this.f6006d) == null) {
                    l lVar = (l) pVar;
                    if (!k(lVar)) {
                        throw f0.a(null, "Failed to determine bitstream type");
                    }
                    lVar.f10501f = 0;
                }
                if (!this.f6004b) {
                    j0 j0VarZ = ((u0) this.f6005c).z(0, 1);
                    ((u0) this.f6005c).q();
                    i iVar = (i) this.f6006d;
                    iVar.f6024c = (u0) this.f6005c;
                    iVar.f6023b = j0VarZ;
                    iVar.d(true);
                    this.f6004b = true;
                }
                i iVar2 = (i) this.f6006d;
                iVar2.f6023b.getClass();
                String str = u1.f0.f15206a;
                int i12 = iVar2.f6029h;
                e eVar = iVar2.f6022a;
                if (i12 == 0) {
                    while (true) {
                        l lVar2 = (l) pVar;
                        if (!eVar.b(lVar2)) {
                            iVar2.f6029h = 3;
                            return -1;
                        }
                        long j10 = lVar2.f10499d;
                        long j11 = iVar2.f6027f;
                        iVar2.f6032k = j10 - j11;
                        g1 g1Var = iVar2.f6031j;
                        q qVar = eVar.f6008b;
                        if (iVar2.c(qVar, j11, g1Var)) {
                            iVar2.f6027f = ((l) pVar).f10499d;
                        } else {
                            r1.p pVar2 = (r1.p) iVar2.f6031j.f175b;
                            iVar2.f6030i = pVar2.H;
                            if (!iVar2.f6033m) {
                                iVar2.f6023b.g(pVar2);
                                iVar2.f6033m = true;
                            }
                            y0 y0Var = (y0) iVar2.f6031j.f176c;
                            if (y0Var != null) {
                                iVar2.f6025d = y0Var;
                            } else {
                                long j12 = ((l) pVar).f10498c;
                                if (j12 == -1) {
                                    iVar2.f6025d = new m7.e(24);
                                } else {
                                    f fVar = eVar.f6007a;
                                    boolean z = (fVar.f6012a & 4) != 0;
                                    long j13 = iVar2.f6027f;
                                    long j14 = fVar.f6015d + fVar.f6016e;
                                    long j15 = fVar.f6013b;
                                    i10 = 2;
                                    iVar2.f6025d = new b(iVar2, j13, j12, j14, j15, z);
                                    iVar2.f6029h = i10;
                                    bArr = qVar.f15266a;
                                    if (bArr.length != 65025) {
                                        qVar.M(qVar.f15268c, Arrays.copyOf(bArr, Math.max(65025, qVar.f15268c)));
                                    }
                                }
                            }
                            i10 = 2;
                            iVar2.f6029h = i10;
                            bArr = qVar.f15266a;
                            if (bArr.length != 65025) {
                            }
                        }
                    }
                } else {
                    if (i12 != 1) {
                        if (i12 != 2) {
                            if (i12 == 3) {
                                return -1;
                            }
                            throw new IllegalStateException();
                        }
                        l lVar3 = (l) pVar;
                        long jC = iVar2.f6025d.c(lVar3);
                        if (jC >= 0) {
                            cVar.f4591b = jC;
                        } else {
                            if (jC < -1) {
                                iVar2.a(-(jC + 2));
                            }
                            if (!iVar2.l) {
                                c0 c0VarD = iVar2.f6025d.d();
                                c0VarD.getClass();
                                iVar2.f6024c.s(c0VarD);
                                iVar2.f6023b.d(c0VarD.h());
                                iVar2.l = true;
                            }
                            if (iVar2.f6032k > 0 || eVar.b(lVar3)) {
                                iVar2.f6032k = 0L;
                                q qVar2 = eVar.f6008b;
                                long jB = iVar2.b(qVar2);
                                if (jB >= 0) {
                                    long j16 = iVar2.f6028g;
                                    if (j16 + jB >= iVar2.f6026e) {
                                        iVar2.f6023b.a(qVar2.f15268c, qVar2);
                                        iVar2.f6023b.b((j16 * 1000000) / iVar2.f6030i, 1, qVar2.f15268c, 0, null);
                                        iVar2.f6026e = -1L;
                                    }
                                }
                                iVar2.f6028g += jB;
                                i11 = 0;
                            } else {
                                iVar2.f6029h = 3;
                                i11 = -1;
                            }
                        }
                        return i11;
                    }
                    ((l) pVar).o((int) iVar2.f6027f, false);
                    iVar2.f6029h = 2;
                }
                return 0;
            case 1:
                q qVar3 = (q) this.f6006d;
                int i13 = ((l) pVar).read(qVar3.f15266a, 0, 2786);
                if (i13 == -1) {
                    return -1;
                }
                qVar3.O(0);
                qVar3.N(i13);
                boolean z4 = this.f6004b;
                s3.a aVar = (s3.a) this.f6005c;
                if (!z4) {
                    aVar.f13989o = 0L;
                    this.f6004b = true;
                }
                aVar.a(qVar3);
                return 0;
            default:
                q qVar4 = (q) this.f6006d;
                int i14 = ((l) pVar).read(qVar4.f15266a, 0, 16384);
                if (i14 == -1) {
                    return -1;
                }
                qVar4.O(0);
                qVar4.N(i14);
                boolean z10 = this.f6004b;
                s3.a aVar2 = (s3.a) this.f6005c;
                if (!z10) {
                    aVar2.f13989o = 0L;
                    this.f6004b = true;
                }
                aVar2.a(qVar4);
                return 0;
        }
    }

    @Override // l2.o
    public final void e(long j10, long j11) {
        switch (this.f6003a) {
            case 0:
                i iVar = (i) this.f6006d;
                if (iVar != null) {
                    e eVar = iVar.f6022a;
                    f fVar = eVar.f6007a;
                    fVar.f6012a = 0;
                    fVar.f6013b = 0L;
                    fVar.f6014c = 0;
                    fVar.f6015d = 0;
                    fVar.f6016e = 0;
                    eVar.f6008b.L(0);
                    eVar.f6009c = -1;
                    eVar.f6011e = false;
                    if (j10 != 0) {
                        if (iVar.f6029h != 0) {
                            long j12 = (iVar.f6030i * j11) / 1000000;
                            iVar.f6026e = j12;
                            g gVar = iVar.f6025d;
                            String str = u1.f0.f15206a;
                            gVar.f(j12);
                            iVar.f6029h = 2;
                            break;
                        }
                    } else {
                        iVar.d(!iVar.l);
                        break;
                    }
                }
                break;
            case 1:
                this.f6004b = false;
                ((s3.a) this.f6005c).b();
                break;
            default:
                this.f6004b = false;
                ((s3.a) this.f6005c).b();
                break;
        }
    }

    @Override // l2.o
    public final List f() {
        switch (this.f6003a) {
            case 0:
                e0 e0Var = g0.f15471b;
                break;
            case 1:
                e0 e0Var2 = g0.f15471b;
                break;
            default:
                e0 e0Var3 = g0.f15471b;
                break;
        }
        return u7.y0.f15549e;
    }

    @Override // l2.o
    public final boolean g(p pVar) {
        int iE;
        int i10;
        switch (this.f6003a) {
            case 0:
                try {
                    break;
                }
            case 1:
                q qVar = new q(10);
                int i11 = 0;
                while (true) {
                    l lVar = (l) pVar;
                    lVar.c(qVar.f15266a, 0, 10, false);
                    qVar.O(0);
                    if (qVar.E() != 4801587) {
                        lVar.f10501f = 0;
                        lVar.k(i11, false);
                        int i12 = i11;
                        while (true) {
                            int i13 = 0;
                            while (true) {
                                lVar.c(qVar.f15266a, 0, 6, false);
                                qVar.O(0);
                                if (qVar.I() != 2935) {
                                    lVar.f10501f = 0;
                                    i12++;
                                    if (i12 - i11 >= 8192) {
                                        break;
                                    } else {
                                        lVar.k(i12, false);
                                    }
                                } else {
                                    i13++;
                                    if (i13 >= 4) {
                                        break;
                                    } else {
                                        byte[] bArr = qVar.f15266a;
                                        if (bArr.length < 6) {
                                            iE = -1;
                                        } else if (((bArr[5] & 248) >> 3) > 10) {
                                            iE = ((((bArr[2] & 7) << 8) | (bArr[3] & 255)) + 1) * 2;
                                        } else {
                                            byte b10 = bArr[4];
                                            iE = l2.b.e((b10 & 192) >> 6, b10 & 63);
                                        }
                                        if (iE == -1) {
                                            break;
                                        } else {
                                            lVar.k(iE - 6, false);
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        qVar.P(3);
                        int iA = qVar.A();
                        i11 += iA + 10;
                        lVar.k(iA, false);
                    }
                }
            default:
                q qVar2 = new q(10);
                int i14 = 0;
                while (true) {
                    l lVar2 = (l) pVar;
                    lVar2.c(qVar2.f15266a, 0, 10, false);
                    qVar2.O(0);
                    if (qVar2.E() != 4801587) {
                        lVar2.f10501f = 0;
                        lVar2.k(i14, false);
                        int i15 = i14;
                        while (true) {
                            int i16 = 0;
                            while (true) {
                                int i17 = 7;
                                lVar2.c(qVar2.f15266a, 0, 7, false);
                                qVar2.O(0);
                                int I = qVar2.I();
                                if (I == 44096 || I == 44097) {
                                    i16++;
                                    if (i16 >= 4) {
                                        break;
                                    } else {
                                        byte[] bArr2 = qVar2.f15266a;
                                        if (bArr2.length < 7) {
                                            i10 = -1;
                                        } else {
                                            int i18 = ((bArr2[2] & 255) << 8) | (bArr2[3] & 255);
                                            if (i18 == 65535) {
                                                i18 = ((bArr2[4] & 255) << 16) | ((bArr2[5] & 255) << 8) | (bArr2[6] & 255);
                                            } else {
                                                i17 = 4;
                                            }
                                            if (I == 44097) {
                                                i17 += 2;
                                            }
                                            i10 = i18 + i17;
                                        }
                                        if (i10 == -1) {
                                            break;
                                        } else {
                                            lVar2.k(i10 - 7, false);
                                        }
                                    }
                                } else {
                                    lVar2.f10501f = 0;
                                    i15++;
                                    if (i15 - i14 >= 8192) {
                                        break;
                                    } else {
                                        lVar2.k(i15, false);
                                    }
                                }
                            }
                        }
                    } else {
                        qVar2.P(3);
                        int iA2 = qVar2.A();
                        i14 += iA2 + 10;
                        lVar2.k(iA2, false);
                    }
                }
        }
        return false;
    }

    public boolean k(l lVar) {
        boolean zX;
        f fVar = new f();
        if (fVar.a(lVar, true) && (fVar.f6012a & 2) == 2) {
            int iMin = Math.min(fVar.f6016e, 8);
            q qVar = new q(iMin);
            lVar.c(qVar.f15266a, 0, iMin, false);
            qVar.O(0);
            if (qVar.a() >= 5 && qVar.B() == 127 && qVar.D() == 1179402563) {
                this.f6006d = new c();
            } else {
                qVar.O(0);
                try {
                    zX = l2.b.x(1, qVar, true);
                } catch (f0 unused) {
                    zX = false;
                }
                if (zX) {
                    this.f6006d = new k();
                } else {
                    qVar.O(0);
                    if (h.e(qVar, h.f6019o)) {
                        this.f6006d = new h();
                    }
                }
            }
            return true;
        }
        return false;
    }

    private final void h() {
    }

    private final void i() {
    }

    private final void j() {
    }
}
