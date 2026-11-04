package j$.util.stream;

import j$.util.C0031h;
import j$.util.C0035l;
import j$.util.C0039p;
import j$.util.Spliterator;
import j$.util.stream.IntStream;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;
import java.util.stream.DoubleStream;

/* loaded from: classes2.dex */
public final /* synthetic */ class C implements E {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ DoubleStream f9197a;

    private /* synthetic */ C(DoubleStream doubleStream) {
        this.f9197a = doubleStream;
    }

    public static /* synthetic */ E f(DoubleStream doubleStream) {
        if (doubleStream == null) {
            return null;
        }
        return doubleStream instanceof D ? ((D) doubleStream).f9206a : new C(doubleStream);
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ E a() {
        return f(this.f9197a.takeWhile(null));
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ C0035l average() {
        return j$.util.B.k(this.f9197a.average());
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ E b() {
        return f(this.f9197a.filter(null));
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ Stream boxed() {
        return C0051b3.f(this.f9197a.boxed());
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ E c() {
        return f(this.f9197a.dropWhile(null));
    }

    @Override // java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.f9197a.close();
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer) {
        return this.f9197a.collect(supplier, objDoubleConsumer, biConsumer);
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ long count() {
        return this.f9197a.count();
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ E distinct() {
        return f(this.f9197a.distinct());
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ E e() {
        return f(this.f9197a.map(null));
    }

    public final /* synthetic */ boolean equals(Object obj) {
        DoubleStream doubleStream = this.f9197a;
        if (obj instanceof C) {
            obj = ((C) obj).f9197a;
        }
        return doubleStream.equals(obj);
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ C0035l findAny() {
        return j$.util.B.k(this.f9197a.findAny());
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ C0035l findFirst() {
        return j$.util.B.k(this.f9197a.findFirst());
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ void forEach(DoubleConsumer doubleConsumer) {
        this.f9197a.forEach(doubleConsumer);
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ void forEachOrdered(DoubleConsumer doubleConsumer) {
        this.f9197a.forEachOrdered(doubleConsumer);
    }

    public final /* synthetic */ int hashCode() {
        return this.f9197a.hashCode();
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ boolean i() {
        return this.f9197a.allMatch(null);
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ boolean isParallel() {
        return this.f9197a.isParallel();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.PrimitiveIterator$OfDouble] */
    @Override // j$.util.stream.E
    public final /* synthetic */ j$.util.r iterator() {
        return C0039p.a(this.f9197a.iterator());
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    public final /* synthetic */ Iterator iterator() {
        return this.f9197a.iterator();
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ LongStream j() {
        return C0108n0.f(this.f9197a.mapToLong(null));
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ E limit(long j10) {
        return f(this.f9197a.limit(j10));
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ Stream mapToObj(DoubleFunction doubleFunction) {
        return C0051b3.f(this.f9197a.mapToObj(doubleFunction));
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ C0035l max() {
        return j$.util.B.k(this.f9197a.max());
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ C0035l min() {
        return j$.util.B.k(this.f9197a.min());
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream onClose(Runnable runnable) {
        return C0067f.f(this.f9197a.onClose(runnable));
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ boolean p() {
        return this.f9197a.anyMatch(null);
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    public final /* synthetic */ BaseStream parallel() {
        return C0067f.f(this.f9197a.parallel());
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ E parallel() {
        return f(this.f9197a.parallel());
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ E peek(DoubleConsumer doubleConsumer) {
        return f(this.f9197a.peek(doubleConsumer));
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ double reduce(double d10, DoubleBinaryOperator doubleBinaryOperator) {
        return this.f9197a.reduce(d10, doubleBinaryOperator);
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ C0035l reduce(DoubleBinaryOperator doubleBinaryOperator) {
        return j$.util.B.k(this.f9197a.reduce(doubleBinaryOperator));
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    public final /* synthetic */ BaseStream sequential() {
        return C0067f.f(this.f9197a.sequential());
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ E sequential() {
        return f(this.f9197a.sequential());
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ E skip(long j10) {
        return f(this.f9197a.skip(j10));
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ E sorted() {
        return f(this.f9197a.sorted());
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Spliterator$OfDouble] */
    @Override // j$.util.stream.E, j$.util.stream.BaseStream
    public final /* synthetic */ j$.util.F spliterator() {
        return j$.util.D.a(this.f9197a.spliterator());
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ Spliterator spliterator() {
        return j$.util.P.a(this.f9197a.spliterator());
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ double sum() {
        return this.f9197a.sum();
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ double[] toArray() {
        return this.f9197a.toArray();
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ IntStream u() {
        return IntStream.VivifiedWrapper.convert(this.f9197a.mapToInt(null));
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream unordered() {
        return C0067f.f(this.f9197a.unordered());
    }

    @Override // j$.util.stream.E
    public final /* synthetic */ boolean z() {
        return this.f9197a.noneMatch(null);
    }

    @Override // j$.util.stream.E
    public final C0031h summaryStatistics() {
        this.f9197a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.DoubleSummaryStatistics");
    }

    @Override // j$.util.stream.E
    public final E d(C0042a c0042a) {
        return f(this.f9197a.flatMap(new C0042a(c0042a, 7)));
    }
}
