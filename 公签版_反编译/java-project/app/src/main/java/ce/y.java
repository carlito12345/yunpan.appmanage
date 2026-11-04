package ce;

import java.util.Date;

/* loaded from: classes.dex */
public final class y extends a {
    public byte F;
    public int G;
    public int H;
    public int I;
    public int K;
    public int L;
    public long M;
    public long N;
    public long O;
    public long P;
    public long R;
    public long S;
    public boolean T;
    public boolean V;

    @Override // ce.q
    public final int d(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ce.q
    public final int i(int i10, byte[] bArr) {
        this.F = bArr[i10];
        this.G = q.f(i10 + 1, bArr);
        this.H = q.g(i10 + 3, bArr);
        this.M = q.l(i10 + 7, bArr);
        this.N = q.l(i10 + 15, bArr);
        this.O = q.l(i10 + 23, bArr);
        this.P = q.l(i10 + 31, bArr);
        this.I = q.g(i10 + 39, bArr);
        this.R = q.h(i10 + 43, bArr);
        this.S = q.h(i10 + 51, bArr);
        this.K = q.f(i10 + 59, bArr);
        this.L = q.f(i10 + 61, bArr);
        int i11 = i10 + 64;
        this.T = (bArr[i10 + 63] & 255) > 0;
        return i11 - i10;
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
        StringBuilder sb2 = new StringBuilder("SmbComNTCreateAndXResponse[");
        sb2.append(super.toString());
        sb2.append(",oplockLevel=");
        sb2.append((int) this.F);
        sb2.append(",fid=");
        sb2.append(this.G);
        sb2.append(",createAction=0x");
        sb2.append(de.c.c(this.H, 4));
        sb2.append(",creationTime=");
        sb2.append(new Date(this.M));
        sb2.append(",lastAccessTime=");
        sb2.append(new Date(this.N));
        sb2.append(",lastWriteTime=");
        sb2.append(new Date(this.O));
        sb2.append(",changeTime=");
        sb2.append(new Date(this.P));
        sb2.append(",extFileAttributes=0x");
        android.support.v4.media.session.a.y(this.I, 4, ",allocationSize=", sb2);
        sb2.append(this.R);
        sb2.append(",endOfFile=");
        sb2.append(this.S);
        sb2.append(",fileType=");
        sb2.append(this.K);
        sb2.append(",deviceState=");
        sb2.append(this.L);
        sb2.append(",directory=");
        sb2.append(this.T);
        sb2.append("]");
        return new String(sb2.toString());
    }
}
