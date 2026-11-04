package hd;

/* loaded from: classes.dex */
public final class b extends gd.b {

    /* renamed from: t0, reason: collision with root package name */
    public final bd.d f8188t0;

    public b(vc.f fVar) {
        super(fVar);
        this.f8188t0 = new bd.d();
    }

    @Override // ed.c
    public final boolean h0() {
        return true;
    }

    @Override // gd.b
    public final int s0(int i10, int i11, byte[] bArr) {
        return (this.f8188t0.i(i10, i11, bArr) + i10) - i10;
    }

    @Override // gd.b
    public final int t0(byte[] bArr) {
        return 0;
    }

    @Override // gd.b, ed.c
    public final String toString() {
        return new String("Trans2GetDfsReferralResponse[" + super.toString() + ",buffer=" + this.f8188t0 + "]");
    }
}
