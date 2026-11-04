package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;

/* renamed from: j$.util.stream.w2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0154w2 extends AbstractC0093k0 {

    /* renamed from: s, reason: collision with root package name */
    final /* synthetic */ long f9579s;

    /* renamed from: t, reason: collision with root package name */
    final /* synthetic */ long f9580t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0154w2(AbstractC0103m0 abstractC0103m0, int i10, long j10, long j11) {
        super(abstractC0103m0, i10);
        this.f9579s = j10;
        this.f9580t = j11;
    }

    @Override // j$.util.stream.AbstractC0047b
    final Spliterator S0(AbstractC0047b abstractC0047b, Spliterator spliterator) {
        long j10;
        long j11;
        long jM0 = abstractC0047b.m0(spliterator);
        if (jM0 > 0 && spliterator.hasCharacteristics(16384)) {
            j$.util.L l = (j$.util.L) abstractC0047b.J0(spliterator);
            long j12 = this.f9579s;
            return new C0160x3(l, j12, AbstractC0167z0.Z(j12, this.f9580t));
        }
        if (!EnumC0071f3.ORDERED.n(abstractC0047b.t0())) {
            j$.util.L l8 = (j$.util.L) abstractC0047b.J0(spliterator);
            long j13 = this.f9579s;
            long j14 = this.f9580t;
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
            return new D3(l8, j10, j11);
        }
        return ((L0) new A2(this, abstractC0047b, spliterator, new C0068f0(8), this.f9579s, this.f9580t).invoke()).spliterator();
    }

    @Override // j$.util.stream.AbstractC0047b
    final L0 R0(Spliterator spliterator, AbstractC0167z0 abstractC0167z0, IntFunction intFunction) {
        long jMin;
        long j10;
        long jM0 = abstractC0167z0.m0(spliterator);
        if (jM0 > 0 && spliterator.hasCharacteristics(16384)) {
            return AbstractC0167z0.f0(abstractC0167z0, AbstractC0167z0.a0(abstractC0167z0.s0(), spliterator, this.f9579s, this.f9580t), true);
        }
        if (!EnumC0071f3.ORDERED.n(abstractC0167z0.t0())) {
            j$.util.L l = (j$.util.L) abstractC0167z0.J0(spliterator);
            long j11 = this.f9579s;
            long j12 = this.f9580t;
            if (j11 <= jM0) {
                jMin = j12 >= 0 ? Math.min(j12, jM0 - j11) : jM0 - j11;
                j10 = 0;
            } else {
                jMin = j12;
                j10 = j11;
            }
            return AbstractC0167z0.f0(this, new D3(l, j10, jMin), true);
        }
        return (L0) new A2(this, abstractC0167z0, spliterator, intFunction, this.f9579s, this.f9580t).invoke();
    }

    @Override // j$.util.stream.AbstractC0047b
    final InterfaceC0125q2 U0(int i10, InterfaceC0125q2 interfaceC0125q2) {
        return new C0149v2(this, interfaceC0125q2);
    }
}
