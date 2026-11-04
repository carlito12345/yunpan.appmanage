package androidx.lifecycle;

import android.os.Looper;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class v extends o {

    /* renamed from: d, reason: collision with root package name */
    public final WeakReference f1819d;

    /* renamed from: e, reason: collision with root package name */
    public int f1820e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f1821f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f1822g;

    /* renamed from: a, reason: collision with root package name */
    public final boolean f1816a = true;

    /* renamed from: b, reason: collision with root package name */
    public y.a f1817b = new y.a();

    /* renamed from: c, reason: collision with root package name */
    public n f1818c = n.INITIALIZED;

    /* renamed from: h, reason: collision with root package name */
    public final ArrayList f1823h = new ArrayList();

    public v(t tVar) {
        this.f1819d = new WeakReference(tVar);
    }

    @Override // androidx.lifecycle.o
    public final void a(s sVar) {
        Object obj;
        t tVar;
        d("addObserver");
        n nVar = this.f1818c;
        n nVar2 = n.DESTROYED;
        if (nVar != nVar2) {
            nVar2 = n.INITIALIZED;
        }
        u uVar = new u(sVar, nVar2);
        y.a aVar = this.f1817b;
        y.c cVarA = aVar.a(sVar);
        if (cVarA != null) {
            obj = cVarA.f18520b;
        } else {
            HashMap map = aVar.f18515e;
            y.c cVar = new y.c(sVar, uVar);
            aVar.f18529d++;
            y.c cVar2 = aVar.f18527b;
            if (cVar2 == null) {
                aVar.f18526a = cVar;
                aVar.f18527b = cVar;
            } else {
                cVar2.f18521c = cVar;
                cVar.f18522d = cVar2;
                aVar.f18527b = cVar;
            }
            map.put(sVar, cVar);
            obj = null;
        }
        if (((u) obj) == null && (tVar = (t) this.f1819d.get()) != null) {
            boolean z = this.f1820e != 0 || this.f1821f;
            n nVarC = c(sVar);
            this.f1820e++;
            while (uVar.f1814a.compareTo(nVarC) < 0 && this.f1817b.f18515e.containsKey(sVar)) {
                this.f1823h.add(uVar.f1814a);
                k kVar = m.Companion;
                n nVar3 = uVar.f1814a;
                kVar.getClass();
                m mVarA = k.a(nVar3);
                if (mVarA == null) {
                    throw new IllegalStateException("no event up from " + uVar.f1814a);
                }
                uVar.a(tVar, mVarA);
                ArrayList arrayList = this.f1823h;
                arrayList.remove(arrayList.size() - 1);
                nVarC = c(sVar);
            }
            if (!z) {
                h();
            }
            this.f1820e--;
        }
    }

    @Override // androidx.lifecycle.o
    public final void b(s sVar) {
        ue.d.e(sVar, "observer");
        d("removeObserver");
        this.f1817b.b(sVar);
    }

    public final n c(s sVar) {
        u uVar;
        HashMap map = this.f1817b.f18515e;
        y.c cVar = map.containsKey(sVar) ? ((y.c) map.get(sVar)).f18522d : null;
        n nVar = (cVar == null || (uVar = (u) cVar.f18520b) == null) ? null : uVar.f1814a;
        ArrayList arrayList = this.f1823h;
        n nVar2 = arrayList.isEmpty() ? null : (n) ta.q.h(1, arrayList);
        n nVar3 = this.f1818c;
        ue.d.e(nVar3, "state1");
        if (nVar == null || nVar.compareTo(nVar3) >= 0) {
            nVar = nVar3;
        }
        return (nVar2 == null || nVar2.compareTo(nVar) >= 0) ? nVar : nVar2;
    }

    public final void d(String str) {
        if (this.f1816a) {
            x.a.d0().f17939b.getClass();
            if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
                throw new IllegalStateException(g.b.A("Method ", str, " must be called on the main thread").toString());
            }
        }
    }

    public final void e(m mVar) {
        ue.d.e(mVar, "event");
        d("handleLifecycleEvent");
        f(mVar.a());
    }

    public final void f(n nVar) {
        n nVar2 = this.f1818c;
        if (nVar2 == nVar) {
            return;
        }
        n nVar3 = n.INITIALIZED;
        n nVar4 = n.DESTROYED;
        if (nVar2 == nVar3 && nVar == nVar4) {
            throw new IllegalStateException(("no event down from " + this.f1818c + " in component " + this.f1819d.get()).toString());
        }
        this.f1818c = nVar;
        if (this.f1821f || this.f1820e != 0) {
            this.f1822g = true;
            return;
        }
        this.f1821f = true;
        h();
        this.f1821f = false;
        if (this.f1818c == nVar4) {
            this.f1817b = new y.a();
        }
    }

    public final void g() {
        n nVar = n.CREATED;
        d("setCurrentState");
        f(nVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0030, code lost:
    
        r7.f1822g = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0032, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void h() {
        t tVar = (t) this.f1819d.get();
        if (tVar == null) {
            throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is already garbage collected. It is too late to change lifecycle state.");
        }
        while (true) {
            y.a aVar = this.f1817b;
            if (aVar.f18529d != 0) {
                y.c cVar = aVar.f18526a;
                ue.d.b(cVar);
                n nVar = ((u) cVar.f18520b).f1814a;
                y.c cVar2 = this.f1817b.f18527b;
                ue.d.b(cVar2);
                n nVar2 = ((u) cVar2.f18520b).f1814a;
                if (nVar == nVar2 && this.f1818c == nVar2) {
                    break;
                }
                this.f1822g = false;
                n nVar3 = this.f1818c;
                y.c cVar3 = this.f1817b.f18526a;
                ue.d.b(cVar3);
                if (nVar3.compareTo(((u) cVar3.f18520b).f1814a) < 0) {
                    y.a aVar2 = this.f1817b;
                    y.b bVar = new y.b(aVar2.f18527b, aVar2.f18526a, 1);
                    aVar2.f18528c.put(bVar, Boolean.FALSE);
                    while (bVar.hasNext() && !this.f1822g) {
                        Map.Entry entry = (Map.Entry) bVar.next();
                        ue.d.d(entry, "next()");
                        s sVar = (s) entry.getKey();
                        u uVar = (u) entry.getValue();
                        while (uVar.f1814a.compareTo(this.f1818c) > 0 && !this.f1822g && this.f1817b.f18515e.containsKey(sVar)) {
                            k kVar = m.Companion;
                            n nVar4 = uVar.f1814a;
                            kVar.getClass();
                            ue.d.e(nVar4, "state");
                            int iOrdinal = nVar4.ordinal();
                            m mVar = iOrdinal != 2 ? iOrdinal != 3 ? iOrdinal != 4 ? null : m.ON_PAUSE : m.ON_STOP : m.ON_DESTROY;
                            if (mVar == null) {
                                throw new IllegalStateException("no event down from " + uVar.f1814a);
                            }
                            this.f1823h.add(mVar.a());
                            uVar.a(tVar, mVar);
                            this.f1823h.remove(r4.size() - 1);
                        }
                    }
                }
                y.c cVar4 = this.f1817b.f18527b;
                if (!this.f1822g && cVar4 != null && this.f1818c.compareTo(((u) cVar4.f18520b).f1814a) > 0) {
                    y.a aVar3 = this.f1817b;
                    aVar3.getClass();
                    y.d dVar = new y.d(aVar3);
                    aVar3.f18528c.put(dVar, Boolean.FALSE);
                    while (dVar.hasNext() && !this.f1822g) {
                        Map.Entry entry2 = (Map.Entry) dVar.next();
                        s sVar2 = (s) entry2.getKey();
                        u uVar2 = (u) entry2.getValue();
                        while (uVar2.f1814a.compareTo(this.f1818c) < 0 && !this.f1822g && this.f1817b.f18515e.containsKey(sVar2)) {
                            this.f1823h.add(uVar2.f1814a);
                            k kVar2 = m.Companion;
                            n nVar5 = uVar2.f1814a;
                            kVar2.getClass();
                            m mVarA = k.a(nVar5);
                            if (mVarA == null) {
                                throw new IllegalStateException("no event up from " + uVar2.f1814a);
                            }
                            uVar2.a(tVar, mVarA);
                            this.f1823h.remove(r4.size() - 1);
                        }
                    }
                }
            } else {
                break;
            }
        }
    }
}
