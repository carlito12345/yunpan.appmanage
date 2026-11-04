package ke;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class g extends je.f {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10265a;

    /* renamed from: b, reason: collision with root package name */
    public final f f10266b;

    public g(f fVar, int i10) {
        this.f10265a = i10;
        switch (i10) {
            case 1:
                ue.d.e(fVar, "backing");
                this.f10266b = fVar;
                break;
            default:
                ue.d.e(fVar, "backing");
                this.f10266b = fVar;
                break;
        }
    }

    @Override // je.f
    public final int a() {
        switch (this.f10265a) {
        }
        return this.f10266b.f10261i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        switch (this.f10265a) {
            case 0:
                ue.d.e((Map.Entry) obj, "element");
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean addAll(Collection collection) {
        switch (this.f10265a) {
            case 0:
                ue.d.e(collection, "elements");
                throw new UnsupportedOperationException();
            default:
                ue.d.e(collection, "elements");
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        switch (this.f10265a) {
            case 0:
                this.f10266b.clear();
                break;
            default:
                this.f10266b.clear();
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        switch (this.f10265a) {
            case 0:
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                ue.d.e(entry, "element");
                return this.f10266b.g(entry);
            default:
                return this.f10266b.containsKey(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(Collection collection) {
        switch (this.f10265a) {
            case 0:
                ue.d.e(collection, "elements");
                return this.f10266b.f(collection);
            default:
                return super.containsAll(collection);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        switch (this.f10265a) {
        }
        return this.f10266b.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        switch (this.f10265a) {
            case 0:
                f fVar = this.f10266b;
                fVar.getClass();
                return new d(fVar, 0);
            default:
                f fVar2 = this.f10266b;
                fVar2.getClass();
                return new d(fVar2, 1);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        switch (this.f10265a) {
            case 0:
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    ue.d.e(entry, "element");
                    f fVar = this.f10266b;
                    fVar.getClass();
                    fVar.c();
                    int i10 = fVar.i(entry.getKey());
                    if (i10 >= 0) {
                        Object[] objArr = fVar.f10254b;
                        ue.d.b(objArr);
                        if (ue.d.a(objArr[i10], entry.getValue())) {
                            fVar.n(i10);
                            break;
                        }
                    }
                }
                break;
            default:
                f fVar2 = this.f10266b;
                fVar2.c();
                int i11 = fVar2.i(obj);
                if (i11 >= 0) {
                    fVar2.n(i11);
                    break;
                }
                break;
        }
        return true;
    }

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean removeAll(Collection collection) {
        switch (this.f10265a) {
            case 0:
                ue.d.e(collection, "elements");
                this.f10266b.c();
                break;
            default:
                ue.d.e(collection, "elements");
                this.f10266b.c();
                break;
        }
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean retainAll(Collection collection) {
        switch (this.f10265a) {
            case 0:
                ue.d.e(collection, "elements");
                this.f10266b.c();
                break;
            default:
                ue.d.e(collection, "elements");
                this.f10266b.c();
                break;
        }
        return super.retainAll(collection);
    }
}
