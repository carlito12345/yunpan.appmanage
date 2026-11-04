package u7;

/* loaded from: classes.dex */
public final class f1 extends j0 {

    /* renamed from: i, reason: collision with root package name */
    public static final Object[] f15463i;

    /* renamed from: j, reason: collision with root package name */
    public static final f1 f15464j;

    /* renamed from: d, reason: collision with root package name */
    public final transient Object[] f15465d;

    /* renamed from: e, reason: collision with root package name */
    public final transient int f15466e;

    /* renamed from: f, reason: collision with root package name */
    public final transient Object[] f15467f;

    /* renamed from: g, reason: collision with root package name */
    public final transient int f15468g;

    /* renamed from: h, reason: collision with root package name */
    public final transient int f15469h;

    static {
        Object[] objArr = new Object[0];
        f15463i = objArr;
        f15464j = new f1(0, 0, 0, objArr, objArr);
    }

    public f1(int i10, int i11, int i12, Object[] objArr, Object[] objArr2) {
        this.f15465d = objArr;
        this.f15466e = i10;
        this.f15467f = objArr2;
        this.f15468g = i11;
        this.f15469h = i12;
    }

    @Override // u7.b0
    public final int b(int i10, Object[] objArr) {
        Object[] objArr2 = this.f15465d;
        int i11 = this.f15469h;
        System.arraycopy(objArr2, 0, objArr, i10, i11);
        return i10 + i11;
    }

    @Override // u7.b0
    public final Object[] c() {
        return this.f15465d;
    }

    @Override // u7.b0, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj != null) {
            Object[] objArr = this.f15467f;
            if (objArr.length != 0) {
                int iQ = q.q(obj);
                while (true) {
                    int i10 = iQ & this.f15468g;
                    Object obj2 = objArr[i10];
                    if (obj2 == null) {
                        return false;
                    }
                    if (obj2.equals(obj)) {
                        return true;
                    }
                    iQ = i10 + 1;
                }
            }
        }
        return false;
    }

    @Override // u7.b0
    public final int d() {
        return this.f15469h;
    }

    @Override // u7.b0
    public final int f() {
        return 0;
    }

    @Override // u7.b0
    public final boolean g() {
        return false;
    }

    @Override // u7.b0
    /* renamed from: h */
    public final o1 iterator() {
        return a().listIterator(0);
    }

    @Override // u7.j0, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f15466e;
    }

    @Override // u7.j0
    public final g0 m() {
        return g0.i(this.f15469h, this.f15465d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f15469h;
    }
}
