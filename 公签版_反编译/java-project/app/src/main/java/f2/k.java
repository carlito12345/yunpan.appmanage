package f2;

import android.os.Handler;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class k extends a {

    /* renamed from: h, reason: collision with root package name */
    public final HashMap f5302h = new HashMap();

    /* renamed from: i, reason: collision with root package name */
    public Handler f5303i;

    /* renamed from: j, reason: collision with root package name */
    public w1.x f5304j;

    @Override // f2.a
    public final void c() {
        for (j jVar : this.f5302h.values()) {
            jVar.f5293a.b(jVar.f5294b);
        }
    }

    @Override // f2.a
    public final void e() {
        for (j jVar : this.f5302h.values()) {
            jVar.f5293a.d(jVar.f5294b);
        }
    }

    @Override // f2.a
    public void i() {
        Iterator it = this.f5302h.values().iterator();
        while (it.hasNext()) {
            ((j) it.next()).f5293a.i();
        }
    }

    @Override // f2.a
    public void o() {
        HashMap map = this.f5302h;
        for (j jVar : map.values()) {
            jVar.f5293a.n(jVar.f5294b);
            i iVar = jVar.f5295c;
            a aVar = jVar.f5293a;
            aVar.q(iVar);
            aVar.p(iVar);
        }
        map.clear();
    }

    public abstract c0 s(Object obj, c0 c0Var);

    public abstract void v(Object obj, a aVar, r1.q0 q0Var);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [f2.d0, f2.h] */
    public final void w(final Object obj, a aVar) {
        HashMap map = this.f5302h;
        a9.o.k(!map.containsKey(obj));
        ?? r12 = new d0() { // from class: f2.h
            @Override // f2.d0
            public final void a(a aVar2, r1.q0 q0Var) {
                this.f5280a.v(obj, aVar2, q0Var);
            }
        };
        i iVar = new i(this, obj);
        map.put(obj, new j(aVar, r12, iVar));
        Handler handler = this.f5303i;
        handler.getClass();
        aVar.getClass();
        b2.d dVar = aVar.f5195c;
        dVar.getClass();
        dVar.f2530c.add(new h0(handler, iVar));
        Handler handler2 = this.f5303i;
        handler2.getClass();
        b2.d dVar2 = aVar.f5196d;
        dVar2.getClass();
        dVar2.f2530c.add(new b2.c(handler2, iVar));
        w1.x xVar = this.f5304j;
        z1.i iVar2 = this.f5199g;
        iVar2.getClass();
        aVar.j(r12, xVar, iVar2);
        if (this.f5194b.isEmpty()) {
            aVar.b(r12);
        }
    }

    public long t(Object obj, long j10) {
        return j10;
    }

    public int u(int i10, Object obj) {
        return i10;
    }
}
