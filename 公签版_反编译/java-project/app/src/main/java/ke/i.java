package ke;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class i extends je.f implements Serializable {

    /* renamed from: b, reason: collision with root package name */
    public static final i f10268b;

    /* renamed from: a, reason: collision with root package name */
    public final f f10269a;

    static {
        f fVar = f.f10252n;
        f10268b = new i(f.f10252n);
    }

    public i(f fVar) {
        ue.d.e(fVar, "backing");
        this.f10269a = fVar;
    }

    @Override // je.f
    public final int a() {
        return this.f10269a.f10261i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        return this.f10269a.a(obj) >= 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean addAll(Collection collection) {
        ue.d.e(collection, "elements");
        this.f10269a.c();
        return super.addAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f10269a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f10269a.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.f10269a.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        f fVar = this.f10269a;
        fVar.getClass();
        return new d(fVar, 1);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        f fVar = this.f10269a;
        fVar.c();
        int i10 = fVar.i(obj);
        if (i10 < 0) {
            return false;
        }
        fVar.n(i10);
        return true;
    }

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean removeAll(Collection collection) {
        ue.d.e(collection, "elements");
        this.f10269a.c();
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean retainAll(Collection collection) {
        ue.d.e(collection, "elements");
        this.f10269a.c();
        return super.retainAll(collection);
    }

    public i() {
        this(new f());
    }
}
