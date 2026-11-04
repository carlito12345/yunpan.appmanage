package r1;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f13455c = 0;

    /* renamed from: a, reason: collision with root package name */
    public final int f13456a;

    /* renamed from: b, reason: collision with root package name */
    public final int f13457b;

    static {
        new i(new y0(false));
        u1.f0.B(0);
        u1.f0.B(1);
        u1.f0.B(2);
        u1.f0.B(3);
    }

    public i(y0 y0Var) {
        y0Var.getClass();
        this.f13456a = 0;
        this.f13457b = 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        iVar.getClass();
        return this.f13456a == iVar.f13456a && this.f13457b == iVar.f13457b;
    }

    public final int hashCode() {
        return (((16337 + this.f13456a) * 31) + this.f13457b) * 31;
    }
}
