package j$.util;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* renamed from: j$.util.x, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0175x implements InterfaceC0177z, InterfaceC0033j {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ PrimitiveIterator.OfLong f9609a;

    private /* synthetic */ C0175x(PrimitiveIterator.OfLong ofLong) {
        this.f9609a = ofLong;
    }

    public static /* synthetic */ InterfaceC0177z a(PrimitiveIterator.OfLong ofLong) {
        if (ofLong == null) {
            return null;
        }
        return ofLong instanceof C0176y ? ((C0176y) ofLong).f9610a : new C0175x(ofLong);
    }

    public final /* synthetic */ boolean equals(Object obj) {
        PrimitiveIterator.OfLong ofLong = this.f9609a;
        if (obj instanceof C0175x) {
            obj = ((C0175x) obj).f9609a;
        }
        return ofLong.equals(obj);
    }

    @Override // j$.util.A
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f9609a.forEachRemaining((PrimitiveIterator.OfLong) obj);
    }

    @Override // j$.util.InterfaceC0177z, java.util.Iterator, j$.util.InterfaceC0033j
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f9609a.forEachRemaining((Consumer<? super Long>) consumer);
    }

    @Override // j$.util.InterfaceC0177z
    public final /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        this.f9609a.forEachRemaining(longConsumer);
    }

    @Override // java.util.Iterator
    public final /* synthetic */ boolean hasNext() {
        return this.f9609a.hasNext();
    }

    public final /* synthetic */ int hashCode() {
        return this.f9609a.hashCode();
    }

    @Override // j$.util.InterfaceC0177z, java.util.Iterator
    public final /* synthetic */ Long next() {
        return this.f9609a.next();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f9609a.next();
    }

    @Override // j$.util.InterfaceC0177z
    public final /* synthetic */ long nextLong() {
        return this.f9609a.nextLong();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ void remove() {
        this.f9609a.remove();
    }
}
