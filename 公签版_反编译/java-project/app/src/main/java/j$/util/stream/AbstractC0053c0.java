package j$.util.stream;

import j$.util.Spliterator;

/* renamed from: j$.util.stream.c0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract class AbstractC0053c0 extends AbstractC0058d0 {
    @Override // j$.util.stream.AbstractC0047b
    final boolean T0() {
        return false;
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

    AbstractC0053c0(AbstractC0047b abstractC0047b, int i10) {
        super(abstractC0047b, i10);
    }
}
