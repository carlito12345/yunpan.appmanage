package u7;

import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;

/* loaded from: classes.dex */
public class c implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15434a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final Iterator f15435b;

    /* renamed from: c, reason: collision with root package name */
    public Object f15436c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f15437d;

    public c(l lVar) {
        this.f15437d = lVar;
        Collection collection = lVar.f15493b;
        this.f15436c = collection;
        this.f15435b = collection instanceof List ? ((List) collection).listIterator() : collection.iterator();
    }

    public void a() {
        l lVar = (l) this.f15437d;
        lVar.b();
        if (lVar.f15493b != ((Collection) this.f15436c)) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.f15434a) {
            case 0:
                break;
            case 1:
                break;
            default:
                a();
                break;
        }
        return this.f15435b.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.f15434a) {
            case 0:
                Map.Entry entry = (Map.Entry) this.f15435b.next();
                this.f15436c = (Collection) entry.getValue();
                return ((d) this.f15437d).a(entry);
            case 1:
                Map.Entry entry2 = (Map.Entry) this.f15435b.next();
                this.f15436c = entry2;
                return entry2.getKey();
            default:
                a();
                return this.f15435b.next();
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.f15434a) {
            case 0:
                a9.o.s("no calls to next() since the last call to remove()", ((Collection) this.f15436c) != null);
                this.f15435b.remove();
                ((d) this.f15437d).f15446d.f15541e -= ((Collection) this.f15436c).size();
                ((Collection) this.f15436c).clear();
                this.f15436c = null;
                break;
            case 1:
                a9.o.s("no calls to next() since the last call to remove()", ((Map.Entry) this.f15436c) != null);
                Collection collection = (Collection) ((Map.Entry) this.f15436c).getValue();
                this.f15435b.remove();
                ((e) this.f15437d).f15455b.f15541e -= collection.size();
                collection.clear();
                this.f15436c = null;
                break;
            default:
                this.f15435b.remove();
                l lVar = (l) this.f15437d;
                u0 u0Var = lVar.f15496e;
                u0Var.f15541e--;
                lVar.c();
                break;
        }
    }

    public c(l lVar, ListIterator listIterator) {
        this.f15437d = lVar;
        this.f15436c = lVar.f15493b;
        this.f15435b = listIterator;
    }

    public c(e eVar, Iterator it) {
        this.f15435b = it;
        this.f15437d = eVar;
    }

    public c(d dVar) {
        this.f15437d = dVar;
        this.f15435b = dVar.f15445c.entrySet().iterator();
    }
}
