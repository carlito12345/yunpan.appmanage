package j$.util.stream;

import j$.util.Objects;
import java.util.function.DoubleConsumer;

/* renamed from: j$.util.stream.w, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0151w extends AbstractC0090j2 {

    /* renamed from: b, reason: collision with root package name */
    boolean f9572b;

    /* renamed from: c, reason: collision with root package name */
    C0112o f9573c;

    /* renamed from: d, reason: collision with root package name */
    final /* synthetic */ C0156x f9574d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0151w(C0156x c0156x, InterfaceC0125q2 interfaceC0125q2) {
        super(interfaceC0125q2);
        this.f9574d = c0156x;
        InterfaceC0125q2 interfaceC0125q22 = this.f9474a;
        Objects.requireNonNull(interfaceC0125q22);
        this.f9573c = new C0112o(interfaceC0125q22);
    }

    @Override // j$.util.stream.AbstractC0090j2, j$.util.stream.InterfaceC0125q2
    public final void n(long j10) {
        this.f9474a.n(-1L);
    }

    @Override // j$.util.stream.InterfaceC0110n2, j$.util.stream.InterfaceC0125q2
    public final void accept(double d10) throws Exception {
        E e7 = (E) ((C0042a) this.f9574d.f9582t).apply(d10);
        if (e7 != null) {
            try {
                boolean z = this.f9572b;
                C0112o c0112o = this.f9573c;
                if (!z) {
                    e7.sequential().forEach(c0112o);
                } else {
                    j$.util.F fSpliterator = e7.sequential().spliterator();
                    while (!this.f9474a.p() && fSpliterator.tryAdvance((DoubleConsumer) c0112o)) {
                    }
                }
            } catch (Throwable th2) {
                try {
                    e7.close();
                } catch (Throwable th3) {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                }
                throw th2;
            }
        }
        if (e7 != null) {
            e7.close();
        }
    }

    @Override // j$.util.stream.AbstractC0090j2, j$.util.stream.InterfaceC0125q2
    public final boolean p() {
        this.f9572b = true;
        return this.f9474a.p();
    }
}
