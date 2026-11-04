package fd;

/* loaded from: classes.dex */
public final class z extends ed.a {
    public long L;

    public z(vc.f fVar) {
        super(fVar, null);
    }

    @Override // ed.c
    public final int i0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ed.c
    public final int k0(int i10, byte[] bArr) {
        this.L = rd.a.a(i10, bArr) & 65535;
        return 8;
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
        StringBuilder sb2 = new StringBuilder("SmbComWriteAndXResponse[");
        sb2.append(super.toString());
        sb2.append(",count=");
        return new String(android.support.v4.media.session.a.t(sb2, this.L, "]"));
    }
}
