package wb;

import s3.d0;

/* loaded from: classes.dex */
public abstract class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final d0 f17774a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c f17775b;

    public a(c cVar, d0 d0Var) {
        this.f17775b = cVar;
        this.f17774a = d0Var;
    }

    public abstract Object a();

    public boolean b() {
        return this.f17775b.f17777a != null;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (b()) {
            this.f17774a.o(a());
        } else {
            d0 d0Var = this.f17774a;
            synchronized (d0Var) {
                d0Var.f14064d++;
                d0Var.o(null);
            }
        }
    }
}
