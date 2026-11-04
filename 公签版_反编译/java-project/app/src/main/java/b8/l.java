package b8;

import j$.util.Objects;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class l extends AbstractSet {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2637a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Map f2638b;

    public /* synthetic */ l(Map map, int i10) {
        this.f2637a = i10;
        this.f2638b = map;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        switch (this.f2637a) {
            case 0:
                ((n) this.f2638b).clear();
                break;
            case 1:
                ((n) this.f2638b).clear();
                break;
            default:
                super.clear();
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        m mVarA;
        switch (this.f2637a) {
            case 0:
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                n nVar = (n) this.f2638b;
                nVar.getClass();
                Object key = entry.getKey();
                m mVar = null;
                if (key != null) {
                    try {
                        mVarA = nVar.a(key, false);
                    } catch (ClassCastException unused) {
                    }
                } else {
                    mVarA = null;
                }
                if (mVarA != null && Objects.equals(mVarA.f2646h, entry.getValue())) {
                    mVar = mVarA;
                }
                return mVar != null;
            case 1:
                return ((n) this.f2638b).containsKey(obj);
            default:
                return super.contains(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        switch (this.f2637a) {
            case 0:
                return new k(this);
            case 1:
                return new k(this, (byte) 0);
            default:
                return new a0.c((a0.e) this.f2638b);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        m mVarA;
        switch (this.f2637a) {
            case 0:
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                n nVar = (n) this.f2638b;
                nVar.getClass();
                Object key = entry.getKey();
                m mVar = null;
                if (key != null) {
                    try {
                        mVarA = nVar.a(key, false);
                    } catch (ClassCastException unused) {
                    }
                } else {
                    mVarA = null;
                }
                if (mVarA != null && Objects.equals(mVarA.f2646h, entry.getValue())) {
                    mVar = mVarA;
                }
                if (mVar == null) {
                    return false;
                }
                nVar.c(mVar, true);
                return true;
            case 1:
                n nVar2 = (n) this.f2638b;
                nVar2.getClass();
                m mVarA2 = null;
                if (obj != null) {
                    try {
                        mVarA2 = nVar2.a(obj, false);
                    } catch (ClassCastException unused2) {
                    }
                }
                if (mVarA2 != null) {
                    nVar2.c(mVarA2, true);
                }
                return mVarA2 != null;
            default:
                return super.remove(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        switch (this.f2637a) {
            case 0:
                return ((n) this.f2638b).f2652d;
            case 1:
                return ((n) this.f2638b).f2652d;
            default:
                return ((a0.e) this.f2638b).f65c;
        }
    }
}
