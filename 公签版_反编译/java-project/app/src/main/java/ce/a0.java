package ce;

import java.util.Date;

/* loaded from: classes.dex */
public final class a0 extends a {
    public static final int H = wd.a.c(1, "jcifs.smb1.smb.client.OpenAndX.ReadAndX");
    public final int F;
    public final int G;

    public a0(String str, int i10, int i11) {
        super(null);
        this.f3131x = str;
        this.f3114c = (byte) 45;
        int i12 = i10 & 3;
        this.F = i12;
        if (i12 == 3) {
            this.F = 2;
        }
        this.F = (this.F | 64) & (-2);
        if ((i11 & 64) == 64) {
            if ((i11 & 16) == 16) {
                this.G = 18;
                return;
            } else {
                this.G = 2;
                return;
            }
        }
        if ((i11 & 16) != 16) {
            this.G = 1;
        } else if ((i11 & 32) == 32) {
            this.G = 16;
        } else {
            this.G = 17;
        }
    }

    @Override // ce.q
    public final int d(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ce.q
    public final int i(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ce.q
    public final int o(int i10, byte[] bArr) {
        int i11;
        boolean z = this.f3126q;
        if (z) {
            i11 = i10 + 1;
            bArr[i10] = 0;
        } else {
            i11 = i10;
        }
        return (u(this.f3131x, bArr, i11, z) + i11) - i10;
    }

    @Override // ce.q
    public final int t(int i10, byte[] bArr) {
        long j10 = 0;
        q.q(j10, bArr, i10);
        q.q(this.F, bArr, i10 + 2);
        q.q(22, bArr, i10 + 4);
        q.q(j10, bArr, i10 + 6);
        q.r(j10, bArr, i10 + 8);
        q.q(this.G, bArr, i10 + 12);
        q.r(j10, bArr, i10 + 14);
        int i11 = i10 + 18;
        int i12 = 0;
        while (i12 < 8) {
            bArr[i11] = 0;
            i12++;
            i11++;
        }
        return i11 - i10;
    }

    @Override // ce.a, ce.q
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("SmbComOpenAndX[");
        sb2.append(super.toString());
        sb2.append(",flags=0x");
        sb2.append(de.c.c(0, 2));
        sb2.append(",desiredAccess=0x");
        android.support.v4.media.session.a.y(this.F, 4, ",searchAttributes=0x", sb2);
        android.support.v4.media.session.a.y(22, 4, ",fileAttributes=0x", sb2);
        sb2.append(de.c.c(0, 4));
        sb2.append(",creationTime=");
        sb2.append(new Date(0));
        sb2.append(",openFunction=0x");
        android.support.v4.media.session.a.y(this.G, 2, ",allocationSize=0,fileName=", sb2);
        return new String(g.b.l(this.f3131x, "]", sb2));
    }

    @Override // ce.a
    public final int v(byte b10) {
        if (b10 == 46) {
            return H;
        }
        return 0;
    }
}
