package d;

import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class f implements Iterator, Map.Entry {

    /* renamed from: a, reason: collision with root package name */
    public int f78a;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ a f81d;

    /* renamed from: c, reason: collision with root package name */
    public boolean f80c = false;

    /* renamed from: b, reason: collision with root package name */
    public int f79b = -1;

    public f(a aVar) {
        this.f81d = aVar;
        this.f78a = aVar.f62d.f67c - 1;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (!this.f80c) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = entry.getKey();
        int i = this.f79b;
        a aVar = this.f81d;
        Object objA = aVar.a(i, 0);
        if (key != objA && (key == null || !key.equals(objA))) {
            return false;
        }
        Object value = entry.getValue();
        Object objA2 = aVar.a(this.f79b, 1);
        return value == objA2 || (value != null && value.equals(objA2));
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        if (!this.f80c) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        return this.f81d.a(this.f79b, 0);
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (!this.f80c) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        return this.f81d.a(this.f79b, 1);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f79b < this.f78a;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        if (!this.f80c) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        int i = this.f79b;
        a aVar = this.f81d;
        Object objA = aVar.a(i, 0);
        Object objA2 = aVar.a(this.f79b, 1);
        return (objA == null ? 0 : objA.hashCode()) ^ (objA2 != null ? objA2.hashCode() : 0);
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f79b++;
        this.f80c = true;
        return this;
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f80c) {
            throw new IllegalStateException();
        }
        this.f81d.b(this.f79b);
        this.f79b--;
        this.f78a--;
        this.f80c = false;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (!this.f80c) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        int i = (this.f79b << 1) + 1;
        Object[] objArr = this.f81d.f62d.f66b;
        Object obj2 = objArr[i];
        objArr[i] = obj;
        return obj2;
    }

    public final String toString() {
        return getKey() + "=" + getValue();
    }
}
