package j$.util.stream;

/* renamed from: j$.util.stream.g2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract class AbstractC0075g2 extends AbstractC0085i2 {
    @Override // j$.util.stream.AbstractC0047b
    final boolean T0() {
        return true;
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !P0() ? this : new C0065e2(this, EnumC0071f3.r);
    }

    AbstractC0075g2(AbstractC0085i2 abstractC0085i2, int i10) {
        super(abstractC0085i2, i10);
    }
}
