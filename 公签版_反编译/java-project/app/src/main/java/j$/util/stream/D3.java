package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
final class D3 extends E3 implements j$.util.L, LongConsumer {

    /* renamed from: f, reason: collision with root package name */
    long f9210f;

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.b(this, longConsumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.util.B.c(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.util.B.i(this, consumer);
    }

    @Override // j$.util.stream.H3
    protected final Spliterator c(Spliterator spliterator) {
        return new D3((j$.util.L) spliterator, this);
    }

    @Override // j$.util.stream.E3
    protected final void e(Object obj) {
        ((LongConsumer) obj).accept(this.f9210f);
    }

    D3(j$.util.L l, long j10, long j11) {
        super(l, j10, j11);
    }

    D3(j$.util.L l, D3 d32) {
        super(l, d32);
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j10) {
        this.f9210f = j10;
    }

    @Override // j$.util.stream.E3
    protected final AbstractC0101l3 f(int i10) {
        return new C0096k3(i10);
    }
}
