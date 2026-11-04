package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;

/* renamed from: j$.util.stream.x3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0160x3 extends AbstractC0165y3 implements j$.util.L {
    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.util.B.c(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.util.B.i(this, consumer);
    }

    @Override // j$.util.stream.A3
    protected final Spliterator a(Spliterator spliterator, long j10, long j11, long j12, long j13) {
        return new C0160x3((j$.util.L) spliterator, j10, j11, j12, j13);
    }

    C0160x3(j$.util.L l, long j10, long j11) {
        super(l, j10, j11);
    }

    C0160x3(j$.util.L l, long j10, long j11, long j12, long j13) {
        super(l, j10, j11, j12, j13);
    }

    @Override // j$.util.stream.AbstractC0165y3
    protected final Object b() {
        return new I0(1);
    }
}
