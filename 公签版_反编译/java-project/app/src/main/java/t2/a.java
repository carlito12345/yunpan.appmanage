package t2;

import androidx.recyclerview.widget.h;
import f2.u0;
import f3.n;
import j$.util.Objects;
import java.util.List;
import l2.j0;
import l2.l;
import l2.o;
import l2.p;
import l2.s;
import org.xmlpull.v1.XmlPullParserException;
import r1.d0;
import r1.e0;
import r1.f0;
import u1.q;
import u7.g0;
import u7.y0;

/* loaded from: classes.dex */
public final class a implements o {

    /* renamed from: b, reason: collision with root package name */
    public u0 f14701b;

    /* renamed from: c, reason: collision with root package name */
    public int f14702c;

    /* renamed from: d, reason: collision with root package name */
    public int f14703d;

    /* renamed from: e, reason: collision with root package name */
    public int f14704e;

    /* renamed from: g, reason: collision with root package name */
    public u2.b f14706g;

    /* renamed from: h, reason: collision with root package name */
    public l f14707h;

    /* renamed from: i, reason: collision with root package name */
    public h f14708i;

    /* renamed from: j, reason: collision with root package name */
    public n f14709j;

    /* renamed from: a, reason: collision with root package name */
    public final q f14700a = new q(2);

    /* renamed from: f, reason: collision with root package name */
    public long f14705f = -1;

    @Override // l2.o
    public final void a() {
        n nVar = this.f14709j;
        if (nVar != null) {
            nVar.getClass();
        }
    }

    @Override // l2.o
    public final o b() {
        return this;
    }

    @Override // l2.o
    public final void c(l2.q qVar) {
        this.f14701b = (u0) qVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0191  */
    @Override // l2.o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int d(p pVar, dd.c cVar) throws f0 {
        int i10;
        String strW;
        h hVarA;
        y0 y0Var;
        int i11;
        u2.b bVar;
        long j10;
        int i12 = this.f14702c;
        q qVar = this.f14700a;
        if (i12 == 0) {
            qVar.L(2);
            ((l) pVar).b(qVar.f15266a, 0, 2, false);
            int I = qVar.I();
            this.f14703d = I;
            if (I == 65498) {
                if (this.f14705f != -1) {
                    this.f14702c = 4;
                    return 0;
                }
                h();
                return 0;
            }
            if ((I >= 65488 && I <= 65497) || I == 65281) {
                return 0;
            }
            this.f14702c = 1;
            return 0;
        }
        if (i12 == 1) {
            l lVar = (l) pVar;
            qVar.L(2);
            lVar.c(qVar.f15266a, 0, 2, false);
            this.f14704e = qVar.I() - 2;
            lVar.o(2, false);
            this.f14702c = 2;
            return 0;
        }
        if (i12 != 2) {
            if (i12 != 4) {
                if (i12 != 5) {
                    if (i12 == 6) {
                        return -1;
                    }
                    throw new IllegalStateException();
                }
                if (this.f14708i == null || pVar != this.f14707h) {
                    l lVar2 = (l) pVar;
                    this.f14707h = lVar2;
                    this.f14708i = new h(lVar2, this.f14705f);
                }
                n nVar = this.f14709j;
                nVar.getClass();
                int iD = nVar.d(this.f14708i, cVar);
                if (iD == 1) {
                    cVar.f4591b += this.f14705f;
                }
                return iD;
            }
            long j11 = ((l) pVar).f10499d;
            long j12 = this.f14705f;
            if (j11 != j12) {
                cVar.f4591b = j12;
                return 1;
            }
            l lVar3 = (l) pVar;
            if (lVar3.c(qVar.f15266a, 0, 1, true)) {
                lVar3.f10501f = 0;
                if (this.f14709j == null) {
                    this.f14709j = new n(i3.h.B0, 8);
                }
                h hVar = new h(lVar3, this.f14705f);
                this.f14708i = hVar;
                if (this.f14709j.g(hVar)) {
                    n nVar2 = this.f14709j;
                    long j13 = this.f14705f;
                    u0 u0Var = this.f14701b;
                    u0Var.getClass();
                    nVar2.c(new h(3, j13, u0Var));
                    u2.b bVar2 = this.f14706g;
                    bVar2.getClass();
                    u0 u0Var2 = this.f14701b;
                    u0Var2.getClass();
                    j0 j0VarZ = u0Var2.z(1024, 4);
                    r1.o oVar = new r1.o();
                    oVar.f13491m = e0.l("image/jpeg");
                    oVar.f13490k = new d0(bVar2);
                    j0VarZ.g(new r1.p(oVar));
                    this.f14702c = 5;
                } else {
                    h();
                }
            } else {
                h();
            }
            return 0;
        }
        if (this.f14703d == 65505) {
            q qVar2 = new q(this.f14704e);
            ((l) pVar).b(qVar2.f15266a, 0, this.f14704e, false);
            if (this.f14706g == null && "http://ns.adobe.com/xap/1.0/".equals(qVar2.w()) && (strW = qVar2.w()) != null) {
                long j14 = ((l) pVar).f10498c;
                if (j14 == -1) {
                    bVar = null;
                    this.f14706g = bVar;
                    if (bVar != null) {
                        this.f14705f = bVar.f15320d;
                    }
                } else {
                    try {
                        hVarA = c.a(strW);
                    } catch (NumberFormatException | XmlPullParserException | f0 unused) {
                        u1.a.p("Ignoring unexpected XMP metadata");
                        hVarA = null;
                    }
                    if (hVarA != null && (i11 = (y0Var = (y0) hVarA.f2144c).f15551d) >= 2) {
                        long j15 = -1;
                        long j16 = -1;
                        long j17 = -1;
                        long j18 = -1;
                        for (int i13 = i11 - 1; i13 >= 0; i13--) {
                            b bVar3 = (b) y0Var.get(i13);
                            String str = bVar3.f14710a;
                            boolean z = str.equals("video/mp4") || str.equals("video/quicktime");
                            if (i13 == 0) {
                                j14 -= bVar3.f14712c;
                                j10 = 0;
                            } else {
                                j10 = j14 - bVar3.f14711b;
                            }
                            long j19 = j10;
                            long j20 = j14;
                            j14 = j19;
                            if (z && j14 != j20) {
                                j18 = j20 - j14;
                                j17 = j14;
                            }
                            if (i13 == 0) {
                                j16 = j20;
                                j15 = j14;
                            }
                        }
                        if (j17 != -1 && j18 != -1 && j15 != -1 && j16 != -1) {
                            bVar = new u2.b(j15, j16, hVarA.f2143b, j17, j18);
                        }
                        this.f14706g = bVar;
                        if (bVar != null) {
                        }
                    }
                }
            }
            i10 = 0;
        } else {
            i10 = 0;
            ((l) pVar).o(this.f14704e, false);
        }
        this.f14702c = i10;
        return i10;
    }

    @Override // l2.o
    public final void e(long j10, long j11) {
        if (j10 == 0) {
            this.f14702c = 0;
            this.f14709j = null;
        } else if (this.f14702c == 5) {
            n nVar = this.f14709j;
            nVar.getClass();
            nVar.e(j10, j11);
        }
    }

    @Override // l2.o
    public final List f() {
        u7.e0 e0Var = g0.f15471b;
        return y0.f15549e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003b, code lost:
    
        return false;
     */
    @Override // l2.o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean g(p pVar) {
        String strW;
        l lVar = (l) pVar;
        q qVar = this.f14700a;
        qVar.L(2);
        lVar.c(qVar.f15266a, 0, 2, false);
        if (qVar.I() != 65496) {
            return false;
        }
        while (true) {
            qVar.L(2);
            lVar.c(qVar.f15266a, 0, 2, false);
            int I = qVar.I();
            this.f14703d = I;
            if (I == 65498) {
                break;
            }
            qVar.L(2);
            lVar.c(qVar.f15266a, 0, 2, false);
            int I2 = qVar.I() - 2;
            if (I2 < 0) {
                break;
            }
            if (this.f14703d != 65505) {
                lVar.k(I2, false);
            } else {
                qVar.L(I2);
                lVar.c(qVar.f15266a, 0, I2, false);
                if (Objects.equals(qVar.w(), "http://ns.adobe.com/xap/1.0/") && (strW = qVar.w()) != null) {
                    String[] strArr = c.f14713a;
                    for (int i10 = 0; i10 < 4; i10++) {
                        if (strW.contains(strArr[i10] + "=\"1\"")) {
                            return true;
                        }
                    }
                }
            }
        }
    }

    public final void h() {
        u0 u0Var = this.f14701b;
        u0Var.getClass();
        u0Var.q();
        this.f14701b.s(new s(-9223372036854775807L));
        this.f14702c = 6;
    }
}
