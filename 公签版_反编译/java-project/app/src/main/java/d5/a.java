package d5;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class a implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d f4465a;

    public a(d dVar) {
        this.f4465a = dVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        synchronized (this.f4465a) {
            try {
                d dVar = this.f4465a;
                if (dVar.f4481i == null) {
                    return null;
                }
                dVar.U();
                if (this.f4465a.N()) {
                    this.f4465a.S();
                    this.f4465a.f4483k = 0;
                }
                return null;
            } finally {
            }
        }
    }
}
