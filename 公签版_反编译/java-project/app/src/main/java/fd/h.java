package fd;

import java.util.Date;

/* loaded from: classes.dex */
public final class h extends ed.a implements ad.i {
    public byte L;
    public int M;
    public int N;
    public int O;
    public int P;
    public int R;
    public long S;
    public long T;
    public long V;
    public long X;
    public long Y;
    public long Z;

    /* renamed from: h0, reason: collision with root package name */
    public boolean f5792h0;

    public h(vc.f fVar) {
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
        this.L = bArr[i10];
        this.M = rd.a.a(i10 + 1, bArr);
        this.N = rd.a.b(i10 + 3, bArr);
        this.S = rd.a.d(i10 + 7, bArr);
        this.T = rd.a.d(i10 + 15, bArr);
        this.V = rd.a.d(i10 + 23, bArr);
        this.X = rd.a.d(i10 + 31, bArr);
        this.O = rd.a.b(i10 + 39, bArr);
        this.Y = rd.a.c(i10 + 43, bArr);
        this.Z = rd.a.c(i10 + 51, bArr);
        this.P = rd.a.a(i10 + 59, bArr);
        this.R = rd.a.a(i10 + 61, bArr);
        int i11 = i10 + 64;
        this.f5792h0 = (bArr[i10 + 63] & 255) > 0;
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
        StringBuilder sb2 = new StringBuilder("SmbComNTCreateAndXResponse[");
        sb2.append(super.toString());
        sb2.append(",oplockLevel=");
        sb2.append((int) this.L);
        sb2.append(",fid=");
        sb2.append(this.M);
        sb2.append(",createAction=0x");
        sb2.append(ge.a.l(this.N, 4));
        sb2.append(",creationTime=");
        sb2.append(new Date(this.S));
        sb2.append(",lastAccessTime=");
        sb2.append(new Date(this.T));
        sb2.append(",lastWriteTime=");
        sb2.append(new Date(this.V));
        sb2.append(",changeTime=");
        sb2.append(new Date(this.X));
        sb2.append(",extFileAttributes=0x");
        android.support.v4.media.session.a.E(this.O, 4, ",allocationSize=", sb2);
        sb2.append(this.Y);
        sb2.append(",endOfFile=");
        sb2.append(this.Z);
        sb2.append(",fileType=");
        sb2.append(this.P);
        sb2.append(",deviceState=");
        sb2.append(this.R);
        sb2.append(",directory=");
        sb2.append(this.f5792h0);
        sb2.append("]");
        return new String(sb2.toString());
    }
}
