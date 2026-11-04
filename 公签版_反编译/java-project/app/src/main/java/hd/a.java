package hd;

import com.hsae.autosdk.p001os.SocConst;

/* loaded from: classes.dex */
public final class a extends gd.a {
    public final bd.c P0;

    public a(String str, vc.f fVar) {
        super(fVar, SocConst.Upgrade.CUPID_DATA, (byte) 16);
        this.P0 = new bd.c(str, 0);
        this.V = 0;
        this.X = 0;
        this.Y = 4096;
    }

    @Override // gd.a
    public final int t0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // gd.a, ed.c
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Trans2GetDfsReferral[");
        sb2.append(super.toString());
        sb2.append(",maxReferralLevel=0x3,filename=");
        return new String(g.b.l(this.f4943t, "]", sb2));
    }

    @Override // gd.a
    public final int u0(byte[] bArr) {
        return this.P0.c(0, bArr);
    }

    @Override // gd.a
    public final int v0(int i10, byte[] bArr) {
        bArr[i10] = this.f6131t0;
        bArr[i10 + 1] = 0;
        return 2;
    }
}
