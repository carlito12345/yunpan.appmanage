package rh;

import j$.util.Map;
import j$.util.function.Function$CC;
import java.util.IdentityHashMap;
import java.util.function.Function;

/* loaded from: classes3.dex */
public abstract class c0 extends p {

    /* renamed from: a, reason: collision with root package name */
    public final p f13777a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f13778b;

    /* renamed from: c, reason: collision with root package name */
    public final oh.b f13779c = new oh.b(new ah.a(8), 2);

    public c0(p pVar) {
        this.f13777a = pVar;
        this.f13778b = pVar.f();
    }

    @Override // rh.p
    public boolean b(ph.l lVar, ph.l lVar2) {
        return g(lVar, lVar2);
    }

    @Override // rh.p
    public final boolean c(ph.l lVar, ph.p pVar) {
        return g(lVar, pVar);
    }

    @Override // rh.p
    public void e() {
        ((IdentityHashMap) this.f13779c.get()).clear();
        this.f13777a.e();
    }

    @Override // rh.p
    public final boolean f() {
        return this.f13778b;
    }

    public abstract boolean g(ph.l lVar, ph.q qVar);

    public final boolean h(final ph.l lVar, ph.q qVar) {
        return ((Boolean) Map.EL.computeIfAbsent((java.util.Map) Map.EL.computeIfAbsent((java.util.Map) this.f13779c.get(), lVar, oh.a.f11797c), qVar, new Function() { // from class: rh.w
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public final /* synthetic */ Function mo10andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Boolean.valueOf(this.f13816a.f13777a.d(lVar, (ph.q) obj));
            }

            public final /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        })).booleanValue();
    }
}
