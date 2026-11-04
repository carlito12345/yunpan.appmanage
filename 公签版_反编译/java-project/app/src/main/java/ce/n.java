package ce;

/* loaded from: classes.dex */
public final class n extends j0 {
    public int M0;
    public int N0;

    /* renamed from: t0, reason: collision with root package name */
    public final /* synthetic */ int f3091t0;

    public /* synthetic */ n(int i10) {
        this.f3091t0 = i10;
    }

    @Override // ce.j0, ce.q
    public final String toString() {
        switch (this.f3091t0) {
            case 0:
                StringBuilder sb2 = new StringBuilder("NetShareEnumResponse[");
                sb2.append(super.toString());
                sb2.append(",status=");
                sb2.append(this.Y);
                sb2.append(",converter=");
                sb2.append(this.M0);
                sb2.append(",entriesReturned=");
                sb2.append(this.Z);
                sb2.append(",totalAvailableEntries=");
                return new String(android.support.v4.media.session.a.s(sb2, this.N0, "]"));
            default:
                return new String(g.b.l(super.toString(), "]", new StringBuilder("TransPeekNamedPipeResponse[")));
        }
    }

    @Override // ce.j0
    public final int v(int i10, int i11, byte[] bArr) {
        switch (this.f3091t0) {
            case 0:
                this.f3126q = false;
                this.f3078h0 = new z0[this.Z];
                int i12 = i10;
                for (int i13 = 0; i13 < this.Z; i13++) {
                    g[] gVarArr = this.f3078h0;
                    z0 z0Var = new z0();
                    gVarArr[i13] = z0Var;
                    z0Var.f3238a = j(bArr, i12, 13, false);
                    z0Var.f3239b = q.f(i12 + 14, bArr);
                    int iG = q.g(i12 + 16, bArr);
                    i12 += 20;
                    z0Var.f3240c = j(bArr, ((iG & 65535) - this.M0) + i10, 128, false);
                    if (de.d.f4630b >= 4) {
                        q.A.getClass();
                    }
                }
                return i12 - i10;
            default:
                return 0;
        }
    }

    @Override // ce.j0
    public final int w(byte[] bArr) {
        switch (this.f3091t0) {
            case 0:
                this.Y = q.f(0, bArr);
                this.M0 = q.f(2, bArr);
                this.Z = q.f(4, bArr);
                this.N0 = q.f(6, bArr);
                return 8;
            default:
                this.N0 = q.f(0, bArr);
                q.f(2, bArr);
                this.M0 = q.f(4, bArr);
                return 6;
        }
    }
}
