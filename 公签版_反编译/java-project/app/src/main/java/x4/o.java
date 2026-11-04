package x4;

/* loaded from: classes.dex */
public final class o extends m {

    /* renamed from: b, reason: collision with root package name */
    public static final o f18128b = new o(0);

    public o(long j10) {
        super(j10);
    }

    @Override // b5.h
    public final String a() {
        return Long.toString(this.f18127a);
    }

    @Override // x4.a
    public final String d() {
        return "long";
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("long{0x");
        long j10 = this.f18127a;
        sb2.append(qf.c.g0(j10));
        sb2.append(" / ");
        sb2.append(j10);
        sb2.append('}');
        return sb2.toString();
    }
}
