package dd;

/* loaded from: classes.dex */
public final class d implements ad.a, h, vc.g {

    /* renamed from: a, reason: collision with root package name */
    public long f4592a;

    /* renamed from: b, reason: collision with root package name */
    public long f4593b;

    /* renamed from: c, reason: collision with root package name */
    public int f4594c;

    /* renamed from: d, reason: collision with root package name */
    public int f4595d;

    @Override // vc.g
    public final int i(int i10, int i11, byte[] bArr) {
        this.f4592a = rd.a.c(i10, bArr);
        this.f4593b = rd.a.c(i10 + 8, bArr);
        this.f4594c = rd.a.b(i10 + 24, bArr);
        this.f4595d = rd.a.b(i10 + 28, bArr);
        return (i10 + 32) - i10;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("SmbInfoAllocation[alloc=");
        sb2.append(this.f4592a);
        sb2.append(",free=");
        sb2.append(this.f4593b);
        sb2.append(",sectPerAlloc=");
        sb2.append(this.f4594c);
        sb2.append(",bytesPerSect=");
        return new String(android.support.v4.media.session.a.s(sb2, this.f4595d, "]"));
    }

    @Override // ad.a
    public final long w() {
        return this.f4592a * this.f4594c * this.f4595d;
    }
}
