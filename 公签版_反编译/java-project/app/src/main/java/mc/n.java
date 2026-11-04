package mc;

import java.util.concurrent.Callable;
import ua.t6;

/* loaded from: classes.dex */
public final class n extends ec.b {

    /* renamed from: a, reason: collision with root package name */
    public final Object f11187a;

    /* renamed from: b, reason: collision with root package name */
    public final t6 f11188b;

    public n(Object obj, t6 t6Var) {
        this.f11187a = obj;
        this.f11188b = t6Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // ec.b
    public final void c(ec.e eVar) {
        gc.b bVar = ic.b.INSTANCE;
        try {
            ec.b bVar2 = (ec.b) this.f11188b.apply(this.f11187a);
            if (!(bVar2 instanceof Callable)) {
                bVar2.b(eVar);
                return;
            }
            try {
                Object objCall = ((Callable) bVar2).call();
                if (objCall == null) {
                    eVar.b(bVar);
                    eVar.onComplete();
                } else {
                    m mVar = new m(eVar, objCall);
                    eVar.b(mVar);
                    mVar.run();
                }
            } catch (Throwable th2) {
                p000if.a.K0(th2);
                eVar.b(bVar);
                eVar.B(th2);
            }
        } catch (Throwable th3) {
            eVar.b(bVar);
            eVar.B(th3);
        }
    }
}
