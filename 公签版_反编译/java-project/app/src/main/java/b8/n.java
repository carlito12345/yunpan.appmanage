package b8;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Comparator;
import java.util.Set;

/* loaded from: classes.dex */
public final class n extends AbstractMap implements Serializable {

    /* renamed from: i, reason: collision with root package name */
    public static final a5.a f2648i = new a5.a(3);

    /* renamed from: a, reason: collision with root package name */
    public final Comparator f2649a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f2650b;

    /* renamed from: c, reason: collision with root package name */
    public m f2651c;

    /* renamed from: d, reason: collision with root package name */
    public int f2652d;

    /* renamed from: e, reason: collision with root package name */
    public int f2653e;

    /* renamed from: f, reason: collision with root package name */
    public final m f2654f;

    /* renamed from: g, reason: collision with root package name */
    public l f2655g;

    /* renamed from: h, reason: collision with root package name */
    public l f2656h;

    public n(boolean z) {
        a5.a aVar = f2648i;
        this.f2652d = 0;
        this.f2653e = 0;
        this.f2649a = aVar;
        this.f2650b = z;
        this.f2654f = new m(z);
    }

    public final m a(Object obj, boolean z) {
        int iCompareTo;
        m mVar;
        m mVar2 = this.f2651c;
        a5.a aVar = f2648i;
        Comparator comparator = this.f2649a;
        if (mVar2 != null) {
            Comparable comparable = comparator == aVar ? (Comparable) obj : null;
            while (true) {
                Object obj2 = mVar2.f2644f;
                iCompareTo = comparable != null ? comparable.compareTo(obj2) : comparator.compare(obj, obj2);
                if (iCompareTo == 0) {
                    return mVar2;
                }
                m mVar3 = iCompareTo < 0 ? mVar2.f2640b : mVar2.f2641c;
                if (mVar3 == null) {
                    break;
                }
                mVar2 = mVar3;
            }
        } else {
            iCompareTo = 0;
        }
        if (!z) {
            return null;
        }
        m mVar4 = this.f2654f;
        if (mVar2 != null) {
            mVar = new m(this.f2650b, mVar2, obj, mVar4, mVar4.f2643e);
            if (iCompareTo < 0) {
                mVar2.f2640b = mVar;
            } else {
                mVar2.f2641c = mVar;
            }
            b(mVar2, true);
        } else {
            if (comparator == aVar && !(obj instanceof Comparable)) {
                throw new ClassCastException(obj.getClass().getName().concat(" is not Comparable"));
            }
            mVar = new m(this.f2650b, mVar2, obj, mVar4, mVar4.f2643e);
            this.f2651c = mVar;
        }
        this.f2652d++;
        this.f2653e++;
        return mVar;
    }

    public final void b(m mVar, boolean z) {
        while (mVar != null) {
            m mVar2 = mVar.f2640b;
            m mVar3 = mVar.f2641c;
            int i10 = mVar2 != null ? mVar2.f2647i : 0;
            int i11 = mVar3 != null ? mVar3.f2647i : 0;
            int i12 = i10 - i11;
            if (i12 == -2) {
                m mVar4 = mVar3.f2640b;
                m mVar5 = mVar3.f2641c;
                int i13 = (mVar4 != null ? mVar4.f2647i : 0) - (mVar5 != null ? mVar5.f2647i : 0);
                if (i13 == -1 || (i13 == 0 && !z)) {
                    f(mVar);
                } else {
                    g(mVar3);
                    f(mVar);
                }
                if (z) {
                    return;
                }
            } else if (i12 == 2) {
                m mVar6 = mVar2.f2640b;
                m mVar7 = mVar2.f2641c;
                int i14 = (mVar6 != null ? mVar6.f2647i : 0) - (mVar7 != null ? mVar7.f2647i : 0);
                if (i14 == 1 || (i14 == 0 && !z)) {
                    g(mVar);
                } else {
                    f(mVar2);
                    g(mVar);
                }
                if (z) {
                    return;
                }
            } else if (i12 == 0) {
                mVar.f2647i = i10 + 1;
                if (z) {
                    return;
                }
            } else {
                mVar.f2647i = Math.max(i10, i11) + 1;
                if (!z) {
                    return;
                }
            }
            mVar = mVar.f2639a;
        }
    }

    public final void c(m mVar, boolean z) {
        m mVar2;
        m mVar3;
        int i10;
        if (z) {
            m mVar4 = mVar.f2643e;
            mVar4.f2642d = mVar.f2642d;
            mVar.f2642d.f2643e = mVar4;
        }
        m mVar5 = mVar.f2640b;
        m mVar6 = mVar.f2641c;
        m mVar7 = mVar.f2639a;
        int i11 = 0;
        if (mVar5 == null || mVar6 == null) {
            if (mVar5 != null) {
                d(mVar, mVar5);
                mVar.f2640b = null;
            } else if (mVar6 != null) {
                d(mVar, mVar6);
                mVar.f2641c = null;
            } else {
                d(mVar, null);
            }
            b(mVar7, false);
            this.f2652d--;
            this.f2653e++;
            return;
        }
        if (mVar5.f2647i > mVar6.f2647i) {
            m mVar8 = mVar5.f2641c;
            while (true) {
                m mVar9 = mVar8;
                mVar3 = mVar5;
                mVar5 = mVar9;
                if (mVar5 == null) {
                    break;
                } else {
                    mVar8 = mVar5.f2641c;
                }
            }
        } else {
            m mVar10 = mVar6.f2640b;
            while (true) {
                mVar2 = mVar6;
                mVar6 = mVar10;
                if (mVar6 == null) {
                    break;
                } else {
                    mVar10 = mVar6.f2640b;
                }
            }
            mVar3 = mVar2;
        }
        c(mVar3, false);
        m mVar11 = mVar.f2640b;
        if (mVar11 != null) {
            i10 = mVar11.f2647i;
            mVar3.f2640b = mVar11;
            mVar11.f2639a = mVar3;
            mVar.f2640b = null;
        } else {
            i10 = 0;
        }
        m mVar12 = mVar.f2641c;
        if (mVar12 != null) {
            i11 = mVar12.f2647i;
            mVar3.f2641c = mVar12;
            mVar12.f2639a = mVar3;
            mVar.f2641c = null;
        }
        mVar3.f2647i = Math.max(i10, i11) + 1;
        d(mVar, mVar3);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.f2651c = null;
        this.f2652d = 0;
        this.f2653e++;
        m mVar = this.f2654f;
        mVar.f2643e = mVar;
        mVar.f2642d = mVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        m mVarA = null;
        if (obj != null) {
            try {
                mVarA = a(obj, false);
            } catch (ClassCastException unused) {
            }
        }
        return mVarA != null;
    }

    public final void d(m mVar, m mVar2) {
        m mVar3 = mVar.f2639a;
        mVar.f2639a = null;
        if (mVar2 != null) {
            mVar2.f2639a = mVar3;
        }
        if (mVar3 == null) {
            this.f2651c = mVar2;
        } else if (mVar3.f2640b == mVar) {
            mVar3.f2640b = mVar2;
        } else {
            mVar3.f2641c = mVar2;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        l lVar = this.f2655g;
        if (lVar != null) {
            return lVar;
        }
        l lVar2 = new l(this, 0);
        this.f2655g = lVar2;
        return lVar2;
    }

    public final void f(m mVar) {
        m mVar2 = mVar.f2640b;
        m mVar3 = mVar.f2641c;
        m mVar4 = mVar3.f2640b;
        m mVar5 = mVar3.f2641c;
        mVar.f2641c = mVar4;
        if (mVar4 != null) {
            mVar4.f2639a = mVar;
        }
        d(mVar, mVar3);
        mVar3.f2640b = mVar;
        mVar.f2639a = mVar3;
        int iMax = Math.max(mVar2 != null ? mVar2.f2647i : 0, mVar4 != null ? mVar4.f2647i : 0) + 1;
        mVar.f2647i = iMax;
        mVar3.f2647i = Math.max(iMax, mVar5 != null ? mVar5.f2647i : 0) + 1;
    }

    public final void g(m mVar) {
        m mVar2 = mVar.f2640b;
        m mVar3 = mVar.f2641c;
        m mVar4 = mVar2.f2640b;
        m mVar5 = mVar2.f2641c;
        mVar.f2640b = mVar5;
        if (mVar5 != null) {
            mVar5.f2639a = mVar;
        }
        d(mVar, mVar2);
        mVar2.f2641c = mVar;
        mVar.f2639a = mVar2;
        int iMax = Math.max(mVar3 != null ? mVar3.f2647i : 0, mVar5 != null ? mVar5.f2647i : 0) + 1;
        mVar.f2647i = iMax;
        mVar2.f2647i = Math.max(iMax, mVar4 != null ? mVar4.f2647i : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        m mVarA;
        if (obj != null) {
            try {
                mVarA = a(obj, false);
            } catch (ClassCastException unused) {
            }
        } else {
            mVarA = null;
        }
        if (mVarA != null) {
            return mVarA.f2646h;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        l lVar = this.f2656h;
        if (lVar != null) {
            return lVar;
        }
        l lVar2 = new l(this, 1);
        this.f2656h = lVar2;
        return lVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException("key == null");
        }
        if (obj2 == null && !this.f2650b) {
            throw new NullPointerException("value == null");
        }
        m mVarA = a(obj, true);
        Object obj3 = mVarA.f2646h;
        mVarA.f2646h = obj2;
        return obj3;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        m mVarA;
        if (obj != null) {
            try {
                mVarA = a(obj, false);
            } catch (ClassCastException unused) {
            }
        } else {
            mVarA = null;
        }
        if (mVarA != null) {
            c(mVarA, true);
        }
        if (mVarA != null) {
            return mVarA.f2646h;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f2652d;
    }
}
