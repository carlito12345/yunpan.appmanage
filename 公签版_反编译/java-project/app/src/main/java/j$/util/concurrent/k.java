package j$.util.concurrent;

import java.util.Map;

/* loaded from: classes2.dex */
final class k implements Map.Entry {

    /* renamed from: a, reason: collision with root package name */
    final Object f9096a;

    /* renamed from: b, reason: collision with root package name */
    Object f9097b;

    /* renamed from: c, reason: collision with root package name */
    final ConcurrentHashMap f9098c;

    k(Object obj, Object obj2, ConcurrentHashMap concurrentHashMap) {
        this.f9096a = obj;
        this.f9097b = obj2;
        this.f9098c = concurrentHashMap;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f9096a;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f9097b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return this.f9096a.hashCode() ^ this.f9097b.hashCode();
    }

    public final String toString() {
        return u.b(this.f9096a, this.f9097b);
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        Map.Entry entry;
        Object key;
        Object value;
        Object obj2;
        Object obj3;
        return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (value = entry.getValue()) != null && (key == (obj2 = this.f9096a) || key.equals(obj2)) && (value == (obj3 = this.f9097b) || value.equals(obj3));
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        obj.getClass();
        Object obj2 = this.f9097b;
        this.f9097b = obj;
        this.f9098c.put(this.f9096a, obj);
        return obj2;
    }
}
