package ce;

/* loaded from: classes.dex */
public final class f0 extends q {
    public final String C;
    public final String D;

    public f0(String str, String str2) {
        this.f3114c = (byte) 7;
        this.C = str;
        this.D = str2;
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
        int i11 = i10 + 1;
        bArr[i10] = 4;
        int iU = u(this.C, bArr, i11, this.f3126q) + i11;
        int i12 = iU + 1;
        bArr[iU] = 4;
        boolean z = this.f3126q;
        if (z) {
            bArr[i12] = 0;
            i12 = iU + 2;
        }
        return (u(this.D, bArr, i12, z) + i12) - i10;
    }

    @Override // ce.q
    public final int t(int i10, byte[] bArr) {
        q.q(22, bArr, i10);
        return 2;
    }

    @Override // ce.q
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("SmbComRename[");
        sb2.append(super.toString());
        sb2.append(",searchAttributes=0x");
        sb2.append(de.c.c(22, 4));
        sb2.append(",oldFileName=");
        sb2.append(this.C);
        sb2.append(",newFileName=");
        return new String(g.b.l(this.D, "]", sb2));
    }
}
