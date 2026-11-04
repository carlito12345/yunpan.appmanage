package fi;

/* loaded from: classes3.dex */
public final class e extends d {

    /* renamed from: q, reason: collision with root package name */
    public final byte[] f5903q;
    public int r;

    public e(yh.b bVar) {
        this.f5903q = bVar.a(65536);
        v0();
    }

    @Override // fi.d
    public final int s0() {
        return this.r + ((int) this.f5901n) + 4;
    }

    @Override // fi.d
    public final void u0(int i10) {
        int i11 = this.r;
        this.r = i11 + 1;
        this.f5903q[i11] = (byte) i10;
    }

    public final void v0() {
        this.l = 0L;
        this.f5900m = -1;
        this.f5902o = (byte) 0;
        this.f5901n = 1L;
        this.r = 0;
    }
}
