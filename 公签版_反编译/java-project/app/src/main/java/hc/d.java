package hc;

/* loaded from: classes.dex */
public final class d extends IllegalStateException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(int i10) {
        super("Disposable already set!");
        switch (i10) {
            case 2:
                break;
            default:
                break;
        }
    }

    public d(Throwable th2) {
        super("The exception could not be delivered to the consumer because it has already canceled/disposed the flow or the exception has nowhere to go to begin with. Further reading: https://github.com/ReactiveX/RxJava/wiki/What's-different-in-2.0#error-handling | " + th2, th2);
    }

    public d(String str) {
        super(str);
    }

    public d(String str, Object... objArr) {
        super(String.format(str, objArr));
    }
}
