package j$.util.stream;

import j$.lang.Iterable;
import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.Spliterators;
import j$.util.function.Consumer$CC;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Spliterator;
import java.util.function.Consumer;

/* renamed from: j$.util.stream.a3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class C0046a3 extends AbstractC0057d implements Consumer, Iterable, Iterable {

    /* renamed from: e, reason: collision with root package name */
    protected Object[] f9392e = new Object[1 << 4];

    /* renamed from: f, reason: collision with root package name */
    protected Object[][] f9393f;

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ Spliterator spliterator() {
        return Spliterator.Wrapper.convert(spliterator());
    }

    C0046a3() {
    }

    protected final void s(long j10) {
        long length;
        int i10 = this.f9411c;
        if (i10 == 0) {
            length = this.f9392e.length;
        } else {
            length = this.f9412d[i10] + this.f9393f[i10].length;
        }
        if (j10 > length) {
            if (this.f9393f == null) {
                Object[][] objArr = new Object[8][];
                this.f9393f = objArr;
                this.f9412d = new long[8];
                objArr[0] = this.f9392e;
            }
            int i11 = i10 + 1;
            while (j10 > length) {
                Object[][] objArr2 = this.f9393f;
                if (i11 >= objArr2.length) {
                    int length2 = objArr2.length * 2;
                    this.f9393f = (Object[][]) Arrays.copyOf(objArr2, length2);
                    this.f9412d = Arrays.copyOf(this.f9412d, length2);
                }
                int iMin = this.f9409a;
                if (i11 != 0 && i11 != 1) {
                    iMin = Math.min((iMin + i11) - 1, 30);
                }
                int i12 = 1 << iMin;
                this.f9393f[i11] = new Object[i12];
                long[] jArr = this.f9412d;
                jArr[i11] = jArr[i11 - 1] + r5[r7].length;
                length += i12;
                i11++;
            }
        }
    }

    @Override // j$.util.stream.AbstractC0057d
    public final void clear() {
        Object[][] objArr = this.f9393f;
        if (objArr != null) {
            this.f9392e = objArr[0];
            int i10 = 0;
            while (true) {
                Object[] objArr2 = this.f9392e;
                if (i10 >= objArr2.length) {
                    break;
                }
                objArr2[i10] = null;
                i10++;
            }
            this.f9393f = null;
            this.f9412d = null;
        } else {
            for (int i11 = 0; i11 < this.f9410b; i11++) {
                this.f9392e[i11] = null;
            }
        }
        this.f9410b = 0;
        this.f9411c = 0;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return Spliterators.i(spliterator());
    }

    @Override // java.lang.Iterable, j$.lang.Iterable
    public void forEach(Consumer consumer) {
        for (int i10 = 0; i10 < this.f9411c; i10++) {
            for (Object obj : this.f9393f[i10]) {
                consumer.accept(obj);
            }
        }
        for (int i11 = 0; i11 < this.f9410b; i11++) {
            consumer.accept(this.f9392e[i11]);
        }
    }

    @Override // java.util.function.Consumer
    public void accept(Object obj) {
        long length;
        int i10 = this.f9410b;
        Object[] objArr = this.f9392e;
        if (i10 == objArr.length) {
            if (this.f9393f == null) {
                Object[][] objArr2 = new Object[8][];
                this.f9393f = objArr2;
                this.f9412d = new long[8];
                objArr2[0] = objArr;
            }
            int i11 = this.f9411c;
            int i12 = i11 + 1;
            Object[][] objArr3 = this.f9393f;
            if (i12 >= objArr3.length || objArr3[i12] == null) {
                if (i11 == 0) {
                    length = objArr.length;
                } else {
                    length = objArr3[i11].length + this.f9412d[i11];
                }
                s(length + 1);
            }
            this.f9410b = 0;
            int i13 = this.f9411c + 1;
            this.f9411c = i13;
            this.f9392e = this.f9393f[i13];
        }
        Object[] objArr4 = this.f9392e;
        int i14 = this.f9410b;
        this.f9410b = i14 + 1;
        objArr4[i14] = obj;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        Objects.requireNonNull(arrayList);
        forEach(new C0042a(arrayList, 10));
        return "SpinedBuffer:" + arrayList.toString();
    }

    @Override // java.lang.Iterable, j$.lang.Iterable
    public j$.util.Spliterator spliterator() {
        return new R2(this, 0, this.f9411c, 0, this.f9410b);
    }
}
