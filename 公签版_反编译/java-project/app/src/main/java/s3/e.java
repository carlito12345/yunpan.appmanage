package s3;

import java.util.Collections;
import java.util.List;
import l2.j0;

/* loaded from: classes.dex */
public final class e implements f {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14067a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f14068b;

    /* renamed from: c, reason: collision with root package name */
    public long f14069c;

    /* renamed from: d, reason: collision with root package name */
    public int f14070d;

    /* renamed from: e, reason: collision with root package name */
    public int f14071e;

    /* renamed from: f, reason: collision with root package name */
    public final Object f14072f;

    /* renamed from: g, reason: collision with root package name */
    public Object f14073g;

    public e(List list) {
        this.f14067a = 0;
        this.f14072f = list;
        this.f14073g = new j0[list.size()];
        this.f14069c = -9223372036854775807L;
    }

    @Override // s3.f
    public final void a(u1.q qVar) {
        boolean z;
        boolean z4;
        switch (this.f14067a) {
            case 0:
                if (this.f14068b) {
                    if (this.f14070d == 2) {
                        if (qVar.a() == 0) {
                            z4 = false;
                        } else {
                            if (qVar.B() != 32) {
                                this.f14068b = false;
                            }
                            this.f14070d--;
                            z4 = this.f14068b;
                        }
                        if (!z4) {
                        }
                    }
                    if (this.f14070d == 1) {
                        if (qVar.a() == 0) {
                            z = false;
                        } else {
                            if (qVar.B() != 0) {
                                this.f14068b = false;
                            }
                            this.f14070d--;
                            z = this.f14068b;
                        }
                        if (!z) {
                        }
                    }
                    int i10 = qVar.f15267b;
                    int iA = qVar.a();
                    for (j0 j0Var : (j0[]) this.f14073g) {
                        qVar.O(i10);
                        j0Var.a(iA, qVar);
                    }
                    this.f14071e += iA;
                    break;
                }
                break;
            default:
                ((j0) this.f14073g).getClass();
                if (this.f14068b) {
                    int iA2 = qVar.a();
                    int i11 = this.f14071e;
                    if (i11 < 10) {
                        int iMin = Math.min(iA2, 10 - i11);
                        byte[] bArr = qVar.f15266a;
                        int i12 = qVar.f15267b;
                        u1.q qVar2 = (u1.q) this.f14072f;
                        System.arraycopy(bArr, i12, qVar2.f15266a, this.f14071e, iMin);
                        if (this.f14071e + iMin == 10) {
                            qVar2.O(0);
                            if (73 != qVar2.B() || 68 != qVar2.B() || 51 != qVar2.B()) {
                                u1.a.p("Discarding invalid ID3 tag");
                                this.f14068b = false;
                                break;
                            } else {
                                qVar2.P(3);
                                this.f14070d = qVar2.A() + 10;
                            }
                        }
                    }
                    int iMin2 = Math.min(iA2, this.f14070d - this.f14071e);
                    ((j0) this.f14073g).a(iMin2, qVar);
                    this.f14071e += iMin2;
                    break;
                }
                break;
        }
    }

    @Override // s3.f
    public final void b() {
        switch (this.f14067a) {
            case 0:
                this.f14068b = false;
                this.f14069c = -9223372036854775807L;
                break;
            default:
                this.f14068b = false;
                this.f14069c = -9223372036854775807L;
                break;
        }
    }

    @Override // s3.f
    public final void c(boolean z) {
        int i10;
        switch (this.f14067a) {
            case 0:
                if (this.f14068b) {
                    a9.o.t(this.f14069c != -9223372036854775807L);
                    for (j0 j0Var : (j0[]) this.f14073g) {
                        j0Var.b(this.f14069c, 1, this.f14071e, 0, null);
                    }
                    this.f14068b = false;
                    break;
                }
                break;
            default:
                ((j0) this.f14073g).getClass();
                if (this.f14068b && (i10 = this.f14070d) != 0 && this.f14071e == i10) {
                    a9.o.t(this.f14069c != -9223372036854775807L);
                    ((j0) this.f14073g).b(this.f14069c, 1, this.f14070d, 0, null);
                    this.f14068b = false;
                    break;
                }
                break;
        }
    }

    @Override // s3.f
    public final void d(int i10, long j10) {
        switch (this.f14067a) {
            case 0:
                if ((i10 & 4) != 0) {
                    this.f14068b = true;
                    this.f14069c = j10;
                    this.f14071e = 0;
                    this.f14070d = 2;
                    break;
                }
                break;
            default:
                if ((i10 & 4) != 0) {
                    this.f14068b = true;
                    this.f14069c = j10;
                    this.f14070d = 0;
                    this.f14071e = 0;
                    break;
                }
                break;
        }
    }

    @Override // s3.f
    public final void e(l2.q qVar, d0 d0Var) {
        switch (this.f14067a) {
            case 0:
                int i10 = 0;
                while (true) {
                    j0[] j0VarArr = (j0[]) this.f14073g;
                    if (i10 >= j0VarArr.length) {
                        break;
                    } else {
                        c0 c0Var = (c0) ((List) this.f14072f).get(i10);
                        d0Var.m();
                        d0Var.n();
                        j0 j0VarZ = qVar.z(d0Var.f14064d, 3);
                        r1.o oVar = new r1.o();
                        d0Var.n();
                        oVar.f13480a = (String) d0Var.f14066f;
                        oVar.f13491m = r1.e0.l("video/mp2t");
                        oVar.f13492n = r1.e0.l("application/dvbsubs");
                        oVar.f13495q = Collections.singletonList(c0Var.f14044b);
                        oVar.f13483d = c0Var.f14043a;
                        j0VarZ.g(new r1.p(oVar));
                        j0VarArr[i10] = j0VarZ;
                        i10++;
                    }
                }
            default:
                d0Var.m();
                d0Var.n();
                j0 j0VarZ2 = qVar.z(d0Var.f14064d, 5);
                this.f14073g = j0VarZ2;
                r1.o oVar2 = new r1.o();
                d0Var.n();
                oVar2.f13480a = (String) d0Var.f14066f;
                oVar2.f13491m = r1.e0.l("video/mp2t");
                oVar2.f13492n = r1.e0.l("application/id3");
                j0VarZ2.g(new r1.p(oVar2));
                break;
        }
    }

    public e() {
        this.f14067a = 1;
        this.f14072f = new u1.q(10);
        this.f14069c = -9223372036854775807L;
    }
}
