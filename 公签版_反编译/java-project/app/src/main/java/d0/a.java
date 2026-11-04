package d0;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: b, reason: collision with root package name */
    public final b f4197b;

    /* renamed from: c, reason: collision with root package name */
    public final v3.f f4198c;

    /* renamed from: a, reason: collision with root package name */
    public int f4196a = 0;

    /* renamed from: d, reason: collision with root package name */
    public int f4199d = 8;

    /* renamed from: e, reason: collision with root package name */
    public int[] f4200e = new int[8];

    /* renamed from: f, reason: collision with root package name */
    public int[] f4201f = new int[8];

    /* renamed from: g, reason: collision with root package name */
    public float[] f4202g = new float[8];

    /* renamed from: h, reason: collision with root package name */
    public int f4203h = -1;

    /* renamed from: i, reason: collision with root package name */
    public int f4204i = -1;

    /* renamed from: j, reason: collision with root package name */
    public boolean f4205j = false;

    public a(b bVar, v3.f fVar) {
        this.f4197b = bVar;
        this.f4198c = fVar;
    }

    public final void a(g gVar, float f10, boolean z) {
        if (f10 <= -0.001f || f10 >= 0.001f) {
            int i10 = this.f4203h;
            b bVar = this.f4197b;
            if (i10 == -1) {
                this.f4203h = 0;
                this.f4202g[0] = f10;
                this.f4200e[0] = gVar.f4234b;
                this.f4201f[0] = -1;
                gVar.f4243k++;
                gVar.a(bVar);
                this.f4196a++;
                if (this.f4205j) {
                    return;
                }
                int i11 = this.f4204i + 1;
                this.f4204i = i11;
                int[] iArr = this.f4200e;
                if (i11 >= iArr.length) {
                    this.f4205j = true;
                    this.f4204i = iArr.length - 1;
                    return;
                }
                return;
            }
            int i12 = -1;
            for (int i13 = 0; i10 != -1 && i13 < this.f4196a; i13++) {
                int i14 = this.f4200e[i10];
                int i15 = gVar.f4234b;
                if (i14 == i15) {
                    float[] fArr = this.f4202g;
                    float f11 = fArr[i10] + f10;
                    if (f11 > -0.001f && f11 < 0.001f) {
                        f11 = 0.0f;
                    }
                    fArr[i10] = f11;
                    if (f11 == 0.0f) {
                        if (i10 == this.f4203h) {
                            this.f4203h = this.f4201f[i10];
                        } else {
                            int[] iArr2 = this.f4201f;
                            iArr2[i12] = iArr2[i10];
                        }
                        if (z) {
                            gVar.b(bVar);
                        }
                        if (this.f4205j) {
                            this.f4204i = i10;
                        }
                        gVar.f4243k--;
                        this.f4196a--;
                        return;
                    }
                    return;
                }
                if (i14 < i15) {
                    i12 = i10;
                }
                i10 = this.f4201f[i10];
            }
            int length = this.f4204i;
            int i16 = length + 1;
            if (this.f4205j) {
                int[] iArr3 = this.f4200e;
                if (iArr3[length] != -1) {
                    length = iArr3.length;
                }
            } else {
                length = i16;
            }
            int[] iArr4 = this.f4200e;
            if (length >= iArr4.length && this.f4196a < iArr4.length) {
                int i17 = 0;
                while (true) {
                    int[] iArr5 = this.f4200e;
                    if (i17 >= iArr5.length) {
                        break;
                    }
                    if (iArr5[i17] == -1) {
                        length = i17;
                        break;
                    }
                    i17++;
                }
            }
            int[] iArr6 = this.f4200e;
            if (length >= iArr6.length) {
                length = iArr6.length;
                int i18 = this.f4199d * 2;
                this.f4199d = i18;
                this.f4205j = false;
                this.f4204i = length - 1;
                this.f4202g = Arrays.copyOf(this.f4202g, i18);
                this.f4200e = Arrays.copyOf(this.f4200e, this.f4199d);
                this.f4201f = Arrays.copyOf(this.f4201f, this.f4199d);
            }
            this.f4200e[length] = gVar.f4234b;
            this.f4202g[length] = f10;
            if (i12 != -1) {
                int[] iArr7 = this.f4201f;
                iArr7[length] = iArr7[i12];
                iArr7[i12] = length;
            } else {
                this.f4201f[length] = this.f4203h;
                this.f4203h = length;
            }
            gVar.f4243k++;
            gVar.a(bVar);
            this.f4196a++;
            if (!this.f4205j) {
                this.f4204i++;
            }
            int i19 = this.f4204i;
            int[] iArr8 = this.f4200e;
            if (i19 >= iArr8.length) {
                this.f4205j = true;
                this.f4204i = iArr8.length - 1;
            }
        }
    }

    public final void b() {
        int i10 = this.f4203h;
        for (int i11 = 0; i10 != -1 && i11 < this.f4196a; i11++) {
            g gVar = ((g[]) this.f4198c.f16476d)[this.f4200e[i10]];
            if (gVar != null) {
                gVar.b(this.f4197b);
            }
            i10 = this.f4201f[i10];
        }
        this.f4203h = -1;
        this.f4204i = -1;
        this.f4205j = false;
        this.f4196a = 0;
    }

    public final float c(g gVar) {
        int i10 = this.f4203h;
        for (int i11 = 0; i10 != -1 && i11 < this.f4196a; i11++) {
            if (this.f4200e[i10] == gVar.f4234b) {
                return this.f4202g[i10];
            }
            i10 = this.f4201f[i10];
        }
        return 0.0f;
    }

    public final int d() {
        return this.f4196a;
    }

    public final g e(int i10) {
        int i11 = this.f4203h;
        for (int i12 = 0; i11 != -1 && i12 < this.f4196a; i12++) {
            if (i12 == i10) {
                return ((g[]) this.f4198c.f16476d)[this.f4200e[i11]];
            }
            i11 = this.f4201f[i11];
        }
        return null;
    }

    public final float f(int i10) {
        int i11 = this.f4203h;
        for (int i12 = 0; i11 != -1 && i12 < this.f4196a; i12++) {
            if (i12 == i10) {
                return this.f4202g[i11];
            }
            i11 = this.f4201f[i11];
        }
        return 0.0f;
    }

    public final void g(g gVar, float f10) {
        if (f10 == 0.0f) {
            h(gVar, true);
            return;
        }
        int i10 = this.f4203h;
        b bVar = this.f4197b;
        if (i10 == -1) {
            this.f4203h = 0;
            this.f4202g[0] = f10;
            this.f4200e[0] = gVar.f4234b;
            this.f4201f[0] = -1;
            gVar.f4243k++;
            gVar.a(bVar);
            this.f4196a++;
            if (this.f4205j) {
                return;
            }
            int i11 = this.f4204i + 1;
            this.f4204i = i11;
            int[] iArr = this.f4200e;
            if (i11 >= iArr.length) {
                this.f4205j = true;
                this.f4204i = iArr.length - 1;
                return;
            }
            return;
        }
        int i12 = -1;
        for (int i13 = 0; i10 != -1 && i13 < this.f4196a; i13++) {
            int i14 = this.f4200e[i10];
            int i15 = gVar.f4234b;
            if (i14 == i15) {
                this.f4202g[i10] = f10;
                return;
            }
            if (i14 < i15) {
                i12 = i10;
            }
            i10 = this.f4201f[i10];
        }
        int length = this.f4204i;
        int i16 = length + 1;
        if (this.f4205j) {
            int[] iArr2 = this.f4200e;
            if (iArr2[length] != -1) {
                length = iArr2.length;
            }
        } else {
            length = i16;
        }
        int[] iArr3 = this.f4200e;
        if (length >= iArr3.length && this.f4196a < iArr3.length) {
            int i17 = 0;
            while (true) {
                int[] iArr4 = this.f4200e;
                if (i17 >= iArr4.length) {
                    break;
                }
                if (iArr4[i17] == -1) {
                    length = i17;
                    break;
                }
                i17++;
            }
        }
        int[] iArr5 = this.f4200e;
        if (length >= iArr5.length) {
            length = iArr5.length;
            int i18 = this.f4199d * 2;
            this.f4199d = i18;
            this.f4205j = false;
            this.f4204i = length - 1;
            this.f4202g = Arrays.copyOf(this.f4202g, i18);
            this.f4200e = Arrays.copyOf(this.f4200e, this.f4199d);
            this.f4201f = Arrays.copyOf(this.f4201f, this.f4199d);
        }
        this.f4200e[length] = gVar.f4234b;
        this.f4202g[length] = f10;
        if (i12 != -1) {
            int[] iArr6 = this.f4201f;
            iArr6[length] = iArr6[i12];
            iArr6[i12] = length;
        } else {
            this.f4201f[length] = this.f4203h;
            this.f4203h = length;
        }
        gVar.f4243k++;
        gVar.a(bVar);
        int i19 = this.f4196a + 1;
        this.f4196a = i19;
        if (!this.f4205j) {
            this.f4204i++;
        }
        int[] iArr7 = this.f4200e;
        if (i19 >= iArr7.length) {
            this.f4205j = true;
        }
        if (this.f4204i >= iArr7.length) {
            this.f4205j = true;
            this.f4204i = iArr7.length - 1;
        }
    }

    public final float h(g gVar, boolean z) {
        int i10 = this.f4203h;
        if (i10 == -1) {
            return 0.0f;
        }
        int i11 = 0;
        int i12 = -1;
        while (i10 != -1 && i11 < this.f4196a) {
            if (this.f4200e[i10] == gVar.f4234b) {
                if (i10 == this.f4203h) {
                    this.f4203h = this.f4201f[i10];
                } else {
                    int[] iArr = this.f4201f;
                    iArr[i12] = iArr[i10];
                }
                if (z) {
                    gVar.b(this.f4197b);
                }
                gVar.f4243k--;
                this.f4196a--;
                this.f4200e[i10] = -1;
                if (this.f4205j) {
                    this.f4204i = i10;
                }
                return this.f4202g[i10];
            }
            i11++;
            i12 = i10;
            i10 = this.f4201f[i10];
        }
        return 0.0f;
    }

    public final String toString() {
        int i10 = this.f4203h;
        String string = "";
        for (int i11 = 0; i10 != -1 && i11 < this.f4196a; i11++) {
            StringBuilder sbM = g.b.m(g.b.j(string, " -> "));
            sbM.append(this.f4202g[i10]);
            sbM.append(" : ");
            StringBuilder sbM2 = g.b.m(sbM.toString());
            sbM2.append(((g[]) this.f4198c.f16476d)[this.f4200e[i10]]);
            string = sbM2.toString();
            i10 = this.f4201f[i10];
        }
        return string;
    }
}
