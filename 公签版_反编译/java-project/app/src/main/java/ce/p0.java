package ce;

/* loaded from: classes.dex */
public final class p0 extends q {
    public long C;

    @Override // ce.q
    public final int d(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ce.q
    public final int i(int i10, byte[] bArr) {
        this.C = q.f(i10, bArr) & 65535;
        return 8;
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
        StringBuilder sb2 = new StringBuilder("SmbComWriteResponse[");
        sb2.append(super.toString());
        sb2.append(",count=");
        return new String(android.support.v4.media.session.a.t(sb2, this.C, "]"));
    }
}
