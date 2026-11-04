package ce;

/* loaded from: classes.dex */
public final class m0 extends q {
    public int C;
    public int D;
    public int E;
    public int F;
    public int G;
    public byte[] H;

    public m0() {
        this.f3114c = (byte) 11;
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
        bArr[i10] = 1;
        q.q(this.D, bArr, i10 + 1);
        int i11 = i10 + 3;
        System.arraycopy(this.H, this.G, bArr, i11, this.D);
        return (i11 + this.D) - i10;
    }

    @Override // ce.q
    public final int t(int i10, byte[] bArr) {
        q.q(this.C, bArr, i10);
        q.q(this.D, bArr, i10 + 2);
        q.r(this.E, bArr, i10 + 4);
        q.q(this.F, bArr, i10 + 8);
        return (i10 + 10) - i10;
    }

    @Override // ce.q
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("SmbComWrite[");
        sb2.append(super.toString());
        sb2.append(",fid=");
        sb2.append(this.C);
        sb2.append(",count=");
        sb2.append(this.D);
        sb2.append(",offset=");
        sb2.append(this.E);
        sb2.append(",remaining=");
        return new String(android.support.v4.media.session.a.s(sb2, this.F, "]"));
    }
}
