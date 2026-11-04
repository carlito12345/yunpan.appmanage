package j$.util;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* renamed from: j$.util.t, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0171t implements InterfaceC0173v, InterfaceC0033j {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ PrimitiveIterator.OfInt f9606a;

    private /* synthetic */ C0171t(PrimitiveIterator.OfInt ofInt) {
        this.f9606a = ofInt;
    }

    public static /* synthetic */ InterfaceC0173v a(PrimitiveIterator.OfInt ofInt) {
        if (ofInt == null) {
            return null;
        }
        return ofInt instanceof C0172u ? ((C0172u) ofInt).f9607a : new C0171t(ofInt);
    }

    public final /* synthetic */ boolean equals(Object obj) {
        PrimitiveIterator.OfInt ofInt = this.f9606a;
        if (obj instanceof C0171t) {
            obj = ((C0171t) obj).f9606a;
        }
        return ofInt.equals(obj);
    }

    @Override // j$.util.A
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f9606a.forEachRemaining((PrimitiveIterator.OfInt) obj);
    }

    @Override // j$.util.InterfaceC0173v, java.util.Iterator, j$.util.InterfaceC0033j
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f9606a.forEachRemaining((Consumer<? super Integer>) consumer);
    }

    @Override // j$.util.InterfaceC0173v
    public final /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        this.f9606a.forEachRemaining(intConsumer);
    }

    @Override // java.util.Iterator
    public final /* synthetic */ boolean hasNext() {
        return this.f9606a.hasNext();
    }

    public final /* synthetic */ int hashCode() {
        return this.f9606a.hashCode();
    }

    @Override // j$.util.InterfaceC0173v, java.util.Iterator
    public final /* synthetic */ Integer next() {
        return this.f9606a.next();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f9606a.next();
    }

    @Override // j$.util.InterfaceC0173v
    public final /* synthetic */ int nextInt() {
        return this.f9606a.nextInt();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ void remove() {
        this.f9606a.remove();
    }
}
