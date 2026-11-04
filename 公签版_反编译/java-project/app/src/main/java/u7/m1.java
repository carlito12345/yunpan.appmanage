package u7;

/* loaded from: classes.dex */
public final class m1 extends j0 {

    /* renamed from: d, reason: collision with root package name */
    public final transient Object f15502d;

    public m1(Object obj) {
        obj.getClass();
        this.f15502d = obj;
    }

    @Override // u7.j0, u7.b0
    public final g0 a() {
        return g0.r(this.f15502d);
    }

    @Override // u7.b0
    public final int b(int i10, Object[] objArr) {
        objArr[i10] = this.f15502d;
        return i10 + 1;
    }

    @Override // u7.b0, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f15502d.equals(obj);
    }

    @Override // u7.b0
    public final boolean g() {
        return false;
    }

    @Override // u7.b0
    /* renamed from: h */
    public final o1 iterator() {
        return new m0(this.f15502d);
    }

    @Override // u7.j0, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f15502d.hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return "[" + this.f15502d.toString() + ']';
    }
}
