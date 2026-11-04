package u7;

import java.util.Iterator;
import java.util.ListIterator;

/* loaded from: classes.dex */
public final class f0 extends g0 {

    /* renamed from: c, reason: collision with root package name */
    public final transient int f15460c;

    /* renamed from: d, reason: collision with root package name */
    public final transient int f15461d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ g0 f15462e;

    public f0(g0 g0Var, int i10, int i11) {
        this.f15462e = g0Var;
        this.f15460c = i10;
        this.f15461d = i11;
    }

    @Override // u7.b0
    public final Object[] c() {
        return this.f15462e.c();
    }

    @Override // u7.b0
    public final int d() {
        return this.f15462e.f() + this.f15460c + this.f15461d;
    }

    @Override // u7.b0
    public final int f() {
        return this.f15462e.f() + this.f15460c;
    }

    @Override // u7.b0
    public final boolean g() {
        return true;
    }

    @Override // java.util.List
    public final Object get(int i10) {
        a9.o.m(i10, this.f15461d);
        return this.f15462e.get(i10 + this.f15460c);
    }

    @Override // u7.g0, u7.b0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return listIterator(0);
    }

    @Override // u7.g0, java.util.List
    public final ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f15461d;
    }

    @Override // u7.g0, java.util.List
    /* renamed from: u */
    public final g0 subList(int i10, int i11) {
        a9.o.q(i10, i11, this.f15461d);
        int i12 = this.f15460c;
        return this.f15462e.subList(i10 + i12, i11 + i12);
    }

    @Override // u7.g0, java.util.List
    public final /* bridge */ /* synthetic */ ListIterator listIterator(int i10) {
        return listIterator(i10);
    }
}
