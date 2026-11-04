package j$.util.stream;

import j$.util.Objects;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
final class Z extends AbstractC0095k2 {

    /* renamed from: b, reason: collision with root package name */
    boolean f9383b;

    /* renamed from: c, reason: collision with root package name */
    U f9384c;

    /* renamed from: d, reason: collision with root package name */
    final /* synthetic */ W f9385d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Z(W w10, InterfaceC0125q2 interfaceC0125q2) {
        super(interfaceC0125q2);
        this.f9385d = w10;
        InterfaceC0125q2 interfaceC0125q22 = this.f9485a;
        Objects.requireNonNull(interfaceC0125q22);
        this.f9384c = new U(interfaceC0125q22);
    }

    @Override // j$.util.stream.AbstractC0095k2, j$.util.stream.InterfaceC0125q2
    public final void n(long j10) {
        this.f9485a.n(-1L);
    }

    @Override // j$.util.stream.InterfaceC0115o2, j$.util.stream.InterfaceC0125q2
    public final void accept(int i10) throws Exception {
        IntStream intStream = (IntStream) ((R0) this.f9385d.f9368t).apply(i10);
        if (intStream != null) {
            try {
                boolean z = this.f9383b;
                U u3 = this.f9384c;
                if (!z) {
                    intStream.sequential().forEach(u3);
                } else {
                    j$.util.I iSpliterator = intStream.sequential().spliterator();
                    while (!this.f9485a.p() && iSpliterator.tryAdvance((IntConsumer) u3)) {
                    }
                }
            } catch (Throwable th2) {
                try {
                    intStream.close();
                } catch (Throwable th3) {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                }
                throw th2;
            }
        }
        if (intStream != null) {
            intStream.close();
        }
    }

    @Override // j$.util.stream.AbstractC0095k2, j$.util.stream.InterfaceC0125q2
    public final boolean p() {
        this.f9383b = true;
        return this.f9485a.p();
    }
}
