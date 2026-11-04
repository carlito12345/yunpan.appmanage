package nd;

import ad.g;
import id.d;
import vc.f;

/* loaded from: classes.dex */
public final class a extends d {
    public byte D;
    public byte[] E;

    public a(f fVar) {
        super(fVar);
    }

    @Override // id.b
    public final int l0(int i10, byte[] bArr) throws g {
        if (rd.a.a(i10, bArr) != 24) {
            throw new g("Expected structureSize = 24");
        }
        this.D = bArr[i10 + 2];
        byte[] bArr2 = new byte[16];
        this.E = bArr2;
        System.arraycopy(bArr, i10 + 8, bArr2, 0, 16);
        return (i10 + 24) - i10;
    }

    @Override // id.b
    public final int p0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // id.b
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Smb2OpblockBreakNotification[oplockLevel=");
        sb2.append((int) this.D);
        sb2.append(",fileId=");
        byte[] bArr = this.E;
        sb2.append(ge.a.m(bArr, 0, bArr.length));
        sb2.append("]");
        return sb2.toString();
    }
}
