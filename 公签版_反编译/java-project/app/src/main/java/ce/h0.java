package ce;

/* loaded from: classes.dex */
public final class h0 extends a {
    public String F;
    public String G;
    public String H;
    public boolean I;
    public byte[] K;

    public h0(q qVar) {
        super(qVar);
        this.F = "";
        this.G = "";
        this.H = "";
        this.K = null;
    }

    @Override // ce.q
    public final int d(int i10, byte[] bArr) {
        int length;
        if (this.f3127s) {
            byte[] bArr2 = this.K;
            System.arraycopy(bArr, i10, bArr2, 0, bArr2.length);
            length = this.K.length + i10;
        } else {
            length = i10;
        }
        String strJ = j(bArr, length, 256, this.f3126q);
        this.F = strJ;
        int iN = n(length, strJ) + length;
        String strK = k(bArr, iN, this.f3125p + i10, this.f3126q);
        this.G = strK;
        int iN2 = n(iN, strK) + iN;
        if (!this.f3127s) {
            String strK2 = k(bArr, iN2, this.f3125p + i10, this.f3126q);
            this.H = strK2;
            iN2 += n(iN2, strK2);
        }
        return iN2 - i10;
    }

    @Override // ce.q
    public final int i(int i10, byte[] bArr) {
        this.I = (bArr[i10] & 1) == 1;
        int i11 = i10 + 2;
        if (this.f3127s) {
            int iF = q.f(i11, bArr);
            i11 = i10 + 4;
            this.K = new byte[iF];
        }
        return i11 - i10;
    }

    @Override // ce.q
    public final int o(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ce.q
    public final int t(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ce.a, ce.q
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("SmbComSessionSetupAndXResponse[");
        sb2.append(super.toString());
        sb2.append(",isLoggedInAsGuest=");
        sb2.append(this.I);
        sb2.append(",nativeOs=");
        sb2.append(this.F);
        sb2.append(",nativeLanMan=");
        sb2.append(this.G);
        sb2.append(",primaryDomain=");
        return new String(g.b.l(this.H, "]", sb2));
    }
}
