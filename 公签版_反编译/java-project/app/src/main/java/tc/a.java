package tc;

/* loaded from: classes.dex */
public final class a extends Error {

    /* renamed from: a, reason: collision with root package name */
    public final Exception f15062a;

    public a(String str, Exception exc) {
        super(str);
        this.f15062a = exc;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        Exception exc;
        String message = super.getMessage();
        if (message != null || (exc = this.f15062a) == null) {
            return message;
        }
        String message2 = exc.getMessage();
        return message2 == null ? exc.getClass().toString() : message2;
    }
}
