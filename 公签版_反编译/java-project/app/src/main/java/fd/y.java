package fd;

/* loaded from: classes.dex */
public final class y extends ed.a {
    public int L;
    public int M;
    public int N;
    public int O;
    public int P;
    public byte[] R;
    public long S;
    public int T;
    public int V;

    public y(vc.f fVar) {
        super(fVar, (byte) 47, (ed.c) null);
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
        int i11 = i10;
        while (true) {
            int i12 = this.T;
            this.T = i12 - 1;
            if (i12 <= 0) {
                System.arraycopy(this.R, this.P, bArr, i11, this.N);
                return (i11 + this.N) - i10;
            }
            bArr[i11] = -18;
            i11++;
        }
    }

    @Override // ed.c
    public final int q0(int i10, byte[] bArr) {
        int i11 = this.f4929c;
        int i12 = (i10 - i11) + 26;
        this.O = i12;
        int i13 = (i12 - i11) % 4;
        this.T = i13;
        int i14 = i13 == 0 ? 0 : 4 - i13;
        this.T = i14;
        this.O = i12 + i14;
        rd.a.e(this.L, bArr, i10);
        rd.a.f(this.S, bArr, i10 + 2);
        int i15 = i10 + 6;
        int i16 = 0;
        while (i16 < 4) {
            bArr[i15] = -1;
            i16++;
            i15++;
        }
        rd.a.e(this.V, bArr, i15);
        rd.a.e(this.M, bArr, i15 + 2);
        bArr[i15 + 4] = 0;
        bArr[i15 + 5] = 0;
        rd.a.e(this.N, bArr, i15 + 6);
        rd.a.e(this.O, bArr, i15 + 8);
        rd.a.f(this.S >> 32, bArr, i15 + 10);
        return (i15 + 14) - i10;
    }

    @Override // ed.a
    public final int s0(vc.f fVar, byte b10) {
        if (b10 == 46) {
            return ((wc.a) fVar).a("WriteAndX.ReadAndX");
        }
        if (b10 == 4) {
            return ((wc.a) fVar).a("WriteAndX.Close");
        }
        return 0;
    }

    @Override // ed.a, ed.c
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("SmbComWriteAndX[");
        sb2.append(super.toString());
        sb2.append(",fid=");
        sb2.append(this.L);
        sb2.append(",offset=");
        sb2.append(this.S);
        sb2.append(",writeMode=");
        sb2.append(this.V);
        sb2.append(",remaining=");
        sb2.append(this.M);
        sb2.append(",dataLength=");
        sb2.append(this.N);
        sb2.append(",dataOffset=");
        return new String(android.support.v4.media.session.a.s(sb2, this.O, "]"));
    }

    public y(vc.f fVar, int i10, long j10, int i11, byte[] bArr, int i12, int i13) {
        super(fVar, (byte) 47, (ed.c) null);
        this.L = i10;
        this.S = j10;
        this.M = i11;
        this.R = bArr;
        this.P = i12;
        this.N = i13;
    }
}
