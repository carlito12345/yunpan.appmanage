package c8;

import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class c extends z7.a0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2890a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final Object f2891b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f2892c;

    public c(b0 b0Var, b8.o oVar) {
        this.f2891b = b0Var;
        this.f2892c = oVar;
    }

    @Override // z7.a0
    public final Object b(h8.a aVar) throws IOException {
        switch (this.f2890a) {
            case 0:
                if (aVar.e0() == 9) {
                    aVar.a0();
                    return null;
                }
                Collection collection = (Collection) ((b8.o) this.f2892c).c();
                aVar.r();
                while (aVar.R()) {
                    collection.add(((b0) this.f2891b).f2888b.b(aVar));
                }
                aVar.L();
                return collection;
            default:
                Object objB = ((v0) this.f2892c).f2960c.b(aVar);
                if (objB != null) {
                    Class cls = (Class) this.f2891b;
                    if (!cls.isInstance(objB)) {
                        throw new z7.q("Expected a " + cls.getName() + " but was " + objB.getClass().getName() + "; at path " + aVar.Q());
                    }
                }
                return objB;
        }
    }

    @Override // z7.a0
    public final void c(h8.b bVar, Object obj) throws IOException {
        switch (this.f2890a) {
            case 0:
                Collection collection = (Collection) obj;
                if (collection != null) {
                    bVar.A();
                    Iterator it = collection.iterator();
                    while (it.hasNext()) {
                        ((b0) this.f2891b).c(bVar, it.next());
                    }
                    bVar.L();
                    break;
                } else {
                    bVar.P();
                    break;
                }
            default:
                ((v0) this.f2892c).f2960c.c(bVar, obj);
                break;
        }
    }

    public c(v0 v0Var, Class cls) {
        this.f2892c = v0Var;
        this.f2891b = cls;
    }
}
