package fd;

/* loaded from: classes.dex */
public final class o extends ed.a {
    public final long L;
    public final int M;
    public int N;
    public int O;
    public int P;
    public int R;

    public o(vc.f fVar, int i10, long j10, int i11) {
        super(fVar, (byte) 46, (ed.c) null);
        this.M = i10;
        this.L = j10;
        this.P = i11;
        this.O = i11;
        this.N = -1;
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
        return 0;
    }

    @Override // ed.c
    public final int q0(int i10, byte[] bArr) {
        rd.a.e(this.M, bArr, i10);
        long j10 = this.L;
        rd.a.f(j10, bArr, i10 + 2);
        rd.a.e(this.O, bArr, i10 + 6);
        rd.a.e(this.P, bArr, i10 + 8);
        rd.a.f(this.N, bArr, i10 + 10);
        rd.a.e(this.R, bArr, i10 + 14);
        rd.a.f(j10 >> 32, bArr, i10 + 16);
        return (i10 + 20) - i10;
    }

    @Override // ed.a
    public final int s0(vc.f fVar, byte b10) {
        if (b10 == 4) {
            return ((wc.a) fVar).a("ReadAndX.Close");
        }
        return 0;
    }

    @Override // ed.a, ed.c
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("SmbComReadAndX[");
        sb2.append(super.toString());
        sb2.append(",fid=");
        sb2.append(this.M);
        sb2.append(",offset=");
        long j10 = this.L;
        sb2.append(j10);
        sb2.append(",maxCount=");
        sb2.append(this.O);
        sb2.append(",minCount=");
        sb2.append(this.P);
        sb2.append(",openTimeout=");
        sb2.append(this.N);
        sb2.append(",remaining=");
        sb2.append(this.R);
        sb2.append(",offset=");
        sb2.append(j10);
        sb2.append("]");
        return new String(sb2.toString());
    }
}
