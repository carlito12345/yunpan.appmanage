package q;

import android.content.res.Resources;
import java.lang.Thread;

/* loaded from: classes.dex */
public final class n implements Thread.UncaughtExceptionHandler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Thread.UncaughtExceptionHandler f12886a;

    public n(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f12886a = uncaughtExceptionHandler;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th2) {
        String message;
        boolean z = th2 instanceof Resources.NotFoundException;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f12886a;
        if (!z || (message = th2.getMessage()) == null || (!message.contains("drawable") && !message.contains("Drawable"))) {
            uncaughtExceptionHandler.uncaughtException(thread, th2);
            return;
        }
        Resources.NotFoundException notFoundException = new Resources.NotFoundException(th2.getMessage() + ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.");
        notFoundException.initCause(th2.getCause());
        notFoundException.setStackTrace(th2.getStackTrace());
        uncaughtExceptionHandler.uncaughtException(thread, notFoundException);
    }
}
