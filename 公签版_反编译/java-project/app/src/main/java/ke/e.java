package ke;

import java.util.ConcurrentModificationException;
import java.util.Map;

/* loaded from: classes.dex */
public final class e implements Map.Entry, ve.a {

    /* renamed from: a, reason: collision with root package name */
    public final f f10249a;

    /* renamed from: b, reason: collision with root package name */
    public final int f10250b;

    /* renamed from: c, reason: collision with root package name */
    public final int f10251c;

    public e(f fVar, int i10) {
        ue.d.e(fVar, "map");
        this.f10249a = fVar;
        this.f10250b = i10;
        this.f10251c = fVar.f10260h;
    }

    public final void a() {
        if (this.f10249a.f10260h != this.f10251c) {
            throw new ConcurrentModificationException("The backing map has been modified after this entry was obtained.");
        }
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            if (ue.d.a(entry.getKey(), getKey()) && ue.d.a(entry.getValue(), getValue())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        a();
        return this.f10249a.f10253a[this.f10250b];
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        a();
        Object[] objArr = this.f10249a.f10254b;
        ue.d.b(objArr);
        return objArr[this.f10250b];
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Object key = getKey();
        int iHashCode = key != null ? key.hashCode() : 0;
        Object value = getValue();
        return iHashCode ^ (value != null ? value.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        a();
        f fVar = this.f10249a;
        fVar.c();
        Object[] objArr = fVar.f10254b;
        if (objArr == null) {
            int length = fVar.f10253a.length;
            if (length < 0) {
                throw new IllegalArgumentException("capacity must be non-negative.");
            }
            objArr = new Object[length];
            fVar.f10254b = objArr;
        }
        int i10 = this.f10250b;
        Object obj2 = objArr[i10];
        objArr[i10] = obj;
        return obj2;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getKey());
        sb2.append('=');
        sb2.append(getValue());
        return sb2.toString();
    }
}
