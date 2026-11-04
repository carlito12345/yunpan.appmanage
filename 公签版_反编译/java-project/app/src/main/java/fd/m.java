package fd;

/* loaded from: classes.dex */
public final class m extends ed.c {
    public m(String str, vc.f fVar) {
        super(fVar, (byte) 8, str);
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
        int i11 = i10 + 1;
        bArr[i10] = 4;
        return (r0(this.f4943t, i11, bArr) + i11) - i10;
    }

    @Override // ed.c
    public final int q0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ed.c
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("SmbComQueryInformation[");
        sb2.append(super.toString());
        sb2.append(",filename=");
        return new String(g.b.l(this.f4943t, "]", sb2));
    }
}
