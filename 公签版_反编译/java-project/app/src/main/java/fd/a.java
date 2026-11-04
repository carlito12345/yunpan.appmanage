package fd;

/* loaded from: classes.dex */
public final class a implements vc.j, vc.g {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f5772a;

    /* renamed from: b, reason: collision with root package name */
    public int f5773b;

    /* renamed from: c, reason: collision with root package name */
    public long f5774c;

    /* renamed from: d, reason: collision with root package name */
    public long f5775d;

    public a(boolean z) {
        this.f5772a = z;
    }

    @Override // vc.j
    public final int c(int i10, byte[] bArr) {
        if (!this.f5772a) {
            rd.a.e(this.f5773b, bArr, i10);
            rd.a.f(this.f5774c, bArr, i10 + 2);
            rd.a.f(this.f5775d, bArr, i10 + 6);
            return 10;
        }
        rd.a.e(this.f5773b, bArr, i10);
        rd.a.f(this.f5774c >> 32, bArr, i10 + 4);
        rd.a.f(this.f5774c, bArr, i10 + 8);
        rd.a.f(this.f5775d >> 32, bArr, i10 + 12);
        rd.a.f(this.f5775d, bArr, i10 + 16);
        return 20;
    }

    @Override // vc.g
    public final int i(int i10, int i11, byte[] bArr) {
        if (!this.f5772a) {
            this.f5773b = rd.a.a(i10, bArr);
            this.f5774c = rd.a.b(i10 + 2, bArr);
            this.f5775d = rd.a.b(i10 + 6, bArr);
            return 10;
        }
        this.f5773b = rd.a.a(i10, bArr);
        this.f5774c = (rd.a.b(i10 + 4, bArr) << 32) | rd.a.b(i10 + 8, bArr);
        this.f5775d = rd.a.b(i10 + 16, bArr) | (rd.a.b(i10 + 12, bArr) << 32);
        return 20;
    }

    @Override // vc.j
    public final int size() {
        return this.f5772a ? 20 : 10;
    }
}
