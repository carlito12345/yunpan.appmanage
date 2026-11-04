package ce;

/* loaded from: classes.dex */
public final class s1 extends j0 {

    /* renamed from: t0, reason: collision with root package name */
    public final /* synthetic */ int f3172t0;

    public s1(int i10) {
        this.f3172t0 = i10;
        switch (i10) {
            case 1:
                break;
            default:
                this.S = (byte) 8;
                break;
        }
    }

    @Override // ce.j0, ce.q
    public final String toString() {
        switch (this.f3172t0) {
            case 0:
                return new String(g.b.l(super.toString(), "]", new StringBuilder("Trans2SetFileInformationResponse[")));
            default:
                return new String(g.b.l(super.toString(), "]", new StringBuilder("TransWaitNamedPipeResponse[")));
        }
    }

    @Override // ce.j0
    public final int v(int i10, int i11, byte[] bArr) {
        switch (this.f3172t0) {
        }
        return 0;
    }

    @Override // ce.j0
    public final int w(byte[] bArr) {
        switch (this.f3172t0) {
        }
        return 0;
    }
}
