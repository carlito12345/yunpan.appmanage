package x4;

/* loaded from: classes.dex */
public final class f extends l {

    /* renamed from: b, reason: collision with root package name */
    public static final f f18120b = new f(0);

    public f(char c7) {
        super(c7);
    }

    @Override // b5.h
    public final String a() {
        return Integer.toString(this.f18126a);
    }

    @Override // x4.a
    public final String d() {
        return "char";
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("char{0x");
        int i10 = this.f18126a;
        sb2.append(qf.c.e0(i10));
        sb2.append(" / ");
        sb2.append(i10);
        sb2.append('}');
        return sb2.toString();
    }
}
