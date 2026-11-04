package je;

import java.lang.reflect.Array;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class h extends e {

    /* renamed from: d, reason: collision with root package name */
    public static final Object[] f9865d = new Object[0];

    /* renamed from: a, reason: collision with root package name */
    public int f9866a;

    /* renamed from: b, reason: collision with root package name */
    public Object[] f9867b = f9865d;

    /* renamed from: c, reason: collision with root package name */
    public int f9868c;

    @Override // je.e
    public final int a() {
        return this.f9868c;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i10, Object obj) {
        int length;
        int i11 = this.f9868c;
        if (i10 < 0 || i10 > i11) {
            throw new IndexOutOfBoundsException(android.support.v4.media.session.a.o("index: ", i10, i11, ", size: "));
        }
        if (i10 == i11) {
            addLast(obj);
            return;
        }
        if (i10 == 0) {
            addFirst(obj);
            return;
        }
        j();
        d(this.f9868c + 1);
        int i12 = i(this.f9866a + i10);
        int i13 = this.f9868c;
        if (i10 < ((i13 + 1) >> 1)) {
            if (i12 == 0) {
                Object[] objArr = this.f9867b;
                ue.d.e(objArr, "<this>");
                i12 = objArr.length;
            }
            int i14 = i12 - 1;
            int i15 = this.f9866a;
            if (i15 == 0) {
                Object[] objArr2 = this.f9867b;
                ue.d.e(objArr2, "<this>");
                length = objArr2.length - 1;
            } else {
                length = i15 - 1;
            }
            int i16 = this.f9866a;
            if (i14 >= i16) {
                Object[] objArr3 = this.f9867b;
                objArr3[length] = objArr3[i16];
                i.d0(i16, i16 + 1, i14 + 1, objArr3, objArr3);
            } else {
                Object[] objArr4 = this.f9867b;
                i.d0(i16 - 1, i16, objArr4.length, objArr4, objArr4);
                Object[] objArr5 = this.f9867b;
                objArr5[objArr5.length - 1] = objArr5[0];
                i.d0(0, 1, i14 + 1, objArr5, objArr5);
            }
            this.f9867b[i14] = obj;
            this.f9866a = length;
        } else {
            int i17 = i(i13 + this.f9866a);
            if (i12 < i17) {
                Object[] objArr6 = this.f9867b;
                i.d0(i12 + 1, i12, i17, objArr6, objArr6);
            } else {
                Object[] objArr7 = this.f9867b;
                i.d0(1, 0, i17, objArr7, objArr7);
                Object[] objArr8 = this.f9867b;
                objArr8[0] = objArr8[objArr8.length - 1];
                i.d0(i12 + 1, i12, objArr8.length - 1, objArr8, objArr8);
            }
            this.f9867b[i12] = obj;
        }
        this.f9868c++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i10, Collection collection) {
        ue.d.e(collection, "elements");
        int i11 = this.f9868c;
        if (i10 < 0 || i10 > i11) {
            throw new IndexOutOfBoundsException(android.support.v4.media.session.a.o("index: ", i10, i11, ", size: "));
        }
        if (collection.isEmpty()) {
            return false;
        }
        if (i10 == this.f9868c) {
            return addAll(collection);
        }
        j();
        d(collection.size() + this.f9868c);
        int i12 = i(this.f9868c + this.f9866a);
        int i13 = i(this.f9866a + i10);
        int size = collection.size();
        if (i10 < ((this.f9868c + 1) >> 1)) {
            int i14 = this.f9866a;
            int length = i14 - size;
            if (i13 < i14) {
                Object[] objArr = this.f9867b;
                i.d0(length, i14, objArr.length, objArr, objArr);
                if (size >= i13) {
                    Object[] objArr2 = this.f9867b;
                    i.d0(objArr2.length - size, 0, i13, objArr2, objArr2);
                } else {
                    Object[] objArr3 = this.f9867b;
                    i.d0(objArr3.length - size, 0, size, objArr3, objArr3);
                    Object[] objArr4 = this.f9867b;
                    i.d0(0, size, i13, objArr4, objArr4);
                }
            } else if (length >= 0) {
                Object[] objArr5 = this.f9867b;
                i.d0(length, i14, i13, objArr5, objArr5);
            } else {
                Object[] objArr6 = this.f9867b;
                length += objArr6.length;
                int i15 = i13 - i14;
                int length2 = objArr6.length - length;
                if (length2 >= i15) {
                    i.d0(length, i14, i13, objArr6, objArr6);
                } else {
                    i.d0(length, i14, i14 + length2, objArr6, objArr6);
                    Object[] objArr7 = this.f9867b;
                    i.d0(0, this.f9866a + length2, i13, objArr7, objArr7);
                }
            }
            this.f9866a = length;
            c(g(i13 - size), collection);
        } else {
            int i16 = i13 + size;
            if (i13 < i12) {
                int i17 = size + i12;
                Object[] objArr8 = this.f9867b;
                if (i17 <= objArr8.length) {
                    i.d0(i16, i13, i12, objArr8, objArr8);
                } else if (i16 >= objArr8.length) {
                    i.d0(i16 - objArr8.length, i13, i12, objArr8, objArr8);
                } else {
                    int length3 = i12 - (i17 - objArr8.length);
                    i.d0(0, length3, i12, objArr8, objArr8);
                    Object[] objArr9 = this.f9867b;
                    i.d0(i16, i13, length3, objArr9, objArr9);
                }
            } else {
                Object[] objArr10 = this.f9867b;
                i.d0(size, 0, i12, objArr10, objArr10);
                Object[] objArr11 = this.f9867b;
                if (i16 >= objArr11.length) {
                    i.d0(i16 - objArr11.length, i13, objArr11.length, objArr11, objArr11);
                } else {
                    i.d0(0, objArr11.length - size, objArr11.length, objArr11, objArr11);
                    Object[] objArr12 = this.f9867b;
                    i.d0(i16, i13, objArr12.length - size, objArr12, objArr12);
                }
            }
            c(i13, collection);
        }
        return true;
    }

    public final void addFirst(Object obj) {
        j();
        d(this.f9868c + 1);
        int length = this.f9866a;
        if (length == 0) {
            Object[] objArr = this.f9867b;
            ue.d.e(objArr, "<this>");
            length = objArr.length;
        }
        int i10 = length - 1;
        this.f9866a = i10;
        this.f9867b[i10] = obj;
        this.f9868c++;
    }

    public final void addLast(Object obj) {
        j();
        d(a() + 1);
        this.f9867b[i(a() + this.f9866a)] = obj;
        this.f9868c = a() + 1;
    }

    @Override // je.e
    public final Object b(int i10) {
        int i11 = this.f9868c;
        if (i10 < 0 || i10 >= i11) {
            throw new IndexOutOfBoundsException(android.support.v4.media.session.a.o("index: ", i10, i11, ", size: "));
        }
        if (i10 == k.k0(this)) {
            return removeLast();
        }
        if (i10 == 0) {
            return removeFirst();
        }
        j();
        int i12 = i(this.f9866a + i10);
        Object[] objArr = this.f9867b;
        Object obj = objArr[i12];
        if (i10 < (this.f9868c >> 1)) {
            int i13 = this.f9866a;
            if (i12 >= i13) {
                i.d0(i13 + 1, i13, i12, objArr, objArr);
            } else {
                i.d0(1, 0, i12, objArr, objArr);
                Object[] objArr2 = this.f9867b;
                objArr2[0] = objArr2[objArr2.length - 1];
                int i14 = this.f9866a;
                i.d0(i14 + 1, i14, objArr2.length - 1, objArr2, objArr2);
            }
            Object[] objArr3 = this.f9867b;
            int i15 = this.f9866a;
            objArr3[i15] = null;
            this.f9866a = f(i15);
        } else {
            int i16 = i(k.k0(this) + this.f9866a);
            if (i12 <= i16) {
                Object[] objArr4 = this.f9867b;
                i.d0(i12, i12 + 1, i16 + 1, objArr4, objArr4);
            } else {
                Object[] objArr5 = this.f9867b;
                i.d0(i12, i12 + 1, objArr5.length, objArr5, objArr5);
                Object[] objArr6 = this.f9867b;
                objArr6[objArr6.length - 1] = objArr6[0];
                i.d0(0, 1, i16 + 1, objArr6, objArr6);
            }
            this.f9867b[i16] = null;
        }
        this.f9868c--;
        return obj;
    }

    public final void c(int i10, Collection collection) {
        Iterator it = collection.iterator();
        int length = this.f9867b.length;
        while (i10 < length && it.hasNext()) {
            this.f9867b[i10] = it.next();
            i10++;
        }
        int i11 = this.f9866a;
        for (int i12 = 0; i12 < i11 && it.hasNext(); i12++) {
            this.f9867b[i12] = it.next();
        }
        this.f9868c = collection.size() + a();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        if (!isEmpty()) {
            j();
            h(this.f9866a, i(a() + this.f9866a));
        }
        this.f9866a = 0;
        this.f9868c = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    public final void d(int i10) {
        if (i10 < 0) {
            throw new IllegalStateException("Deque is too big.");
        }
        Object[] objArr = this.f9867b;
        if (i10 <= objArr.length) {
            return;
        }
        if (objArr == f9865d) {
            if (i10 < 10) {
                i10 = 10;
            }
            this.f9867b = new Object[i10];
            return;
        }
        int length = objArr.length;
        int i11 = length + (length >> 1);
        if (i11 - i10 < 0) {
            i11 = i10;
        }
        if (i11 - 2147483639 > 0) {
            i11 = i10 > 2147483639 ? Integer.MAX_VALUE : 2147483639;
        }
        Object[] objArr2 = new Object[i11];
        i.d0(0, this.f9866a, objArr.length, objArr, objArr2);
        Object[] objArr3 = this.f9867b;
        int length2 = objArr3.length;
        int i12 = this.f9866a;
        i.d0(length2 - i12, 0, i12, objArr3, objArr2);
        this.f9866a = 0;
        this.f9867b = objArr2;
    }

    public final int f(int i10) {
        ue.d.e(this.f9867b, "<this>");
        if (i10 == r0.length - 1) {
            return 0;
        }
        return i10 + 1;
    }

    public final int g(int i10) {
        return i10 < 0 ? i10 + this.f9867b.length : i10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i10) {
        int iA = a();
        if (i10 < 0 || i10 >= iA) {
            throw new IndexOutOfBoundsException(android.support.v4.media.session.a.o("index: ", i10, iA, ", size: "));
        }
        return this.f9867b[i(this.f9866a + i10)];
    }

    public final void h(int i10, int i11) {
        if (i10 < i11) {
            Object[] objArr = this.f9867b;
            ue.d.e(objArr, "<this>");
            Arrays.fill(objArr, i10, i11, (Object) null);
        } else {
            Object[] objArr2 = this.f9867b;
            Arrays.fill(objArr2, i10, objArr2.length, (Object) null);
            Object[] objArr3 = this.f9867b;
            ue.d.e(objArr3, "<this>");
            Arrays.fill(objArr3, 0, i11, (Object) null);
        }
    }

    public final int i(int i10) {
        Object[] objArr = this.f9867b;
        return i10 >= objArr.length ? i10 - objArr.length : i10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        int i10;
        int i11 = i(a() + this.f9866a);
        int length = this.f9866a;
        if (length < i11) {
            while (length < i11) {
                if (ue.d.a(obj, this.f9867b[length])) {
                    i10 = this.f9866a;
                } else {
                    length++;
                }
            }
            return -1;
        }
        if (isEmpty() || (length = this.f9866a) < i11) {
            return -1;
        }
        int length2 = this.f9867b.length;
        while (true) {
            if (length >= length2) {
                for (int i12 = 0; i12 < i11; i12++) {
                    if (ue.d.a(obj, this.f9867b[i12])) {
                        length = i12 + this.f9867b.length;
                        i10 = this.f9866a;
                    }
                }
                return -1;
            }
            if (ue.d.a(obj, this.f9867b[length])) {
                i10 = this.f9866a;
                break;
            }
            length++;
        }
        return length - i10;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return a() == 0;
    }

    public final void j() {
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        int length;
        int i10;
        int i11 = i(this.f9868c + this.f9866a);
        int i12 = this.f9866a;
        if (i12 < i11) {
            length = i11 - 1;
            if (i12 <= length) {
                while (!ue.d.a(obj, this.f9867b[length])) {
                    if (length != i12) {
                        length--;
                    }
                }
                i10 = this.f9866a;
                return length - i10;
            }
            return -1;
        }
        if (!isEmpty() && this.f9866a >= i11) {
            int i13 = i11 - 1;
            while (true) {
                if (-1 >= i13) {
                    Object[] objArr = this.f9867b;
                    ue.d.e(objArr, "<this>");
                    length = objArr.length - 1;
                    int i14 = this.f9866a;
                    if (i14 <= length) {
                        while (!ue.d.a(obj, this.f9867b[length])) {
                            if (length != i14) {
                                length--;
                            }
                        }
                        i10 = this.f9866a;
                    }
                } else {
                    if (ue.d.a(obj, this.f9867b[i13])) {
                        length = i13 + this.f9867b.length;
                        i10 = this.f9866a;
                        break;
                    }
                    i13--;
                }
            }
            return length - i10;
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf == -1) {
            return false;
        }
        b(iIndexOf);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        int i10;
        ue.d.e(collection, "elements");
        boolean z = false;
        z = false;
        z = false;
        if (!isEmpty() && this.f9867b.length != 0) {
            int i11 = i(this.f9868c + this.f9866a);
            int i12 = this.f9866a;
            if (i12 < i11) {
                i10 = i12;
                while (i12 < i11) {
                    Object obj = this.f9867b[i12];
                    if (collection.contains(obj)) {
                        z = true;
                    } else {
                        this.f9867b[i10] = obj;
                        i10++;
                    }
                    i12++;
                }
                Object[] objArr = this.f9867b;
                ue.d.e(objArr, "<this>");
                Arrays.fill(objArr, i10, i11, (Object) null);
            } else {
                int length = this.f9867b.length;
                int i13 = i12;
                boolean z4 = false;
                while (i12 < length) {
                    Object[] objArr2 = this.f9867b;
                    Object obj2 = objArr2[i12];
                    objArr2[i12] = null;
                    if (collection.contains(obj2)) {
                        z4 = true;
                    } else {
                        this.f9867b[i13] = obj2;
                        i13++;
                    }
                    i12++;
                }
                i10 = i(i13);
                for (int i14 = 0; i14 < i11; i14++) {
                    Object[] objArr3 = this.f9867b;
                    Object obj3 = objArr3[i14];
                    objArr3[i14] = null;
                    if (collection.contains(obj3)) {
                        z4 = true;
                    } else {
                        this.f9867b[i10] = obj3;
                        i10 = f(i10);
                    }
                }
                z = z4;
            }
            if (z) {
                j();
                this.f9868c = g(i10 - this.f9866a);
            }
        }
        return z;
    }

    public final Object removeFirst() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        j();
        Object[] objArr = this.f9867b;
        int i10 = this.f9866a;
        Object obj = objArr[i10];
        objArr[i10] = null;
        this.f9866a = f(i10);
        this.f9868c = a() - 1;
        return obj;
    }

    public final Object removeLast() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        j();
        int i10 = i(k.k0(this) + this.f9866a);
        Object[] objArr = this.f9867b;
        Object obj = objArr[i10];
        objArr[i10] = null;
        this.f9868c = a() - 1;
        return obj;
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i10, int i11) {
        nh.b.i(i10, i11, this.f9868c);
        int i12 = i11 - i10;
        if (i12 == 0) {
            return;
        }
        if (i12 == this.f9868c) {
            clear();
            return;
        }
        if (i12 == 1) {
            b(i10);
            return;
        }
        j();
        if (i10 < this.f9868c - i11) {
            int i13 = i(this.f9866a + (i10 - 1));
            int i14 = i(this.f9866a + (i11 - 1));
            while (i10 > 0) {
                int i15 = i13 + 1;
                int iMin = Math.min(i10, Math.min(i15, i14 + 1));
                Object[] objArr = this.f9867b;
                int i16 = i14 - iMin;
                int i17 = i13 - iMin;
                i.d0(i16 + 1, i17 + 1, i15, objArr, objArr);
                i13 = g(i17);
                i14 = g(i16);
                i10 -= iMin;
            }
            int i18 = i(this.f9866a + i12);
            h(this.f9866a, i18);
            this.f9866a = i18;
        } else {
            int i19 = i(this.f9866a + i11);
            int i20 = i(this.f9866a + i10);
            int i21 = this.f9868c;
            while (true) {
                i21 -= i11;
                if (i21 <= 0) {
                    break;
                }
                Object[] objArr2 = this.f9867b;
                i11 = Math.min(i21, Math.min(objArr2.length - i19, objArr2.length - i20));
                Object[] objArr3 = this.f9867b;
                int i22 = i19 + i11;
                i.d0(i20, i19, i22, objArr3, objArr3);
                i19 = i(i22);
                i20 = i(i20 + i11);
            }
            int i23 = i(this.f9868c + this.f9866a);
            h(g(i23 - i12), i23);
        }
        this.f9868c -= i12;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        int i10;
        ue.d.e(collection, "elements");
        boolean z = false;
        z = false;
        z = false;
        if (!isEmpty() && this.f9867b.length != 0) {
            int i11 = i(this.f9868c + this.f9866a);
            int i12 = this.f9866a;
            if (i12 < i11) {
                i10 = i12;
                while (i12 < i11) {
                    Object obj = this.f9867b[i12];
                    if (collection.contains(obj)) {
                        this.f9867b[i10] = obj;
                        i10++;
                    } else {
                        z = true;
                    }
                    i12++;
                }
                Object[] objArr = this.f9867b;
                ue.d.e(objArr, "<this>");
                Arrays.fill(objArr, i10, i11, (Object) null);
            } else {
                int length = this.f9867b.length;
                int i13 = i12;
                boolean z4 = false;
                while (i12 < length) {
                    Object[] objArr2 = this.f9867b;
                    Object obj2 = objArr2[i12];
                    objArr2[i12] = null;
                    if (collection.contains(obj2)) {
                        this.f9867b[i13] = obj2;
                        i13++;
                    } else {
                        z4 = true;
                    }
                    i12++;
                }
                i10 = i(i13);
                for (int i14 = 0; i14 < i11; i14++) {
                    Object[] objArr3 = this.f9867b;
                    Object obj3 = objArr3[i14];
                    objArr3[i14] = null;
                    if (collection.contains(obj3)) {
                        this.f9867b[i10] = obj3;
                        i10 = f(i10);
                    } else {
                        z4 = true;
                    }
                }
                z = z4;
            }
            if (z) {
                j();
                this.f9868c = g(i10 - this.f9866a);
            }
        }
        return z;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i10, Object obj) {
        int iA = a();
        if (i10 < 0 || i10 >= iA) {
            throw new IndexOutOfBoundsException(android.support.v4.media.session.a.o("index: ", i10, iA, ", size: "));
        }
        int i11 = i(this.f9866a + i10);
        Object[] objArr = this.f9867b;
        Object obj2 = objArr[i11];
        objArr[i11] = obj;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        return toArray(new Object[a()]);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] objArr) throws NegativeArraySizeException {
        ue.d.e(objArr, "array");
        int length = objArr.length;
        int i10 = this.f9868c;
        if (length < i10) {
            Object objNewInstance = Array.newInstance(objArr.getClass().getComponentType(), i10);
            ue.d.c(objNewInstance, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.arrayOfNulls>");
            objArr = (Object[]) objNewInstance;
        }
        int i11 = i(this.f9868c + this.f9866a);
        int i12 = this.f9866a;
        if (i12 < i11) {
            i.h0(this.f9867b, objArr, 0, i12, i11, 2);
        } else if (!isEmpty()) {
            Object[] objArr2 = this.f9867b;
            i.d0(0, this.f9866a, objArr2.length, objArr2, objArr);
            Object[] objArr3 = this.f9867b;
            i.d0(objArr3.length - this.f9866a, 0, i11, objArr3, objArr);
        }
        int i13 = this.f9868c;
        if (i13 < objArr.length) {
            objArr[i13] = null;
        }
        return objArr;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        addLast(obj);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        ue.d.e(collection, "elements");
        if (collection.isEmpty()) {
            return false;
        }
        j();
        d(collection.size() + a());
        c(i(a() + this.f9866a), collection);
        return true;
    }
}
