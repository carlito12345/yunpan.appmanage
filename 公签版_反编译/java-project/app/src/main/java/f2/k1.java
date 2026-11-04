package f2;

/* loaded from: classes.dex */
public final class k1 extends r1.f0 {

    /* renamed from: c, reason: collision with root package name */
    public final u7.g0 f5315c;

    public k1(String str, u7.y0 y0Var) {
        super(str, null, false, 1);
        this.f5315c = u7.g0.m(y0Var);
    }

    @Override // r1.f0, java.lang.Throwable
    public final String getMessage() {
        String message = super.getMessage();
        u7.g0 g0Var = this.f5315c;
        if (g0Var.isEmpty()) {
            return message;
        }
        return message + "\nsniff failures: " + g0Var;
    }
}
