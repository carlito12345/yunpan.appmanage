package fd;

/* loaded from: classes.dex */
public final class l extends ed.a implements ad.i {
    public int L;
    public int M;
    public int N;
    public int O;
    public int P;
    public int R;
    public int S;
    public int T;
    public long V;

    public l(vc.f fVar) {
        super(fVar, null);
    }

    @Override // ad.i
    public final long getLastWriteTime() {
        return this.V;
    }

    @Override // ad.i
    public final long getSize() {
        throw null;
    }

    @Override // ed.c
    public final int i0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ed.c
    public final int k0(int i10, byte[] bArr) {
        this.L = rd.a.a(i10, bArr);
        this.M = rd.a.a(i10 + 2, bArr);
        this.V = (rd.a.b(i10 + 4, bArr) & 4294967295L) * 1000;
        this.N = rd.a.b(i10 + 8, bArr);
        this.O = rd.a.a(i10 + 12, bArr);
        this.P = rd.a.a(i10 + 14, bArr);
        this.R = rd.a.a(i10 + 16, bArr);
        this.S = rd.a.a(i10 + 18, bArr);
        this.T = rd.a.b(i10 + 20, bArr);
        return (i10 + 26) - i10;
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
        StringBuilder sb2 = new StringBuilder("SmbComOpenAndXResponse[");
        sb2.append(super.toString());
        sb2.append(",fid=");
        sb2.append(this.L);
        sb2.append(",fileAttributes=");
        sb2.append(this.M);
        sb2.append(",lastWriteTime=");
        sb2.append(this.V);
        sb2.append(",dataSize=");
        sb2.append(this.N);
        sb2.append(",grantedAccess=");
        sb2.append(this.O);
        sb2.append(",fileType=");
        sb2.append(this.P);
        sb2.append(",deviceState=");
        sb2.append(this.R);
        sb2.append(",action=");
        sb2.append(this.S);
        sb2.append(",serverFid=");
        return new String(android.support.v4.media.session.a.s(sb2, this.T, "]"));
    }
}
