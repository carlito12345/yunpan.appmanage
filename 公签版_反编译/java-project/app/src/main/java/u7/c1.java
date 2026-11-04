package u7;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class c1 extends g0 {

    /* renamed from: c, reason: collision with root package name */
    public final transient Object[] f15440c;

    /* renamed from: d, reason: collision with root package name */
    public final transient int f15441d;

    /* renamed from: e, reason: collision with root package name */
    public final transient int f15442e;

    public c1(int i10, int i11, Object[] objArr) {
        this.f15440c = objArr;
        this.f15441d = i10;
        this.f15442e = i11;
    }

    @Override // u7.b0
    public final boolean g() {
        return true;
    }

    @Override // java.util.List
    public final Object get(int i10) {
        a9.o.m(i10, this.f15442e);
        Object obj = this.f15440c[(i10 * 2) + this.f15441d];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f15442e;
    }
}
