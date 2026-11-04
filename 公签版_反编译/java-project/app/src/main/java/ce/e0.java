package ce;

/* loaded from: classes.dex */
public final class e0 extends a {
    public byte[] F;
    public int G;
    public int H;
    public int I;
    public int K;

    public e0() {
    }

    @Override // ce.q
    public final int d(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ce.q
    public final int i(int i10, byte[] bArr) {
        this.H = q.f(i10 + 2, bArr);
        this.I = q.f(i10 + 6, bArr);
        this.K = q.f(i10 + 8, bArr);
        return (i10 + 20) - i10;
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
        StringBuilder sb2 = new StringBuilder("SmbComReadAndXResponse[");
        sb2.append(super.toString());
        sb2.append(",dataCompactionMode=");
        sb2.append(this.H);
        sb2.append(",dataLength=");
        sb2.append(this.I);
        sb2.append(",dataOffset=");
        return new String(android.support.v4.media.session.a.s(sb2, this.K, "]"));
    }

    public e0(byte[] bArr, int i10) {
        this.F = bArr;
        this.G = i10;
    }
}
