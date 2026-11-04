package hd;

import com.hsae.autosdk.p001os.SocConst;

/* loaded from: classes.dex */
public final class c extends gd.a {
    public final int P0;

    public c(vc.f fVar, int i10) {
        super(fVar, SocConst.Upgrade.CUPID_DATA, (byte) 3);
        this.P0 = i10;
        this.T = 2;
        this.V = 0;
        this.X = 0;
        this.Y = 800;
    }

    @Override // gd.a
    public final int t0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // gd.a, ed.c
    public final String toString() {
        return new String("Trans2QueryFSInformation[" + super.toString() + ",informationLevel=0x" + ge.a.l(this.P0, 3) + "]");
    }

    @Override // gd.a
    public final int u0(byte[] bArr) {
        int i10;
        int i11 = this.P0;
        if (i11 == -1) {
            i10 = 1;
        } else {
            if (i11 != 3) {
                throw new IllegalArgumentException("Unhandled information level");
            }
            i10 = 259;
        }
        rd.a.e(i10, bArr, 0);
        return 2;
    }

    @Override // gd.a
    public final int v0(int i10, byte[] bArr) {
        bArr[i10] = this.f6131t0;
        bArr[i10 + 1] = 0;
        return 2;
    }
}
