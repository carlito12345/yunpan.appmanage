package j$.util.stream;

import j$.util.Objects;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.i0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0083i0 extends AbstractC0100l2 {

    /* renamed from: b, reason: collision with root package name */
    boolean f9469b;

    /* renamed from: c, reason: collision with root package name */
    C0063e0 f9470c;

    /* renamed from: d, reason: collision with root package name */
    final /* synthetic */ Y f9471d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0083i0(Y y6, InterfaceC0125q2 interfaceC0125q2) {
        super(interfaceC0125q2);
        this.f9471d = y6;
        InterfaceC0125q2 interfaceC0125q22 = this.f9495a;
        Objects.requireNonNull(interfaceC0125q22);
        this.f9470c = new C0063e0(interfaceC0125q22);
    }

    @Override // j$.util.stream.AbstractC0100l2, j$.util.stream.InterfaceC0125q2
    public final void n(long j10) {
        this.f9495a.n(-1L);
    }

    @Override // j$.util.stream.InterfaceC0120p2, java.util.function.LongConsumer
    public final void accept(long j10) throws Exception {
        LongStream longStream = (LongStream) ((C0042a) this.f9471d.f9374t).apply(j10);
        if (longStream != null) {
            try {
                boolean z = this.f9469b;
                C0063e0 c0063e0 = this.f9470c;
                if (!z) {
                    longStream.sequential().forEach(c0063e0);
                } else {
                    j$.util.L lSpliterator = longStream.sequential().spliterator();
                    while (!this.f9495a.p() && lSpliterator.tryAdvance((LongConsumer) c0063e0)) {
                    }
                }
            } catch (Throwable th2) {
                try {
                    longStream.close();
                } catch (Throwable th3) {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                }
                throw th2;
            }
        }
        if (longStream != null) {
            longStream.close();
        }
    }

    @Override // j$.util.stream.AbstractC0100l2, j$.util.stream.InterfaceC0125q2
    public final boolean p() {
        this.f9469b = true;
        return this.f9495a.p();
    }
}
