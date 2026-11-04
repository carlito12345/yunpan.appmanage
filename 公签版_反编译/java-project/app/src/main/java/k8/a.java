package k8;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: g, reason: collision with root package name */
    public static final a f10193g;

    /* renamed from: a, reason: collision with root package name */
    public final int[] f10194a;

    /* renamed from: b, reason: collision with root package name */
    public final int[] f10195b;

    /* renamed from: c, reason: collision with root package name */
    public final b f10196c;

    /* renamed from: d, reason: collision with root package name */
    public final int f10197d;

    /* renamed from: e, reason: collision with root package name */
    public final int f10198e;

    /* renamed from: f, reason: collision with root package name */
    public final int f10199f;

    static {
        new a(4201, 4096, 1);
        new a(1033, 1024, 1);
        new a(67, 64, 1);
        new a(19, 16, 1);
        f10193g = new a(285, 256, 0);
        new a(301, 256, 1);
    }

    public a(int i10, int i11, int i12) {
        this.f10198e = i10;
        this.f10197d = i11;
        this.f10199f = i12;
        this.f10194a = new int[i11];
        this.f10195b = new int[i11];
        int i13 = 1;
        for (int i14 = 0; i14 < i11; i14++) {
            this.f10194a[i14] = i13;
            i13 *= 2;
            if (i13 >= i11) {
                i13 = (i13 ^ i10) & (i11 - 1);
            }
        }
        for (int i15 = 0; i15 < i11 - 1; i15++) {
            this.f10195b[this.f10194a[i15]] = i15;
        }
        this.f10196c = new b(this, new int[]{0});
    }

    public final int a(int i10, int i11) {
        if (i10 == 0 || i11 == 0) {
            return 0;
        }
        int[] iArr = this.f10195b;
        return this.f10194a[(iArr[i10] + iArr[i11]) % (this.f10197d - 1)];
    }

    public final String toString() {
        return "GF(0x" + Integer.toHexString(this.f10198e) + ',' + this.f10197d + ')';
    }
}
