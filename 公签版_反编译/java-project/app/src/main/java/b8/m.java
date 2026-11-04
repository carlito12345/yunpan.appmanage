package b8;

import java.util.Map;

/* loaded from: classes.dex */
public final class m implements Map.Entry {

    /* renamed from: a, reason: collision with root package name */
    public m f2639a;

    /* renamed from: b, reason: collision with root package name */
    public m f2640b;

    /* renamed from: c, reason: collision with root package name */
    public m f2641c;

    /* renamed from: d, reason: collision with root package name */
    public m f2642d;

    /* renamed from: e, reason: collision with root package name */
    public m f2643e;

    /* renamed from: f, reason: collision with root package name */
    public final Object f2644f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f2645g;

    /* renamed from: h, reason: collision with root package name */
    public Object f2646h;

    /* renamed from: i, reason: collision with root package name */
    public int f2647i;

    public m(boolean z) {
        this.f2644f = null;
        this.f2645g = z;
        this.f2643e = this;
        this.f2642d = this;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object obj2 = this.f2644f;
        if (obj2 == null) {
            if (entry.getKey() != null) {
                return false;
            }
        } else if (!obj2.equals(entry.getKey())) {
            return false;
        }
        Object obj3 = this.f2646h;
        if (obj3 == null) {
            if (entry.getValue() != null) {
                return false;
            }
        } else if (!obj3.equals(entry.getValue())) {
            return false;
        }
        return true;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f2644f;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f2646h;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Object obj = this.f2644f;
        int iHashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.f2646h;
        return (obj2 != null ? obj2.hashCode() : 0) ^ iHashCode;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj == null && !this.f2645g) {
            throw new NullPointerException("value == null");
        }
        Object obj2 = this.f2646h;
        this.f2646h = obj;
        return obj2;
    }

    public final String toString() {
        return this.f2644f + "=" + this.f2646h;
    }

    public m(boolean z, m mVar, Object obj, m mVar2, m mVar3) {
        this.f2639a = mVar;
        this.f2644f = obj;
        this.f2645g = z;
        this.f2647i = 1;
        this.f2642d = mVar2;
        this.f2643e = mVar3;
        mVar3.f2642d = this;
        mVar2.f2643e = this;
    }
}
