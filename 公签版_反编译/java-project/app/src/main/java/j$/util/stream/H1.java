package j$.util.stream;

import j$.util.Spliterator;

/* loaded from: classes2.dex */
final class H1 extends AbstractC0167z0 {

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f9237h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ H1(EnumC0076g3 enumC0076g3, int i10) {
        super(enumC0076g3);
        this.f9237h = i10;
    }

    @Override // j$.util.stream.AbstractC0167z0
    public final V1 G0() {
        switch (this.f9237h) {
            case 0:
                return new Z1();
            case 1:
                return new X1();
            case 2:
                return new C0045a2();
            default:
                return new Y1();
        }
    }

    @Override // j$.util.stream.AbstractC0167z0, j$.util.stream.O3
    public final Object f(AbstractC0047b abstractC0047b, Spliterator spliterator) {
        switch (this.f9237h) {
            case 0:
                if (!EnumC0071f3.SIZED.n(abstractC0047b.t0())) {
                    break;
                } else {
                    break;
                }
            case 1:
                if (!EnumC0071f3.SIZED.n(abstractC0047b.t0())) {
                    break;
                } else {
                    break;
                }
            case 2:
                if (!EnumC0071f3.SIZED.n(abstractC0047b.t0())) {
                    break;
                } else {
                    break;
                }
            default:
                if (!EnumC0071f3.SIZED.n(abstractC0047b.t0())) {
                    break;
                } else {
                    break;
                }
        }
        return (Long) super.f(abstractC0047b, spliterator);
    }

    @Override // j$.util.stream.AbstractC0167z0, j$.util.stream.O3
    public final Object y(AbstractC0167z0 abstractC0167z0, Spliterator spliterator) {
        switch (this.f9237h) {
            case 0:
                if (!EnumC0071f3.SIZED.n(abstractC0167z0.t0())) {
                    break;
                } else {
                    break;
                }
            case 1:
                if (!EnumC0071f3.SIZED.n(abstractC0167z0.t0())) {
                    break;
                } else {
                    break;
                }
            case 2:
                if (!EnumC0071f3.SIZED.n(abstractC0167z0.t0())) {
                    break;
                } else {
                    break;
                }
            default:
                if (!EnumC0071f3.SIZED.n(abstractC0167z0.t0())) {
                    break;
                } else {
                    break;
                }
        }
        return (Long) super.y(abstractC0167z0, spliterator);
    }

    @Override // j$.util.stream.AbstractC0167z0, j$.util.stream.O3
    public final int l() {
        switch (this.f9237h) {
        }
        return EnumC0071f3.r;
    }
}
