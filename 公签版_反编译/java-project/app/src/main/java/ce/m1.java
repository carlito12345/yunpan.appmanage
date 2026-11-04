package ce;

import com.hsae.autosdk.p001os.SocConst;

/* loaded from: classes.dex */
public final class m1 extends j0 {
    public Object M0;

    /* renamed from: t0, reason: collision with root package name */
    public final /* synthetic */ int f3090t0 = 0;

    public m1(w0 w0Var) {
        this.M0 = w0Var;
    }

    @Override // ce.j0, ce.q
    public final String toString() {
        switch (this.f3090t0) {
            case 0:
                return new String(g.b.l(super.toString(), "]", new StringBuilder("Trans2QueryFSInformationResponse[")));
            default:
                return new String(g.b.l(super.toString(), "]", new StringBuilder("TransTransactNamedPipeResponse[")));
        }
    }

    @Override // ce.j0
    public final int v(int i10, int i11, byte[] bArr) {
        switch (this.f3090t0) {
            case 0:
                l1 l1Var = new l1();
                l1Var.f3088c = q.g(i10 + 4, bArr);
                l1Var.f3086a = q.g(i10 + 8, bArr);
                l1Var.f3087b = q.g(i10 + 12, bArr);
                l1Var.f3089d = q.f(i10 + 16, bArr);
                this.M0 = l1Var;
                return (i10 + 20) - i10;
            default:
                u0 u0Var = ((w0) this.M0).B;
                if (u0Var != null) {
                    w1 w1Var = (w1) u0Var;
                    synchronized (w1Var.f3215k) {
                        w1Var.J(i10, i11, bArr);
                        w1Var.f3215k.notify();
                    }
                }
                return i11;
        }
    }

    @Override // ce.j0
    public final int w(byte[] bArr) {
        switch (this.f3090t0) {
        }
        return 0;
    }

    public m1() {
        this.f3114c = SocConst.Upgrade.CUPID_DATA;
        this.S = (byte) 3;
    }
}
