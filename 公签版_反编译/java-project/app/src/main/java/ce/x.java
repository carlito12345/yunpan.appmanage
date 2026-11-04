package ce;

import java.io.UnsupportedEncodingException;

/* loaded from: classes.dex */
public final class x extends a {
    public final int F;
    public final int G;
    public final int H;
    public final int I;
    public int K;
    public int L;
    public int M;

    public x(String str, int i10, int i11, int i12, int i13, int i14) {
        super(null);
        this.f3131x = str;
        this.f3114c = (byte) -94;
        this.M = i11 | 137;
        this.F = i13;
        this.G = i12;
        if ((i10 & 64) == 64) {
            if ((i10 & 16) == 16) {
                this.H = 5;
            } else {
                this.H = 4;
            }
        } else if ((i10 & 16) != 16) {
            this.H = 1;
        } else if ((i10 & 32) == 32) {
            this.H = 2;
        } else {
            this.H = 3;
        }
        if ((i14 & 1) == 0) {
            this.I = i14 | 64;
        } else {
            this.I = i14;
        }
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
    public final int o(int i10, byte[] bArr) throws UnsupportedEncodingException {
        int iU = u(this.f3131x, bArr, i10, this.f3126q);
        q.q(this.f3126q ? this.f3131x.length() * 2 : iU, bArr, this.K);
        return iU;
    }

    @Override // ce.q
    public final int t(int i10, byte[] bArr) {
        bArr[i10] = 0;
        this.K = i10 + 1;
        q.r(this.L, bArr, i10 + 3);
        q.r(0, bArr, i10 + 7);
        q.r(this.M, bArr, i10 + 11);
        q.s(0L, bArr, i10 + 15);
        q.r(this.F, bArr, i10 + 23);
        q.r(this.G, bArr, i10 + 27);
        q.r(this.H, bArr, i10 + 31);
        q.r(this.I, bArr, i10 + 35);
        q.r(2, bArr, i10 + 39);
        bArr[i10 + 43] = 3;
        return (i10 + 44) - i10;
    }

    @Override // ce.a, ce.q
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("SmbComNTCreateAndX[");
        sb2.append(super.toString());
        sb2.append(",flags=0x");
        android.support.v4.media.session.a.y(this.L, 2, ",rootDirectoryFid=0,desiredAccess=0x", sb2);
        android.support.v4.media.session.a.y(this.M, 4, ",allocationSize=0,extFileAttributes=0x", sb2);
        android.support.v4.media.session.a.y(this.F, 4, ",shareAccess=0x", sb2);
        android.support.v4.media.session.a.y(this.G, 4, ",createDisposition=0x", sb2);
        android.support.v4.media.session.a.y(this.H, 4, ",createOptions=0x", sb2);
        android.support.v4.media.session.a.y(this.I, 8, ",impersonationLevel=0x", sb2);
        android.support.v4.media.session.a.y(2, 4, ",securityFlags=0x", sb2);
        android.support.v4.media.session.a.y(3, 2, ",name=", sb2);
        return new String(g.b.l(this.f3131x, "]", sb2));
    }
}
