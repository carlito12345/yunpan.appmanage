package rh;

import com.alibaba.sdk.android.oss.signer.SignParameters;
import j$.lang.Iterable;
import j$.util.Collection;
import j$.util.List;
import j$.util.Spliterator;
import j$.util.stream.Stream;
import j$.util.stream.StreamSupport;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.function.UnaryOperator;
import java.util.stream.Stream;

/* loaded from: classes3.dex */
public final class e extends ArrayList implements List {
    public e() {
    }

    public final String a(String str) {
        Iterator<E> it = iterator();
        while (it.hasNext()) {
            ph.l lVar = (ph.l) it.next();
            if (lVar.j(str)) {
                return lVar.b(str);
            }
        }
        return "";
    }

    public final String b() {
        return (String) Collection.EL.stream(this).map(new a2.n(8)).collect(oh.f.k(" "));
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        Iterator<E> it = iterator();
        while (it.hasNext()) {
            ph.q qVar = (ph.q) it.next();
            ph.l lVar = qVar.f12741a;
            if (lVar != null) {
                lVar.x(qVar);
            }
        }
        super.clear();
    }

    @Override // java.util.ArrayList
    public final Object clone() {
        e eVar = new e(size());
        Iterator<E> it = iterator();
        while (it.hasNext()) {
            eVar.add(((ph.l) it.next()).clone());
        }
        return eVar;
    }

    @Override // java.util.ArrayList, java.lang.Iterable, j$.util.Collection, j$.lang.Iterable
    public final /* synthetic */ void forEach(Consumer consumer) {
        Iterable.CC.$default$forEach(this, consumer);
    }

    @Override // java.util.Collection
    public final /* synthetic */ Stream parallelStream() {
        return Stream.Wrapper.convert(StreamSupport.stream(Collection.EL.a(this), true));
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final Object remove(int i10) {
        ph.q qVar = (ph.q) super.remove(i10);
        ph.l lVar = qVar.f12741a;
        if (lVar != null) {
            lVar.x(qVar);
        }
        return (ph.l) qVar;
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(java.util.Collection collection) {
        Iterator it = collection.iterator();
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= remove(it.next());
        }
        return zRemove;
    }

    @Override // java.util.ArrayList, java.util.Collection, j$.util.Collection
    public final boolean removeIf(Predicate predicate) {
        Iterator<E> it = iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (predicate.test((ph.q) it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.ArrayList, java.util.List, j$.util.List
    public final void replaceAll(UnaryOperator unaryOperator) {
        for (int i10 = 0; i10 < size(); i10++) {
            ph.l lVar = (ph.l) ((ph.q) unaryOperator.apply((ph.q) get(i10)));
            nh.b.d0(lVar);
            ph.q qVar = (ph.q) super.set(i10, lVar);
            qVar.y(lVar);
        }
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(java.util.Collection collection) {
        Iterator<E> it = iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (!collection.contains((ph.q) it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final Object set(int i10, Object obj) {
        ph.l lVar = (ph.l) obj;
        nh.b.d0(lVar);
        ph.q qVar = (ph.q) super.set(i10, lVar);
        qVar.y(lVar);
        return (ph.l) qVar;
    }

    @Override // java.util.ArrayList, java.util.List, j$.util.List
    public final /* synthetic */ void sort(Comparator comparator) {
        List.CC.$default$sort(this, comparator);
    }

    @Override // java.util.ArrayList, java.util.Collection, java.lang.Iterable, java.util.List
    public final /* synthetic */ Spliterator spliterator() {
        return Spliterator.Wrapper.convert(List.CC.$default$spliterator(this));
    }

    @Override // java.util.Collection
    public final /* synthetic */ java.util.stream.Stream stream() {
        return Stream.Wrapper.convert(Collection.CC.$default$stream(this));
    }

    @Override // java.util.Collection, j$.util.Collection
    public final /* synthetic */ Object[] toArray(IntFunction intFunction) {
        return toArray((Object[]) intFunction.apply(0));
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return (String) Collection.EL.stream(this).map(new a2.n(9)).collect(oh.f.k(SignParameters.NEW_LINE));
    }

    public e(int i10) {
        super(i10);
    }

    @Override // java.util.Collection, j$.util.Collection
    public final /* synthetic */ j$.util.stream.Stream parallelStream() {
        return StreamSupport.stream(Collection.EL.a(this), true);
    }

    @Override // java.util.ArrayList, java.util.Collection, java.lang.Iterable, java.util.List, j$.util.List, j$.util.Collection, j$.lang.Iterable
    public final /* synthetic */ j$.util.Spliterator spliterator() {
        return List.CC.$default$spliterator(this);
    }

    @Override // java.util.Collection, j$.util.Collection
    public final /* synthetic */ j$.util.stream.Stream stream() {
        return Collection.CC.$default$stream(this);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf == -1) {
            return false;
        }
        ph.q qVar = (ph.q) super.remove(iIndexOf);
        ph.l lVar = qVar.f12741a;
        if (lVar != null) {
            lVar.x(qVar);
        }
        return true;
    }
}
