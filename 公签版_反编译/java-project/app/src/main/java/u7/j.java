package u7;

import java.util.Comparator;
import java.util.SortedMap;
import java.util.SortedSet;

/* loaded from: classes.dex */
public class j extends e implements SortedSet {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ u0 f15481c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(u0 u0Var, SortedMap sortedMap) {
        super(u0Var, sortedMap);
        this.f15481c = u0Var;
    }

    public SortedMap a() {
        return (SortedMap) this.f15454a;
    }

    @Override // java.util.SortedSet
    public final Comparator comparator() {
        return a().comparator();
    }

    @Override // java.util.SortedSet
    public final Object first() {
        return a().firstKey();
    }

    public SortedSet headSet(Object obj) {
        return new j(this.f15481c, a().headMap(obj));
    }

    @Override // java.util.SortedSet
    public final Object last() {
        return a().lastKey();
    }

    public SortedSet subSet(Object obj, Object obj2) {
        return new j(this.f15481c, a().subMap(obj, obj2));
    }

    public SortedSet tailSet(Object obj) {
        return new j(this.f15481c, a().tailMap(obj));
    }
}
