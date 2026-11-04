package ce;

import com.hsae.autosdk.p001os.SocConst;

/* loaded from: classes.dex */
public final class h1 extends i0 {
    public h1(String str) {
        this.f3131x = str;
        this.f3114c = SocConst.Upgrade.CUPID_DATA;
        this.X = (byte) 16;
        this.P = 0;
        this.R = 0;
        this.S = 4096;
    }

    @Override // ce.i0, ce.q
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Trans2GetDfsReferral[");
        sb2.append(super.toString());
        sb2.append(",maxReferralLevel=0x3,filename=");
        return new String(g.b.l(this.f3131x, "]", sb2));
    }

    @Override // ce.i0
    public final int v(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ce.i0
    public final int w(byte[] bArr) {
        q.q(3, bArr, 0);
        return u(this.f3131x, bArr, 2, this.f3126q) + 2;
    }

    @Override // ce.i0
    public final int x(int i10, byte[] bArr) {
        bArr[i10] = this.X;
        bArr[i10 + 1] = 0;
        return 2;
    }
}
