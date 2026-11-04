package j$.util.stream;

import j$.util.Spliterators;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
final class U2 extends Y2 implements j$.util.I {

    /* renamed from: g, reason: collision with root package name */
    final /* synthetic */ V2 f9361g;

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.util.B.b(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.util.B.h(this, consumer);
    }

    @Override // j$.util.stream.Y2
    final void a(int i10, Object obj, Object obj2) {
        ((IntConsumer) obj2).accept(((int[]) obj)[i10]);
    }

    @Override // j$.util.stream.Y2
    final j$.util.O b(Object obj, int i10, int i11) {
        return Spliterators.k((int[]) obj, i10, i11 + i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    U2(V2 v22, int i10, int i11, int i12, int i13) {
        super(v22, i10, i11, i12, i13);
        this.f9361g = v22;
    }

    @Override // j$.util.stream.Y2
    final j$.util.O c(int i10, int i11, int i12, int i13) {
        return new U2(this.f9361g, i10, i11, i12, i13);
    }
}
