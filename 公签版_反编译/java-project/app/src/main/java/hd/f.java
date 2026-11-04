package hd;

import dd.g;

/* loaded from: classes.dex */
public final class f extends gd.b {
    public dd.f M0;

    /* renamed from: t0, reason: collision with root package name */
    public final int f8190t0;

    public f(vc.f fVar, int i10) {
        super(fVar);
        this.f8190t0 = i10;
    }

    @Override // gd.b
    public final int s0(int i10, int i11, byte[] bArr) {
        int i12;
        int i13 = this.f8190t0;
        dd.f cVar = i13 != 4 ? i13 != 5 ? i13 != 6 ? null : new dd.c(1, false) : new g() : new dd.b();
        if (cVar != null) {
            i12 = cVar.i(i10, this.X, bArr) + i10;
            this.M0 = cVar;
        } else {
            i12 = i10;
        }
        return i12 - i10;
    }

    @Override // gd.b
    public final int t0(byte[] bArr) {
        return 2;
    }

    @Override // gd.b, ed.c
    public final String toString() {
        return new String(g.b.l(super.toString(), "]", new StringBuilder("Trans2QueryPathInformationResponse[")));
    }
}
