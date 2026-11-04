package mc;

import java.util.concurrent.Callable;
import ua.t6;

/* loaded from: classes.dex */
public final class g extends a {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f11159b;

    /* renamed from: c, reason: collision with root package name */
    public final int f11160c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f11161d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ g(ec.b bVar, Object obj, int i10, int i11) {
        super(bVar);
        this.f11159b = i11;
        this.f11161d = obj;
        this.f11160c = i10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // ec.b
    public final void c(ec.e eVar) {
        switch (this.f11159b) {
            case 0:
                gc.b bVar = ic.b.INSTANCE;
                t6 t6Var = (t6) this.f11161d;
                ec.b bVar2 = this.f11134a;
                if (!(bVar2 instanceof Callable)) {
                    bVar2.b(new f(eVar, t6Var, this.f11160c));
                    break;
                } else {
                    try {
                        Object objCall = ((Callable) bVar2).call();
                        if (objCall == null) {
                            eVar.b(bVar);
                            eVar.onComplete();
                            break;
                        } else {
                            try {
                                ec.b bVar3 = (ec.b) t6Var.apply(objCall);
                                if (!(bVar3 instanceof Callable)) {
                                    bVar3.b(eVar);
                                    break;
                                } else {
                                    try {
                                        Object objCall2 = ((Callable) bVar3).call();
                                        if (objCall2 != null) {
                                            m mVar = new m(eVar, objCall2);
                                            eVar.b(mVar);
                                            mVar.run();
                                            break;
                                        } else {
                                            eVar.b(bVar);
                                            eVar.onComplete();
                                            break;
                                        }
                                    } catch (Throwable th2) {
                                        p000if.a.K0(th2);
                                        eVar.b(bVar);
                                        eVar.B(th2);
                                        return;
                                    }
                                }
                            } catch (Throwable th3) {
                                p000if.a.K0(th3);
                                eVar.b(bVar);
                                eVar.B(th3);
                                return;
                            }
                        }
                    } catch (Throwable th4) {
                        p000if.a.K0(th4);
                        eVar.b(bVar);
                        eVar.B(th4);
                        return;
                    }
                }
            default:
                this.f11134a.b(new l(eVar, ((fc.e) this.f11161d).a(), this.f11160c));
                break;
        }
    }
}
