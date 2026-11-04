package d0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public class b {

    /* renamed from: d, reason: collision with root package name */
    public final a f4209d;

    /* renamed from: a, reason: collision with root package name */
    public g f4206a = null;

    /* renamed from: b, reason: collision with root package name */
    public float f4207b = 0.0f;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f4208c = new ArrayList();

    /* renamed from: e, reason: collision with root package name */
    public boolean f4210e = false;

    public b(v3.f fVar) {
        this.f4209d = new a(this, fVar);
    }

    public final void a(c cVar, int i10) {
        this.f4209d.g(cVar.j(i10), 1.0f);
        this.f4209d.g(cVar.j(i10), -1.0f);
    }

    public final void b(g gVar, g gVar2, g gVar3, int i10) {
        boolean z = false;
        if (i10 != 0) {
            if (i10 < 0) {
                i10 *= -1;
                z = true;
            }
            this.f4207b = i10;
        }
        if (z) {
            this.f4209d.g(gVar, 1.0f);
            this.f4209d.g(gVar2, -1.0f);
            this.f4209d.g(gVar3, -1.0f);
        } else {
            this.f4209d.g(gVar, -1.0f);
            this.f4209d.g(gVar2, 1.0f);
            this.f4209d.g(gVar3, 1.0f);
        }
    }

    public final void c(g gVar, g gVar2, g gVar3, int i10) {
        boolean z = false;
        if (i10 != 0) {
            if (i10 < 0) {
                i10 *= -1;
                z = true;
            }
            this.f4207b = i10;
        }
        if (z) {
            this.f4209d.g(gVar, 1.0f);
            this.f4209d.g(gVar2, -1.0f);
            this.f4209d.g(gVar3, 1.0f);
        } else {
            this.f4209d.g(gVar, -1.0f);
            this.f4209d.g(gVar2, 1.0f);
            this.f4209d.g(gVar3, -1.0f);
        }
    }

    public g d(boolean[] zArr) {
        return f(zArr, null);
    }

    public boolean e() {
        return this.f4206a == null && this.f4207b == 0.0f && this.f4209d.d() == 0;
    }

    public final g f(boolean[] zArr, g gVar) {
        int i10;
        int iD = this.f4209d.d();
        g gVar2 = null;
        float f10 = 0.0f;
        for (int i11 = 0; i11 < iD; i11++) {
            float f11 = this.f4209d.f(i11);
            if (f11 < 0.0f) {
                g gVarE = this.f4209d.e(i11);
                if ((zArr == null || !zArr[gVarE.f4234b]) && gVarE != gVar && (((i10 = gVarE.l) == 3 || i10 == 4) && f11 < f10)) {
                    f10 = f11;
                    gVar2 = gVarE;
                }
            }
        }
        return gVar2;
    }

    public final void g(g gVar) {
        g gVar2 = this.f4206a;
        if (gVar2 != null) {
            this.f4209d.g(gVar2, -1.0f);
            this.f4206a.f4235c = -1;
            this.f4206a = null;
        }
        float fH = this.f4209d.h(gVar, true) * (-1.0f);
        this.f4206a = gVar;
        if (fH == 1.0f) {
            return;
        }
        this.f4207b /= fH;
        a aVar = this.f4209d;
        int i10 = aVar.f4203h;
        for (int i11 = 0; i10 != -1 && i11 < aVar.f4196a; i11++) {
            float[] fArr = aVar.f4202g;
            fArr[i10] = fArr[i10] / fH;
            i10 = aVar.f4201f[i10];
        }
    }

    public final void h(c cVar, g gVar, boolean z) {
        if (gVar == null || !gVar.f4238f) {
            return;
        }
        float fC = this.f4209d.c(gVar);
        this.f4207b = (gVar.f4237e * fC) + this.f4207b;
        this.f4209d.h(gVar, z);
        if (z) {
            gVar.b(this);
        }
        if (this.f4209d.d() == 0) {
            this.f4210e = true;
            cVar.f4213a = true;
        }
    }

    public void i(c cVar, b bVar, boolean z) {
        a aVar = this.f4209d;
        aVar.getClass();
        float fC = aVar.c(bVar.f4206a);
        aVar.h(bVar.f4206a, z);
        a aVar2 = bVar.f4209d;
        int iD = aVar2.d();
        for (int i10 = 0; i10 < iD; i10++) {
            g gVarE = aVar2.e(i10);
            aVar.a(gVarE, aVar2.c(gVarE) * fC, z);
        }
        this.f4207b = (bVar.f4207b * fC) + this.f4207b;
        if (z) {
            bVar.f4206a.b(this);
        }
        if (this.f4206a == null || this.f4209d.d() != 0) {
            return;
        }
        this.f4210e = true;
        cVar.f4213a = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0084  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String toString() {
        boolean z;
        String strJ = g.b.j(this.f4206a == null ? "0" : "" + this.f4206a, " = ");
        if (this.f4207b != 0.0f) {
            StringBuilder sbM = g.b.m(strJ);
            sbM.append(this.f4207b);
            strJ = sbM.toString();
            z = true;
        } else {
            z = false;
        }
        int iD = this.f4209d.d();
        for (int i10 = 0; i10 < iD; i10++) {
            g gVarE = this.f4209d.e(i10);
            if (gVarE != null) {
                float f10 = this.f4209d.f(i10);
                if (f10 != 0.0f) {
                    String string = gVarE.toString();
                    if (!z) {
                        if (f10 < 0.0f) {
                            strJ = g.b.j(strJ, "- ");
                            f10 *= -1.0f;
                        }
                        strJ = f10 == 1.0f ? g.b.j(strJ, string) : strJ + f10 + " " + string;
                        z = true;
                    } else if (f10 > 0.0f) {
                        strJ = g.b.j(strJ, " + ");
                        if (f10 == 1.0f) {
                        }
                        z = true;
                    } else {
                        strJ = g.b.j(strJ, " - ");
                        f10 *= -1.0f;
                        if (f10 == 1.0f) {
                        }
                        z = true;
                    }
                }
            }
        }
        return !z ? g.b.j(strJ, "0.0") : strJ;
    }
}
