package u7;

import java.util.AbstractList;
import java.util.ListIterator;

/* loaded from: classes.dex */
public final class n0 extends n1 implements ListIterator {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15505b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AbstractList f15506c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n0(AbstractList abstractList, ListIterator listIterator, int i10) {
        super(listIterator);
        this.f15505b = i10;
        this.f15506c = abstractList;
    }

    @Override // u7.n1
    public final Object a(Object obj) {
        switch (this.f15505b) {
            case 0:
                return ((o0) this.f15506c).f15512b.apply(obj);
            default:
                return ((p0) this.f15506c).f15516b.apply(obj);
        }
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return ((ListIterator) this.f15507a).hasPrevious();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return ((ListIterator) this.f15507a).nextIndex();
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        return a(((ListIterator) this.f15507a).previous());
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return ((ListIterator) this.f15507a).previousIndex();
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
