package dd;

/* loaded from: classes.dex */
public final class g implements a {

    /* renamed from: a, reason: collision with root package name */
    public long f4601a;

    /* renamed from: b, reason: collision with root package name */
    public long f4602b;

    /* renamed from: c, reason: collision with root package name */
    public int f4603c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f4604d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f4605e;

    @Override // vc.j
    public final int c(int i10, byte[] bArr) {
        rd.a.g(this.f4601a, bArr, i10);
        rd.a.g(this.f4602b, bArr, i10 + 8);
        rd.a.f(this.f4603c, bArr, i10 + 16);
        bArr[i10 + 20] = this.f4604d ? (byte) 1 : (byte) 0;
        bArr[i10 + 21] = this.f4605e ? (byte) 1 : (byte) 0;
        return (i10 + 22) - i10;
    }

    @Override // ad.i
    public final long getLastWriteTime() {
        return 0L;
    }

    @Override // ad.i
    public final long getSize() {
        throw null;
    }

    @Override // vc.g
    public final int i(int i10, int i11, byte[] bArr) {
        this.f4601a = rd.a.c(i10, bArr);
        this.f4602b = rd.a.c(i10 + 8, bArr);
        this.f4603c = rd.a.b(i10 + 16, bArr);
        int i12 = i10 + 21;
        this.f4604d = (bArr[i10 + 20] & 255) > 0;
        int i13 = i10 + 22;
        this.f4605e = (bArr[i12] & 255) > 0;
        return i13 - i10;
    }

    @Override // vc.j
    public final int size() {
        return 22;
    }

    public final String toString() {
        return new String("SmbQueryInfoStandard[allocationSize=" + this.f4601a + ",endOfFile=" + this.f4602b + ",numberOfLinks=" + this.f4603c + ",deletePending=" + this.f4604d + ",directory=" + this.f4605e + "]");
    }
}
