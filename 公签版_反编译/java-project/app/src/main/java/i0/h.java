package i0;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public int[] f8303a = new int[10];

    /* renamed from: b, reason: collision with root package name */
    public int[] f8304b = new int[10];

    /* renamed from: c, reason: collision with root package name */
    public int f8305c = 0;

    /* renamed from: d, reason: collision with root package name */
    public int[] f8306d = new int[10];

    /* renamed from: e, reason: collision with root package name */
    public float[] f8307e = new float[10];

    /* renamed from: f, reason: collision with root package name */
    public int f8308f = 0;

    /* renamed from: g, reason: collision with root package name */
    public int[] f8309g = new int[5];

    /* renamed from: h, reason: collision with root package name */
    public String[] f8310h = new String[5];

    /* renamed from: i, reason: collision with root package name */
    public int f8311i = 0;

    /* renamed from: j, reason: collision with root package name */
    public int[] f8312j = new int[4];

    /* renamed from: k, reason: collision with root package name */
    public boolean[] f8313k = new boolean[4];
    public int l = 0;

    public final void a(float f10, int i10) {
        int i11 = this.f8308f;
        int[] iArr = this.f8306d;
        if (i11 >= iArr.length) {
            this.f8306d = Arrays.copyOf(iArr, iArr.length * 2);
            float[] fArr = this.f8307e;
            this.f8307e = Arrays.copyOf(fArr, fArr.length * 2);
        }
        int[] iArr2 = this.f8306d;
        int i12 = this.f8308f;
        iArr2[i12] = i10;
        float[] fArr2 = this.f8307e;
        this.f8308f = i12 + 1;
        fArr2[i12] = f10;
    }

    public final void b(int i10, int i11) {
        int i12 = this.f8305c;
        int[] iArr = this.f8303a;
        if (i12 >= iArr.length) {
            this.f8303a = Arrays.copyOf(iArr, iArr.length * 2);
            int[] iArr2 = this.f8304b;
            this.f8304b = Arrays.copyOf(iArr2, iArr2.length * 2);
        }
        int[] iArr3 = this.f8303a;
        int i13 = this.f8305c;
        iArr3[i13] = i10;
        int[] iArr4 = this.f8304b;
        this.f8305c = i13 + 1;
        iArr4[i13] = i11;
    }

    public final void c(int i10, String str) {
        int i11 = this.f8311i;
        int[] iArr = this.f8309g;
        if (i11 >= iArr.length) {
            this.f8309g = Arrays.copyOf(iArr, iArr.length * 2);
            String[] strArr = this.f8310h;
            this.f8310h = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
        }
        int[] iArr2 = this.f8309g;
        int i12 = this.f8311i;
        iArr2[i12] = i10;
        String[] strArr2 = this.f8310h;
        this.f8311i = i12 + 1;
        strArr2[i12] = str;
    }

    public final void d(int i10, boolean z) {
        int i11 = this.l;
        int[] iArr = this.f8312j;
        if (i11 >= iArr.length) {
            this.f8312j = Arrays.copyOf(iArr, iArr.length * 2);
            boolean[] zArr = this.f8313k;
            this.f8313k = Arrays.copyOf(zArr, zArr.length * 2);
        }
        int[] iArr2 = this.f8312j;
        int i12 = this.l;
        iArr2[i12] = i10;
        boolean[] zArr2 = this.f8313k;
        this.l = i12 + 1;
        zArr2[i12] = z;
    }
}
