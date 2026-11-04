package j$.util.stream;

import j$.util.C0034k;
import j$.util.C0035l;
import j$.util.C0037n;
import j$.util.C0175x;
import j$.util.InterfaceC0177z;
import j$.util.Spliterator;
import j$.util.stream.IntStream;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.n0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0108n0 implements LongStream {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ java.util.stream.LongStream f9505a;

    private /* synthetic */ C0108n0(java.util.stream.LongStream longStream) {
        this.f9505a = longStream;
    }

    public static /* synthetic */ LongStream f(java.util.stream.LongStream longStream) {
        if (longStream == null) {
            return null;
        }
        return longStream instanceof C0113o0 ? ((C0113o0) longStream).f9510a : new C0108n0(longStream);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream a() {
        return f(this.f9505a.takeWhile(null));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ E asDoubleStream() {
        return C.f(this.f9505a.asDoubleStream());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ C0035l average() {
        return j$.util.B.k(this.f9505a.average());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream b() {
        return f(this.f9505a.filter(null));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ Stream boxed() {
        return C0051b3.f(this.f9505a.boxed());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream c() {
        return f(this.f9505a.dropWhile(null));
    }

    @Override // java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.f9505a.close();
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ Object collect(Supplier supplier, ObjLongConsumer objLongConsumer, BiConsumer biConsumer) {
        return this.f9505a.collect(supplier, objLongConsumer, biConsumer);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ long count() {
        return this.f9505a.count();
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream distinct() {
        return f(this.f9505a.distinct());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream e() {
        return f(this.f9505a.map(null));
    }

    public final /* synthetic */ boolean equals(Object obj) {
        java.util.stream.LongStream longStream = this.f9505a;
        if (obj instanceof C0108n0) {
            obj = ((C0108n0) obj).f9505a;
        }
        return longStream.equals(obj);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ C0037n findAny() {
        return j$.util.B.m(this.f9505a.findAny());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ C0037n findFirst() {
        return j$.util.B.m(this.f9505a.findFirst());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ void forEach(LongConsumer longConsumer) {
        this.f9505a.forEach(longConsumer);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ void forEachOrdered(LongConsumer longConsumer) {
        this.f9505a.forEachOrdered(longConsumer);
    }

    public final /* synthetic */ int hashCode() {
        return this.f9505a.hashCode();
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ boolean isParallel() {
        return this.f9505a.isParallel();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.PrimitiveIterator$OfLong] */
    @Override // j$.util.stream.LongStream, j$.util.stream.BaseStream, j$.util.stream.E
    public final /* synthetic */ InterfaceC0177z iterator() {
        return C0175x.a(this.f9505a.iterator());
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    public final /* synthetic */ Iterator iterator() {
        return this.f9505a.iterator();
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream limit(long j10) {
        return f(this.f9505a.limit(j10));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ E m() {
        return C.f(this.f9505a.mapToDouble(null));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ Stream mapToObj(LongFunction longFunction) {
        return C0051b3.f(this.f9505a.mapToObj(longFunction));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ C0037n max() {
        return j$.util.B.m(this.f9505a.max());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ C0037n min() {
        return j$.util.B.m(this.f9505a.min());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ boolean n() {
        return this.f9505a.noneMatch(null);
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream onClose(Runnable runnable) {
        return C0067f.f(this.f9505a.onClose(runnable));
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    public final /* synthetic */ BaseStream parallel() {
        return C0067f.f(this.f9505a.parallel());
    }

    @Override // j$.util.stream.LongStream, j$.util.stream.BaseStream, j$.util.stream.E
    public final /* synthetic */ LongStream parallel() {
        return f(this.f9505a.parallel());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream peek(LongConsumer longConsumer) {
        return f(this.f9505a.peek(longConsumer));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ boolean r() {
        return this.f9505a.allMatch(null);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ long reduce(long j10, LongBinaryOperator longBinaryOperator) {
        return this.f9505a.reduce(j10, longBinaryOperator);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ C0037n reduce(LongBinaryOperator longBinaryOperator) {
        return j$.util.B.m(this.f9505a.reduce(longBinaryOperator));
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    public final /* synthetic */ BaseStream sequential() {
        return C0067f.f(this.f9505a.sequential());
    }

    @Override // j$.util.stream.LongStream, j$.util.stream.BaseStream, j$.util.stream.E
    public final /* synthetic */ LongStream sequential() {
        return f(this.f9505a.sequential());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream skip(long j10) {
        return f(this.f9505a.skip(j10));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream sorted() {
        return f(this.f9505a.sorted());
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Spliterator$OfLong] */
    @Override // j$.util.stream.LongStream, j$.util.stream.BaseStream
    public final /* synthetic */ j$.util.L spliterator() {
        return j$.util.J.a(this.f9505a.spliterator());
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ Spliterator spliterator() {
        return j$.util.P.a(this.f9505a.spliterator());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ long sum() {
        return this.f9505a.sum();
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ long[] toArray() {
        return this.f9505a.toArray();
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream unordered() {
        return C0067f.f(this.f9505a.unordered());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ boolean w() {
        return this.f9505a.anyMatch(null);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ IntStream x() {
        return IntStream.VivifiedWrapper.convert(this.f9505a.mapToInt(null));
    }

    @Override // j$.util.stream.LongStream
    public final C0034k summaryStatistics() {
        this.f9505a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.LongSummaryStatistics");
    }

    @Override // j$.util.stream.LongStream
    public final LongStream d(C0042a c0042a) {
        return f(this.f9505a.flatMap(new C0042a(c0042a, 9)));
    }
}
