package j$.util.stream;

import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.i, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0082i implements java.util.stream.Collector {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Collector f9468a;

    private /* synthetic */ C0082i(Collector collector) {
        this.f9468a = collector;
    }

    public static /* synthetic */ java.util.stream.Collector a(Collector collector) {
        if (collector == null) {
            return null;
        }
        return collector instanceof C0077h ? ((C0077h) collector).f9456a : new C0082i(collector);
    }

    @Override // java.util.stream.Collector
    public final /* synthetic */ BiConsumer accumulator() {
        return this.f9468a.accumulator();
    }

    @Override // java.util.stream.Collector
    public final /* synthetic */ Set characteristics() {
        return AbstractC0056c3.a(this.f9468a.characteristics());
    }

    @Override // java.util.stream.Collector
    public final /* synthetic */ BinaryOperator combiner() {
        return this.f9468a.combiner();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        Collector collector = this.f9468a;
        if (obj instanceof C0082i) {
            obj = ((C0082i) obj).f9468a;
        }
        return collector.equals(obj);
    }

    @Override // java.util.stream.Collector
    public final /* synthetic */ Function finisher() {
        return this.f9468a.finisher();
    }

    public final /* synthetic */ int hashCode() {
        return this.f9468a.hashCode();
    }

    @Override // java.util.stream.Collector
    public final /* synthetic */ Supplier supplier() {
        return this.f9468a.supplier();
    }
}
