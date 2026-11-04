package u7;

import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.SortedSet;

/* loaded from: classes.dex */
public final class k1 extends j1 implements SortedSet {
    public k1(SortedSet sortedSet, t7.e eVar) {
        super(sortedSet, eVar);
    }

    @Override // java.util.SortedSet
    public final Comparator comparator() {
        return ((SortedSet) this.f15484a).comparator();
    }

    @Override // java.util.SortedSet
    public final Object first() {
        Iterator it = this.f15484a.iterator();
        it.getClass();
        t7.e eVar = this.f15485b;
        eVar.getClass();
        while (it.hasNext()) {
            Object next = it.next();
            if (eVar.apply(next)) {
                return next;
            }
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.SortedSet
    public final SortedSet headSet(Object obj) {
        return new k1(((SortedSet) this.f15484a).headSet(obj), this.f15485b);
    }

    @Override // java.util.SortedSet
    public final Object last() {
        SortedSet sortedSetHeadSet = (SortedSet) this.f15484a;
        while (true) {
            Object objLast = sortedSetHeadSet.last();
            if (this.f15485b.apply(objLast)) {
                return objLast;
            }
            sortedSetHeadSet = sortedSetHeadSet.headSet(objLast);
        }
    }

    @Override // java.util.SortedSet
    public final SortedSet subSet(Object obj, Object obj2) {
        return new k1(((SortedSet) this.f15484a).subSet(obj, obj2), this.f15485b);
    }

    @Override // java.util.SortedSet
    public final SortedSet tailSet(Object obj) {
        return new k1(((SortedSet) this.f15484a).tailSet(obj), this.f15485b);
    }
}
