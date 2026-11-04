package x4;

/* loaded from: classes.dex */
public final class e extends l {

    /* renamed from: b, reason: collision with root package name */
    public static final e f18119b = new e((byte) 0);

    public e(byte b10) {
        super(b10);
    }

    @Override // b5.h
    public final String a() {
        return Integer.toString(this.f18126a);
    }

    @Override // x4.a
    public final String d() {
        return "byte";
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("byte{0x");
        int i10 = this.f18126a;
        sb2.append(qf.c.d0(i10));
        sb2.append(" / ");
        sb2.append(i10);
        sb2.append('}');
        return sb2.toString();
    }
}
