package ce;

import com.hsae.autosdk.p001os.SocConst;

/* loaded from: classes.dex */
public final class n1 extends i0 {
    public final int M0;

    public n1(String str, int i10) {
        this.f3131x = str;
        this.M0 = i10;
        this.f3114c = SocConst.Upgrade.CUPID_DATA;
        this.X = (byte) 5;
        this.P = 0;
        this.R = 2;
        this.S = 40;
    }

    @Override // ce.i0, ce.q
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Trans2QueryPathInformation[");
        sb2.append(super.toString());
        sb2.append(",informationLevel=0x");
        android.support.v4.media.session.a.y(this.M0, 3, ",filename=", sb2);
        return new String(g.b.l(this.f3131x, "]", sb2));
    }

    @Override // ce.i0
    public final int v(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ce.i0
    public final int w(byte[] bArr) {
        q.q(this.M0, bArr, 0);
        bArr[2] = 0;
        bArr[3] = 0;
        bArr[4] = 0;
        bArr[5] = 0;
        return u(this.f3131x, bArr, 6, this.f3126q) + 6;
    }

    @Override // ce.i0
    public final int x(int i10, byte[] bArr) {
        bArr[i10] = this.X;
        bArr[i10 + 1] = 0;
        return 2;
    }
}
