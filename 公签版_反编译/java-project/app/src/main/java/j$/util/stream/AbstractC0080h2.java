package j$.util.stream;

/* renamed from: j$.util.stream.h2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract class AbstractC0080h2 extends AbstractC0085i2 {
    @Override // j$.util.stream.AbstractC0047b
    final boolean T0() {
        return false;
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !P0() ? this : new C0065e2(this, EnumC0071f3.r);
    }

    AbstractC0080h2(AbstractC0047b abstractC0047b, int i10) {
        super(abstractC0047b, i10);
    }
}
