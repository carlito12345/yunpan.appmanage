package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;

/* renamed from: j$.util.stream.v3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0150v3 extends AbstractC0165y3 implements j$.util.F {
    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.util.B.a(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.util.B.g(this, consumer);
    }

    @Override // j$.util.stream.A3
    protected final Spliterator a(Spliterator spliterator, long j10, long j11, long j12, long j13) {
        return new C0150v3((j$.util.F) spliterator, j10, j11, j12, j13);
    }

    C0150v3(j$.util.F f10, long j10, long j11) {
        super(f10, j10, j11);
    }

    C0150v3(j$.util.F f10, long j10, long j11, long j12, long j13) {
        super(f10, j10, j11, j12, j13);
    }

    @Override // j$.util.stream.AbstractC0165y3
    protected final Object b() {
        return new E0(1);
    }
}
