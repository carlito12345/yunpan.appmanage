package j$.util;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* renamed from: j$.util.y, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0176y implements PrimitiveIterator.OfLong {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ InterfaceC0177z f9610a;

    private /* synthetic */ C0176y(InterfaceC0177z interfaceC0177z) {
        this.f9610a = interfaceC0177z;
    }

    public static /* synthetic */ PrimitiveIterator.OfLong a(InterfaceC0177z interfaceC0177z) {
        if (interfaceC0177z == null) {
            return null;
        }
        return interfaceC0177z instanceof C0175x ? ((C0175x) interfaceC0177z).f9609a : new C0176y(interfaceC0177z);
    }

    public final /* synthetic */ boolean equals(Object obj) {
        InterfaceC0177z interfaceC0177z = this.f9610a;
        if (obj instanceof C0176y) {
            obj = ((C0176y) obj).f9610a;
        }
        return interfaceC0177z.equals(obj);
    }

    @Override // java.util.PrimitiveIterator
    public final /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        this.f9610a.forEachRemaining((Object) longConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfLong, java.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f9610a.forEachRemaining(consumer);
    }

    @Override // java.util.PrimitiveIterator.OfLong
    /* renamed from: forEachRemaining, reason: avoid collision after fix types in other method */
    public final /* synthetic */ void forEachRemaining2(LongConsumer longConsumer) {
        this.f9610a.forEachRemaining(longConsumer);
    }

    @Override // java.util.Iterator
    public final /* synthetic */ boolean hasNext() {
        return this.f9610a.hasNext();
    }

    public final /* synthetic */ int hashCode() {
        return this.f9610a.hashCode();
    }

    @Override // java.util.PrimitiveIterator.OfLong, java.util.Iterator
    public final /* synthetic */ Long next() {
        return this.f9610a.next();
    }

    @Override // java.util.PrimitiveIterator.OfLong, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f9610a.next();
    }

    @Override // java.util.PrimitiveIterator.OfLong
    public final /* synthetic */ long nextLong() {
        return this.f9610a.nextLong();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ void remove() {
        this.f9610a.remove();
    }
}
