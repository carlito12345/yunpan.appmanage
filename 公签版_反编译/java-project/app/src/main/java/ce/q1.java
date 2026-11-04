package ce;

/* loaded from: classes.dex */
public final class q1 extends j0 {
    public i M0;

    /* renamed from: t0, reason: collision with root package name */
    public final int f3154t0;

    public q1(int i10) {
        this.f3154t0 = i10;
        this.S = (byte) 5;
    }

    @Override // ce.j0, ce.q
    public final String toString() {
        return new String(g.b.l(super.toString(), "]", new StringBuilder("Trans2QueryPathInformationResponse[")));
    }

    @Override // ce.j0
    public final int v(int i10, int i11, byte[] bArr) {
        int i12 = this.f3154t0;
        if (i12 == 257) {
            o1 o1Var = new o1();
            o1Var.f3092a = q.l(i10, bArr);
            o1Var.f3093b = q.l(i10 + 8, bArr);
            o1Var.f3094c = q.l(i10 + 16, bArr);
            o1Var.f3095d = q.l(i10 + 24, bArr);
            o1Var.f3096e = q.f(i10 + 32, bArr);
            this.M0 = o1Var;
            return (i10 + 34) - i10;
        }
        if (i12 != 258) {
            return 0;
        }
        p1 p1Var = new p1();
        p1Var.f3109a = q.h(i10, bArr);
        p1Var.f3110b = q.h(i10 + 8, bArr);
        p1Var.f3111c = q.g(i10 + 16, bArr);
        int i13 = i10 + 21;
        p1Var.f3112d = (bArr[i10 + 20] & 255) > 0;
        int i14 = i10 + 22;
        p1Var.f3113e = (bArr[i13] & 255) > 0;
        this.M0 = p1Var;
        return i14 - i10;
    }

    @Override // ce.j0
    public final int w(byte[] bArr) {
        return 2;
    }
}
