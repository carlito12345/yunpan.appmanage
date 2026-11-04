package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.j0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0088j0 extends AbstractC0103m0 {
    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !P0() ? this : new C0146v(this, EnumC0071f3.r, 3);
    }

    @Override // j$.util.stream.AbstractC0047b, j$.util.stream.BaseStream, j$.util.stream.E
    public final /* bridge */ /* synthetic */ LongStream parallel() {
        parallel();
        return this;
    }

    @Override // j$.util.stream.AbstractC0047b, j$.util.stream.BaseStream, j$.util.stream.E
    public final /* bridge */ /* synthetic */ LongStream sequential() {
        sequential();
        return this;
    }

    @Override // j$.util.stream.AbstractC0047b, j$.util.stream.BaseStream
    public final /* bridge */ /* synthetic */ Spliterator spliterator() {
        return spliterator();
    }

    C0088j0(j$.util.L l, int i10) {
        super(l, i10);
    }

    @Override // j$.util.stream.AbstractC0047b
    final boolean T0() {
        throw new UnsupportedOperationException();
    }

    @Override // j$.util.stream.AbstractC0047b
    final InterfaceC0125q2 U0(int i10, InterfaceC0125q2 interfaceC0125q2) {
        throw new UnsupportedOperationException();
    }

    @Override // j$.util.stream.AbstractC0103m0, j$.util.stream.LongStream
    public final void forEach(LongConsumer longConsumer) {
        if (!isParallel()) {
            AbstractC0103m0.Z0(W0()).forEachRemaining(longConsumer);
        } else {
            super.forEach(longConsumer);
        }
    }

    @Override // j$.util.stream.AbstractC0103m0, j$.util.stream.LongStream
    public final void forEachOrdered(LongConsumer longConsumer) {
        if (!isParallel()) {
            AbstractC0103m0.Z0(W0()).forEachRemaining(longConsumer);
        } else {
            super.forEachOrdered(longConsumer);
        }
    }
}
