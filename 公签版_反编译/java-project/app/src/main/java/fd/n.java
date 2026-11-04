package fd;

import java.util.Date;

/* loaded from: classes.dex */
public final class n extends ed.c implements ad.i {
    public int G;
    public long H;
    public final long I;
    public int K;

    public n(vc.f fVar, long j10) {
        super(fVar, (byte) 8, null);
        this.G = 0;
        this.H = 0L;
        this.K = 0;
        this.I = j10;
    }

    @Override // ad.i
    public final long getLastWriteTime() {
        return this.H + this.I;
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
        if (this.f4937k == 0) {
            return 0;
        }
        this.G = rd.a.a(i10, bArr);
        this.H = (rd.a.b(i10 + 2, bArr) & 4294967295L) * 1000;
        this.K = rd.a.b(i10 + 6, bArr);
        return 20;
    }

    @Override // ed.c
    public final int o0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ed.c
    public final int q0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ed.c
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("SmbComQueryInformationResponse[");
        sb2.append(super.toString());
        sb2.append(",fileAttributes=0x");
        sb2.append(ge.a.l(this.G, 4));
        sb2.append(",lastWriteTime=");
        sb2.append(new Date(this.H));
        sb2.append(",fileSize=");
        return new String(android.support.v4.media.session.a.s(sb2, this.K, "]"));
    }
}
