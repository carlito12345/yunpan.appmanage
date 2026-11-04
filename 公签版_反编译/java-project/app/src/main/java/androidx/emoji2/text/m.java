package androidx.emoji2.text;

import a2.w0;
import java.util.concurrent.ThreadPoolExecutor;

/* loaded from: classes.dex */
public final class m extends a9.o {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ a9.o f1120b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ThreadPoolExecutor f1121c;

    public m(a9.o oVar, ThreadPoolExecutor threadPoolExecutor) {
        this.f1120b = oVar;
        this.f1121c = threadPoolExecutor;
    }

    @Override // a9.o
    public final void S(Throwable th2) {
        ThreadPoolExecutor threadPoolExecutor = this.f1121c;
        try {
            this.f1120b.S(th2);
        } finally {
            threadPoolExecutor.shutdown();
        }
    }

    @Override // a9.o
    public final void T(w0 w0Var) {
        ThreadPoolExecutor threadPoolExecutor = this.f1121c;
        try {
            this.f1120b.T(w0Var);
        } finally {
            threadPoolExecutor.shutdown();
        }
    }
}
