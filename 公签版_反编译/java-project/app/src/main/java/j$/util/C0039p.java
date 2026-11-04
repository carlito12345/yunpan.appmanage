package j$.util;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* renamed from: j$.util.p, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0039p implements r, InterfaceC0033j {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ PrimitiveIterator.OfDouble f9176a;

    private /* synthetic */ C0039p(PrimitiveIterator.OfDouble ofDouble) {
        this.f9176a = ofDouble;
    }

    public static /* synthetic */ r a(PrimitiveIterator.OfDouble ofDouble) {
        if (ofDouble == null) {
            return null;
        }
        return ofDouble instanceof C0040q ? ((C0040q) ofDouble).f9177a : new C0039p(ofDouble);
    }

    public final /* synthetic */ boolean equals(Object obj) {
        PrimitiveIterator.OfDouble ofDouble = this.f9176a;
        if (obj instanceof C0039p) {
            obj = ((C0039p) obj).f9176a;
        }
        return ofDouble.equals(obj);
    }

    @Override // j$.util.A
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f9176a.forEachRemaining((PrimitiveIterator.OfDouble) obj);
    }

    @Override // j$.util.r, java.util.Iterator, j$.util.InterfaceC0033j
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f9176a.forEachRemaining((Consumer<? super Double>) consumer);
    }

    @Override // j$.util.r
    public final /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        this.f9176a.forEachRemaining(doubleConsumer);
    }

    @Override // java.util.Iterator
    public final /* synthetic */ boolean hasNext() {
        return this.f9176a.hasNext();
    }

    public final /* synthetic */ int hashCode() {
        return this.f9176a.hashCode();
    }

    @Override // j$.util.r, java.util.Iterator
    public final /* synthetic */ Double next() {
        return this.f9176a.next();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f9176a.next();
    }

    @Override // j$.util.r
    public final /* synthetic */ double nextDouble() {
        return this.f9176a.nextDouble();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ void remove() {
        this.f9176a.remove();
    }
}
