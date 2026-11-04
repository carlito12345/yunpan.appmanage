package j$.util.stream;

import j$.util.Objects;
import j$.util.Optional;
import j$.util.Spliterator;
import j$.util.Spliterators;
import j$.util.stream.Collector;
import java.util.Comparator;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

/* renamed from: j$.util.stream.i2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract class AbstractC0085i2 extends AbstractC0047b implements Stream {
    @Override // j$.util.stream.Stream
    public final Stream sorted() {
        return new L2(this);
    }

    @Override // j$.util.stream.Stream
    public final Stream distinct() {
        return new C0107n(this, EnumC0071f3.f9437m | EnumC0071f3.f9443t);
    }

    @Override // j$.util.stream.Stream
    public final Optional min(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return reduce(new j$.util.function.a(comparator, 1));
    }

    @Override // j$.util.stream.Stream
    public final Optional findAny() {
        return (Optional) K0(J.f9255d);
    }

    @Override // j$.util.stream.Stream
    public final Optional findFirst() {
        return (Optional) K0(J.f9254c);
    }

    @Override // j$.util.stream.Stream
    public final Stream sorted(Comparator comparator) {
        return new L2(this, comparator);
    }

    @Override // j$.util.stream.Stream
    public final Object reduce(Object obj, BiFunction biFunction, BinaryOperator binaryOperator) {
        Objects.requireNonNull(biFunction);
        Objects.requireNonNull(binaryOperator);
        return K0(new F1(EnumC0076g3.REFERENCE, binaryOperator, biFunction, obj, 2));
    }

    @Override // j$.util.stream.Stream
    public final Object reduce(Object obj, BinaryOperator binaryOperator) {
        Objects.requireNonNull(binaryOperator);
        Objects.requireNonNull(binaryOperator);
        return K0(new F1(EnumC0076g3.REFERENCE, binaryOperator, binaryOperator, obj, 2));
    }

    public void forEach(Consumer consumer) {
        Objects.requireNonNull(consumer);
        K0(new P(consumer, false));
    }

    public void forEachOrdered(Consumer consumer) {
        Objects.requireNonNull(consumer);
        K0(new P(consumer, true));
    }

    @Override // j$.util.stream.Stream
    public final Optional max(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return reduce(new j$.util.function.a(comparator, 0));
    }

    AbstractC0085i2(Spliterator spliterator, int i10, boolean z) {
        super(spliterator, i10, z);
    }

    AbstractC0085i2(AbstractC0047b abstractC0047b, int i10) {
        super(abstractC0047b, i10);
    }

    @Override // j$.util.stream.AbstractC0047b
    final EnumC0076g3 O0() {
        return EnumC0076g3.REFERENCE;
    }

    @Override // j$.util.stream.Stream
    public final Optional reduce(BinaryOperator binaryOperator) {
        Objects.requireNonNull(binaryOperator);
        return (Optional) K0(new D1(EnumC0076g3.REFERENCE, binaryOperator, 2));
    }

    @Override // j$.util.stream.AbstractC0047b
    final L0 M0(AbstractC0047b abstractC0047b, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC0167z0.c0(abstractC0047b, spliterator, z, intFunction);
    }

    @Override // j$.util.stream.AbstractC0047b
    final Spliterator X0(AbstractC0047b abstractC0047b, Supplier supplier, boolean z) {
        return new J3(abstractC0047b, supplier, z);
    }

    @Override // j$.util.stream.AbstractC0047b
    final boolean N0(Spliterator spliterator, InterfaceC0125q2 interfaceC0125q2) {
        boolean zP;
        do {
            zP = interfaceC0125q2.p();
            if (zP) {
                break;
            }
        } while (spliterator.tryAdvance(interfaceC0125q2));
        return zP;
    }

    @Override // j$.util.stream.AbstractC0167z0
    final D0 D0(long j10, IntFunction intFunction) {
        return AbstractC0167z0.b0(j10, intFunction);
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    public final Iterator iterator() {
        return Spliterators.i(spliterator());
    }

    @Override // j$.util.stream.Stream
    public final Stream filter(Predicate predicate) {
        Objects.requireNonNull(predicate);
        return new C0131s(this, EnumC0071f3.f9443t, predicate, 4);
    }

    @Override // j$.util.stream.Stream
    public final Stream map(Function function) {
        Objects.requireNonNull(function);
        return new C0131s(this, EnumC0071f3.f9440p | EnumC0071f3.f9438n, function, 5);
    }

    @Override // j$.util.stream.Stream
    public final IntStream mapToInt(ToIntFunction toIntFunction) {
        Objects.requireNonNull(toIntFunction);
        return new W(this, EnumC0071f3.f9440p | EnumC0071f3.f9438n, toIntFunction, 3);
    }

    @Override // j$.util.stream.Stream
    public final Object collect(Supplier supplier, BiConsumer biConsumer, BiConsumer biConsumer2) {
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(biConsumer);
        Objects.requireNonNull(biConsumer2);
        return K0(new F1(EnumC0076g3.REFERENCE, biConsumer2, biConsumer, supplier, 3));
    }

    @Override // j$.util.stream.Stream
    public final LongStream mapToLong(ToLongFunction toLongFunction) {
        Objects.requireNonNull(toLongFunction);
        return new Y(this, EnumC0071f3.f9440p | EnumC0071f3.f9438n, toLongFunction, 4);
    }

    @Override // j$.util.stream.Stream
    public final E mapToDouble(ToDoubleFunction toDoubleFunction) {
        Objects.requireNonNull(toDoubleFunction);
        return new C0156x(this, EnumC0071f3.f9440p | EnumC0071f3.f9438n, toDoubleFunction, 2);
    }

    @Override // j$.util.stream.Stream
    public final long count() {
        return ((Long) K0(new H1(EnumC0076g3.REFERENCE, 2))).longValue();
    }

    @Override // j$.util.stream.Stream
    public final Stream d(C0042a c0042a) {
        Objects.requireNonNull(c0042a);
        return new C0131s(this, EnumC0071f3.f9440p | EnumC0071f3.f9438n | EnumC0071f3.f9443t, c0042a, 6);
    }

    @Override // j$.util.stream.Stream
    public final IntStream t(C0042a c0042a) {
        Objects.requireNonNull(c0042a);
        return new W(this, EnumC0071f3.f9440p | EnumC0071f3.f9438n | EnumC0071f3.f9443t, c0042a, 4);
    }

    @Override // j$.util.stream.Stream
    public final E A(C0042a c0042a) {
        Objects.requireNonNull(c0042a);
        return new C0156x(this, EnumC0071f3.f9440p | EnumC0071f3.f9438n | EnumC0071f3.f9443t, c0042a, 3);
    }

    @Override // j$.util.stream.Stream
    public final LongStream o(C0042a c0042a) {
        Objects.requireNonNull(c0042a);
        return new Y(this, EnumC0071f3.f9440p | EnumC0071f3.f9438n | EnumC0071f3.f9443t, c0042a, 3);
    }

    @Override // j$.util.stream.Stream
    public final Stream peek(Consumer consumer) {
        Objects.requireNonNull(consumer);
        return new C0131s(this, consumer);
    }

    @Override // j$.util.stream.Stream
    public final Stream limit(long j10) {
        if (j10 < 0) {
            throw new IllegalArgumentException(Long.toString(j10));
        }
        return AbstractC0167z0.F0(this, 0L, j10);
    }

    @Override // j$.util.stream.Stream
    public final Stream skip(long j10) {
        if (j10 >= 0) {
            return j10 == 0 ? this : AbstractC0167z0.F0(this, j10, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j10));
    }

    @Override // j$.util.stream.Stream
    public final Stream takeWhile(Predicate predicate) {
        int i10 = q4.f9539a;
        Objects.requireNonNull(predicate);
        return new S3(this, q4.f9539a, predicate);
    }

    @Override // j$.util.stream.Stream
    public final Stream dropWhile(Predicate predicate) {
        int i10 = q4.f9539a;
        Objects.requireNonNull(predicate);
        return new U3(this, q4.f9540b, predicate);
    }

    @Override // j$.util.stream.Stream
    public final Object[] toArray(IntFunction intFunction) {
        return AbstractC0167z0.o0(L0(intFunction), intFunction).l(intFunction);
    }

    @Override // j$.util.stream.Stream
    public final Object[] toArray() {
        return toArray(new C0068f0(6));
    }

    @Override // j$.util.stream.Stream
    public final boolean anyMatch(Predicate predicate) {
        return ((Boolean) K0(AbstractC0167z0.E0(EnumC0152w0.ANY, predicate))).booleanValue();
    }

    @Override // j$.util.stream.Stream
    public final boolean allMatch(Predicate predicate) {
        return ((Boolean) K0(AbstractC0167z0.E0(EnumC0152w0.ALL, predicate))).booleanValue();
    }

    @Override // j$.util.stream.Stream
    public final boolean noneMatch(Predicate predicate) {
        return ((Boolean) K0(AbstractC0167z0.E0(EnumC0152w0.NONE, predicate))).booleanValue();
    }

    @Override // j$.util.stream.Stream
    public final Object collect(Collector collector) {
        Object objK0;
        if (!isParallel() || !collector.characteristics().contains(Collector.Characteristics.CONCURRENT) || (P0() && !collector.characteristics().contains(Collector.Characteristics.UNORDERED))) {
            Supplier supplier = ((Collector) Objects.requireNonNull(collector)).supplier();
            objK0 = K0(new M1(EnumC0076g3.REFERENCE, collector.combiner(), collector.accumulator(), supplier, collector));
        } else {
            objK0 = collector.supplier().get();
            forEach(new C0123q0(3, collector.accumulator(), objK0));
        }
        return collector.characteristics().contains(Collector.Characteristics.IDENTITY_FINISH) ? objK0 : collector.finisher().apply(objK0);
    }
}
