package u7;

import j$.util.Objects;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class a implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public final Iterator f15419a;

    /* renamed from: b, reason: collision with root package name */
    public Object f15420b = null;

    /* renamed from: c, reason: collision with root package name */
    public Collection f15421c = null;

    /* renamed from: d, reason: collision with root package name */
    public Iterator f15422d = l0.f15498a;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ u0 f15423e;

    public a(u0 u0Var) {
        this.f15423e = u0Var;
        this.f15419a = u0Var.f15540d.entrySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f15419a.hasNext() || this.f15422d.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!this.f15422d.hasNext()) {
            Map.Entry entry = (Map.Entry) this.f15419a.next();
            this.f15420b = entry.getKey();
            Collection collection = (Collection) entry.getValue();
            this.f15421c = collection;
            this.f15422d = collection.iterator();
        }
        return this.f15422d.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f15422d.remove();
        Collection collection = this.f15421c;
        Objects.requireNonNull(collection);
        if (collection.isEmpty()) {
            this.f15419a.remove();
        }
        u0 u0Var = this.f15423e;
        u0Var.f15541e--;
    }
}
