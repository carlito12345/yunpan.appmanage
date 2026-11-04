package j$.util.stream;

import j$.util.Spliterator;

/* renamed from: j$.util.stream.z, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract class AbstractC0166z extends B {
    @Override // j$.util.stream.AbstractC0047b
    final boolean T0() {
        return true;
    }

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

    AbstractC0166z(B b10, int i10) {
        super(b10, i10);
    }
}
