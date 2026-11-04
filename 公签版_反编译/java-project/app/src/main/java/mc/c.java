package mc;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class c extends ec.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11136a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f11137b;

    public /* synthetic */ c(int i10, Object obj) {
        this.f11136a = i10;
        this.f11137b = obj;
    }

    @Override // ec.b
    public final void c(ec.e eVar) {
        switch (this.f11136a) {
            case 0:
                b bVar = new b(eVar);
                eVar.b(bVar);
                try {
                    ((ec.d) this.f11137b).g(bVar);
                    break;
                } catch (Throwable th2) {
                    p000if.a.K0(th2);
                    bVar.d(th2);
                    return;
                }
            default:
                gc.b bVar2 = ic.b.INSTANCE;
                try {
                    Iterator it = ((ArrayList) this.f11137b).iterator();
                    try {
                        if (!it.hasNext()) {
                            eVar.b(bVar2);
                            eVar.onComplete();
                            break;
                        } else {
                            h hVar = new h(eVar, it);
                            eVar.b(hVar);
                            if (!hVar.f11165d) {
                                while (!hVar.f11164c) {
                                    try {
                                        Object next = hVar.f11163b.next();
                                        jc.a.a(next, "The iterator returned a null value");
                                        hVar.f11162a.E(next);
                                        if (hVar.f11164c) {
                                            break;
                                        } else {
                                            try {
                                                if (!hVar.f11163b.hasNext()) {
                                                    if (!hVar.f11164c) {
                                                        hVar.f11162a.onComplete();
                                                        break;
                                                    }
                                                }
                                            } catch (Throwable th3) {
                                                p000if.a.K0(th3);
                                                hVar.f11162a.B(th3);
                                                return;
                                            }
                                        }
                                    } catch (Throwable th4) {
                                        p000if.a.K0(th4);
                                        hVar.f11162a.B(th4);
                                        return;
                                    }
                                }
                                break;
                            }
                        }
                    } catch (Throwable th5) {
                        p000if.a.K0(th5);
                        eVar.b(bVar2);
                        eVar.B(th5);
                        return;
                    }
                } catch (Throwable th6) {
                    p000if.a.K0(th6);
                    eVar.b(bVar2);
                    eVar.B(th6);
                }
                break;
        }
    }
}
