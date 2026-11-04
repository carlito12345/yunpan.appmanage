package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
final class B3 extends E3 implements j$.util.F, DoubleConsumer {

    /* renamed from: f, reason: collision with root package name */
    double f9196f;

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.a(this, doubleConsumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.util.B.a(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.util.B.g(this, consumer);
    }

    @Override // j$.util.stream.H3
    protected final Spliterator c(Spliterator spliterator) {
        return new B3((j$.util.F) spliterator, this);
    }

    @Override // j$.util.stream.E3
    protected final void e(Object obj) {
        ((DoubleConsumer) obj).accept(this.f9196f);
    }

    B3(j$.util.F f10, long j10, long j11) {
        super(f10, j10, j11);
    }

    B3(j$.util.F f10, B3 b32) {
        super(f10, b32);
    }

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d10) {
        this.f9196f = d10;
    }

    @Override // j$.util.stream.E3
    protected final AbstractC0101l3 f(int i10) {
        return new C0086i3(i10);
    }
}
