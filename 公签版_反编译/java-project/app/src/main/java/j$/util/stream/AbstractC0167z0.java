package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.LongConsumer;
import java.util.function.Predicate;

/* renamed from: j$.util.stream.z0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC0167z0 implements O3 {

    /* renamed from: a, reason: collision with root package name */
    private static final C0064e1 f9598a = new C0064e1();

    /* renamed from: b, reason: collision with root package name */
    private static final H0 f9599b = new C0054c1();

    /* renamed from: c, reason: collision with root package name */
    private static final J0 f9600c = new C0059d1();

    /* renamed from: d, reason: collision with root package name */
    private static final F0 f9601d = new C0049b1();

    /* renamed from: e, reason: collision with root package name */
    private static final int[] f9602e = new int[0];

    /* renamed from: f, reason: collision with root package name */
    private static final long[] f9603f = new long[0];

    /* renamed from: g, reason: collision with root package name */
    private static final double[] f9604g = new double[0];

    static long Z(long j10, long j11) {
        long j12 = j11 >= 0 ? j10 + j11 : Long.MAX_VALUE;
        if (j12 >= 0) {
            return j12;
        }
        return Long.MAX_VALUE;
    }

    abstract D0 D0(long j10, IntFunction intFunction);

    public abstract V1 G0();

    abstract InterfaceC0125q2 H0(Spliterator spliterator, InterfaceC0125q2 interfaceC0125q2);

    abstract InterfaceC0125q2 I0(InterfaceC0125q2 interfaceC0125q2);

    abstract Spliterator J0(Spliterator spliterator);

    abstract void h0(Spliterator spliterator, InterfaceC0125q2 interfaceC0125q2);

    abstract boolean i0(Spliterator spliterator, InterfaceC0125q2 interfaceC0125q2);

    @Override // j$.util.stream.O3
    public /* synthetic */ int l() {
        return 0;
    }

    abstract L0 l0(Spliterator spliterator, boolean z, IntFunction intFunction);

    abstract long m0(Spliterator spliterator);

    abstract EnumC0076g3 s0();

    abstract int t0();

    static long Y(long j10, long j11, long j12) {
        if (j10 >= 0) {
            return Math.max(-1L, Math.min(j10 - j11, j12));
        }
        return -1L;
    }

    AbstractC0167z0() {
    }

    public static C0157x0 E0(EnumC0152w0 enumC0152w0, Predicate predicate) {
        Objects.requireNonNull(predicate);
        Objects.requireNonNull(enumC0152w0);
        return new C0157x0(EnumC0076g3.REFERENCE, enumC0152w0, new C0123q0(0, enumC0152w0, predicate));
    }

    static Spliterator a0(EnumC0076g3 enumC0076g3, Spliterator spliterator, long j10, long j11) {
        long j12 = j11 >= 0 ? j10 + j11 : Long.MAX_VALUE;
        long j13 = j12 >= 0 ? j12 : Long.MAX_VALUE;
        int i10 = AbstractC0169z2.f9605a[enumC0076g3.ordinal()];
        if (i10 == 1) {
            return new C0170z3(spliterator, j10, j13);
        }
        if (i10 == 2) {
            return new C0155w3((j$.util.I) spliterator, j10, j13);
        }
        if (i10 == 3) {
            return new C0160x3((j$.util.L) spliterator, j10, j13);
        }
        if (i10 == 4) {
            return new C0150v3((j$.util.F) spliterator, j10, j13);
        }
        throw new IllegalStateException("Unknown shape " + enumC0076g3);
    }

    static AbstractC0069f1 k0(EnumC0076g3 enumC0076g3) {
        int i10 = M0.f9278a[enumC0076g3.ordinal()];
        if (i10 == 1) {
            return f9598a;
        }
        if (i10 == 2) {
            return (AbstractC0069f1) f9599b;
        }
        if (i10 == 3) {
            return (AbstractC0069f1) f9600c;
        }
        if (i10 == 4) {
            return (AbstractC0069f1) f9601d;
        }
        throw new IllegalStateException("Unknown shape " + enumC0076g3);
    }

    public static C0157x0 A0(EnumC0152w0 enumC0152w0) {
        Objects.requireNonNull(null);
        Objects.requireNonNull(enumC0152w0);
        return new C0157x0(EnumC0076g3.INT_VALUE, enumC0152w0, new C0118p0(enumC0152w0, 1));
    }

    public static Stream F0(AbstractC0085i2 abstractC0085i2, long j10, long j11) {
        if (j10 < 0) {
            throw new IllegalArgumentException("Skip must be non-negative: " + j10);
        }
        return new C0134s2(abstractC0085i2, n0(j11), j10, j11);
    }

    public static L0 U(L0 l02, long j10, long j11, IntFunction intFunction) {
        if (j10 == 0 && j11 == l02.count()) {
            return l02;
        }
        Spliterator spliterator = l02.spliterator();
        long j12 = j11 - j10;
        D0 d0B0 = b0(j12, intFunction);
        d0B0.n(j12);
        for (int i10 = 0; i10 < j10 && spliterator.tryAdvance(new C0068f0(4)); i10++) {
        }
        if (j11 == l02.count()) {
            spliterator.forEachRemaining(d0B0);
        } else {
            for (int i11 = 0; i11 < j12 && spliterator.tryAdvance(d0B0); i11++) {
            }
        }
        d0B0.m();
        return d0B0.a();
    }

    static N0 g0(EnumC0076g3 enumC0076g3, L0 l02, L0 l03) {
        int i10 = M0.f9278a[enumC0076g3.ordinal()];
        if (i10 == 1) {
            return new X0(l02, l03);
        }
        if (i10 == 2) {
            return new U0((H0) l02, (H0) l03);
        }
        if (i10 == 3) {
            return new V0((J0) l02, (J0) l03);
        }
        if (i10 == 4) {
            return new T0((F0) l02, (F0) l03);
        }
        throw new IllegalStateException("Unknown shape " + enumC0076g3);
    }

    public static C0157x0 C0(EnumC0152w0 enumC0152w0) {
        Objects.requireNonNull(null);
        Objects.requireNonNull(enumC0152w0);
        return new C0157x0(EnumC0076g3.LONG_VALUE, enumC0152w0, new C0118p0(enumC0152w0, 0));
    }

    public static void I() {
        throw new IllegalStateException("called wrong accept method");
    }

    public static C0157x0 y0(EnumC0152w0 enumC0152w0) {
        Objects.requireNonNull(null);
        Objects.requireNonNull(enumC0152w0);
        return new C0157x0(EnumC0076g3.DOUBLE_VALUE, enumC0152w0, new C0118p0(enumC0152w0, 2));
    }

    public static void J() {
        throw new IllegalStateException("called wrong accept method");
    }

    static D0 b0(long j10, IntFunction intFunction) {
        if (j10 >= 0 && j10 < 2147483639) {
            return new C0074g1(j10, intFunction);
        }
        return new C0163y1();
    }

    public static void B() {
        throw new IllegalStateException("called wrong accept method");
    }

    public static void E(InterfaceC0115o2 interfaceC0115o2, Integer num) {
        if (R3.f9329a) {
            R3.a(interfaceC0115o2.getClass(), "{0} calling Sink.OfInt.accept(Integer)");
            throw null;
        }
        interfaceC0115o2.accept(num.intValue());
    }

    public static void G(InterfaceC0120p2 interfaceC0120p2, Long l) {
        if (R3.f9329a) {
            R3.a(interfaceC0120p2.getClass(), "{0} calling Sink.OfLong.accept(Long)");
            throw null;
        }
        interfaceC0120p2.accept(l.longValue());
    }

    static B0 u0(long j10) {
        if (j10 >= 0 && j10 < 2147483639) {
            return new C0084i1(j10);
        }
        return new C0089j1();
    }

    public static void C(InterfaceC0110n2 interfaceC0110n2, Double d10) {
        if (R3.f9329a) {
            R3.a(interfaceC0110n2.getClass(), "{0} calling Sink.OfDouble.accept(Double)");
            throw null;
        }
        interfaceC0110n2.accept(d10.doubleValue());
    }

    public static IntStream z0(AbstractC0058d0 abstractC0058d0, long j10, long j11) {
        if (j10 < 0) {
            throw new IllegalArgumentException("Skip must be non-negative: " + j10);
        }
        return new C0144u2(abstractC0058d0, n0(j11), j10, j11);
    }

    static C0 v0(long j10) {
        if (j10 >= 0 && j10 < 2147483639) {
            return new C0128r1(j10);
        }
        return new C0133s1();
    }

    public static Object[] K(K0 k02, IntFunction intFunction) {
        if (R3.f9329a) {
            R3.a(k02.getClass(), "{0} calling Node.OfPrimitive.asArray");
            throw null;
        }
        if (k02.count() >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) k02.count());
        k02.j(objArr, 0);
        return objArr;
    }

    static A0 j0(long j10) {
        if (j10 >= 0 && j10 < 2147483639) {
            return new Z0(j10);
        }
        return new C0044a1();
    }

    public static L0 c0(AbstractC0167z0 abstractC0167z0, Spliterator spliterator, boolean z, IntFunction intFunction) {
        long jM0 = abstractC0167z0.m0(spliterator);
        if (jM0 < 0 || !spliterator.hasCharacteristics(16384)) {
            L0 l02 = (L0) new Q0(spliterator, abstractC0167z0, intFunction).invoke();
            return z ? o0(l02, intFunction) : l02;
        }
        if (jM0 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) jM0);
        new C0153w1(spliterator, abstractC0167z0, objArr).invoke();
        return new O0(objArr);
    }

    public static void P(H0 h02, Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            h02.f((IntConsumer) consumer);
        } else {
            if (R3.f9329a) {
                R3.a(h02.getClass(), "{0} calling Node.OfInt.forEachRemaining(Consumer)");
                throw null;
            }
            ((j$.util.I) h02.spliterator()).forEachRemaining(consumer);
        }
    }

    public static LongStream B0(AbstractC0103m0 abstractC0103m0, long j10, long j11) {
        if (j10 < 0) {
            throw new IllegalArgumentException("Skip must be non-negative: " + j10);
        }
        return new C0154w2(abstractC0103m0, n0(j11), j10, j11);
    }

    public static void M(H0 h02, Integer[] numArr, int i10) {
        if (R3.f9329a) {
            R3.a(h02.getClass(), "{0} calling Node.OfInt.copyInto(Integer[], int)");
            throw null;
        }
        int[] iArr = (int[]) h02.e();
        for (int i11 = 0; i11 < iArr.length; i11++) {
            numArr[i10 + i11] = Integer.valueOf(iArr[i11]);
        }
    }

    public static H0 S(H0 h02, long j10, long j11) {
        if (j10 == 0 && j11 == h02.count()) {
            return h02;
        }
        long j12 = j11 - j10;
        j$.util.I i10 = (j$.util.I) h02.spliterator();
        B0 b0U0 = u0(j12);
        b0U0.n(j12);
        for (int i11 = 0; i11 < j10 && i10.tryAdvance((IntConsumer) new G0(0)); i11++) {
        }
        if (j11 == h02.count()) {
            i10.forEachRemaining((IntConsumer) b0U0);
        } else {
            for (int i12 = 0; i12 < j12 && i10.tryAdvance((IntConsumer) b0U0); i12++) {
            }
        }
        b0U0.m();
        return b0U0.a();
    }

    public static H0 e0(AbstractC0167z0 abstractC0167z0, Spliterator spliterator, boolean z) {
        long jM0 = abstractC0167z0.m0(spliterator);
        if (jM0 < 0 || !spliterator.hasCharacteristics(16384)) {
            H0 h02 = (H0) new Q0(1, spliterator, abstractC0167z0).invoke();
            return z ? q0(h02) : h02;
        }
        if (jM0 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        int[] iArr = new int[(int) jM0];
        new C0143u1(spliterator, abstractC0167z0, iArr).invoke();
        return new C0079h1(iArr);
    }

    public static J0 f0(AbstractC0167z0 abstractC0167z0, Spliterator spliterator, boolean z) {
        long jM0 = abstractC0167z0.m0(spliterator);
        if (jM0 < 0 || !spliterator.hasCharacteristics(16384)) {
            J0 j02 = (J0) new Q0(2, spliterator, abstractC0167z0).invoke();
            return z ? r0(j02) : j02;
        }
        if (jM0 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        long[] jArr = new long[(int) jM0];
        new C0148v1(spliterator, abstractC0167z0, jArr).invoke();
        return new C0124q1(jArr);
    }

    public static void Q(J0 j02, Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            j02.f((LongConsumer) consumer);
        } else {
            if (R3.f9329a) {
                R3.a(j02.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
                throw null;
            }
            ((j$.util.L) j02.spliterator()).forEachRemaining(consumer);
        }
    }

    public static void N(J0 j02, Long[] lArr, int i10) {
        if (R3.f9329a) {
            R3.a(j02.getClass(), "{0} calling Node.OfInt.copyInto(Long[], int)");
            throw null;
        }
        long[] jArr = (long[]) j02.e();
        for (int i11 = 0; i11 < jArr.length; i11++) {
            lArr[i10 + i11] = Long.valueOf(jArr[i11]);
        }
    }

    public static J0 T(J0 j02, long j10, long j11) {
        if (j10 == 0 && j11 == j02.count()) {
            return j02;
        }
        long j12 = j11 - j10;
        j$.util.L l = (j$.util.L) j02.spliterator();
        C0 c0V0 = v0(j12);
        c0V0.n(j12);
        for (int i10 = 0; i10 < j10 && l.tryAdvance((LongConsumer) new I0(0)); i10++) {
        }
        if (j11 == j02.count()) {
            l.forEachRemaining((LongConsumer) c0V0);
        } else {
            for (int i11 = 0; i11 < j12 && l.tryAdvance((LongConsumer) c0V0); i11++) {
            }
        }
        c0V0.m();
        return c0V0.a();
    }

    public static F0 d0(AbstractC0167z0 abstractC0167z0, Spliterator spliterator, boolean z) {
        long jM0 = abstractC0167z0.m0(spliterator);
        if (jM0 < 0 || !spliterator.hasCharacteristics(16384)) {
            F0 f02 = (F0) new Q0(0, spliterator, abstractC0167z0).invoke();
            return z ? p0(f02) : f02;
        }
        if (jM0 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        double[] dArr = new double[(int) jM0];
        new C0138t1(spliterator, abstractC0167z0, dArr).invoke();
        return new Y0(dArr);
    }

    public static E x0(B b10, long j10, long j11) {
        if (j10 < 0) {
            throw new IllegalArgumentException("Skip must be non-negative: " + j10);
        }
        return new C0164y2(b10, n0(j11), j10, j11);
    }

    public static L0 o0(L0 l02, IntFunction intFunction) {
        if (l02.r() <= 0) {
            return l02;
        }
        long jCount = l02.count();
        if (jCount >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) jCount);
        new A1(l02, objArr, 1).invoke();
        return new O0(objArr);
    }

    public static void O(F0 f02, Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            f02.f((DoubleConsumer) consumer);
        } else {
            if (R3.f9329a) {
                R3.a(f02.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
                throw null;
            }
            ((j$.util.F) f02.spliterator()).forEachRemaining(consumer);
        }
    }

    public static H0 q0(H0 h02) {
        if (h02.r() <= 0) {
            return h02;
        }
        long jCount = h02.count();
        if (jCount >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        int[] iArr = new int[(int) jCount];
        new C0168z1(h02, iArr).invoke();
        return new C0079h1(iArr);
    }

    public static void L(F0 f02, Double[] dArr, int i10) {
        if (R3.f9329a) {
            R3.a(f02.getClass(), "{0} calling Node.OfDouble.copyInto(Double[], int)");
            throw null;
        }
        double[] dArr2 = (double[]) f02.e();
        for (int i11 = 0; i11 < dArr2.length; i11++) {
            dArr[i10 + i11] = Double.valueOf(dArr2[i11]);
        }
    }

    public static F0 R(F0 f02, long j10, long j11) {
        if (j10 == 0 && j11 == f02.count()) {
            return f02;
        }
        long j12 = j11 - j10;
        j$.util.F f10 = (j$.util.F) f02.spliterator();
        A0 a0J0 = j0(j12);
        a0J0.n(j12);
        for (int i10 = 0; i10 < j10 && f10.tryAdvance((DoubleConsumer) new E0(0)); i10++) {
        }
        if (j11 == f02.count()) {
            f10.forEachRemaining((DoubleConsumer) a0J0);
        } else {
            for (int i11 = 0; i11 < j12 && f10.tryAdvance((DoubleConsumer) a0J0); i11++) {
            }
        }
        a0J0.m();
        return a0J0.a();
    }

    public static J0 r0(J0 j02) {
        if (j02.r() <= 0) {
            return j02;
        }
        long jCount = j02.count();
        if (jCount >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        long[] jArr = new long[(int) jCount];
        new C0168z1(j02, jArr).invoke();
        return new C0124q1(jArr);
    }

    private static int n0(long j10) {
        return (j10 != -1 ? EnumC0071f3.f9444u : 0) | EnumC0071f3.f9443t;
    }

    public static F0 p0(F0 f02) {
        if (f02.r() <= 0) {
            return f02;
        }
        long jCount = f02.count();
        if (jCount >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        double[] dArr = new double[(int) jCount];
        new C0168z1(f02, dArr).invoke();
        return new Y0(dArr);
    }

    AbstractC0167z0(EnumC0076g3 enumC0076g3) {
    }

    @Override // j$.util.stream.O3
    public Object f(AbstractC0047b abstractC0047b, Spliterator spliterator) {
        V1 v1G0 = G0();
        abstractC0047b.H0(spliterator, v1G0);
        return v1G0.get();
    }

    @Override // j$.util.stream.O3
    public Object y(AbstractC0167z0 abstractC0167z0, Spliterator spliterator) {
        return ((V1) new C0055c2(this, abstractC0167z0, spliterator).invoke()).get();
    }
}
