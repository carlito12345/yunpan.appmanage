package x4;

/* loaded from: classes.dex */
public final class i extends l {

    /* renamed from: b, reason: collision with root package name */
    public static final i f18122b = new i(Float.floatToIntBits(0.0f));

    static {
        Float.floatToIntBits(1.0f);
        Float.floatToIntBits(2.0f);
    }

    public i(int i10) {
        super(i10);
    }

    @Override // b5.h
    public final String a() {
        return Float.toString(Float.intBitsToFloat(this.f18126a));
    }

    @Override // x4.a
    public final String d() {
        return "float";
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("float{0x");
        int i10 = this.f18126a;
        sb2.append(qf.c.f0(i10));
        sb2.append(" / ");
        sb2.append(Float.intBitsToFloat(i10));
        sb2.append('}');
        return sb2.toString();
    }
}
