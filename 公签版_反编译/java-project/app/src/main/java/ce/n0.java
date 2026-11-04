package ce;

/* loaded from: classes.dex */
public final class n0 extends a {
    public static final int P = wd.a.c(1, "jcifs.smb1.smb.client.WriteAndX.ReadAndX");
    public static final int R = wd.a.c(1, "jcifs.smb1.smb.client.WriteAndX.Close");
    public int F;
    public int G;
    public int H;
    public int I;
    public int K;
    public byte[] L;
    public long M;
    public int N;
    public int O;

    public n0() {
        super(null);
        this.f3114c = (byte) 47;
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
        int i11 = i10;
        while (true) {
            int i12 = this.N;
            this.N = i12 - 1;
            if (i12 <= 0) {
                System.arraycopy(this.L, this.K, bArr, i11, this.H);
                return (i11 + this.H) - i10;
            }
            bArr[i11] = -18;
            i11++;
        }
    }

    @Override // ce.q
    public final int t(int i10, byte[] bArr) {
        int i11 = this.f3116e;
        int i12 = (i10 - i11) + 26;
        this.I = i12;
        int i13 = (i12 - i11) % 4;
        this.N = i13;
        int i14 = i13 == 0 ? 0 : 4 - i13;
        this.N = i14;
        this.I = i12 + i14;
        q.q(this.F, bArr, i10);
        q.r(this.M, bArr, i10 + 2);
        int i15 = i10 + 6;
        int i16 = 0;
        while (i16 < 4) {
            bArr[i15] = -1;
            i16++;
            i15++;
        }
        q.q(this.O, bArr, i15);
        q.q(this.G, bArr, i15 + 2);
        bArr[i15 + 4] = 0;
        bArr[i15 + 5] = 0;
        q.q(this.H, bArr, i15 + 6);
        q.q(this.I, bArr, i15 + 8);
        q.r(this.M >> 32, bArr, i15 + 10);
        return (i15 + 14) - i10;
    }

    @Override // ce.a, ce.q
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("SmbComWriteAndX[");
        sb2.append(super.toString());
        sb2.append(",fid=");
        sb2.append(this.F);
        sb2.append(",offset=");
        sb2.append(this.M);
        sb2.append(",writeMode=");
        sb2.append(this.O);
        sb2.append(",remaining=");
        sb2.append(this.G);
        sb2.append(",dataLength=");
        sb2.append(this.H);
        sb2.append(",dataOffset=");
        return new String(android.support.v4.media.session.a.s(sb2, this.I, "]"));
    }

    @Override // ce.a
    public final int v(byte b10) {
        if (b10 == 46) {
            return P;
        }
        if (b10 == 4) {
            return R;
        }
        return 0;
    }

    public n0(int i10, long j10, int i11, byte[] bArr, int i12, int i13) {
        super(null);
        this.F = i10;
        this.M = j10;
        this.G = i11;
        this.L = bArr;
        this.K = i12;
        this.H = i13;
        this.f3114c = (byte) 47;
    }
}
