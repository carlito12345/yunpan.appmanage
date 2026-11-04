package j$.util.stream;

import j$.lang.Iterable;
import j$.util.Spliterator;
import java.util.Arrays;

/* loaded from: classes2.dex */
abstract class Z2 extends AbstractC0057d implements Iterable, Iterable {

    /* renamed from: e, reason: collision with root package name */
    Object f9386e;

    /* renamed from: f, reason: collision with root package name */
    Object[] f9387f;

    public abstract Object c(int i10);

    protected abstract void s(Object obj, int i10, int i11, Object obj2);

    public abstract Spliterator spliterator();

    @Override // java.lang.Iterable
    public final /* synthetic */ java.util.Spliterator spliterator() {
        return Spliterator.Wrapper.convert(spliterator());
    }

    protected abstract int t(Object obj);

    protected abstract Object[] w();

    Z2(int i10) {
        super(i10);
        this.f9386e = c(1 << this.f9409a);
    }

    Z2() {
        this.f9386e = c(16);
    }

    protected final void v(long j10) {
        long jT;
        int i10 = this.f9411c;
        if (i10 == 0) {
            jT = t(this.f9386e);
        } else {
            jT = t(this.f9387f[i10]) + this.f9412d[i10];
        }
        if (j10 > jT) {
            if (this.f9387f == null) {
                Object[] objArrW = w();
                this.f9387f = objArrW;
                this.f9412d = new long[8];
                objArrW[0] = this.f9386e;
            }
            int i11 = this.f9411c + 1;
            while (j10 > jT) {
                Object[] objArr = this.f9387f;
                if (i11 >= objArr.length) {
                    int length = objArr.length * 2;
                    this.f9387f = Arrays.copyOf(objArr, length);
                    this.f9412d = Arrays.copyOf(this.f9412d, length);
                }
                int iMin = this.f9409a;
                if (i11 != 0 && i11 != 1) {
                    iMin = Math.min((iMin + i11) - 1, 30);
                }
                int i12 = 1 << iMin;
                this.f9387f[i11] = c(i12);
                long[] jArr = this.f9412d;
                jArr[i11] = jArr[i11 - 1] + t(this.f9387f[r6]);
                jT += i12;
                i11++;
            }
        }
    }

    protected final int u(long j10) {
        if (this.f9411c == 0) {
            if (j10 < this.f9410b) {
                return 0;
            }
            throw new IndexOutOfBoundsException(Long.toString(j10));
        }
        if (j10 >= count()) {
            throw new IndexOutOfBoundsException(Long.toString(j10));
        }
        for (int i10 = 0; i10 <= this.f9411c; i10++) {
            if (j10 < this.f9412d[i10] + t(this.f9387f[i10])) {
                return i10;
            }
        }
        throw new IndexOutOfBoundsException(Long.toString(j10));
    }

    public void d(Object obj, int i10) {
        long j10 = i10;
        long jCount = count() + j10;
        if (jCount > t(obj) || jCount < j10) {
            throw new IndexOutOfBoundsException("does not fit");
        }
        if (this.f9411c == 0) {
            System.arraycopy(this.f9386e, 0, obj, i10, this.f9410b);
            return;
        }
        for (int i11 = 0; i11 < this.f9411c; i11++) {
            Object obj2 = this.f9387f[i11];
            System.arraycopy(obj2, 0, obj, i10, t(obj2));
            i10 += t(this.f9387f[i11]);
        }
        int i12 = this.f9410b;
        if (i12 > 0) {
            System.arraycopy(this.f9386e, 0, obj, i10, i12);
        }
    }

    public Object e() {
        long jCount = count();
        if (jCount >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object objC = c((int) jCount);
        d(objC, 0);
        return objC;
    }

    protected final void x() {
        long jT;
        if (this.f9410b == t(this.f9386e)) {
            if (this.f9387f == null) {
                Object[] objArrW = w();
                this.f9387f = objArrW;
                this.f9412d = new long[8];
                objArrW[0] = this.f9386e;
            }
            int i10 = this.f9411c;
            int i11 = i10 + 1;
            Object[] objArr = this.f9387f;
            if (i11 >= objArr.length || objArr[i11] == null) {
                if (i10 == 0) {
                    jT = t(this.f9386e);
                } else {
                    jT = t(objArr[i10]) + this.f9412d[i10];
                }
                v(jT + 1);
            }
            this.f9410b = 0;
            int i12 = this.f9411c + 1;
            this.f9411c = i12;
            this.f9386e = this.f9387f[i12];
        }
    }

    @Override // j$.util.stream.AbstractC0057d
    public final void clear() {
        Object[] objArr = this.f9387f;
        if (objArr != null) {
            this.f9386e = objArr[0];
            this.f9387f = null;
            this.f9412d = null;
        }
        this.f9410b = 0;
        this.f9411c = 0;
    }

    public void f(Object obj) {
        for (int i10 = 0; i10 < this.f9411c; i10++) {
            Object obj2 = this.f9387f[i10];
            s(obj2, 0, t(obj2), obj);
        }
        s(this.f9386e, 0, this.f9410b, obj);
    }
}
