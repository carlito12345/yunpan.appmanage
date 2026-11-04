package rc;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class b implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13752a;

    public /* synthetic */ b(int i10) {
        this.f13752a = i10;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        switch (this.f13752a) {
            case 0:
                return a.f13751a;
            case 1:
                return c.f13753a;
            case 2:
                return d.f13754a;
            default:
                return e.f13755a;
        }
    }
}
