package ce;

/* loaded from: classes.dex */
public final class b0 extends a {
    public int F;
    public int G;
    public int H;
    public int I;
    public int K;
    public int L;
    public int M;
    public int N;
    public long O;

    @Override // ce.q
    public final int d(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ce.q
    public final int i(int i10, byte[] bArr) {
        this.F = q.f(i10, bArr);
        this.G = q.f(i10 + 2, bArr);
        this.O = q.g(i10 + 4, bArr) * 1000;
        this.H = q.g(i10 + 8, bArr);
        this.I = q.f(i10 + 12, bArr);
        this.K = q.f(i10 + 14, bArr);
        this.L = q.f(i10 + 16, bArr);
        this.M = q.f(i10 + 18, bArr);
        this.N = q.g(i10 + 20, bArr);
        return (i10 + 26) - i10;
    }

    @Override // ce.q
    public final int o(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ce.q
    public final int t(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ce.a, ce.q
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("SmbComOpenAndXResponse[");
        sb2.append(super.toString());
        sb2.append(",fid=");
        sb2.append(this.F);
        sb2.append(",fileAttributes=");
        sb2.append(this.G);
        sb2.append(",lastWriteTime=");
        sb2.append(this.O);
        sb2.append(",dataSize=");
        sb2.append(this.H);
        sb2.append(",grantedAccess=");
        sb2.append(this.I);
        sb2.append(",fileType=");
        sb2.append(this.K);
        sb2.append(",deviceState=");
        sb2.append(this.L);
        sb2.append(",action=");
        sb2.append(this.M);
        sb2.append(",serverFid=");
        return new String(android.support.v4.media.session.a.s(sb2, this.N, "]"));
    }
}
