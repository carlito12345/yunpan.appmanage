package f2;

import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f5193a = new ArrayList(1);

    /* renamed from: b, reason: collision with root package name */
    public final HashSet f5194b = new HashSet(1);

    /* renamed from: c, reason: collision with root package name */
    public final b2.d f5195c;

    /* renamed from: d, reason: collision with root package name */
    public final b2.d f5196d;

    /* renamed from: e, reason: collision with root package name */
    public Looper f5197e;

    /* renamed from: f, reason: collision with root package name */
    public r1.q0 f5198f;

    /* renamed from: g, reason: collision with root package name */
    public z1.i f5199g;

    public a() {
        int i10 = 0;
        c0 c0Var = null;
        this.f5195c = new b2.d(new CopyOnWriteArrayList(), i10, c0Var);
        this.f5196d = new b2.d(new CopyOnWriteArrayList(), i10, c0Var);
    }

    public abstract a0 a(c0 c0Var, s4.a aVar, long j10);

    public final void b(d0 d0Var) {
        HashSet hashSet = this.f5194b;
        boolean zIsEmpty = hashSet.isEmpty();
        hashSet.remove(d0Var);
        if (zIsEmpty || !hashSet.isEmpty()) {
            return;
        }
        c();
    }

    public final void d(d0 d0Var) {
        this.f5197e.getClass();
        HashSet hashSet = this.f5194b;
        boolean zIsEmpty = hashSet.isEmpty();
        hashSet.add(d0Var);
        if (zIsEmpty) {
            e();
        }
    }

    public r1.q0 f() {
        return null;
    }

    public abstract r1.y g();

    public boolean h() {
        return true;
    }

    public abstract void i();

    public final void j(d0 d0Var, w1.x xVar, z1.i iVar) {
        Looper looperMyLooper = Looper.myLooper();
        Looper looper = this.f5197e;
        a9.o.k(looper == null || looper == looperMyLooper);
        this.f5199g = iVar;
        r1.q0 q0Var = this.f5198f;
        this.f5193a.add(d0Var);
        if (this.f5197e == null) {
            this.f5197e = looperMyLooper;
            this.f5194b.add(d0Var);
            k(xVar);
        } else if (q0Var != null) {
            d(d0Var);
            d0Var.a(this, q0Var);
        }
    }

    public abstract void k(w1.x xVar);

    public final void l(r1.q0 q0Var) {
        this.f5198f = q0Var;
        Iterator it = this.f5193a.iterator();
        while (it.hasNext()) {
            ((d0) it.next()).a(this, q0Var);
        }
    }

    public abstract void m(a0 a0Var);

    public final void n(d0 d0Var) {
        ArrayList arrayList = this.f5193a;
        arrayList.remove(d0Var);
        if (!arrayList.isEmpty()) {
            b(d0Var);
            return;
        }
        this.f5197e = null;
        this.f5198f = null;
        this.f5199g = null;
        this.f5194b.clear();
        o();
    }

    public abstract void o();

    public final void p(b2.e eVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f5196d.f2530c;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            b2.c cVar = (b2.c) it.next();
            if (cVar.f2527a == eVar) {
                copyOnWriteArrayList.remove(cVar);
            }
        }
    }

    public final void q(i0 i0Var) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f5195c.f2530c;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            h0 h0Var = (h0) it.next();
            if (h0Var.f5283b == i0Var) {
                copyOnWriteArrayList.remove(h0Var);
            }
        }
    }

    public abstract void r(r1.y yVar);

    public void c() {
    }

    public void e() {
    }
}
