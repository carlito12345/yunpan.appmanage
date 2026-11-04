package fd;

/* loaded from: classes.dex */
public final class p extends ed.a {
    public final byte[] L;
    public int M;
    public int N;
    public int O;
    public int P;

    public p(vc.f fVar, byte[] bArr, int i10) {
        super(fVar, null);
        this.L = bArr;
        this.M = i10;
    }

    @Override // ed.c
    public final int i0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ed.c
    public final int k0(int i10, byte[] bArr) {
        this.N = rd.a.a(i10 + 2, bArr);
        this.O = rd.a.a(i10 + 6, bArr);
        this.P = rd.a.a(i10 + 8, bArr);
        return (i10 + 20) - i10;
    }

    @Override // ed.c
    public final int o0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ed.c
    public final int q0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ed.a, ed.c
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("SmbComReadAndXResponse[");
        sb2.append(super.toString());
        sb2.append(",dataCompactionMode=");
        sb2.append(this.N);
        sb2.append(",dataLength=");
        sb2.append(this.O);
        sb2.append(",dataOffset=");
        return new String(android.support.v4.media.session.a.s(sb2, this.P, "]"));
    }
}
