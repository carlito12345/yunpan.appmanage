package j$.util.stream;

import j$.util.Spliterators;
import java.util.Arrays;
import java.util.Iterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
class X2 extends Z2 implements LongConsumer {
    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.b(this, longConsumer);
    }

    @Override // j$.util.stream.Z2
    protected final void s(Object obj, int i10, int i11, Object obj2) {
        long[] jArr = (long[]) obj;
        LongConsumer longConsumer = (LongConsumer) obj2;
        while (i10 < i11) {
            longConsumer.accept(jArr[i10]);
            i10++;
        }
    }

    @Override // j$.util.stream.Z2
    protected final int t(Object obj) {
        return ((long[]) obj).length;
    }

    X2() {
    }

    X2(int i10) {
        super(i10);
    }

    @Override // java.lang.Iterable, j$.lang.Iterable
    public final void forEach(Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            f((LongConsumer) consumer);
        } else {
            if (R3.f9329a) {
                R3.a(getClass(), "{0} calling SpinedBuffer.OfLong.forEach(Consumer)");
                throw null;
            }
            j$.util.B.c((W2) spliterator(), consumer);
        }
    }

    @Override // j$.util.stream.Z2
    protected final Object[] w() {
        return new long[8][];
    }

    @Override // j$.util.stream.Z2
    public final Object c(int i10) {
        return new long[i10];
    }

    @Override // java.util.function.LongConsumer
    public void accept(long j10) {
        x();
        long[] jArr = (long[]) this.f9386e;
        int i10 = this.f9410b;
        this.f9410b = i10 + 1;
        jArr[i10] = j10;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return Spliterators.h(spliterator());
    }

    @Override // j$.util.stream.Z2, java.lang.Iterable, j$.lang.Iterable
    /* renamed from: y, reason: merged with bridge method [inline-methods] */
    public j$.util.L spliterator() {
        return new W2(this, 0, this.f9411c, 0, this.f9410b);
    }

    public final String toString() {
        long[] jArr = (long[]) e();
        if (jArr.length < 200) {
            return String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(jArr.length), Integer.valueOf(this.f9411c), Arrays.toString(jArr));
        }
        return String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(jArr.length), Integer.valueOf(this.f9411c), Arrays.toString(Arrays.copyOf(jArr, 200)));
    }
}
