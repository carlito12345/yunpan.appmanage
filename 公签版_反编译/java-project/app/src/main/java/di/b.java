package di;

/* loaded from: classes3.dex */
public final class b {

    /* renamed from: i, reason: collision with root package name */
    public static final int[] f4690i = new int[256];

    /* renamed from: a, reason: collision with root package name */
    public final int f4691a;

    /* renamed from: b, reason: collision with root package name */
    public final int[] f4692b;

    /* renamed from: c, reason: collision with root package name */
    public final int[] f4693c;

    /* renamed from: d, reason: collision with root package name */
    public final int[] f4694d;

    /* renamed from: e, reason: collision with root package name */
    public final int f4695e;

    /* renamed from: f, reason: collision with root package name */
    public int f4696f = 0;

    /* renamed from: g, reason: collision with root package name */
    public int f4697g = 0;

    /* renamed from: h, reason: collision with root package name */
    public int f4698h = 0;

    static {
        for (int i10 = 0; i10 < 256; i10++) {
            int i11 = i10;
            for (int i12 = 0; i12 < 8; i12++) {
                i11 = (i11 & 1) != 0 ? (i11 >>> 1) ^ (-306674912) : i11 >>> 1;
            }
            f4690i[i10] = i11;
        }
    }

    public b(int i10, yh.b bVar) {
        this.f4692b = bVar.b(1024, true);
        this.f4693c = bVar.b(65536, true);
        int i11 = i10 - 1;
        int i12 = i11 | (i11 >>> 1);
        int i13 = i12 | (i12 >>> 2);
        int i14 = i13 | (i13 >>> 4);
        int i15 = ((i14 | (i14 >>> 8)) >>> 1) | 65535;
        i15 = i15 > 16777216 ? i15 >>> 1 : i15;
        int i16 = i15 + 1;
        this.f4695e = i16;
        this.f4694d = bVar.b(i16, true);
        this.f4691a = i15;
    }

    public final void a(int i10, byte[] bArr) {
        int[] iArr = f4690i;
        int i11 = iArr[bArr[i10] & 255] ^ (bArr[i10 + 1] & 255);
        this.f4696f = i11 & 1023;
        int i12 = i11 ^ ((bArr[i10 + 2] & 255) << 8);
        this.f4697g = 65535 & i12;
        this.f4698h = ((iArr[bArr[i10 + 3] & 255] << 5) ^ i12) & this.f4691a;
    }

    public final void b(int i10) {
        this.f4692b[this.f4696f] = i10;
        this.f4693c[this.f4697g] = i10;
        this.f4694d[this.f4698h] = i10;
    }
}
