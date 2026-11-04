package d0;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class g implements Comparable {

    /* renamed from: a, reason: collision with root package name */
    public boolean f4233a;

    /* renamed from: e, reason: collision with root package name */
    public float f4237e;
    public int l;

    /* renamed from: b, reason: collision with root package name */
    public int f4234b = -1;

    /* renamed from: c, reason: collision with root package name */
    public int f4235c = -1;

    /* renamed from: d, reason: collision with root package name */
    public int f4236d = 0;

    /* renamed from: f, reason: collision with root package name */
    public boolean f4238f = false;

    /* renamed from: g, reason: collision with root package name */
    public final float[] f4239g = new float[9];

    /* renamed from: h, reason: collision with root package name */
    public final float[] f4240h = new float[9];

    /* renamed from: i, reason: collision with root package name */
    public b[] f4241i = new b[16];

    /* renamed from: j, reason: collision with root package name */
    public int f4242j = 0;

    /* renamed from: k, reason: collision with root package name */
    public int f4243k = 0;

    public g(int i10) {
        this.l = i10;
    }

    public final void a(b bVar) {
        int i10 = 0;
        while (true) {
            int i11 = this.f4242j;
            if (i10 >= i11) {
                b[] bVarArr = this.f4241i;
                if (i11 >= bVarArr.length) {
                    this.f4241i = (b[]) Arrays.copyOf(bVarArr, bVarArr.length * 2);
                }
                b[] bVarArr2 = this.f4241i;
                int i12 = this.f4242j;
                bVarArr2[i12] = bVar;
                this.f4242j = i12 + 1;
                return;
            }
            if (this.f4241i[i10] == bVar) {
                return;
            } else {
                i10++;
            }
        }
    }

    public final void b(b bVar) {
        int i10 = this.f4242j;
        int i11 = 0;
        while (i11 < i10) {
            if (this.f4241i[i11] == bVar) {
                while (i11 < i10 - 1) {
                    b[] bVarArr = this.f4241i;
                    int i12 = i11 + 1;
                    bVarArr[i11] = bVarArr[i12];
                    i11 = i12;
                }
                this.f4242j--;
                return;
            }
            i11++;
        }
    }

    public final void c() {
        this.l = 5;
        this.f4236d = 0;
        this.f4234b = -1;
        this.f4235c = -1;
        this.f4237e = 0.0f;
        this.f4238f = false;
        int i10 = this.f4242j;
        for (int i11 = 0; i11 < i10; i11++) {
            this.f4241i[i11] = null;
        }
        this.f4242j = 0;
        this.f4243k = 0;
        this.f4233a = false;
        Arrays.fill(this.f4240h, 0.0f);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f4234b - ((g) obj).f4234b;
    }

    public final void d(c cVar, float f10) {
        this.f4237e = f10;
        this.f4238f = true;
        int i10 = this.f4242j;
        this.f4235c = -1;
        for (int i11 = 0; i11 < i10; i11++) {
            this.f4241i[i11].h(cVar, this, false);
        }
        this.f4242j = 0;
    }

    public final void e(c cVar, b bVar) {
        int i10 = this.f4242j;
        for (int i11 = 0; i11 < i10; i11++) {
            this.f4241i[i11].i(cVar, bVar, false);
        }
        this.f4242j = 0;
    }

    public final String toString() {
        return "" + this.f4234b;
    }
}
