package a0;

import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class c implements Iterator, Map.Entry {

    /* renamed from: a, reason: collision with root package name */
    public int f12a;

    /* renamed from: b, reason: collision with root package name */
    public int f13b = -1;

    /* renamed from: c, reason: collision with root package name */
    public boolean f14c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ e f15d;

    public c(e eVar) {
        this.f15d = eVar;
        this.f12a = eVar.f65c - 1;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (!this.f14c) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = entry.getKey();
        int i10 = this.f13b;
        e eVar = this.f15d;
        return ue.d.a(key, eVar.f(i10)) && ue.d.a(entry.getValue(), eVar.j(this.f13b));
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        if (this.f14c) {
            return this.f15d.f(this.f13b);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.f14c) {
            return this.f15d.j(this.f13b);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f13b < this.f12a;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        if (!this.f14c) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        int i10 = this.f13b;
        e eVar = this.f15d;
        Object objF = eVar.f(i10);
        Object objJ = eVar.j(this.f13b);
        return (objF == null ? 0 : objF.hashCode()) ^ (objJ != null ? objJ.hashCode() : 0);
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f13b++;
        this.f14c = true;
        return this;
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f14c) {
            throw new IllegalStateException();
        }
        this.f15d.h(this.f13b);
        this.f13b--;
        this.f12a--;
        this.f14c = false;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (this.f14c) {
            return this.f15d.i(this.f13b, obj);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    public final String toString() {
        return getKey() + "=" + getValue();
    }
}
