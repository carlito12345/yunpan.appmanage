package u7;

import j$.util.Objects;
import java.util.AbstractMap;

/* loaded from: classes.dex */
public final class z0 extends g0 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ a1 f15553c;

    public z0(a1 a1Var) {
        this.f15553c = a1Var;
    }

    @Override // u7.b0
    public final boolean g() {
        return true;
    }

    @Override // java.util.List
    public final Object get(int i10) {
        a1 a1Var = this.f15553c;
        a9.o.m(i10, a1Var.f15429f);
        int i11 = i10 * 2;
        Object[] objArr = a1Var.f15428e;
        Object obj = objArr[i11];
        Objects.requireNonNull(obj);
        Object obj2 = objArr[i11 + 1];
        Objects.requireNonNull(obj2);
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f15553c.f15429f;
    }
}
