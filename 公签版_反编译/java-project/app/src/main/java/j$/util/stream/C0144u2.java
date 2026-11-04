package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;

/* renamed from: j$.util.stream.u2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0144u2 extends AbstractC0048b0 {

    /* renamed from: s, reason: collision with root package name */
    final /* synthetic */ long f9563s;

    /* renamed from: t, reason: collision with root package name */
    final /* synthetic */ long f9564t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0144u2(AbstractC0058d0 abstractC0058d0, int i10, long j10, long j11) {
        super(abstractC0058d0, i10);
        this.f9563s = j10;
        this.f9564t = j11;
    }

    @Override // j$.util.stream.AbstractC0047b
    final Spliterator S0(AbstractC0047b abstractC0047b, Spliterator spliterator) {
        long j10;
        long j11;
        long jM0 = abstractC0047b.m0(spliterator);
        if (jM0 > 0 && spliterator.hasCharacteristics(16384)) {
            j$.util.I i10 = (j$.util.I) abstractC0047b.J0(spliterator);
            long j12 = this.f9563s;
            return new C0155w3(i10, j12, AbstractC0167z0.Z(j12, this.f9564t));
        }
        if (!EnumC0071f3.ORDERED.n(abstractC0047b.t0())) {
            j$.util.I i11 = (j$.util.I) abstractC0047b.J0(spliterator);
            long j13 = this.f9563s;
            long j14 = this.f9564t;
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
            return new C3(i11, j10, j11);
        }
        return ((L0) new A2(this, abstractC0047b, spliterator, new C0068f0(7), this.f9563s, this.f9564t).invoke()).spliterator();
    }

    @Override // j$.util.stream.AbstractC0047b
    final L0 R0(Spliterator spliterator, AbstractC0167z0 abstractC0167z0, IntFunction intFunction) {
        long jMin;
        long j10;
        long jM0 = abstractC0167z0.m0(spliterator);
        if (jM0 > 0 && spliterator.hasCharacteristics(16384)) {
            return AbstractC0167z0.e0(abstractC0167z0, AbstractC0167z0.a0(abstractC0167z0.s0(), spliterator, this.f9563s, this.f9564t), true);
        }
        if (!EnumC0071f3.ORDERED.n(abstractC0167z0.t0())) {
            j$.util.I i10 = (j$.util.I) abstractC0167z0.J0(spliterator);
            long j11 = this.f9563s;
            long j12 = this.f9564t;
            if (j11 <= jM0) {
                jMin = j12 >= 0 ? Math.min(j12, jM0 - j11) : jM0 - j11;
                j10 = 0;
            } else {
                jMin = j12;
                j10 = j11;
            }
            return AbstractC0167z0.e0(this, new C3(i10, j10, jMin), true);
        }
        return (L0) new A2(this, abstractC0167z0, spliterator, intFunction, this.f9563s, this.f9564t).invoke();
    }

    @Override // j$.util.stream.AbstractC0047b
    final InterfaceC0125q2 U0(int i10, InterfaceC0125q2 interfaceC0125q2) {
        return new C0139t2(this, interfaceC0125q2);
    }
}
