package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;

/* renamed from: j$.util.stream.f2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0070f2 extends AbstractC0085i2 {
    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !P0() ? this : new C0065e2(this, EnumC0071f3.r);
    }

    C0070f2(Spliterator spliterator, int i10, boolean z) {
        super(spliterator, i10, z);
    }

    @Override // j$.util.stream.AbstractC0047b
    final boolean T0() {
        throw new UnsupportedOperationException();
    }

    @Override // j$.util.stream.AbstractC0047b
    final InterfaceC0125q2 U0(int i10, InterfaceC0125q2 interfaceC0125q2) {
        throw new UnsupportedOperationException();
    }

    @Override // j$.util.stream.AbstractC0085i2, j$.util.stream.Stream
    public final void forEach(Consumer consumer) {
        if (!isParallel()) {
            W0().forEachRemaining(consumer);
        } else {
            super.forEach(consumer);
        }
    }

    @Override // j$.util.stream.AbstractC0085i2, j$.util.stream.Stream
    public final void forEachOrdered(Consumer consumer) {
        if (!isParallel()) {
            W0().forEachRemaining(consumer);
        } else {
            super.forEachOrdered(consumer);
        }
    }
}
