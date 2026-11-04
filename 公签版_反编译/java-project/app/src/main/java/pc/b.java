package pc;

/* loaded from: classes.dex */
public final class b extends Throwable {
    public b() {
        super("No further exceptions");
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        return this;
    }
}
