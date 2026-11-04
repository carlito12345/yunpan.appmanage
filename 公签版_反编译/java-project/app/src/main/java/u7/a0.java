package u7;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class a0 {

    /* renamed from: a, reason: collision with root package name */
    public Object[] f15424a;

    /* renamed from: b, reason: collision with root package name */
    public int f15425b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f15426c;

    public a0(int i10) {
        q.c(i10, "initialCapacity");
        this.f15424a = new Object[i10];
        this.f15425b = 0;
    }

    public static int f(int i10, int i11) {
        if (i11 < 0) {
            throw new IllegalArgumentException("cannot store more than MAX_VALUE elements");
        }
        if (i11 <= i10) {
            return i10;
        }
        int iHighestOneBit = i10 + (i10 >> 1) + 1;
        if (iHighestOneBit < i11) {
            iHighestOneBit = Integer.highestOneBit(i11 - 1) << 1;
        }
        if (iHighestOneBit < 0) {
            return Integer.MAX_VALUE;
        }
        return iHighestOneBit;
    }

    public abstract a0 a(Object obj);

    public final void b(Object obj) {
        obj.getClass();
        e(1);
        Object[] objArr = this.f15424a;
        int i10 = this.f15425b;
        this.f15425b = i10 + 1;
        objArr[i10] = obj;
    }

    public void c(Object obj) {
        b(obj);
    }

    public final void d(Iterable iterable) {
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            e(collection.size());
            if (collection instanceof b0) {
                this.f15425b = ((b0) collection).b(this.f15425b, this.f15424a);
                return;
            }
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
    }

    public final void e(int i10) {
        Object[] objArr = this.f15424a;
        int iF = f(objArr.length, this.f15425b + i10);
        if (iF > objArr.length || this.f15426c) {
            this.f15424a = Arrays.copyOf(this.f15424a, iF);
            this.f15426c = false;
        }
    }
}
