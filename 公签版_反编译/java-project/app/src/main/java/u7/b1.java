package u7;

/* loaded from: classes.dex */
public final class b1 extends j0 {

    /* renamed from: d, reason: collision with root package name */
    public final transient d1 f15432d;

    /* renamed from: e, reason: collision with root package name */
    public final transient c1 f15433e;

    public b1(d1 d1Var, c1 c1Var) {
        this.f15432d = d1Var;
        this.f15433e = c1Var;
    }

    @Override // u7.j0, u7.b0
    public final g0 a() {
        return this.f15433e;
    }

    @Override // u7.b0
    public final int b(int i10, Object[] objArr) {
        return this.f15433e.b(i10, objArr);
    }

    @Override // u7.b0, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f15432d.get(obj) != null;
    }

    @Override // u7.b0
    public final boolean g() {
        return true;
    }

    @Override // u7.b0
    /* renamed from: h */
    public final o1 iterator() {
        return this.f15433e.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f15432d.f15453f;
    }
}
