package j$.util.stream;

import j$.util.C0031h;
import j$.util.C0035l;
import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public interface E extends BaseStream {
    E a();

    C0035l average();

    E b();

    Stream boxed();

    E c();

    Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer);

    long count();

    E d(C0042a c0042a);

    E distinct();

    E e();

    C0035l findAny();

    C0035l findFirst();

    void forEach(DoubleConsumer doubleConsumer);

    void forEachOrdered(DoubleConsumer doubleConsumer);

    boolean i();

    j$.util.r iterator();

    LongStream j();

    E limit(long j10);

    Stream mapToObj(DoubleFunction doubleFunction);

    C0035l max();

    C0035l min();

    boolean p();

    E parallel();

    E peek(DoubleConsumer doubleConsumer);

    double reduce(double d10, DoubleBinaryOperator doubleBinaryOperator);

    C0035l reduce(DoubleBinaryOperator doubleBinaryOperator);

    E sequential();

    E skip(long j10);

    E sorted();

    @Override // j$.util.stream.BaseStream
    j$.util.F spliterator();

    double sum();

    C0031h summaryStatistics();

    double[] toArray();

    IntStream u();

    boolean z();
}
