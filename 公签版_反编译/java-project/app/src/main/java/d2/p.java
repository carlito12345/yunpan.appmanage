package d2;

/* loaded from: classes.dex */
public class p extends x1.e {

    /* renamed from: a, reason: collision with root package name */
    public final int f4293a;

    public p(IllegalStateException illegalStateException, q qVar) {
        StringBuilder sb2 = new StringBuilder("Decoder failed: ");
        sb2.append(qVar == null ? null : qVar.f4294a);
        super(sb2.toString(), illegalStateException);
        if (a.A(illegalStateException)) {
            a.f(illegalStateException).getDiagnosticInfo();
        }
        this.f4293a = a.A(illegalStateException) ? a.f(illegalStateException).getErrorCode() : 0;
    }
}
