package z7;

import java.util.ConcurrentModificationException;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class s extends p {

    /* renamed from: a, reason: collision with root package name */
    public final b8.n f19480a = new b8.n(false);

    public final boolean equals(Object obj) {
        return obj == this || ((obj instanceof s) && ((s) obj).f19480a.equals(this.f19480a));
    }

    public final int hashCode() {
        return this.f19480a.hashCode();
    }

    public final void j(String str, p pVar) {
        if (pVar == null) {
            pVar = r.f19479a;
        }
        this.f19480a.put(str, pVar);
    }

    public final void k(String str, Boolean bool) {
        j(str, new t(bool));
    }

    public final void l(String str, Number number) {
        j(str, number == null ? r.f19479a : new t(number));
    }

    public final void m(String str, String str2) {
        j(str, str2 == null ? r.f19479a : new t(str2));
    }

    @Override // z7.p
    /* renamed from: n, reason: merged with bridge method [inline-methods] */
    public final s a() {
        s sVar = new s();
        b8.n nVar = (b8.n) ((b8.l) this.f19480a.entrySet()).f2638b;
        b8.m mVar = nVar.f2654f.f2642d;
        int i10 = nVar.f2653e;
        while (true) {
            if (!(mVar != nVar.f2654f)) {
                return sVar;
            }
            if (mVar == nVar.f2654f) {
                throw new NoSuchElementException();
            }
            if (nVar.f2653e != i10) {
                throw new ConcurrentModificationException();
            }
            b8.m mVar2 = mVar.f2642d;
            sVar.j((String) mVar.getKey(), ((p) mVar.getValue()).a());
            mVar = mVar2;
        }
    }

    public final p o(String str) {
        return (p) this.f19480a.get(str);
    }

    public final o p(String str) {
        return (o) this.f19480a.get(str);
    }

    public final s q(String str) {
        return (s) this.f19480a.get(str);
    }

    public final void r(String str) {
    }
}
