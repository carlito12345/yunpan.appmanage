package ce;

import com.hsae.autosdk.p001os.SocConst;

/* loaded from: classes.dex */
public final class r1 extends i0 {
    public final int M0;
    public final int N0;
    public final long O0;
    public final long P0;

    public r1(int i10, int i11, long j10, long j11) {
        this.M0 = i10;
        this.N0 = i11;
        this.O0 = j10;
        this.P0 = j11;
        this.f3114c = SocConst.Upgrade.CUPID_DATA;
        this.X = (byte) 8;
        this.R = 6;
        this.S = 0;
    }

    @Override // ce.i0, ce.q
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Trans2SetFileInformation[");
        sb2.append(super.toString());
        sb2.append(",fid=");
        return new String(android.support.v4.media.session.a.s(sb2, this.M0, "]"));
    }

    @Override // ce.i0
    public final int v(int i10, byte[] bArr) {
        long j10 = this.O0;
        if (j10 != 0) {
            j10 = (j10 + 11644473600000L) * 10000;
        }
        q.s(j10, bArr, i10);
        q.s(0L, bArr, i10 + 8);
        int i11 = i10 + 16;
        long j11 = this.P0;
        if (j11 != 0) {
            j11 = (j11 + 11644473600000L) * 10000;
        }
        q.s(j11, bArr, i11);
        q.s(0L, bArr, i10 + 24);
        q.q(this.N0 | 128, bArr, i10 + 32);
        q.s(0L, bArr, i10 + 34);
        return (i10 + 40) - i10;
    }

    @Override // ce.i0
    public final int w(byte[] bArr) {
        q.q(this.M0, bArr, 0);
        q.q(257L, bArr, 2);
        q.q(0L, bArr, 4);
        return 6;
    }

    @Override // ce.i0
    public final int x(int i10, byte[] bArr) {
        bArr[i10] = this.X;
        bArr[i10 + 1] = 0;
        return 2;
    }
}
