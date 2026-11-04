package fd;

/* loaded from: classes.dex */
public final class t extends ed.a {
    public String L;
    public String M;
    public String N;
    public boolean O;
    public byte[] P;

    public t(vc.f fVar, ed.c cVar) {
        super(fVar, cVar);
        this.L = "";
        this.M = "";
        this.N = "";
        this.P = null;
    }

    @Override // ed.c
    public final int i0(int i10, byte[] bArr) {
        int length;
        String strC;
        if (this.f4940p) {
            byte[] bArr2 = this.P;
            System.arraycopy(bArr, i10, bArr2, 0, bArr2.length);
            length = this.P.length + i10;
        } else {
            length = i10;
        }
        if (this.f4939n) {
            int i11 = (length - this.f4929c) % 2 != 0 ? length + 1 : length;
            strC = new String(bArr, i11, ge.b.b(i11, 255, bArr), ge.b.f6136b);
        } else {
            strC = ge.b.c(bArr, length, ge.b.a(length, 255, bArr), this.f4946x);
        }
        this.L = strC;
        int iM0 = m0(length, strC) + length;
        String strL0 = l0(iM0, bArr, this.f4939n);
        this.M = strL0;
        int iM02 = m0(iM0, strL0) + iM0;
        if (!this.f4940p) {
            String strL02 = l0(iM02, bArr, this.f4939n);
            this.N = strL02;
            iM02 += m0(iM02, strL02);
        }
        return iM02 - i10;
    }

    @Override // ed.c
    public final int k0(int i10, byte[] bArr) {
        this.O = (bArr[i10] & 1) == 1;
        int i11 = i10 + 2;
        if (this.f4940p) {
            int iA = rd.a.a(i11, bArr);
            i11 = i10 + 4;
            this.P = new byte[iA];
        }
        return i11 - i10;
    }

    @Override // ed.c
    public final int o0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ed.c
    public final int q0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ed.a, ed.c
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("SmbComSessionSetupAndXResponse[");
        sb2.append(super.toString());
        sb2.append(",isLoggedInAsGuest=");
        sb2.append(this.O);
        sb2.append(",nativeOs=");
        sb2.append(this.L);
        sb2.append(",nativeLanMan=");
        sb2.append(this.M);
        sb2.append(",primaryDomain=");
        return new String(g.b.l(this.N, "]", sb2));
    }
}
