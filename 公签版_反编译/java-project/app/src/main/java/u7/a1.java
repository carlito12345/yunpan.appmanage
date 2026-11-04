package u7;

import java.util.Map;

/* loaded from: classes.dex */
public final class a1 extends j0 {

    /* renamed from: d, reason: collision with root package name */
    public final transient d1 f15427d;

    /* renamed from: e, reason: collision with root package name */
    public final transient Object[] f15428e;

    /* renamed from: f, reason: collision with root package name */
    public final transient int f15429f;

    public a1(d1 d1Var, Object[] objArr, int i10) {
        this.f15427d = d1Var;
        this.f15428e = objArr;
        this.f15429f = i10;
    }

    @Override // u7.b0
    public final int b(int i10, Object[] objArr) {
        return a().b(i10, objArr);
    }

    @Override // u7.b0, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = entry.getKey();
        Object value = entry.getValue();
        return value != null && value.equals(this.f15427d.get(key));
    }

    @Override // u7.b0
    public final boolean g() {
        return true;
    }

    @Override // u7.b0
    /* renamed from: h */
    public final o1 iterator() {
        return a().listIterator(0);
    }

    @Override // u7.j0
    public final g0 m() {
        return new z0(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f15429f;
    }
}
