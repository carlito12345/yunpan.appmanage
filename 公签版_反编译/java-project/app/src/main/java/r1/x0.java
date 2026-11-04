package r1;

/* loaded from: classes.dex */
public final class x0 {

    /* renamed from: b, reason: collision with root package name */
    public static final x0 f13624b;

    /* renamed from: a, reason: collision with root package name */
    public final u7.g0 f13625a;

    static {
        u7.e0 e0Var = u7.g0.f15471b;
        f13624b = new x0(u7.y0.f15549e);
        u1.f0.B(0);
    }

    public x0(u7.g0 g0Var) {
        this.f13625a = u7.g0.m(g0Var);
    }

    public final boolean a(int i10) {
        int i11 = 0;
        while (true) {
            u7.g0 g0Var = this.f13625a;
            if (i11 >= g0Var.size()) {
                return false;
            }
            w0 w0Var = (w0) g0Var.get(i11);
            boolean[] zArr = w0Var.f13623e;
            int length = zArr.length;
            boolean z = false;
            int i12 = 0;
            while (true) {
                if (i12 >= length) {
                    break;
                }
                if (zArr[i12]) {
                    z = true;
                    break;
                }
                i12++;
            }
            if (z && w0Var.a() == i10) {
                return true;
            }
            i11++;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || x0.class != obj.getClass()) {
            return false;
        }
        return this.f13625a.equals(((x0) obj).f13625a);
    }

    public final int hashCode() {
        return this.f13625a.hashCode();
    }
}
