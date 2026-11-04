package hd;

import com.hsae.autosdk.p001os.SocConst;

/* loaded from: classes.dex */
public final class e extends gd.a {
    public final int P0;

    public e(vc.f fVar, String str, int i10) {
        super(fVar, SocConst.Upgrade.CUPID_DATA, (byte) 5);
        this.f4943t = str;
        this.P0 = i10;
        this.V = 0;
        this.X = 2;
        this.Y = 40;
    }

    @Override // gd.a
    public final int t0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // gd.a, ed.c
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Trans2QueryPathInformation[");
        sb2.append(super.toString());
        sb2.append(",informationLevel=0x");
        android.support.v4.media.session.a.E(this.P0, 3, ",filename=", sb2);
        return new String(g.b.l(this.f4943t, "]", sb2));
    }

    @Override // gd.a
    public final int u0(byte[] bArr) {
        long j10;
        int i10 = this.P0;
        if (i10 == 4) {
            j10 = 257;
        } else if (i10 == 5) {
            j10 = 258;
        } else {
            if (i10 != 20) {
                throw new IllegalArgumentException(da.b.a(i10, "Unsupported information level "));
            }
            j10 = 260;
        }
        rd.a.e(j10, bArr, 0);
        bArr[2] = 0;
        bArr[3] = 0;
        bArr[4] = 0;
        bArr[5] = 0;
        return r0(this.f4943t, 6, bArr) + 6;
    }

    @Override // gd.a
    public final int v0(int i10, byte[] bArr) {
        bArr[i10] = this.f6131t0;
        bArr[i10 + 1] = 0;
        return 2;
    }
}
