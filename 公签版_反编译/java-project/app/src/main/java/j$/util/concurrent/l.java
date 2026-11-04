package j$.util.concurrent;

import java.util.Map;

/* loaded from: classes2.dex */
class l implements Map.Entry {

    /* renamed from: a, reason: collision with root package name */
    final int f9099a;

    /* renamed from: b, reason: collision with root package name */
    final Object f9100b;

    /* renamed from: c, reason: collision with root package name */
    volatile Object f9101c;

    /* renamed from: d, reason: collision with root package name */
    volatile l f9102d;

    l(int i10, Object obj, Object obj2) {
        this.f9099a = i10;
        this.f9100b = obj;
        this.f9101c = obj2;
    }

    l(int i10, Object obj, Object obj2, l lVar) {
        this(i10, obj, obj2);
        this.f9102d = lVar;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f9100b;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f9101c;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return this.f9100b.hashCode() ^ this.f9101c.hashCode();
    }

    public final String toString() {
        return u.b(this.f9100b, this.f9101c);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        Map.Entry entry;
        Object key;
        Object value;
        Object obj2;
        Object obj3;
        return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (value = entry.getValue()) != null && (key == (obj2 = this.f9100b) || key.equals(obj2)) && (value == (obj3 = this.f9101c) || value.equals(obj3));
    }

    l a(Object obj, int i10) {
        Object obj2;
        if (obj == null) {
            return null;
        }
        l lVar = this;
        do {
            if (lVar.f9099a == i10 && ((obj2 = lVar.f9100b) == obj || (obj2 != null && obj.equals(obj2)))) {
                return lVar;
            }
            lVar = lVar.f9102d;
        } while (lVar != null);
        return null;
    }
}
