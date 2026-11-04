package u7;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class y0 extends g0 {

    /* renamed from: e, reason: collision with root package name */
    public static final y0 f15549e = new y0(0, new Object[0]);

    /* renamed from: c, reason: collision with root package name */
    public final transient Object[] f15550c;

    /* renamed from: d, reason: collision with root package name */
    public final transient int f15551d;

    public y0(int i10, Object[] objArr) {
        this.f15550c = objArr;
        this.f15551d = i10;
    }

    @Override // u7.g0, u7.b0
    public final int b(int i10, Object[] objArr) {
        Object[] objArr2 = this.f15550c;
        int i11 = this.f15551d;
        System.arraycopy(objArr2, 0, objArr, i10, i11);
        return i10 + i11;
    }

    @Override // u7.b0
    public final Object[] c() {
        return this.f15550c;
    }

    @Override // u7.b0
    public final int d() {
        return this.f15551d;
    }

    @Override // u7.b0
    public final int f() {
        return 0;
    }

    @Override // u7.b0
    public final boolean g() {
        return false;
    }

    @Override // java.util.List
    public final Object get(int i10) {
        a9.o.m(i10, this.f15551d);
        Object obj = this.f15550c[i10];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f15551d;
    }
}
