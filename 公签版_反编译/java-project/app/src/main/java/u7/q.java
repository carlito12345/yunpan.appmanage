package u7;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedSet;
import org.bouncycastle.crypto.hpke.HPKE;

/* loaded from: classes.dex */
public abstract class q {
    public static void b(int i10, Object[] objArr) {
        for (int i11 = 0; i11 < i10; i11++) {
            if (objArr[i11] == null) {
                throw new NullPointerException(da.b.a(i11, "at index "));
            }
        }
    }

    public static void c(int i10, String str) {
        if (i10 >= 0) {
            return;
        }
        throw new IllegalArgumentException(str + " cannot be negative but was: " + i10);
    }

    public static Object e(int i10) {
        if (i10 < 2 || i10 > 1073741824 || Integer.highestOneBit(i10) != i10) {
            throw new IllegalArgumentException(da.b.a(i10, "must be power of 2 between 2^1 and 2^30: "));
        }
        return i10 <= 256 ? new byte[i10] : i10 <= 65536 ? new short[i10] : new int[i10];
    }

    public static boolean f(Map map, Object obj) {
        if (map == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return map.entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    public static boolean g(Set set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
                return false;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static j1 h(Set set, t7.e eVar) {
        if (!(set instanceof SortedSet)) {
            if (!(set instanceof j1)) {
                set.getClass();
                return new j1(set, eVar);
            }
            j1 j1Var = (j1) set;
            t7.e eVar2 = j1Var.f15485b;
            eVar2.getClass();
            return new j1(j1Var.f15484a, new t7.f(Arrays.asList(eVar2, eVar)));
        }
        SortedSet sortedSet = (SortedSet) set;
        if (!(sortedSet instanceof j1)) {
            sortedSet.getClass();
            return new k1(sortedSet, eVar);
        }
        j1 j1Var2 = (j1) sortedSet;
        t7.e eVar3 = j1Var2.f15485b;
        eVar3.getClass();
        return new k1((SortedSet) j1Var2.f15484a, new t7.f(Arrays.asList(eVar3, eVar)));
    }

    public static Object i(Iterable iterable) {
        Object next;
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (list.isEmpty()) {
                throw new NoSuchElementException();
            }
            return list.get(list.size() - 1);
        }
        Iterator it = iterable.iterator();
        do {
            next = it.next();
        } while (it.hasNext());
        return next;
    }

    public static int j(Set set) {
        Iterator it = set.iterator();
        int iHashCode = 0;
        while (it.hasNext()) {
            Object next = it.next();
            iHashCode += next != null ? next.hashCode() : 0;
        }
        return iHashCode;
    }

    public static i1 k(j0 j0Var, j0 j0Var2) {
        a9.o.o(j0Var, "set1");
        a9.o.o(j0Var2, "set2");
        return new i1(j0Var, j0Var2);
    }

    public static int l(int i10, int i11, int i12) {
        return (i10 & (i12 ^ (-1))) | (i11 & i12);
    }

    public static ArrayList m(Iterator it) {
        ArrayList arrayList = new ArrayList();
        it.getClass();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    public static int n(Object obj, Object obj2, int i10, Object obj3, int[] iArr, Object[] objArr, Object[] objArr2) {
        int i11;
        int i12;
        int iQ = q(obj);
        int i13 = iQ & i10;
        int iR = r(i13, obj3);
        if (iR == 0) {
            return -1;
        }
        int i14 = i10 ^ (-1);
        int i15 = iQ & i14;
        int i16 = -1;
        while (true) {
            i11 = iR - 1;
            i12 = iArr[i11];
            if ((i12 & i14) == i15 && s1.g.r(obj, objArr[i11]) && (objArr2 == null || s1.g.r(obj2, objArr2[i11]))) {
                break;
            }
            int i17 = i12 & i10;
            if (i17 == 0) {
                return -1;
            }
            i16 = i11;
            iR = i17;
        }
        int i18 = i12 & i10;
        if (i16 == -1) {
            s(i13, i18, obj3);
        } else {
            iArr[i16] = l(iArr[i16], i18, i10);
        }
        return i11;
    }

    public static void o(List list, t7.e eVar, int i10, int i11) {
        for (int size = list.size() - 1; size > i11; size--) {
            if (eVar.apply(list.get(size))) {
                list.remove(size);
            }
        }
        for (int i12 = i11 - 1; i12 >= i10; i12--) {
            list.remove(i12);
        }
    }

    public static int p(int i10) {
        return (int) (Integer.rotateLeft((int) (i10 * (-862048943)), 15) * 461845907);
    }

    public static int q(Object obj) {
        return p(obj == null ? 0 : obj.hashCode());
    }

    public static int r(int i10, Object obj) {
        return obj instanceof byte[] ? ((byte[]) obj)[i10] & 255 : obj instanceof short[] ? ((short[]) obj)[i10] & HPKE.aead_EXPORT_ONLY : ((int[]) obj)[i10];
    }

    public static void s(int i10, int i11, Object obj) {
        if (obj instanceof byte[]) {
            ((byte[]) obj)[i10] = (byte) i11;
        } else if (obj instanceof short[]) {
            ((short[]) obj)[i10] = (short) i11;
        } else {
            ((int[]) obj)[i10] = i11;
        }
    }

    public static AbstractList t(List list, t7.d dVar) {
        return list instanceof RandomAccess ? new o0(list, dVar) : new p0(list, dVar);
    }

    public l5.y a() {
        c(2, "expectedValuesPerKey");
        return new l5.y(this);
    }

    public abstract Map d();
}
