package fd;

/* loaded from: classes.dex */
public final class g extends ed.a implements ad.e {
    public final int L;
    public final int M;
    public final int N;
    public final int O;
    public final int P;
    public final byte R;
    public int S;
    public final int T;

    public g(vc.f fVar, String str, int i10, int i11, int i12, int i13) {
        super(fVar, (byte) -94, str);
        this.T = i11 | 137;
        this.L = 128;
        this.M = i12;
        if ((i10 & 64) == 64) {
            if ((i10 & 16) == 16) {
                this.N = 5;
            } else {
                this.N = 4;
            }
        } else if ((i10 & 16) != 16) {
            this.N = 1;
        } else if ((i10 & 32) == 32) {
            this.N = 2;
        } else {
            this.N = 3;
        }
        this.O = i13 | 64;
        this.P = 2;
        this.R = (byte) 3;
    }

    @Override // ad.e
    public final ad.d M(vc.b bVar) {
        h hVar = new h(bVar.e());
        s(hVar);
        return hVar;
    }

    @Override // ed.c, ad.c, ad.b
    public final ad.d b() {
        return (h) this.f4945w;
    }

    @Override // ed.c
    /* renamed from: g0 */
    public final ed.c b() {
        return (h) this.f4945w;
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
        int iR0 = r0(this.f4943t, i10, bArr);
        rd.a.e(this.f4939n ? this.f4943t.length() * 2 : iR0, bArr, this.S);
        return iR0;
    }

    @Override // ed.c
    public final int q0(int i10, byte[] bArr) {
        bArr[i10] = 0;
        this.S = i10 + 1;
        rd.a.f(0, bArr, i10 + 3);
        rd.a.f(0, bArr, i10 + 7);
        rd.a.f(this.T, bArr, i10 + 11);
        rd.a.g(0L, bArr, i10 + 15);
        rd.a.f(this.L, bArr, i10 + 23);
        rd.a.f(this.M, bArr, i10 + 27);
        rd.a.f(this.N, bArr, i10 + 31);
        rd.a.f(this.O, bArr, i10 + 35);
        rd.a.f(this.P, bArr, i10 + 39);
        bArr[i10 + 43] = this.R;
        return (i10 + 44) - i10;
    }

    @Override // ed.a, ed.c
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("SmbComNTCreateAndX[");
        sb2.append(super.toString());
        sb2.append(",flags=0x");
        android.support.v4.media.session.a.E(0, 2, ",rootDirectoryFid=0,desiredAccess=0x", sb2);
        android.support.v4.media.session.a.E(this.T, 4, ",allocationSize=0,extFileAttributes=0x", sb2);
        android.support.v4.media.session.a.E(this.L, 4, ",shareAccess=0x", sb2);
        android.support.v4.media.session.a.E(this.M, 4, ",createDisposition=0x", sb2);
        android.support.v4.media.session.a.E(this.N, 4, ",createOptions=0x", sb2);
        android.support.v4.media.session.a.E(this.O, 8, ",impersonationLevel=0x", sb2);
        android.support.v4.media.session.a.E(this.P, 4, ",securityFlags=0x", sb2);
        android.support.v4.media.session.a.E(this.R, 2, ",name=", sb2);
        return new String(g.b.l(this.f4943t, "]", sb2));
    }

    @Override // ed.c, ad.c, ad.b
    public final he.d b() {
        return (h) this.f4945w;
    }
}
