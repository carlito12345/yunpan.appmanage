package u7;

import java.util.List;
import java.util.ListIterator;

/* loaded from: classes.dex */
public final class k extends c implements ListIterator {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ l f15486e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(l lVar) {
        super(lVar);
        this.f15486e = lVar;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        l lVar = this.f15486e;
        boolean zIsEmpty = lVar.isEmpty();
        b().add(obj);
        lVar.f15497f.f15541e++;
        if (zIsEmpty) {
            lVar.a();
        }
    }

    public final ListIterator b() {
        a();
        return (ListIterator) this.f15435b;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return b().hasPrevious();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return b().nextIndex();
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        return b().previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return b().previousIndex();
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        b().set(obj);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(l lVar, int i10) {
        super(lVar, ((List) lVar.f15493b).listIterator(i10));
        this.f15486e = lVar;
    }
}
