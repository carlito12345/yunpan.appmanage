package fd;

import java.util.Date;

/* loaded from: classes.dex */
public final class k extends ed.a {
    public final int L;
    public final int M;
    public final int N;
    public final int O;

    public k(vc.f fVar, String str, int i10, int i11, int i12) {
        super(fVar, (byte) 45, str);
        this.N = 128;
        int i13 = i10 & 3;
        this.L = i13;
        if (i13 == 3) {
            this.L = 2;
        }
        int i14 = i11 & 1;
        if (i14 != 0 && (i11 & 2) != 0) {
            this.L |= 64;
        } else if (i11 == 0) {
            this.L |= 16;
        } else if ((i11 & 2) == 0) {
            this.L |= 32;
        } else if (i14 == 0) {
            this.L |= 48;
        } else {
            this.L |= 16;
        }
        this.L &= -2;
        this.M = 22;
        if ((i12 & 64) == 64) {
            if ((i12 & 16) == 16) {
                this.O = 18;
                return;
            } else {
                this.O = 2;
                return;
            }
        }
        if ((i12 & 16) != 16) {
            this.O = 1;
        } else if ((i12 & 32) == 32) {
            this.O = 16;
        } else {
            this.O = 17;
        }
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
        int i11;
        if (this.f4939n) {
            i11 = i10 + 1;
            bArr[i10] = 0;
        } else {
            i11 = i10;
        }
        return (r0(this.f4943t, i11, bArr) + i11) - i10;
    }

    @Override // ed.c
    public final int q0(int i10, byte[] bArr) {
        long j10 = 0;
        rd.a.e(j10, bArr, i10);
        rd.a.e(this.L, bArr, i10 + 2);
        rd.a.e(this.M, bArr, i10 + 4);
        rd.a.e(this.N, bArr, i10 + 6);
        rd.a.f(j10, bArr, i10 + 8);
        rd.a.e(this.O, bArr, i10 + 12);
        rd.a.f(j10, bArr, i10 + 14);
        int i11 = i10 + 18;
        int i12 = 0;
        while (i12 < 8) {
            bArr[i11] = 0;
            i12++;
            i11++;
        }
        return i11 - i10;
    }

    @Override // ed.a
    public final int s0(vc.f fVar, byte b10) {
        if (b10 == 46) {
            return ((wc.a) fVar).a("OpenAndX.ReadAndX");
        }
        return 0;
    }

    @Override // ed.a, ed.c
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("SmbComOpenAndX[");
        sb2.append(super.toString());
        sb2.append(",flags=0x");
        sb2.append(ge.a.l(0, 2));
        sb2.append(",desiredAccess=0x");
        android.support.v4.media.session.a.E(this.L, 4, ",searchAttributes=0x", sb2);
        android.support.v4.media.session.a.E(this.M, 4, ",fileAttributes=0x", sb2);
        sb2.append(ge.a.l(this.N, 4));
        sb2.append(",creationTime=");
        sb2.append(new Date(0));
        sb2.append(",openFunction=0x");
        android.support.v4.media.session.a.E(this.O, 2, ",allocationSize=0,fileName=", sb2);
        return new String(g.b.l(this.f4943t, "]", sb2));
    }
}
