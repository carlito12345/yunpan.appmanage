package j$.util.stream;

import j$.util.C0031h;
import j$.util.C0035l;
import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.IntFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
abstract class B extends AbstractC0047b implements E {
    B(j$.util.F f10, int i10) {
        super(f10, i10, false);
    }

    B(AbstractC0047b abstractC0047b, int i10) {
        super(abstractC0047b, i10);
    }

    @Override // j$.util.stream.E
    public final C0035l findAny() {
        return (C0035l) K0(G.f9228d);
    }

    @Override // j$.util.stream.E
    public final C0035l findFirst() {
        return (C0035l) K0(G.f9227c);
    }

    @Override // j$.util.stream.E
    public final E sorted() {
        return new I2(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static j$.util.F Z0(Spliterator spliterator) {
        if (spliterator instanceof j$.util.F) {
            return (j$.util.F) spliterator;
        }
        if (R3.f9329a) {
            R3.a(AbstractC0047b.class, "using DoubleStream.adapt(Spliterator<Double> s)");
            throw null;
        }
        throw new UnsupportedOperationException("DoubleStream.adapt(Spliterator<Double> s)");
    }

    @Override // j$.util.stream.E
    public void forEach(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        K0(new M(doubleConsumer, false));
    }

    @Override // j$.util.stream.E
    public void forEachOrdered(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        K0(new M(doubleConsumer, true));
    }

    @Override // j$.util.stream.AbstractC0047b
    final EnumC0076g3 O0() {
        return EnumC0076g3.DOUBLE_VALUE;
    }

    @Override // j$.util.stream.AbstractC0047b
    final L0 M0(AbstractC0047b abstractC0047b, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC0167z0.d0(abstractC0047b, spliterator, z);
    }

    @Override // j$.util.stream.AbstractC0047b
    final Spliterator X0(AbstractC0047b abstractC0047b, Supplier supplier, boolean z) {
        return new C0126q3(abstractC0047b, supplier, z);
    }

    @Override // j$.util.stream.AbstractC0047b
    final boolean N0(Spliterator spliterator, InterfaceC0125q2 interfaceC0125q2) {
        DoubleConsumer c0112o;
        boolean zP;
        j$.util.F fZ0 = Z0(spliterator);
        if (interfaceC0125q2 instanceof DoubleConsumer) {
            c0112o = (DoubleConsumer) interfaceC0125q2;
        } else {
            if (R3.f9329a) {
                R3.a(AbstractC0047b.class, "using DoubleStream.adapt(Sink<Double> s)");
                throw null;
            }
            Objects.requireNonNull(interfaceC0125q2);
            c0112o = new C0112o(interfaceC0125q2);
        }
        do {
            zP = interfaceC0125q2.p();
            if (zP) {
                break;
            }
        } while (fZ0.tryAdvance(c0112o));
        return zP;
    }

    @Override // j$.util.stream.AbstractC0167z0
    final D0 D0(long j10, IntFunction intFunction) {
        return AbstractC0167z0.j0(j10);
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    public final j$.util.r iterator() {
        return Spliterators.f(spliterator());
    }

    @Override // j$.util.stream.AbstractC0047b, j$.util.stream.BaseStream
    public final j$.util.F spliterator() {
        return Z0(super.spliterator());
    }

    @Override // j$.util.stream.E
    public final Stream boxed() {
        return new C0131s(this, 0, new C0117p(2), 0);
    }

    @Override // j$.util.stream.E
    public final E e() {
        Objects.requireNonNull(null);
        return new C0136t(this, EnumC0071f3.f9440p | EnumC0071f3.f9438n, 0);
    }

    @Override // j$.util.stream.E
    public final Stream mapToObj(DoubleFunction doubleFunction) {
        Objects.requireNonNull(doubleFunction);
        return new C0131s(this, EnumC0071f3.f9440p | EnumC0071f3.f9438n, doubleFunction, 0);
    }

    @Override // j$.util.stream.E
    public final IntStream u() {
        Objects.requireNonNull(null);
        return new C0141u(this, EnumC0071f3.f9440p | EnumC0071f3.f9438n, 0);
    }

    @Override // j$.util.stream.E
    public final LongStream j() {
        Objects.requireNonNull(null);
        return new C0146v(this, EnumC0071f3.f9440p | EnumC0071f3.f9438n, 0);
    }

    @Override // j$.util.stream.E
    public final E d(C0042a c0042a) {
        Objects.requireNonNull(c0042a);
        return new C0156x(this, EnumC0071f3.f9440p | EnumC0071f3.f9438n | EnumC0071f3.f9443t, c0042a, 0);
    }

    @Override // j$.util.stream.E
    public final E b() {
        Objects.requireNonNull(null);
        return new C0136t(this, EnumC0071f3.f9443t, 2);
    }

    @Override // j$.util.stream.E
    public final E peek(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        return new C0156x(this, doubleConsumer);
    }

    @Override // j$.util.stream.E
    public final E limit(long j10) {
        if (j10 < 0) {
            throw new IllegalArgumentException(Long.toString(j10));
        }
        return AbstractC0167z0.x0(this, 0L, j10);
    }

    @Override // j$.util.stream.E
    public final E skip(long j10) {
        if (j10 >= 0) {
            return j10 == 0 ? this : AbstractC0167z0.x0(this, j10, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j10));
    }

    @Override // j$.util.stream.E
    public final E a() {
        int i10 = q4.f9539a;
        Objects.requireNonNull(null);
        return new e4(this, q4.f9539a);
    }

    @Override // j$.util.stream.E
    public final E c() {
        int i10 = q4.f9539a;
        Objects.requireNonNull(null);
        return new g4(this, q4.f9540b);
    }

    @Override // j$.util.stream.E
    public final E distinct() {
        return ((AbstractC0085i2) boxed()).distinct().mapToDouble(new C0117p(3));
    }

    @Override // j$.util.stream.E
    public final double sum() {
        int i10 = 6;
        double[] dArr = (double[]) collect(new C0117p(i10), new C0087j(i10), new C0087j(3));
        Set set = Collectors.f9204a;
        double d10 = dArr[0] + dArr[1];
        double d11 = dArr[dArr.length - 1];
        return (Double.isNaN(d10) && Double.isInfinite(d11)) ? d11 : d10;
    }

    @Override // j$.util.stream.E
    public final C0035l min() {
        return reduce(new C0087j(28));
    }

    @Override // j$.util.stream.E
    public final C0035l max() {
        return reduce(new C0117p(5));
    }

    @Override // j$.util.stream.E
    public final C0035l average() {
        double[] dArr = (double[]) collect(new C0087j(29), new C0087j(4), new C0087j(5));
        if (dArr[2] > 0.0d) {
            Set set = Collectors.f9204a;
            double d10 = dArr[0] + dArr[1];
            double d11 = dArr[dArr.length - 1];
            if (Double.isNaN(d10) && Double.isInfinite(d11)) {
                d10 = d11;
            }
            return C0035l.d(d10 / dArr[2]);
        }
        return C0035l.a();
    }

    @Override // j$.util.stream.E
    public final C0031h summaryStatistics() {
        return (C0031h) collect(new C0087j(19), new C0117p(0), new C0117p(1));
    }

    @Override // j$.util.stream.E
    public final Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        C0122q c0122q = new C0122q(biConsumer, 0);
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(objDoubleConsumer);
        Objects.requireNonNull(c0122q);
        return K0(new F1(EnumC0076g3.DOUBLE_VALUE, c0122q, objDoubleConsumer, supplier, 1));
    }

    @Override // j$.util.stream.E
    public final boolean p() {
        return ((Boolean) K0(AbstractC0167z0.y0(EnumC0152w0.ANY))).booleanValue();
    }

    @Override // j$.util.stream.E
    public final boolean i() {
        return ((Boolean) K0(AbstractC0167z0.y0(EnumC0152w0.ALL))).booleanValue();
    }

    @Override // j$.util.stream.E
    public final boolean z() {
        return ((Boolean) K0(AbstractC0167z0.y0(EnumC0152w0.NONE))).booleanValue();
    }

    @Override // j$.util.stream.E
    public final double[] toArray() {
        return (double[]) AbstractC0167z0.p0((F0) L0(new C0117p(4))).e();
    }

    @Override // j$.util.stream.E
    public final double reduce(double d10, DoubleBinaryOperator doubleBinaryOperator) {
        Objects.requireNonNull(doubleBinaryOperator);
        return ((Double) K0(new J1(EnumC0076g3.DOUBLE_VALUE, doubleBinaryOperator, d10))).doubleValue();
    }

    @Override // j$.util.stream.E
    public final C0035l reduce(DoubleBinaryOperator doubleBinaryOperator) {
        Objects.requireNonNull(doubleBinaryOperator);
        return (C0035l) K0(new D1(EnumC0076g3.DOUBLE_VALUE, doubleBinaryOperator, 1));
    }

    @Override // j$.util.stream.E
    public final long count() {
        return ((Long) K0(new H1(EnumC0076g3.DOUBLE_VALUE, 1))).longValue();
    }
}
