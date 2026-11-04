package d0;

import a2.g1;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class e extends b {

    /* renamed from: f, reason: collision with root package name */
    public g[] f4229f;

    /* renamed from: g, reason: collision with root package name */
    public int f4230g;

    /* renamed from: h, reason: collision with root package name */
    public final g1 f4231h;

    public e(v3.f fVar) {
        super(fVar);
        this.f4229f = new g[128];
        this.f4230g = 0;
        this.f4231h = new g1(11, this);
    }

    @Override // d0.b
    public final g d(boolean[] zArr) {
        int i10 = -1;
        for (int i11 = 0; i11 < this.f4230g; i11++) {
            g[] gVarArr = this.f4229f;
            g gVar = gVarArr[i11];
            if (!zArr[gVar.f4234b]) {
                g1 g1Var = this.f4231h;
                g1Var.f175b = gVar;
                int i12 = 8;
                if (i10 == -1) {
                    while (i12 >= 0) {
                        float f10 = ((g) g1Var.f175b).f4240h[i12];
                        if (f10 <= 0.0f) {
                            if (f10 < 0.0f) {
                                i10 = i11;
                                break;
                            }
                            i12--;
                        }
                    }
                } else {
                    g gVar2 = gVarArr[i10];
                    while (true) {
                        if (i12 >= 0) {
                            float f11 = gVar2.f4240h[i12];
                            float f12 = ((g) g1Var.f175b).f4240h[i12];
                            if (f12 == f11) {
                                i12--;
                            } else if (f12 < f11) {
                            }
                        }
                    }
                }
            }
        }
        if (i10 == -1) {
            return null;
        }
        return this.f4229f[i10];
    }

    @Override // d0.b
    public final boolean e() {
        return this.f4230g == 0;
    }

    @Override // d0.b
    public final void i(c cVar, b bVar, boolean z) {
        g gVar = bVar.f4206a;
        if (gVar == null) {
            return;
        }
        a aVar = bVar.f4209d;
        int iD = aVar.d();
        for (int i10 = 0; i10 < iD; i10++) {
            g gVarE = aVar.e(i10);
            float f10 = aVar.f(i10);
            g1 g1Var = this.f4231h;
            g1Var.f175b = gVarE;
            boolean z4 = gVarE.f4233a;
            float[] fArr = gVar.f4240h;
            if (z4) {
                boolean z10 = true;
                for (int i11 = 0; i11 < 9; i11++) {
                    float[] fArr2 = ((g) g1Var.f175b).f4240h;
                    float f11 = (fArr[i11] * f10) + fArr2[i11];
                    fArr2[i11] = f11;
                    if (Math.abs(f11) < 1.0E-4f) {
                        ((g) g1Var.f175b).f4240h[i11] = 0.0f;
                    } else {
                        z10 = false;
                    }
                }
                if (z10) {
                    ((e) g1Var.f176c).k((g) g1Var.f175b);
                }
            } else {
                for (int i12 = 0; i12 < 9; i12++) {
                    float f12 = fArr[i12];
                    if (f12 != 0.0f) {
                        float f13 = f12 * f10;
                        if (Math.abs(f13) < 1.0E-4f) {
                            f13 = 0.0f;
                        }
                        ((g) g1Var.f175b).f4240h[i12] = f13;
                    } else {
                        ((g) g1Var.f175b).f4240h[i12] = 0.0f;
                    }
                }
                j(gVarE);
            }
            this.f4207b = (bVar.f4207b * f10) + this.f4207b;
        }
        k(gVar);
    }

    public final void j(g gVar) {
        int i10 = this.f4230g + 1;
        g[] gVarArr = this.f4229f;
        if (i10 > gVarArr.length) {
            g[] gVarArr2 = (g[]) Arrays.copyOf(gVarArr, gVarArr.length * 2);
            this.f4229f = gVarArr2;
        }
        g[] gVarArr3 = this.f4229f;
        int i11 = this.f4230g;
        gVarArr3[i11] = gVar;
        int i12 = i11 + 1;
        this.f4230g = i12;
        if (i12 > 1) {
            int i13 = gVar.f4234b;
        }
        gVar.f4233a = true;
        gVar.a(this);
    }

    public final void k(g gVar) {
        int i10 = 0;
        while (i10 < this.f4230g) {
            if (this.f4229f[i10] == gVar) {
                while (true) {
                    int i11 = this.f4230g;
                    if (i10 >= i11 - 1) {
                        this.f4230g = i11 - 1;
                        gVar.f4233a = false;
                        return;
                    } else {
                        g[] gVarArr = this.f4229f;
                        int i12 = i10 + 1;
                        gVarArr[i10] = gVarArr[i12];
                        i10 = i12;
                    }
                }
            } else {
                i10++;
            }
        }
    }

    @Override // d0.b
    public final String toString() {
        String str = " goal -> (" + this.f4207b + ") : ";
        for (int i10 = 0; i10 < this.f4230g; i10++) {
            g gVar = this.f4229f[i10];
            g1 g1Var = this.f4231h;
            g1Var.f175b = gVar;
            str = str + g1Var + " ";
        }
        return str;
    }
}
