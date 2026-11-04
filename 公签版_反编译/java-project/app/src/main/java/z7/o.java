package z7;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class o extends p implements Iterable {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f19478a;

    public o() {
        this.f19478a = new ArrayList();
    }

    @Override // z7.p
    public final p a() {
        ArrayList arrayList = this.f19478a;
        if (arrayList.isEmpty()) {
            return new o();
        }
        o oVar = new o(arrayList.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            oVar.k(((p) it.next()).a());
        }
        return oVar;
    }

    @Override // z7.p
    public final boolean b() {
        return m().b();
    }

    @Override // z7.p
    public final double c() {
        return m().c();
    }

    @Override // z7.p
    public final float d() {
        return m().d();
    }

    @Override // z7.p
    public final int e() {
        return m().e();
    }

    public final boolean equals(Object obj) {
        return obj == this || ((obj instanceof o) && ((o) obj).f19478a.equals(this.f19478a));
    }

    @Override // z7.p
    public final long h() {
        return m().h();
    }

    public final int hashCode() {
        return this.f19478a.hashCode();
    }

    @Override // z7.p
    public final String i() {
        return m().i();
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.f19478a.iterator();
    }

    public final void j(String str) {
        this.f19478a.add(str == null ? r.f19479a : new t(str));
    }

    public final void k(p pVar) {
        if (pVar == null) {
            pVar = r.f19479a;
        }
        this.f19478a.add(pVar);
    }

    public final p l(int i10) {
        return (p) this.f19478a.get(i10);
    }

    public final p m() {
        ArrayList arrayList = this.f19478a;
        int size = arrayList.size();
        if (size == 1) {
            return (p) arrayList.get(0);
        }
        throw new IllegalStateException(da.b.a(size, "Array must have size 1, but has size "));
    }

    public final void n(int i10) {
    }

    public final void o(int i10, p pVar) {
        ArrayList arrayList = this.f19478a;
        if (pVar == null) {
            pVar = r.f19479a;
        }
    }

    public o(int i10) {
        this.f19478a = new ArrayList(i10);
    }
}
