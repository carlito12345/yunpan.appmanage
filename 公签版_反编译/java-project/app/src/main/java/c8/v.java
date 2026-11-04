package c8;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class v extends z7.a0 {

    /* renamed from: a, reason: collision with root package name */
    public final x f2957a;

    public v(x xVar) {
        this.f2957a = xVar;
    }

    @Override // z7.a0
    public final Object b(h8.a aVar) throws IOException {
        if (aVar.e0() == 9) {
            aVar.a0();
            return null;
        }
        Object objD = d();
        Map map = this.f2957a.f2963a;
        try {
            aVar.A();
            while (aVar.R()) {
                u uVar = (u) map.get(aVar.Y());
                if (uVar == null) {
                    aVar.l0();
                } else {
                    f(objD, aVar, uVar);
                }
            }
            aVar.M();
            return e(objD);
        } catch (IllegalAccessException e7) {
            p000if.a aVar2 = e8.c.f4819a;
            throw new RuntimeException("Unexpected IllegalAccessException occurred (Gson 2.13.1). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", e7);
        } catch (IllegalStateException e10) {
            throw new z7.q(e10);
        }
    }

    @Override // z7.a0
    public final void c(h8.b bVar, Object obj) throws IOException, IllegalArgumentException, InvocationTargetException {
        if (obj == null) {
            bVar.P();
            return;
        }
        bVar.J();
        try {
            Iterator it = this.f2957a.f2964b.iterator();
            while (it.hasNext()) {
                ((u) it.next()).a(bVar, obj);
            }
            bVar.M();
        } catch (IllegalAccessException e7) {
            p000if.a aVar = e8.c.f4819a;
            throw new RuntimeException("Unexpected IllegalAccessException occurred (Gson 2.13.1). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", e7);
        }
    }

    public abstract Object d();

    public abstract Object e(Object obj);

    public abstract void f(Object obj, h8.a aVar, u uVar);
}
