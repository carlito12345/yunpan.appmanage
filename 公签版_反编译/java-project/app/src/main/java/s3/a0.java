package s3;

import java.util.List;
import l2.j0;

/* loaded from: classes.dex */
public final class a0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13990a;

    /* renamed from: b, reason: collision with root package name */
    public final List f13991b;

    /* renamed from: c, reason: collision with root package name */
    public final j0[] f13992c;

    /* renamed from: d, reason: collision with root package name */
    public final b5.i f13993d;

    public a0(List list, int i10) {
        this.f13990a = i10;
        switch (i10) {
            case 1:
                this.f13991b = list;
                this.f13992c = new j0[list.size()];
                b5.i iVar = new b5.i(new ph.j(7, this));
                this.f13993d = iVar;
                iVar.n(3);
                break;
            default:
                this.f13991b = list;
                this.f13992c = new j0[list.size()];
                this.f13993d = new b5.i(new ph.j(6, this));
                break;
        }
    }

    public void a(long j10, u1.q qVar) {
        if (qVar.a() < 9) {
            return;
        }
        int iO = qVar.o();
        int iO2 = qVar.o();
        int iB = qVar.B();
        if (iO == 434 && iO2 == 1195456820 && iB == 3) {
            this.f13993d.a(j10, qVar);
        }
    }

    public final void b(l2.q qVar, d0 d0Var) {
        switch (this.f13990a) {
            case 0:
                int i10 = 0;
                while (true) {
                    j0[] j0VarArr = this.f13992c;
                    if (i10 >= j0VarArr.length) {
                        break;
                    } else {
                        d0Var.m();
                        d0Var.n();
                        j0 j0VarZ = qVar.z(d0Var.f14064d, 3);
                        r1.p pVar = (r1.p) this.f13991b.get(i10);
                        String str = pVar.f13523o;
                        a9.o.l("application/cea-608".equals(str) || "application/cea-708".equals(str), "Invalid closed caption MIME type provided: %s", str);
                        String str2 = pVar.f13510a;
                        if (str2 == null) {
                            d0Var.n();
                            str2 = (String) d0Var.f14066f;
                        }
                        r1.o oVar = new r1.o();
                        oVar.f13480a = str2;
                        oVar.f13491m = r1.e0.l("video/mp2t");
                        oVar.f13492n = r1.e0.l(str);
                        oVar.f13484e = pVar.f13514e;
                        oVar.f13483d = pVar.f13513d;
                        oVar.K = pVar.L;
                        oVar.f13495q = pVar.r;
                        j0VarZ.g(new r1.p(oVar));
                        j0VarArr[i10] = j0VarZ;
                        i10++;
                    }
                }
                break;
            default:
                int i11 = 0;
                while (true) {
                    j0[] j0VarArr2 = this.f13992c;
                    if (i11 >= j0VarArr2.length) {
                        break;
                    } else {
                        d0Var.m();
                        d0Var.n();
                        j0 j0VarZ2 = qVar.z(d0Var.f14064d, 3);
                        r1.p pVar2 = (r1.p) this.f13991b.get(i11);
                        String str3 = pVar2.f13523o;
                        a9.o.l("application/cea-608".equals(str3) || "application/cea-708".equals(str3), "Invalid closed caption MIME type provided: %s", str3);
                        r1.o oVar2 = new r1.o();
                        d0Var.n();
                        oVar2.f13480a = (String) d0Var.f14066f;
                        oVar2.f13491m = r1.e0.l("video/mp2t");
                        oVar2.f13492n = r1.e0.l(str3);
                        oVar2.f13484e = pVar2.f13514e;
                        oVar2.f13483d = pVar2.f13513d;
                        oVar2.K = pVar2.L;
                        oVar2.f13495q = pVar2.r;
                        j0VarZ2.g(new r1.p(oVar2));
                        j0VarArr2[i11] = j0VarZ2;
                        i11++;
                    }
                }
                break;
        }
    }
}
