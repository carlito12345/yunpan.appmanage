package rh;

/* loaded from: classes3.dex */
public final class k extends p {

    /* renamed from: a, reason: collision with root package name */
    public final int f13797a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f13798b;

    public k(int i10, int i11) {
        this.f13798b = i11;
        this.f13797a = i10;
    }

    @Override // rh.p
    public final boolean b(ph.l lVar, ph.l lVar2) {
        switch (this.f13798b) {
            case 0:
                if (lVar2.G() == this.f13797a) {
                }
                break;
            case 1:
                if (lVar2.G() > this.f13797a) {
                }
                break;
            default:
                if (lVar == lVar2 || lVar2.G() >= this.f13797a) {
                }
                break;
        }
        return false;
    }

    public final String toString() {
        int i10 = this.f13797a;
        switch (this.f13798b) {
            case 0:
                return String.format(":eq(%d)", Integer.valueOf(i10));
            case 1:
                return String.format(":gt(%d)", Integer.valueOf(i10));
            default:
                return String.format(":lt(%d)", Integer.valueOf(i10));
        }
    }
}
