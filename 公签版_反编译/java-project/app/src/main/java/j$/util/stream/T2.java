package j$.util.stream;

import j$.util.Spliterators;
import java.util.Arrays;
import java.util.Iterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
class T2 extends Z2 implements DoubleConsumer {
    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.a(this, doubleConsumer);
    }

    @Override // j$.util.stream.Z2
    protected final void s(Object obj, int i10, int i11, Object obj2) {
        double[] dArr = (double[]) obj;
        DoubleConsumer doubleConsumer = (DoubleConsumer) obj2;
        while (i10 < i11) {
            doubleConsumer.accept(dArr[i10]);
            i10++;
        }
    }

    @Override // j$.util.stream.Z2
    protected final int t(Object obj) {
        return ((double[]) obj).length;
    }

    T2() {
    }

    T2(int i10) {
        super(i10);
    }

    @Override // java.lang.Iterable, j$.lang.Iterable
    public final void forEach(Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            f((DoubleConsumer) consumer);
        } else {
            if (R3.f9329a) {
                R3.a(getClass(), "{0} calling SpinedBuffer.OfDouble.forEach(Consumer)");
                throw null;
            }
            j$.util.B.a((S2) spliterator(), consumer);
        }
    }

    @Override // j$.util.stream.Z2
    protected final Object[] w() {
        return new double[8][];
    }

    @Override // j$.util.stream.Z2
    public final Object c(int i10) {
        return new double[i10];
    }

    @Override // java.util.function.DoubleConsumer
    public void accept(double d10) {
        x();
        double[] dArr = (double[]) this.f9386e;
        int i10 = this.f9410b;
        this.f9410b = i10 + 1;
        dArr[i10] = d10;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return Spliterators.f(spliterator());
    }

    @Override // j$.util.stream.Z2, java.lang.Iterable, j$.lang.Iterable
    /* renamed from: y, reason: merged with bridge method [inline-methods] */
    public j$.util.F spliterator() {
        return new S2(this, 0, this.f9411c, 0, this.f9410b);
    }

    public final String toString() {
        double[] dArr = (double[]) e();
        if (dArr.length < 200) {
            return String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.f9411c), Arrays.toString(dArr));
        }
        return String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.f9411c), Arrays.toString(Arrays.copyOf(dArr, 200)));
    }
}
