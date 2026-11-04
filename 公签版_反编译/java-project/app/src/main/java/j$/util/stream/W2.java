package j$.util.stream;

import j$.util.Spliterators;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
final class W2 extends Y2 implements j$.util.L {

    /* renamed from: g, reason: collision with root package name */
    final /* synthetic */ X2 f9370g;

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.util.B.c(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.util.B.i(this, consumer);
    }

    @Override // j$.util.stream.Y2
    final void a(int i10, Object obj, Object obj2) {
        ((LongConsumer) obj2).accept(((long[]) obj)[i10]);
    }

    @Override // j$.util.stream.Y2
    final j$.util.O b(Object obj, int i10, int i11) {
        return Spliterators.l((long[]) obj, i10, i11 + i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    W2(X2 x22, int i10, int i11, int i12, int i13) {
        super(x22, i10, i11, i12, i13);
        this.f9370g = x22;
    }

    @Override // j$.util.stream.Y2
    final j$.util.O c(int i10, int i11, int i12, int i13) {
        return new W2(this.f9370g, i10, i11, i12, i13);
    }
}
