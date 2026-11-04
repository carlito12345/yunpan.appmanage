package u7;

import java.io.Serializable;
import java.util.AbstractSequentialList;
import java.util.List;
import java.util.ListIterator;

/* loaded from: classes.dex */
public final class p0 extends AbstractSequentialList implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final List f15515a;

    /* renamed from: b, reason: collision with root package name */
    public final t7.d f15516b;

    public p0(List list, t7.d dVar) {
        list.getClass();
        this.f15515a = list;
        this.f15516b = dVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return this.f15515a.isEmpty();
    }

    @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i10) {
        return new n0(this, this.f15515a.listIterator(i10), 1);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i10, int i11) {
        this.f15515a.subList(i10, i11).clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f15515a.size();
    }
}
