package j$.util.stream;

import j$.util.C0034k;
import j$.util.C0035l;
import j$.util.C0037n;
import j$.util.InterfaceC0177z;
import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.function.BiConsumer;
import java.util.function.IntFunction;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.m0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract class AbstractC0103m0 extends AbstractC0047b implements LongStream {
    AbstractC0103m0(j$.util.L l, int i10) {
        super(l, i10, false);
    }

    @Override // j$.util.stream.LongStream
    public final C0037n findAny() {
        return (C0037n) K0(I.f9245d);
    }

    @Override // j$.util.stream.LongStream
    public final C0037n findFirst() {
        return (C0037n) K0(I.f9244c);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream sorted() {
        return new K2(this);
    }

    AbstractC0103m0(AbstractC0047b abstractC0047b, int i10) {
        super(abstractC0047b, i10);
    }

    public void forEach(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        K0(new O(longConsumer, false));
    }

    public void forEachOrdered(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        K0(new O(longConsumer, true));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static j$.util.L Z0(Spliterator spliterator) {
        if (spliterator instanceof j$.util.L) {
            return (j$.util.L) spliterator;
        }
        if (R3.f9329a) {
            R3.a(AbstractC0047b.class, "using LongStream.adapt(Spliterator<Long> s)");
            throw null;
        }
        throw new UnsupportedOperationException("LongStream.adapt(Spliterator<Long> s)");
    }

    @Override // j$.util.stream.AbstractC0047b
    final EnumC0076g3 O0() {
        return EnumC0076g3.LONG_VALUE;
    }

    @Override // j$.util.stream.AbstractC0047b
    final L0 M0(AbstractC0047b abstractC0047b, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC0167z0.f0(abstractC0047b, spliterator, z);
    }

    @Override // j$.util.stream.AbstractC0047b
    final Spliterator X0(AbstractC0047b abstractC0047b, Supplier supplier, boolean z) {
        return new C0145u3(abstractC0047b, supplier, z);
    }

    @Override // j$.util.stream.AbstractC0047b
    final boolean N0(Spliterator spliterator, InterfaceC0125q2 interfaceC0125q2) {
        LongConsumer c0063e0;
        boolean zP;
        j$.util.L lZ0 = Z0(spliterator);
        if (interfaceC0125q2 instanceof LongConsumer) {
            c0063e0 = (LongConsumer) interfaceC0125q2;
        } else {
            if (R3.f9329a) {
                R3.a(AbstractC0047b.class, "using LongStream.adapt(Sink<Long> s)");
                throw null;
            }
            Objects.requireNonNull(interfaceC0125q2);
            c0063e0 = new C0063e0(interfaceC0125q2);
        }
        do {
            zP = interfaceC0125q2.p();
            if (zP) {
                break;
            }
        } while (lZ0.tryAdvance(c0063e0));
        return zP;
    }

    @Override // j$.util.stream.AbstractC0167z0
    final D0 D0(long j10, IntFunction intFunction) {
        return AbstractC0167z0.v0(j10);
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    public final InterfaceC0177z iterator() {
        return Spliterators.h(spliterator());
    }

    @Override // j$.util.stream.AbstractC0047b, j$.util.stream.BaseStream
    public final j$.util.L spliterator() {
        return Z0(super.spliterator());
    }

    @Override // j$.util.stream.LongStream
    public final E asDoubleStream() {
        return new C0136t(this, EnumC0071f3.f9438n, 5);
    }

    @Override // j$.util.stream.LongStream
    public final Stream boxed() {
        return new C0131s(this, 0, new C0117p(28), 2);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream e() {
        Objects.requireNonNull(null);
        return new C0146v(this, EnumC0071f3.f9440p | EnumC0071f3.f9438n, 2);
    }

    @Override // j$.util.stream.LongStream
    public final Stream mapToObj(LongFunction longFunction) {
        Objects.requireNonNull(longFunction);
        return new C0131s(this, EnumC0071f3.f9440p | EnumC0071f3.f9438n, longFunction, 2);
    }

    @Override // j$.util.stream.LongStream
    public final IntStream x() {
        Objects.requireNonNull(null);
        return new C0141u(this, EnumC0071f3.f9440p | EnumC0071f3.f9438n, 3);
    }

    @Override // j$.util.stream.LongStream
    public final E m() {
        Objects.requireNonNull(null);
        return new C0136t(this, EnumC0071f3.f9440p | EnumC0071f3.f9438n, 6);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream d(C0042a c0042a) {
        Objects.requireNonNull(c0042a);
        return new Y(this, EnumC0071f3.f9440p | EnumC0071f3.f9438n | EnumC0071f3.f9443t, c0042a, 1);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream b() {
        Objects.requireNonNull(null);
        return new C0146v(this, EnumC0071f3.f9443t, 4);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream peek(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        return new Y(this, longConsumer);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream limit(long j10) {
        if (j10 < 0) {
            throw new IllegalArgumentException(Long.toString(j10));
        }
        return AbstractC0167z0.B0(this, 0L, j10);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream skip(long j10) {
        if (j10 >= 0) {
            return j10 == 0 ? this : AbstractC0167z0.B0(this, j10, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j10));
    }

    @Override // j$.util.stream.LongStream
    public final LongStream a() {
        int i10 = q4.f9539a;
        Objects.requireNonNull(null);
        return new a4(this, q4.f9539a);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream c() {
        int i10 = q4.f9539a;
        Objects.requireNonNull(null);
        return new c4(this, q4.f9540b);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream distinct() {
        return ((AbstractC0085i2) boxed()).distinct().mapToLong(new C0117p(25));
    }

    @Override // j$.util.stream.LongStream
    public final long sum() {
        return reduce(0L, new C0068f0(3));
    }

    @Override // j$.util.stream.LongStream
    public final C0037n min() {
        return reduce(new C0117p(24));
    }

    @Override // j$.util.stream.LongStream
    public final C0037n max() {
        return reduce(new C0068f0(2));
    }

    @Override // j$.util.stream.LongStream
    public final C0035l average() {
        long[] jArr = (long[]) collect(new C0117p(29), new C0068f0(0), new C0068f0(1));
        long j10 = jArr[0];
        if (j10 > 0) {
            double d10 = jArr[1];
            double d11 = j10;
            Double.isNaN(d10);
            Double.isNaN(d11);
            return C0035l.d(d10 / d11);
        }
        return C0035l.a();
    }

    @Override // j$.util.stream.LongStream
    public final long reduce(long j10, LongBinaryOperator longBinaryOperator) {
        Objects.requireNonNull(longBinaryOperator);
        return ((Long) K0(new B1(EnumC0076g3.LONG_VALUE, longBinaryOperator, j10))).longValue();
    }

    @Override // j$.util.stream.LongStream
    public final C0034k summaryStatistics() {
        return (C0034k) collect(new C0087j(24), new C0117p(23), new C0117p(26));
    }

    @Override // j$.util.stream.LongStream
    public final Object collect(Supplier supplier, ObjLongConsumer objLongConsumer, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        C0122q c0122q = new C0122q(biConsumer, 2);
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(objLongConsumer);
        Objects.requireNonNull(c0122q);
        return K0(new F1(EnumC0076g3.LONG_VALUE, c0122q, objLongConsumer, supplier, 0));
    }

    @Override // j$.util.stream.LongStream
    public final boolean w() {
        return ((Boolean) K0(AbstractC0167z0.C0(EnumC0152w0.ANY))).booleanValue();
    }

    @Override // j$.util.stream.LongStream
    public final boolean r() {
        return ((Boolean) K0(AbstractC0167z0.C0(EnumC0152w0.ALL))).booleanValue();
    }

    @Override // j$.util.stream.LongStream
    public final C0037n reduce(LongBinaryOperator longBinaryOperator) {
        Objects.requireNonNull(longBinaryOperator);
        return (C0037n) K0(new D1(EnumC0076g3.LONG_VALUE, longBinaryOperator, 0));
    }

    @Override // j$.util.stream.LongStream
    public final boolean n() {
        return ((Boolean) K0(AbstractC0167z0.C0(EnumC0152w0.NONE))).booleanValue();
    }

    @Override // j$.util.stream.LongStream
    public final long[] toArray() {
        return (long[]) AbstractC0167z0.r0((J0) L0(new C0117p(27))).e();
    }

    @Override // j$.util.stream.LongStream
    public final long count() {
        return ((Long) K0(new H1(EnumC0076g3.LONG_VALUE, 0))).longValue();
    }
}
