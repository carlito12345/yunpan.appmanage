package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntConsumer;

/* renamed from: j$.util.stream.a0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0043a0 extends AbstractC0058d0 {
    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !P0() ? this : new C0141u(this, EnumC0071f3.r, 1);
    }

    @Override // j$.util.stream.AbstractC0047b, j$.util.stream.BaseStream, j$.util.stream.E
    public final /* bridge */ /* synthetic */ IntStream parallel() {
        parallel();
        return this;
    }

    @Override // j$.util.stream.AbstractC0047b, j$.util.stream.BaseStream, j$.util.stream.E
    public final /* bridge */ /* synthetic */ IntStream sequential() {
        sequential();
        return this;
    }

    @Override // j$.util.stream.AbstractC0047b, j$.util.stream.BaseStream
    public final /* bridge */ /* synthetic */ Spliterator spliterator() {
        return spliterator();
    }

    C0043a0(j$.util.I i10, int i11) {
        super(i10, i11);
    }

    @Override // j$.util.stream.AbstractC0047b
    final boolean T0() {
        throw new UnsupportedOperationException();
    }

    @Override // j$.util.stream.AbstractC0047b
    final InterfaceC0125q2 U0(int i10, InterfaceC0125q2 interfaceC0125q2) {
        throw new UnsupportedOperationException();
    }

    @Override // j$.util.stream.AbstractC0058d0, j$.util.stream.IntStream
    public final void forEach(IntConsumer intConsumer) {
        if (!isParallel()) {
            AbstractC0058d0.Z0(W0()).forEachRemaining(intConsumer);
        } else {
            super.forEach(intConsumer);
        }
    }

    @Override // j$.util.stream.AbstractC0058d0, j$.util.stream.IntStream
    public final void forEachOrdered(IntConsumer intConsumer) {
        if (!isParallel()) {
            AbstractC0058d0.Z0(W0()).forEachRemaining(intConsumer);
        } else {
            super.forEachOrdered(intConsumer);
        }
    }
}
