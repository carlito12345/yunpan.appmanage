package j$.util;

import java.util.Iterator;

/* loaded from: classes2.dex */
public final class Spliterators {

    /* renamed from: a, reason: collision with root package name */
    private static final Spliterator f9027a = new a0();

    /* renamed from: b, reason: collision with root package name */
    private static final I f9028b = new Y();

    /* renamed from: c, reason: collision with root package name */
    private static final L f9029c = new Z();

    /* renamed from: d, reason: collision with root package name */
    private static final F f9030d = new X();

    public static Spliterator e() {
        return f9027a;
    }

    public static I c() {
        return f9028b;
    }

    public static L d() {
        return f9029c;
    }

    public static F b() {
        return f9030d;
    }

    public static Spliterator m(Object[] objArr, int i10, int i11) {
        a(((Object[]) Objects.requireNonNull(objArr)).length, i10, i11);
        return new V(objArr, i10, i11, 1040);
    }

    public static I k(int[] iArr, int i10, int i11) {
        a(((int[]) Objects.requireNonNull(iArr)).length, i10, i11);
        return new b0(iArr, i10, i11, 1040);
    }

    public static L l(long[] jArr, int i10, int i11) {
        a(((long[]) Objects.requireNonNull(jArr)).length, i10, i11);
        return new d0(jArr, i10, i11, 1040);
    }

    public static F j(double[] dArr, int i10, int i11) {
        a(((double[]) Objects.requireNonNull(dArr)).length, i10, i11);
        return new W(dArr, i10, i11, 1040);
    }

    private static void a(int i10, int i11, int i12) {
        if (i11 <= i12) {
            if (i11 < 0) {
                throw new ArrayIndexOutOfBoundsException(i11);
            }
            if (i12 > i10) {
                throw new ArrayIndexOutOfBoundsException(i12);
            }
            return;
        }
        throw new ArrayIndexOutOfBoundsException("origin(" + i11 + ") > fence(" + i12 + ")");
    }

    public static <T> Spliterator<T> spliterator(java.util.Collection<? extends T> collection, int i10) {
        return new c0((java.util.Collection) Objects.requireNonNull(collection), i10);
    }

    public static <T> Spliterator<T> spliteratorUnknownSize(Iterator<? extends T> it, int i10) {
        return new c0((Iterator) Objects.requireNonNull(it), i10);
    }

    public static Iterator i(Spliterator spliterator) {
        Objects.requireNonNull(spliterator);
        return new Q(spliterator);
    }

    public static InterfaceC0173v g(I i10) {
        Objects.requireNonNull(i10);
        return new S(i10);
    }

    public static InterfaceC0177z h(L l) {
        Objects.requireNonNull(l);
        return new T(l);
    }

    public static r f(F f10) {
        Objects.requireNonNull(f10);
        return new U(f10);
    }
}
