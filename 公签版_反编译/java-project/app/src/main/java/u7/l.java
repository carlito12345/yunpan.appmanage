package u7;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public class l extends AbstractCollection implements List {

    /* renamed from: a, reason: collision with root package name */
    public final Object f15492a;

    /* renamed from: b, reason: collision with root package name */
    public Collection f15493b;

    /* renamed from: c, reason: collision with root package name */
    public final l f15494c;

    /* renamed from: d, reason: collision with root package name */
    public final Collection f15495d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ u0 f15496e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ u0 f15497f;

    public l(u0 u0Var, Object obj, List list, l lVar) {
        this.f15497f = u0Var;
        this.f15496e = u0Var;
        this.f15492a = obj;
        this.f15493b = list;
        this.f15494c = lVar;
        this.f15495d = lVar == null ? null : lVar.f15493b;
    }

    public final void a() {
        l lVar = this.f15494c;
        if (lVar != null) {
            lVar.a();
        } else {
            this.f15496e.f15540d.put(this.f15492a, this.f15493b);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        b();
        boolean zIsEmpty = this.f15493b.isEmpty();
        boolean zAdd = this.f15493b.add(obj);
        if (zAdd) {
            this.f15496e.f15541e++;
            if (zIsEmpty) {
                a();
            }
        }
        return zAdd;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean zAddAll = this.f15493b.addAll(collection);
        if (zAddAll) {
            this.f15496e.f15541e += this.f15493b.size() - size;
            if (size == 0) {
                a();
            }
        }
        return zAddAll;
    }

    public final void b() {
        Collection collection;
        l lVar = this.f15494c;
        if (lVar != null) {
            lVar.b();
            if (lVar.f15493b != this.f15495d) {
                throw new ConcurrentModificationException();
            }
        } else {
            if (!this.f15493b.isEmpty() || (collection = (Collection) this.f15496e.f15540d.get(this.f15492a)) == null) {
                return;
            }
            this.f15493b = collection;
        }
    }

    public final void c() {
        l lVar = this.f15494c;
        if (lVar != null) {
            lVar.c();
        } else if (this.f15493b.isEmpty()) {
            this.f15496e.f15540d.remove(this.f15492a);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        int size = size();
        if (size == 0) {
            return;
        }
        this.f15493b.clear();
        this.f15496e.f15541e -= size;
        c();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        b();
        return this.f15493b.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean containsAll(Collection collection) {
        b();
        return this.f15493b.containsAll(collection);
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        b();
        return this.f15493b.equals(obj);
    }

    @Override // java.util.List
    public final Object get(int i10) {
        b();
        return ((List) this.f15493b).get(i10);
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        b();
        return this.f15493b.hashCode();
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        b();
        return ((List) this.f15493b).indexOf(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        b();
        return new c(this);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        b();
        return ((List) this.f15493b).lastIndexOf(obj);
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        b();
        return new k(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        b();
        boolean zRemove = this.f15493b.remove(obj);
        if (zRemove) {
            u0 u0Var = this.f15496e;
            u0Var.f15541e--;
            c();
        }
        return zRemove;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean zRemoveAll = this.f15493b.removeAll(collection);
        if (zRemoveAll) {
            this.f15496e.f15541e += this.f15493b.size() - size;
            c();
        }
        return zRemoveAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        collection.getClass();
        int size = size();
        boolean zRetainAll = this.f15493b.retainAll(collection);
        if (zRetainAll) {
            this.f15496e.f15541e += this.f15493b.size() - size;
            c();
        }
        return zRetainAll;
    }

    @Override // java.util.List
    public final Object set(int i10, Object obj) {
        b();
        return ((List) this.f15493b).set(i10, obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        b();
        return this.f15493b.size();
    }

    @Override // java.util.List
    public final List subList(int i10, int i11) {
        b();
        List listSubList = ((List) this.f15493b).subList(i10, i11);
        l lVar = this.f15494c;
        if (lVar == null) {
            lVar = this;
        }
        u0 u0Var = this.f15497f;
        u0Var.getClass();
        boolean z = listSubList instanceof RandomAccess;
        Object obj = this.f15492a;
        return z ? new h(u0Var, obj, listSubList, lVar) : new l(u0Var, obj, listSubList, lVar);
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        b();
        return this.f15493b.toString();
    }

    @Override // java.util.List
    public final ListIterator listIterator(int i10) {
        b();
        return new k(this, i10);
    }

    @Override // java.util.List
    public final Object remove(int i10) {
        b();
        Object objRemove = ((List) this.f15493b).remove(i10);
        u0 u0Var = this.f15497f;
        u0Var.f15541e--;
        c();
        return objRemove;
    }

    @Override // java.util.List
    public final void add(int i10, Object obj) {
        b();
        boolean zIsEmpty = this.f15493b.isEmpty();
        ((List) this.f15493b).add(i10, obj);
        this.f15497f.f15541e++;
        if (zIsEmpty) {
            a();
        }
    }

    @Override // java.util.List
    public final boolean addAll(int i10, Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean zAddAll = ((List) this.f15493b).addAll(i10, collection);
        if (zAddAll) {
            this.f15497f.f15541e += this.f15493b.size() - size;
            if (size == 0) {
                a();
            }
        }
        return zAddAll;
    }
}
