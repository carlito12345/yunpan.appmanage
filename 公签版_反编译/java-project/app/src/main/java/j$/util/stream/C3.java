package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.IntConsumer$CC;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
final class C3 extends E3 implements j$.util.I, IntConsumer {

    /* renamed from: f, reason: collision with root package name */
    int f9202f;

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return IntConsumer$CC.$default$andThen(this, intConsumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.util.B.b(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.util.B.h(this, consumer);
    }

    @Override // j$.util.stream.H3
    protected final Spliterator c(Spliterator spliterator) {
        return new C3((j$.util.I) spliterator, this);
    }

    @Override // j$.util.stream.E3
    protected final void e(Object obj) {
        ((IntConsumer) obj).accept(this.f9202f);
    }

    C3(j$.util.I i10, long j10, long j11) {
        super(i10, j10, j11);
    }

    C3(j$.util.I i10, C3 c32) {
        super(i10, c32);
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i10) {
        this.f9202f = i10;
    }

    @Override // j$.util.stream.E3
    protected final AbstractC0101l3 f(int i10) {
        return new C0091j3(i10);
    }
}
