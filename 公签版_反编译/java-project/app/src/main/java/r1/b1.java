package r1;

/* loaded from: classes.dex */
public final class b1 {

    /* renamed from: d, reason: collision with root package name */
    public static final b1 f13418d = new b1(0, 0);

    /* renamed from: a, reason: collision with root package name */
    public final int f13419a;

    /* renamed from: b, reason: collision with root package name */
    public final int f13420b;

    /* renamed from: c, reason: collision with root package name */
    public final float f13421c;

    static {
        u1.f0.B(0);
        u1.f0.B(1);
        u1.f0.B(3);
    }

    public b1(int i10, int i11) {
        this(i10, 1.0f, i11);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b1)) {
            return false;
        }
        b1 b1Var = (b1) obj;
        return this.f13419a == b1Var.f13419a && this.f13420b == b1Var.f13420b && this.f13421c == b1Var.f13421c;
    }

    public final int hashCode() {
        return Float.floatToRawIntBits(this.f13421c) + ((((217 + this.f13419a) * 31) + this.f13420b) * 31);
    }

    public b1(int i10, float f10, int i11) {
        this.f13419a = i10;
        this.f13420b = i11;
        this.f13421c = f10;
    }
}
