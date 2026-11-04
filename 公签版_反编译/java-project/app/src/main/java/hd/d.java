package hd;

/* loaded from: classes.dex */
public final class d extends gd.b {
    public ad.a M0;

    /* renamed from: t0, reason: collision with root package name */
    public final int f8189t0;

    public d(vc.f fVar, int i10) {
        super(fVar);
        this.f8189t0 = i10;
        this.f4927a = (byte) 50;
    }

    @Override // gd.b
    public final int s0(int i10, int i11, byte[] bArr) {
        int i12;
        int i13 = this.f8189t0;
        ad.a dVar = i13 != -1 ? i13 != 3 ? i13 != 7 ? null : new dd.d() : new dd.e(0) : new dd.e(1);
        if (dVar != null) {
            i12 = dVar.i(i10, this.X, bArr) + i10;
            this.M0 = dVar;
        } else {
            i12 = i10;
        }
        return i12 - i10;
    }

    @Override // gd.b
    public final int t0(byte[] bArr) {
        return 0;
    }

    @Override // gd.b, ed.c
    public final String toString() {
        return new String(g.b.l(super.toString(), "]", new StringBuilder("Trans2QueryFSInformationResponse[")));
    }
}
