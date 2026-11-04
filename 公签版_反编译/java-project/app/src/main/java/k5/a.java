package k5;

import java.util.concurrent.ThreadFactory;

/* loaded from: classes.dex */
public final class a implements ThreadFactory {
    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new fg.b(runnable, 2);
    }
}
