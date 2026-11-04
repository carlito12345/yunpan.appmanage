package j$.util.stream;

import j$.util.Spliterators;
import j$.util.function.IntConsumer$CC;
import java.util.Arrays;
import java.util.Iterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
class V2 extends Z2 implements IntConsumer {
    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return IntConsumer$CC.$default$andThen(this, intConsumer);
    }

    @Override // j$.util.stream.Z2
    protected final void s(Object obj, int i10, int i11, Object obj2) {
        int[] iArr = (int[]) obj;
        IntConsumer intConsumer = (IntConsumer) obj2;
        while (i10 < i11) {
            intConsumer.accept(iArr[i10]);
            i10++;
        }
    }

    @Override // j$.util.stream.Z2
    protected final int t(Object obj) {
        return ((int[]) obj).length;
    }

    V2() {
    }

    V2(int i10) {
        super(i10);
    }

    @Override // java.lang.Iterable, j$.lang.Iterable
    public final void forEach(Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            f((IntConsumer) consumer);
        } else {
            if (R3.f9329a) {
                R3.a(getClass(), "{0} calling SpinedBuffer.OfInt.forEach(Consumer)");
                throw null;
            }
            j$.util.B.b((U2) spliterator(), consumer);
        }
    }

    @Override // j$.util.stream.Z2
    protected final Object[] w() {
        return new int[8][];
    }

    @Override // j$.util.stream.Z2
    public final Object c(int i10) {
        return new int[i10];
    }

    @Override // java.util.function.IntConsumer
    public void accept(int i10) {
        x();
        int[] iArr = (int[]) this.f9386e;
        int i11 = this.f9410b;
        this.f9410b = i11 + 1;
        iArr[i11] = i10;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return Spliterators.g(spliterator());
    }

    @Override // j$.util.stream.Z2, java.lang.Iterable, j$.lang.Iterable
    /* renamed from: y, reason: merged with bridge method [inline-methods] */
    public j$.util.I spliterator() {
        return new U2(this, 0, this.f9411c, 0, this.f9410b);
    }

    public final String toString() {
        int[] iArr = (int[]) e();
        if (iArr.length < 200) {
            return String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(iArr.length), Integer.valueOf(this.f9411c), Arrays.toString(iArr));
        }
        return String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(iArr.length), Integer.valueOf(this.f9411c), Arrays.toString(Arrays.copyOf(iArr, 200)));
    }
}
