package ce;

/* loaded from: classes.dex */
public final class v extends q {
    public final int C;

    public v(int i10) {
        this.C = i10;
        this.f3114c = (byte) 52;
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
        return 0;
    }

    @Override // ce.q
    public final int t(int i10, byte[] bArr) {
        q.q(this.C, bArr, i10);
        return 2;
    }

    @Override // ce.q
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("SmbComFindClose2[");
        sb2.append(super.toString());
        sb2.append(",sid=");
        return new String(android.support.v4.media.session.a.s(sb2, this.C, "]"));
    }
}
