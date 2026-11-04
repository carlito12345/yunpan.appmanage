package j2;

import ha.jd;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final class a implements Executor {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ExecutorService f9659a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ jd f9660b;

    public a(ExecutorService executorService, jd jdVar) {
        this.f9659a = executorService;
        this.f9660b = jdVar;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f9659a.execute(runnable);
    }
}
