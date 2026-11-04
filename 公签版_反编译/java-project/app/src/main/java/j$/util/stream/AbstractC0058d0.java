package j$.util.stream;

import j$.util.C0032i;
import j$.util.C0035l;
import j$.util.C0036m;
import j$.util.InterfaceC0173v;
import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.function.BiConsumer;
import java.util.function.IntBinaryOperator;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.IntToLongFunction;
import java.util.function.IntUnaryOperator;
import java.util.function.ObjIntConsumer;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.d0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract class AbstractC0058d0 extends AbstractC0047b implements IntStream {
    @Override // j$.util.stream.IntStream
    public final C0036m findAny() {
        return (C0036m) K0(H.f9236d);
    }

    @Override // j$.util.stream.IntStream
    public final C0036m findFirst() {
        return (C0036m) K0(H.f9235c);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream sorted() {
        return new J2(this);
    }

    AbstractC0058d0(j$.util.I i10, int i11) {
        super(i10, i11, false);
    }

    public void forEach(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        K0(new N(intConsumer, false));
    }

    public void forEachOrdered(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        K0(new N(intConsumer, true));
    }

    AbstractC0058d0(AbstractC0047b abstractC0047b, int i10) {
        super(abstractC0047b, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static j$.util.I Z0(Spliterator spliterator) {
        if (spliterator instanceof j$.util.I) {
            return (j$.util.I) spliterator;
        }
        if (R3.f9329a) {
            R3.a(AbstractC0047b.class, "using IntStream.adapt(Spliterator<Integer> s)");
            throw null;
        }
        throw new UnsupportedOperationException("IntStream.adapt(Spliterator<Integer> s)");
    }

    @Override // j$.util.stream.AbstractC0047b
    final EnumC0076g3 O0() {
        return EnumC0076g3.INT_VALUE;
    }

    @Override // j$.util.stream.AbstractC0047b
    final L0 M0(AbstractC0047b abstractC0047b, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC0167z0.e0(abstractC0047b, spliterator, z);
    }

    @Override // j$.util.stream.AbstractC0047b
    final Spliterator X0(AbstractC0047b abstractC0047b, Supplier supplier, boolean z) {
        return new C0135s3(abstractC0047b, supplier, z);
    }

    @Override // j$.util.stream.AbstractC0047b
    final boolean N0(Spliterator spliterator, InterfaceC0125q2 interfaceC0125q2) {
        IntConsumer u3;
        boolean zP;
        j$.util.I iZ0 = Z0(spliterator);
        if (interfaceC0125q2 instanceof IntConsumer) {
            u3 = (IntConsumer) interfaceC0125q2;
        } else {
            if (R3.f9329a) {
                R3.a(AbstractC0047b.class, "using IntStream.adapt(Sink<Integer> s)");
                throw null;
            }
            Objects.requireNonNull(interfaceC0125q2);
            u3 = new U(interfaceC0125q2);
        }
        do {
            zP = interfaceC0125q2.p();
            if (zP) {
                break;
            }
        } while (iZ0.tryAdvance(u3));
        return zP;
    }

    @Override // j$.util.stream.AbstractC0167z0
    final D0 D0(long j10, IntFunction intFunction) {
        return AbstractC0167z0.u0(j10);
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    public final InterfaceC0173v iterator() {
        return Spliterators.g(spliterator());
    }

    @Override // j$.util.stream.AbstractC0047b, j$.util.stream.BaseStream
    public final j$.util.I spliterator() {
        return Z0(super.spliterator());
    }

    @Override // j$.util.stream.IntStream
    public final LongStream asLongStream() {
        return new C0146v(this);
    }

    @Override // j$.util.stream.IntStream
    public final E asDoubleStream() {
        return new C0136t(this);
    }

    @Override // j$.util.stream.IntStream
    public final Stream boxed() {
        return new C0131s(this, 0, new C0117p(14), 1);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream map(IntUnaryOperator intUnaryOperator) {
        Objects.requireNonNull(intUnaryOperator);
        return new W(this, EnumC0071f3.f9440p | EnumC0071f3.f9438n, intUnaryOperator, 1);
    }

    @Override // j$.util.stream.IntStream
    public final Stream mapToObj(IntFunction intFunction) {
        Objects.requireNonNull(intFunction);
        return new C0131s(this, EnumC0071f3.f9440p | EnumC0071f3.f9438n, intFunction, 1);
    }

    @Override // j$.util.stream.IntStream
    public final LongStream mapToLong(IntToLongFunction intToLongFunction) {
        Objects.requireNonNull(intToLongFunction);
        return new Y(this, EnumC0071f3.f9440p | EnumC0071f3.f9438n, intToLongFunction, 0);
    }

    @Override // j$.util.stream.IntStream
    public final E g() {
        Objects.requireNonNull(null);
        return new C0136t(this, EnumC0071f3.f9440p | EnumC0071f3.f9438n, 4);
    }

    @Override // j$.util.stream.IntStream
    public final int reduce(int i10, IntBinaryOperator intBinaryOperator) {
        Objects.requireNonNull(intBinaryOperator);
        return ((Integer) K0(new Q1(EnumC0076g3.INT_VALUE, intBinaryOperator, i10))).intValue();
    }

    @Override // j$.util.stream.IntStream
    public final IntStream q(R0 r02) {
        Objects.requireNonNull(r02);
        return new W(this, EnumC0071f3.f9440p | EnumC0071f3.f9438n | EnumC0071f3.f9443t, r02, 2);
    }

    @Override // j$.util.stream.IntStream
    public final C0036m reduce(IntBinaryOperator intBinaryOperator) {
        Objects.requireNonNull(intBinaryOperator);
        return (C0036m) K0(new D1(EnumC0076g3.INT_VALUE, intBinaryOperator, 3));
    }

    @Override // j$.util.stream.IntStream
    public final IntStream b() {
        Objects.requireNonNull(null);
        return new C0141u(this, EnumC0071f3.f9443t, 2);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream peek(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        return new W(this, intConsumer);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream limit(long j10) {
        if (j10 < 0) {
            throw new IllegalArgumentException(Long.toString(j10));
        }
        return AbstractC0167z0.z0(this, 0L, j10);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream skip(long j10) {
        if (j10 >= 0) {
            return j10 == 0 ? this : AbstractC0167z0.z0(this, j10, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j10));
    }

    @Override // j$.util.stream.IntStream
    public final IntStream a() {
        int i10 = q4.f9539a;
        Objects.requireNonNull(null);
        return new W3(this, q4.f9539a);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream c() {
        int i10 = q4.f9539a;
        Objects.requireNonNull(null);
        return new Y3(this, q4.f9540b);
    }

    @Override // j$.util.stream.IntStream
    public final long count() {
        return ((Long) K0(new H1(EnumC0076g3.INT_VALUE, 3))).longValue();
    }

    @Override // j$.util.stream.IntStream
    public final IntStream distinct() {
        return ((AbstractC0085i2) boxed()).distinct().mapToInt(new C0117p(13));
    }

    @Override // j$.util.stream.IntStream
    public final int sum() {
        return reduce(0, new C0117p(18));
    }

    @Override // j$.util.stream.IntStream
    public final C0036m min() {
        return reduce(new C0117p(15));
    }

    @Override // j$.util.stream.IntStream
    public final C0036m max() {
        return reduce(new C0117p(19));
    }

    @Override // j$.util.stream.IntStream
    public final C0035l average() {
        long[] jArr = (long[]) collect(new C0117p(20), new C0117p(21), new C0117p(22));
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

    @Override // j$.util.stream.IntStream
    public final C0032i summaryStatistics() {
        return (C0032i) collect(new C0087j(23), new C0117p(16), new C0117p(17));
    }

    @Override // j$.util.stream.IntStream
    public final Object collect(Supplier supplier, ObjIntConsumer objIntConsumer, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        C0122q c0122q = new C0122q(biConsumer, 1);
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(objIntConsumer);
        Objects.requireNonNull(c0122q);
        return K0(new F1(EnumC0076g3.INT_VALUE, c0122q, objIntConsumer, supplier, 4));
    }

    @Override // j$.util.stream.IntStream
    public final boolean s() {
        return ((Boolean) K0(AbstractC0167z0.A0(EnumC0152w0.ANY))).booleanValue();
    }

    @Override // j$.util.stream.IntStream
    public final boolean v() {
        return ((Boolean) K0(AbstractC0167z0.A0(EnumC0152w0.ALL))).booleanValue();
    }

    @Override // j$.util.stream.IntStream
    public final boolean h() {
        return ((Boolean) K0(AbstractC0167z0.A0(EnumC0152w0.NONE))).booleanValue();
    }

    @Override // j$.util.stream.IntStream
    public final int[] toArray() {
        return (int[]) AbstractC0167z0.q0((H0) L0(new C0117p(12))).e();
    }
}
