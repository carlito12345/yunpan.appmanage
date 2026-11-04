package j$.util.stream;

import j$.util.Spliterators;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
final class S2 extends Y2 implements j$.util.F {

    /* renamed from: g, reason: collision with root package name */
    final /* synthetic */ T2 f9343g;

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.util.B.a(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.util.B.g(this, consumer);
    }

    @Override // j$.util.stream.Y2
    final void a(int i10, Object obj, Object obj2) {
        ((DoubleConsumer) obj2).accept(((double[]) obj)[i10]);
    }

    @Override // j$.util.stream.Y2
    final j$.util.O b(Object obj, int i10, int i11) {
        return Spliterators.j((double[]) obj, i10, i11 + i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    S2(T2 t22, int i10, int i11, int i12, int i13) {
        super(t22, i10, i11, i12, i13);
        this.f9343g = t22;
    }

    @Override // j$.util.stream.Y2
    final j$.util.O c(int i10, int i11, int i12, int i13) {
        return new S2(this.f9343g, i10, i11, i12, i13);
    }
}
