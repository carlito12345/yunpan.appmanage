package f2;

/* loaded from: classes.dex */
public final class y0 implements g3.g {

    /* renamed from: a, reason: collision with root package name */
    public long f5443a;

    /* renamed from: b, reason: collision with root package name */
    public long f5444b;

    /* renamed from: c, reason: collision with root package name */
    public Object f5445c;

    /* renamed from: d, reason: collision with root package name */
    public Object f5446d;

    public y0(l2.t tVar, kf.d dVar) {
        this.f5445c = tVar;
        this.f5446d = dVar;
        this.f5443a = -1L;
        this.f5444b = -1L;
    }

    @Override // g3.g
    public long c(l2.l lVar) {
        long j10 = this.f5444b;
        if (j10 < 0) {
            return -1L;
        }
        long j11 = -(j10 + 2);
        this.f5444b = -1L;
        return j11;
    }

    @Override // g3.g
    public l2.c0 d() {
        a9.o.t(this.f5443a != -1);
        return new l2.s(0, this.f5443a, (l2.t) this.f5445c);
    }

    @Override // g3.g
    public void f(long j10) {
        long[] jArr = (long[]) ((kf.d) this.f5446d).f10286b;
        this.f5444b = jArr[u1.f0.d(jArr, j10, true)];
    }

    public y0(long j10, int i10) {
        a9.o.t(((i2.a) this.f5445c) == null);
        this.f5443a = j10;
        this.f5444b = j10 + i10;
    }

    public y0(String str, byte[] bArr, long j10, long j11) {
        this.f5445c = str;
        this.f5446d = bArr;
        this.f5443a = j10;
        this.f5444b = j11;
    }
}
