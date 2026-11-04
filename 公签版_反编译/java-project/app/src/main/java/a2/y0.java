package a2;

import android.os.Handler;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final /* synthetic */ class y0 implements Executor {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f362a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f363b;

    public /* synthetic */ y0(int i10, Object obj) {
        this.f362a = i10;
        this.f363b = obj;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.f362a) {
            case 0:
                ((Handler) this.f363b).post(runnable);
                break;
            case 1:
                new Handler(((da.g) this.f363b).getMainLooper()).post(runnable);
                break;
            default:
                ((u1.b0) this.f363b).d(runnable);
                break;
        }
    }
}
