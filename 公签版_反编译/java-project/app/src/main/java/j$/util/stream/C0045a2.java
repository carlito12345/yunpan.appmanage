package j$.util.stream;

/* renamed from: j$.util.stream.a2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0045a2 extends AbstractC0050b2 {
    @Override // j$.util.stream.W1, java.util.function.Supplier
    public final Object get() {
        return Long.valueOf(this.f9403b);
    }

    C0045a2() {
    }

    @Override // j$.util.stream.V1
    public final void h(V1 v12) {
        this.f9403b += ((AbstractC0050b2) v12).f9403b;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f9403b++;
    }
}
