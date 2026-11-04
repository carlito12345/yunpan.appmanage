package ye;

/* loaded from: classes.dex */
public final class c extends a {

    /* renamed from: d, reason: collision with root package name */
    public static final c f19149d = new c(1, 0);

    public c(int i10, int i11) {
        super(i10, i11, 1);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof c) {
            if (!isEmpty() || !((c) obj).isEmpty()) {
                c cVar = (c) obj;
                if (this.f19142a == cVar.f19142a) {
                    if (this.f19143b == cVar.f19143b) {
                    }
                }
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (this.f19142a * 31) + this.f19143b;
    }

    public final boolean isEmpty() {
        return this.f19142a > this.f19143b;
    }

    public final String toString() {
        return this.f19142a + ".." + this.f19143b;
    }
}
