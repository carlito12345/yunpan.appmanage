package u7;

import j$.util.Objects;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class s extends AbstractSet {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15523a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ u f15524b;

    public /* synthetic */ s(u uVar, int i10) {
        this.f15523a = i10;
        this.f15524b = uVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        switch (this.f15523a) {
            case 0:
                this.f15524b.clear();
                break;
            default:
                this.f15524b.clear();
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        switch (this.f15523a) {
            case 0:
                u uVar = this.f15524b;
                Map mapA = uVar.a();
                if (mapA != null) {
                    return mapA.entrySet().contains(obj);
                }
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    int iC = uVar.c(entry.getKey());
                    if (iC != -1 && s1.g.r(uVar.j()[iC], entry.getValue())) {
                        return true;
                    }
                }
                return false;
            default:
                return this.f15524b.containsKey(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        switch (this.f15523a) {
            case 0:
                u uVar = this.f15524b;
                Map mapA = uVar.a();
                return mapA != null ? mapA.entrySet().iterator() : new r(uVar, 1);
            default:
                u uVar2 = this.f15524b;
                Map mapA2 = uVar2.a();
                return mapA2 != null ? mapA2.keySet().iterator() : new r(uVar2, 0);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        switch (this.f15523a) {
            case 0:
                u uVar = this.f15524b;
                Map mapA = uVar.a();
                if (mapA != null) {
                    return mapA.entrySet().remove(obj);
                }
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    if (!uVar.f()) {
                        int iB = uVar.b();
                        Object key = entry.getKey();
                        Object value = entry.getValue();
                        Object obj2 = uVar.f15531a;
                        Objects.requireNonNull(obj2);
                        int iN = q.n(key, value, iB, obj2, uVar.h(), uVar.i(), uVar.j());
                        if (iN != -1) {
                            uVar.d(iN, iB);
                            uVar.f15536f--;
                            uVar.f15535e += 32;
                            return true;
                        }
                    }
                }
                return false;
            default:
                u uVar2 = this.f15524b;
                Map mapA2 = uVar2.a();
                return mapA2 != null ? mapA2.keySet().remove(obj) : uVar2.g(obj) != u.f15530j;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        switch (this.f15523a) {
        }
        return this.f15524b.size();
    }
}
