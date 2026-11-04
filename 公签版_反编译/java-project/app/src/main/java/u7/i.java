package u7;

import java.util.Comparator;
import java.util.SortedMap;
import java.util.SortedSet;

/* loaded from: classes.dex */
public class i extends d implements SortedMap {

    /* renamed from: e, reason: collision with root package name */
    public SortedSet f15477e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ u0 f15478f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(u0 u0Var, SortedMap sortedMap) {
        super(u0Var, sortedMap);
        this.f15478f = u0Var;
    }

    public SortedSet b() {
        return new j(this.f15478f, d());
    }

    @Override // u7.d, java.util.AbstractMap, java.util.Map
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public SortedSet keySet() {
        SortedSet sortedSet = this.f15477e;
        if (sortedSet != null) {
            return sortedSet;
        }
        SortedSet sortedSetB = b();
        this.f15477e = sortedSetB;
        return sortedSetB;
    }

    @Override // java.util.SortedMap
    public final Comparator comparator() {
        return d().comparator();
    }

    public SortedMap d() {
        return (SortedMap) this.f15445c;
    }

    @Override // java.util.SortedMap
    public final Object firstKey() {
        return d().firstKey();
    }

    public SortedMap headMap(Object obj) {
        return new i(this.f15478f, d().headMap(obj));
    }

    @Override // java.util.SortedMap
    public final Object lastKey() {
        return d().lastKey();
    }

    public SortedMap subMap(Object obj, Object obj2) {
        return new i(this.f15478f, d().subMap(obj, obj2));
    }

    public SortedMap tailMap(Object obj) {
        return new i(this.f15478f, d().tailMap(obj));
    }
}
