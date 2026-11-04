package ce;

/* loaded from: classes.dex */
public final class d0 extends a {
    public static final int L = wd.a.c(1, "jcifs.smb1.smb.client.ReadAndX.Close");
    public long F;
    public int G;
    public int H;
    public int I;
    public int K;

    public d0() {
        super(null);
        this.f3114c = (byte) 46;
    }

    @Override // ce.q
    public final int d(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ce.q
    public final int i(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ce.q
    public final int o(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ce.q
    public final int t(int i10, byte[] bArr) {
        q.q(this.G, bArr, i10);
        q.r(this.F, bArr, i10 + 2);
        q.q(this.H, bArr, i10 + 6);
        q.q(this.I, bArr, i10 + 8);
        q.r(-1, bArr, i10 + 10);
        q.q(this.K, bArr, i10 + 14);
        q.r(this.F >> 32, bArr, i10 + 16);
        return (i10 + 20) - i10;
    }

    @Override // ce.a, ce.q
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("SmbComReadAndX[");
        sb2.append(super.toString());
        sb2.append(",fid=");
        sb2.append(this.G);
        sb2.append(",offset=");
        sb2.append(this.F);
        sb2.append(",maxCount=");
        sb2.append(this.H);
        sb2.append(",minCount=");
        sb2.append(this.I);
        sb2.append(",openTimeout=-1,remaining=");
        sb2.append(this.K);
        sb2.append(",offset=");
        return new String(android.support.v4.media.session.a.t(sb2, this.F, "]"));
    }

    @Override // ce.a
    public final int v(byte b10) {
        if (b10 == 4) {
            return L;
        }
        return 0;
    }

    public d0(int i10, int i11, long j10) {
        super(null);
        this.G = i10;
        this.F = j10;
        this.I = i11;
        this.H = i11;
        this.f3114c = (byte) 46;
    }
}
