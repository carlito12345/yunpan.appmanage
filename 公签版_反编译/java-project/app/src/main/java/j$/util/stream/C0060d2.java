package j$.util.stream;

import j$.util.Objects;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.d2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0060d2 extends AbstractC0105m2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f9413b = 1;

    /* renamed from: c, reason: collision with root package name */
    boolean f9414c;

    /* renamed from: d, reason: collision with root package name */
    Object f9415d;

    /* renamed from: e, reason: collision with root package name */
    final /* synthetic */ AbstractC0047b f9416e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0060d2(W w10, InterfaceC0125q2 interfaceC0125q2) {
        super(interfaceC0125q2);
        this.f9416e = w10;
        InterfaceC0125q2 interfaceC0125q22 = this.f9501a;
        Objects.requireNonNull(interfaceC0125q22);
        this.f9415d = new U(interfaceC0125q22);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0060d2(C0156x c0156x, InterfaceC0125q2 interfaceC0125q2) {
        super(interfaceC0125q2);
        this.f9416e = c0156x;
        InterfaceC0125q2 interfaceC0125q22 = this.f9501a;
        Objects.requireNonNull(interfaceC0125q22);
        this.f9415d = new C0112o(interfaceC0125q22);
    }

    @Override // j$.util.stream.AbstractC0105m2, j$.util.stream.InterfaceC0125q2
    public final void n(long j10) {
        switch (this.f9413b) {
            case 0:
                this.f9501a.n(-1L);
                break;
            case 1:
                this.f9501a.n(-1L);
                break;
            default:
                this.f9501a.n(-1L);
                break;
        }
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void q(Object obj) throws Exception {
        switch (this.f9413b) {
            case 0:
                LongStream longStream = (LongStream) ((C0042a) ((Y) this.f9416e).f9374t).apply((C0042a) obj);
                if (longStream != null) {
                    try {
                        boolean z = this.f9414c;
                        C0063e0 c0063e0 = (C0063e0) this.f9415d;
                        if (!z) {
                            longStream.sequential().forEach(c0063e0);
                        } else {
                            j$.util.L lSpliterator = longStream.sequential().spliterator();
                            while (!this.f9501a.p() && lSpliterator.tryAdvance((LongConsumer) c0063e0)) {
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
                    return;
                }
                return;
            case 1:
                IntStream intStream = (IntStream) ((C0042a) ((W) this.f9416e).f9368t).apply((C0042a) obj);
                if (intStream != null) {
                    try {
                        boolean z4 = this.f9414c;
                        U u3 = (U) this.f9415d;
                        if (!z4) {
                            intStream.sequential().forEach(u3);
                        } else {
                            j$.util.I iSpliterator = intStream.sequential().spliterator();
                            while (!this.f9501a.p() && iSpliterator.tryAdvance((IntConsumer) u3)) {
                            }
                        }
                    } catch (Throwable th4) {
                        try {
                            intStream.close();
                        } catch (Throwable th5) {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th4, th5);
                        }
                        throw th4;
                    }
                }
                if (intStream != null) {
                    intStream.close();
                    return;
                }
                return;
            default:
                E e7 = (E) ((C0042a) ((C0156x) this.f9416e).f9582t).apply((C0042a) obj);
                if (e7 != null) {
                    try {
                        boolean z10 = this.f9414c;
                        C0112o c0112o = (C0112o) this.f9415d;
                        if (!z10) {
                            e7.sequential().forEach(c0112o);
                        } else {
                            j$.util.F fSpliterator = e7.sequential().spliterator();
                            while (!this.f9501a.p() && fSpliterator.tryAdvance((DoubleConsumer) c0112o)) {
                            }
                        }
                    } catch (Throwable th6) {
                        try {
                            e7.close();
                        } catch (Throwable th7) {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th6, th7);
                        }
                        throw th6;
                    }
                }
                if (e7 != null) {
                    e7.close();
                    return;
                }
                return;
        }
    }

    @Override // j$.util.stream.AbstractC0105m2, j$.util.stream.InterfaceC0125q2
    public final boolean p() {
        switch (this.f9413b) {
            case 0:
                this.f9414c = true;
                break;
            case 1:
                this.f9414c = true;
                break;
            default:
                this.f9414c = true;
                break;
        }
        return this.f9501a.p();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0060d2(Y y6, InterfaceC0125q2 interfaceC0125q2) {
        super(interfaceC0125q2);
        this.f9416e = y6;
        InterfaceC0125q2 interfaceC0125q22 = this.f9501a;
        Objects.requireNonNull(interfaceC0125q22);
        this.f9415d = new C0063e0(interfaceC0125q22);
    }
}
