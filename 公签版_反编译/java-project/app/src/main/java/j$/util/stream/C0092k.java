package j$.util.stream;

import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.k, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0092k implements Collector {

    /* renamed from: a, reason: collision with root package name */
    private final Supplier f9480a;

    /* renamed from: b, reason: collision with root package name */
    private final BiConsumer f9481b;

    /* renamed from: c, reason: collision with root package name */
    private final BinaryOperator f9482c;

    /* renamed from: d, reason: collision with root package name */
    private final Function f9483d;

    /* renamed from: e, reason: collision with root package name */
    private final Set f9484e;

    C0092k(Supplier supplier, BiConsumer biConsumer, BinaryOperator binaryOperator) {
        this(supplier, biConsumer, binaryOperator, new C0087j(2), Collectors.f9204a);
    }

    C0092k(Supplier supplier, BiConsumer biConsumer, BinaryOperator binaryOperator, Function function, Set set) {
        this.f9480a = supplier;
        this.f9481b = biConsumer;
        this.f9482c = binaryOperator;
        this.f9483d = function;
        this.f9484e = set;
    }

    @Override // j$.util.stream.Collector
    public final BiConsumer accumulator() {
        return this.f9481b;
    }

    @Override // j$.util.stream.Collector
    public final Supplier supplier() {
        return this.f9480a;
    }

    @Override // j$.util.stream.Collector
    public final BinaryOperator combiner() {
        return this.f9482c;
    }

    @Override // j$.util.stream.Collector
    public final Function finisher() {
        return this.f9483d;
    }

    @Override // j$.util.stream.Collector
    public final Set characteristics() {
        return this.f9484e;
    }
}
