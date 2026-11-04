package x4;

/* loaded from: classes.dex */
public final class g extends m {

    /* renamed from: b, reason: collision with root package name */
    public static final g f18121b = new g(Double.doubleToLongBits(0.0d));

    static {
        Double.doubleToLongBits(1.0d);
    }

    public g(long j10) {
        super(j10);
    }

    @Override // b5.h
    public final String a() {
        return Double.toString(Double.longBitsToDouble(this.f18127a));
    }

    @Override // x4.a
    public final String d() {
        return "double";
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("double{0x");
        long j10 = this.f18127a;
        sb2.append(qf.c.g0(j10));
        sb2.append(" / ");
        sb2.append(Double.longBitsToDouble(j10));
        sb2.append('}');
        return sb2.toString();
    }
}
