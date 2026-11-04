package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;

/* renamed from: j$.util.stream.c2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0055c2 extends AbstractC0062e {

    /* renamed from: h, reason: collision with root package name */
    private final AbstractC0167z0 f9408h;

    @Override // j$.util.stream.AbstractC0062e, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        AbstractC0062e abstractC0062e = this.f9424d;
        if (abstractC0062e != null) {
            V1 v12 = (V1) ((C0055c2) abstractC0062e).c();
            v12.h((V1) ((C0055c2) this.f9425e).c());
            f(v12);
        }
        super.onCompletion(countedCompleter);
    }

    C0055c2(AbstractC0167z0 abstractC0167z0, AbstractC0167z0 abstractC0167z02, Spliterator spliterator) {
        super(abstractC0167z02, spliterator);
        this.f9408h = abstractC0167z0;
    }

    C0055c2(C0055c2 c0055c2, Spliterator spliterator) {
        super(c0055c2, spliterator);
        this.f9408h = c0055c2.f9408h;
    }

    @Override // j$.util.stream.AbstractC0062e
    protected final AbstractC0062e e(Spliterator spliterator) {
        return new C0055c2(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC0062e
    protected final Object a() {
        AbstractC0167z0 abstractC0167z0 = this.f9421a;
        V1 v1G0 = this.f9408h.G0();
        abstractC0167z0.H0(this.f9422b, v1G0);
        return v1G0;
    }
}
