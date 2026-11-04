package ce;

import com.hsae.autosdk.p001os.SocConst;

/* loaded from: classes.dex */
public final class k1 extends i0 {
    public k1() {
        this.f3114c = SocConst.Upgrade.CUPID_DATA;
        this.X = (byte) 3;
        this.O = 2;
        this.P = 0;
        this.R = 0;
        this.S = 800;
    }

    @Override // ce.i0, ce.q
    public final String toString() {
        return new String("Trans2QueryFSInformation[" + super.toString() + ",informationLevel=0x" + de.c.c(1, 3) + "]");
    }

    @Override // ce.i0
    public final int v(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ce.i0
    public final int w(byte[] bArr) {
        q.q(1, bArr, 0);
        return 2;
    }

    @Override // ce.i0
    public final int x(int i10, byte[] bArr) {
        bArr[i10] = this.X;
        bArr[i10 + 1] = 0;
        return 2;
    }
}
