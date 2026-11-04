package ce;

import java.util.Date;

/* loaded from: classes.dex */
public final class c0 extends q implements i {
    public final long E;
    public int C = 0;
    public long D = 0;
    public int F = 0;

    public c0(long j10) {
        this.E = j10;
        this.f3114c = (byte) 8;
    }

    @Override // ce.i
    public final long a() {
        return this.D + this.E;
    }

    @Override // ce.q
    public final int d(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ce.i
    public final int getAttributes() {
        return this.C;
    }

    @Override // ce.i
    public final long getLastWriteTime() {
        return this.D + this.E;
    }

    @Override // ce.i
    public final long getSize() {
        return this.F;
    }

    @Override // ce.q
    public final int i(int i10, byte[] bArr) {
        if (this.f3124n == 0) {
            return 0;
        }
        this.C = q.f(i10, bArr);
        this.D = q.g(i10 + 2, bArr) * 1000;
        this.F = q.g(i10 + 6, bArr);
        return 20;
    }

    @Override // ce.q
    public final int o(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ce.q
    public final int t(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ce.q
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("SmbComQueryInformationResponse[");
        sb2.append(super.toString());
        sb2.append(",fileAttributes=0x");
        sb2.append(de.c.c(this.C, 4));
        sb2.append(",lastWriteTime=");
        sb2.append(new Date(this.D));
        sb2.append(",fileSize=");
        return new String(android.support.v4.media.session.a.s(sb2, this.F, "]"));
    }
}
