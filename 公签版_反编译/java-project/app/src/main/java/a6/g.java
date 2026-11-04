package a6;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class g implements Executor {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f429a;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.f429a) {
            case 0:
                q.f().post(runnable);
                break;
            case 1:
                runnable.run();
                break;
            default:
                new Thread(runnable).start();
                break;
        }
    }
}
