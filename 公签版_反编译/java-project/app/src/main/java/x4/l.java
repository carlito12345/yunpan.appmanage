package x4;

/* loaded from: classes.dex */
public abstract class l extends n {

    /* renamed from: a, reason: collision with root package name */
    public final int f18126a;

    public l(int i10) {
        this.f18126a = i10;
    }

    @Override // x4.a
    public final int c(a aVar) {
        int i10 = ((l) aVar).f18126a;
        int i11 = this.f18126a;
        if (i11 < i10) {
            return -1;
        }
        return i11 > i10 ? 1 : 0;
    }

    @Override // x4.n
    public final boolean e() {
        return true;
    }

    public final boolean equals(Object obj) {
        if (obj != null && getClass() == obj.getClass()) {
            if (this.f18126a == ((l) obj).f18126a) {
                return true;
            }
        }
        return false;
    }

    @Override // x4.n
    public final int f() {
        return this.f18126a;
    }

    @Override // x4.n
    public final long g() {
        return this.f18126a;
    }

    public final int hashCode() {
        return this.f18126a;
    }
}
