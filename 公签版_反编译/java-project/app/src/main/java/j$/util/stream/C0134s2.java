package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;

/* renamed from: j$.util.stream.s2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0134s2 extends AbstractC0075g2 {

    /* renamed from: s, reason: collision with root package name */
    final /* synthetic */ long f9552s;

    /* renamed from: t, reason: collision with root package name */
    final /* synthetic */ long f9553t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0134s2(AbstractC0085i2 abstractC0085i2, int i10, long j10, long j11) {
        super(abstractC0085i2, i10);
        this.f9552s = j10;
        this.f9553t = j11;
    }

    @Override // j$.util.stream.AbstractC0047b
    final Spliterator S0(AbstractC0047b abstractC0047b, Spliterator spliterator) {
        long j10;
        long j11;
        long jM0 = abstractC0047b.m0(spliterator);
        if (jM0 > 0 && spliterator.hasCharacteristics(16384)) {
            Spliterator spliteratorJ0 = abstractC0047b.J0(spliterator);
            long j12 = this.f9552s;
            return new C0170z3(spliteratorJ0, j12, AbstractC0167z0.Z(j12, this.f9553t));
        }
        if (!EnumC0071f3.ORDERED.n(abstractC0047b.t0())) {
            Spliterator spliteratorJ02 = abstractC0047b.J0(spliterator);
            long j13 = this.f9552s;
            long j14 = this.f9553t;
            if (j13 <= jM0) {
                long jMin = jM0 - j13;
                if (j14 >= 0) {
                    jMin = Math.min(j14, jMin);
                }
                j11 = jMin;
                j10 = 0;
            } else {
                j10 = j13;
                j11 = j14;
            }
            return new F3(spliteratorJ02, j10, j11);
        }
        return ((L0) new A2(this, abstractC0047b, spliterator, new C0068f0(5), this.f9552s, this.f9553t).invoke()).spliterator();
    }

    @Override // j$.util.stream.AbstractC0047b
    final L0 R0(Spliterator spliterator, AbstractC0167z0 abstractC0167z0, IntFunction intFunction) {
        long j10;
        long jMin;
        long jM0 = abstractC0167z0.m0(spliterator);
        if (jM0 > 0 && spliterator.hasCharacteristics(16384)) {
            return AbstractC0167z0.c0(abstractC0167z0, AbstractC0167z0.a0(abstractC0167z0.s0(), spliterator, this.f9552s, this.f9553t), true, intFunction);
        }
        if (!EnumC0071f3.ORDERED.n(abstractC0167z0.t0())) {
            Spliterator spliteratorJ0 = abstractC0167z0.J0(spliterator);
            long j11 = this.f9552s;
            long j12 = this.f9553t;
            if (j11 <= jM0) {
                jMin = j12 >= 0 ? Math.min(j12, jM0 - j11) : jM0 - j11;
                j10 = 0;
            } else {
                j10 = j11;
                jMin = j12;
            }
            return AbstractC0167z0.c0(this, new F3(spliteratorJ0, j10, jMin), true, intFunction);
        }
        return (L0) new A2(this, abstractC0167z0, spliterator, intFunction, this.f9552s, this.f9553t).invoke();
    }

    @Override // j$.util.stream.AbstractC0047b
    final InterfaceC0125q2 U0(int i10, InterfaceC0125q2 interfaceC0125q2) {
        return new C0129r2(this, interfaceC0125q2);
    }
}
