package y;

import java.util.Map;

/* loaded from: classes.dex */
public final class c implements Map.Entry {

    /* renamed from: a, reason: collision with root package name */
    public final Object f18519a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f18520b;

    /* renamed from: c, reason: collision with root package name */
    public c f18521c;

    /* renamed from: d, reason: collision with root package name */
    public c f18522d;

    public c(Object obj, Object obj2) {
        this.f18519a = obj;
        this.f18520b = obj2;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f18519a.equals(cVar.f18519a) && this.f18520b.equals(cVar.f18520b);
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f18519a;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f18520b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return this.f18519a.hashCode() ^ this.f18520b.hashCode();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException("An entry modification is not supported");
    }

    public final String toString() {
        return this.f18519a + "=" + this.f18520b;
    }
}
