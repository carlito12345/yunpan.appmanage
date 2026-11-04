package fd;

/* loaded from: classes.dex */
public final class x extends ed.c {
    public int G;
    public int H;
    public int I;
    public int K;
    public int L;
    public byte[] M;

    public x(vc.f fVar) {
        super(fVar, (byte) 11, null);
    }

    @Override // ed.c
    public final int i0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ed.c
    public final int k0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ed.c
    public final int o0(int i10, byte[] bArr) {
        bArr[i10] = 1;
        rd.a.e(this.H, bArr, i10 + 1);
        int i11 = i10 + 3;
        System.arraycopy(this.M, this.L, bArr, i11, this.H);
        return (i11 + this.H) - i10;
    }

    @Override // ed.c
    public final int q0(int i10, byte[] bArr) {
        rd.a.e(this.G, bArr, i10);
        rd.a.e(this.H, bArr, i10 + 2);
        rd.a.f(this.I, bArr, i10 + 4);
        rd.a.e(this.K, bArr, i10 + 8);
        return (i10 + 10) - i10;
    }

    @Override // ed.c
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("SmbComWrite[");
        sb2.append(super.toString());
        sb2.append(",fid=");
        sb2.append(this.G);
        sb2.append(",count=");
        sb2.append(this.H);
        sb2.append(",offset=");
        sb2.append(this.I);
        sb2.append(",remaining=");
        return new String(android.support.v4.media.session.a.s(sb2, this.K, "]"));
    }
}
