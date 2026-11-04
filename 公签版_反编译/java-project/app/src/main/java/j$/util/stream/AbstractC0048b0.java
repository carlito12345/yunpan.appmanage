package j$.util.stream;

import j$.util.Spliterator;

/* renamed from: j$.util.stream.b0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract class AbstractC0048b0 extends AbstractC0058d0 {
    @Override // j$.util.stream.AbstractC0047b
    final boolean T0() {
        return true;
    }

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

    AbstractC0048b0(AbstractC0058d0 abstractC0058d0, int i10) {
        super(abstractC0058d0, i10);
    }
}
