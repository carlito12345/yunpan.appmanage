package ce;

/* loaded from: classes.dex */
public final class l extends j0 {
    public int M0;
    public String N0;

    /* renamed from: t0, reason: collision with root package name */
    public int f3085t0;

    @Override // ce.j0, ce.q
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("NetServerEnum2Response[");
        sb2.append(super.toString());
        sb2.append(",status=");
        sb2.append(this.Y);
        sb2.append(",converter=");
        sb2.append(this.f3085t0);
        sb2.append(",entriesReturned=");
        sb2.append(this.Z);
        sb2.append(",totalAvailableEntries=");
        sb2.append(this.M0);
        sb2.append(",lastName=");
        return new String(g.b.l(this.N0, "]", sb2));
    }

    @Override // ce.j0
    public final int v(int i10, int i11, byte[] bArr) {
        int i12;
        this.f3078h0 = new k[this.Z];
        int i13 = i10;
        k kVar = null;
        int i14 = 0;
        while (true) {
            i12 = this.Z;
            if (i14 >= i12) {
                break;
            }
            g[] gVarArr = this.f3078h0;
            k kVar2 = new k();
            gVarArr[i14] = kVar2;
            kVar2.f3080a = j(bArr, i13, 16, false);
            kVar2.f3081b = bArr[i13 + 16] & 255;
            kVar2.f3082c = bArr[i13 + 17] & 255;
            kVar2.f3083d = q.g(i13 + 18, bArr);
            int iG = q.g(i13 + 22, bArr);
            i13 += 26;
            kVar2.f3084e = j(bArr, ((iG & 65535) - this.f3085t0) + i10, 48, false);
            if (de.d.f4630b >= 4) {
                q.A.getClass();
            }
            i14++;
            kVar = kVar2;
        }
        this.N0 = i12 != 0 ? kVar.f3080a : null;
        return i13 - i10;
    }

    @Override // ce.j0
    public final int w(byte[] bArr) {
        this.Y = q.f(0, bArr);
        this.f3085t0 = q.f(2, bArr);
        this.Z = q.f(4, bArr);
        this.M0 = q.f(6, bArr);
        return 8;
    }
}
