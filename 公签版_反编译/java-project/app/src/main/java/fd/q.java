package fd;

import com.hsae.autosdk.p001os.SocConst;

/* loaded from: classes.dex */
public final class q extends ed.c {
    public int G;
    public int H;

    public q(vc.f fVar) {
        super(fVar, SocConst.Upgrade.FLASH_DATA, null);
        this.G = 0;
    }

    @Override // ed.c
    public final int i0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ed.c
    public final int k0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ed.c
    public final int o0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ed.c
    public final int q0(int i10, byte[] bArr) {
        rd.a.e(this.G, bArr, i10);
        rd.a.e(this.H, bArr, i10 + 2);
        rd.a.f(0L, bArr, i10 + 4);
        return (i10 + 8) - i10;
    }
}
