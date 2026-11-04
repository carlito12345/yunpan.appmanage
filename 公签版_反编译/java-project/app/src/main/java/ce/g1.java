package ce;

import com.hsae.autosdk.p001os.SocConst;
import com.hsae.autosdk.source.SourceConst;

/* loaded from: classes.dex */
public final class g1 extends i0 {
    public final int M0;
    public int N0;
    public String O0;

    public g1(int i10, int i11, String str) {
        this.M0 = i10;
        this.N0 = i11;
        this.O0 = str;
        this.f3114c = SocConst.Upgrade.CUPID_DATA;
        this.X = (byte) 2;
        this.R = 8;
        this.S = d1.P0;
    }

    @Override // ce.i0, ce.q
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Trans2FindNext2[");
        sb2.append(super.toString());
        sb2.append(",sid=");
        sb2.append(this.M0);
        sb2.append(",searchCount=");
        sb2.append(d1.P0);
        sb2.append(",informationLevel=0x");
        sb2.append(de.c.c(SourceConst.IOCTL_FUNCTION_MIC1, 3));
        sb2.append(",resumeKey=0x");
        android.support.v4.media.session.a.y(this.N0, 4, ",flags=0x", sb2);
        android.support.v4.media.session.a.y(0, 2, ",filename=", sb2);
        return new String(g.b.l(this.O0, "]", sb2));
    }

    @Override // ce.i0
    public final int v(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ce.i0
    public final int w(byte[] bArr) {
        q.q(this.M0, bArr, 0);
        q.q(d1.Q0, bArr, 2);
        q.q(SourceConst.IOCTL_FUNCTION_MIC1, bArr, 4);
        q.r(this.N0, bArr, 6);
        q.q(0, bArr, 10);
        return u(this.O0, bArr, 12, this.f3126q) + 12;
    }

    @Override // ce.i0
    public final int x(int i10, byte[] bArr) {
        bArr[i10] = this.X;
        bArr[i10 + 1] = 0;
        return 2;
    }
}
