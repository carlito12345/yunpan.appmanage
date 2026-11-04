package f2;

/* loaded from: classes.dex */
public final class j1 {

    /* renamed from: d, reason: collision with root package name */
    public static final j1 f5298d = new j1(new r1.r0[0]);

    /* renamed from: a, reason: collision with root package name */
    public final int f5299a;

    /* renamed from: b, reason: collision with root package name */
    public final u7.y0 f5300b;

    /* renamed from: c, reason: collision with root package name */
    public int f5301c;

    static {
        u1.f0.B(0);
    }

    public j1(r1.r0... r0VarArr) {
        this.f5300b = u7.g0.n(r0VarArr);
        this.f5299a = r0VarArr.length;
        int i10 = 0;
        while (true) {
            u7.y0 y0Var = this.f5300b;
            if (i10 >= y0Var.size()) {
                return;
            }
            int i11 = i10 + 1;
            for (int i12 = i11; i12 < y0Var.size(); i12++) {
                if (((r1.r0) y0Var.get(i10)).equals(y0Var.get(i12))) {
                    u1.a.g("", new IllegalArgumentException("Multiple identical TrackGroups added to one TrackGroupArray."));
                }
            }
            i10 = i11;
        }
    }

    public final r1.r0 a(int i10) {
        return (r1.r0) this.f5300b.get(i10);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || j1.class != obj.getClass()) {
            return false;
        }
        j1 j1Var = (j1) obj;
        return this.f5299a == j1Var.f5299a && this.f5300b.equals(j1Var.f5300b);
    }

    public final int hashCode() {
        if (this.f5301c == 0) {
            this.f5301c = this.f5300b.hashCode();
        }
        return this.f5301c;
    }

    public final String toString() {
        return this.f5300b.toString();
    }
}
