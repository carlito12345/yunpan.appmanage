package u7;

import j$.util.Objects;
import java.util.Arrays;
import java.util.Collection;
import java.util.Set;
import java.util.SortedSet;

/* loaded from: classes.dex */
public abstract class j0 extends b0 implements Set, j$.util.Set {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f15482c = 0;

    /* renamed from: b, reason: collision with root package name */
    public transient g0 f15483b;

    public static int i(int i10) {
        int iMax = Math.max(i10, 2);
        if (iMax >= 751619276) {
            a9.o.i("collection too large", iMax < 1073741824);
            return 1073741824;
        }
        int iHighestOneBit = Integer.highestOneBit(iMax - 1) << 1;
        while (true) {
            double d10 = iHighestOneBit;
            Double.isNaN(d10);
            if (d10 * 0.7d >= iMax) {
                return iHighestOneBit;
            }
            iHighestOneBit <<= 1;
        }
    }

    public static j0 j(int i10, Object... objArr) {
        if (i10 == 0) {
            return f1.f15464j;
        }
        if (i10 == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            return new m1(obj);
        }
        int i11 = i(i10);
        Object[] objArr2 = new Object[i11];
        int i12 = i11 - 1;
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 0; i15 < i10; i15++) {
            Object obj2 = objArr[i15];
            if (obj2 == null) {
                throw new NullPointerException(da.b.a(i15, "at index "));
            }
            int iHashCode = obj2.hashCode();
            int iP = q.p(iHashCode);
            while (true) {
                int i16 = iP & i12;
                Object obj3 = objArr2[i16];
                if (obj3 == null) {
                    objArr[i14] = obj2;
                    objArr2[i16] = obj2;
                    i13 += iHashCode;
                    i14++;
                    break;
                }
                if (obj3.equals(obj2)) {
                    break;
                }
                iP++;
            }
        }
        Arrays.fill(objArr, i14, i10, (Object) null);
        if (i14 == 1) {
            Object obj4 = objArr[0];
            Objects.requireNonNull(obj4);
            return new m1(obj4);
        }
        if (i(i14) < i11 / 2) {
            return j(i14, objArr);
        }
        int length = objArr.length;
        if (i14 < (length >> 1) + (length >> 2)) {
            objArr = Arrays.copyOf(objArr, i14);
        }
        return new f1(i13, i12, i14, objArr, objArr2);
    }

    public static j0 l(Collection collection) {
        if ((collection instanceof j0) && !(collection instanceof SortedSet)) {
            j0 j0Var = (j0) collection;
            if (!j0Var.g()) {
                return j0Var;
            }
        }
        Object[] array = collection.toArray();
        return j(array.length, array);
    }

    @Override // u7.b0
    public g0 a() {
        g0 g0Var = this.f15483b;
        if (g0Var != null) {
            return g0Var;
        }
        g0 g0VarM = m();
        this.f15483b = g0VarM;
        return g0VarM;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof j0) && (this instanceof f1)) {
            j0 j0Var = (j0) obj;
            j0Var.getClass();
            if ((j0Var instanceof f1) && hashCode() != obj.hashCode()) {
                return false;
            }
        }
        return q.g(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return q.j(this);
    }

    public g0 m() {
        Object[] array = toArray(b0.f15431a);
        e0 e0Var = g0.f15471b;
        return g0.i(array.length, array);
    }
}
