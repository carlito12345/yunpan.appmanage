package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.DoubleConsumer;

/* renamed from: j$.util.stream.y, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0161y extends B {
    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !P0() ? this : new C0136t(this, EnumC0071f3.r, 1);
    }

    @Override // j$.util.stream.AbstractC0047b, j$.util.stream.BaseStream, j$.util.stream.E
    public final /* bridge */ /* synthetic */ E parallel() {
        parallel();
        return this;
    }

    @Override // j$.util.stream.AbstractC0047b, j$.util.stream.BaseStream, j$.util.stream.E
    public final /* bridge */ /* synthetic */ E sequential() {
        sequential();
        return this;
    }

    @Override // j$.util.stream.AbstractC0047b, j$.util.stream.BaseStream
    public final /* bridge */ /* synthetic */ Spliterator spliterator() {
        return spliterator();
    }

    C0161y(j$.util.F f10, int i10) {
        super(f10, i10);
    }

    @Override // j$.util.stream.AbstractC0047b
    final boolean T0() {
        throw new UnsupportedOperationException();
    }

    @Override // j$.util.stream.AbstractC0047b
    final InterfaceC0125q2 U0(int i10, InterfaceC0125q2 interfaceC0125q2) {
        throw new UnsupportedOperationException();
    }

    @Override // j$.util.stream.B, j$.util.stream.E
    public final void forEach(DoubleConsumer doubleConsumer) {
        if (!isParallel()) {
            B.Z0(W0()).forEachRemaining(doubleConsumer);
        } else {
            super.forEach(doubleConsumer);
        }
    }

    @Override // j$.util.stream.B, j$.util.stream.E
    public final void forEachOrdered(DoubleConsumer doubleConsumer) {
        if (!isParallel()) {
            B.Z0(W0()).forEachRemaining(doubleConsumer);
        } else {
            super.forEachOrdered(doubleConsumer);
        }
    }
}
