package j$.util;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* renamed from: j$.util.u, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0172u implements PrimitiveIterator.OfInt {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ InterfaceC0173v f9607a;

    private /* synthetic */ C0172u(InterfaceC0173v interfaceC0173v) {
        this.f9607a = interfaceC0173v;
    }

    public static /* synthetic */ PrimitiveIterator.OfInt a(InterfaceC0173v interfaceC0173v) {
        if (interfaceC0173v == null) {
            return null;
        }
        return interfaceC0173v instanceof C0171t ? ((C0171t) interfaceC0173v).f9606a : new C0172u(interfaceC0173v);
    }

    public final /* synthetic */ boolean equals(Object obj) {
        InterfaceC0173v interfaceC0173v = this.f9607a;
        if (obj instanceof C0172u) {
            obj = ((C0172u) obj).f9607a;
        }
        return interfaceC0173v.equals(obj);
    }

    @Override // java.util.PrimitiveIterator
    public final /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        this.f9607a.forEachRemaining((Object) intConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfInt, java.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f9607a.forEachRemaining(consumer);
    }

    @Override // java.util.PrimitiveIterator.OfInt
    /* renamed from: forEachRemaining, reason: avoid collision after fix types in other method */
    public final /* synthetic */ void forEachRemaining2(IntConsumer intConsumer) {
        this.f9607a.forEachRemaining(intConsumer);
    }

    @Override // java.util.Iterator
    public final /* synthetic */ boolean hasNext() {
        return this.f9607a.hasNext();
    }

    public final /* synthetic */ int hashCode() {
        return this.f9607a.hashCode();
    }

    @Override // java.util.PrimitiveIterator.OfInt, java.util.Iterator
    public final /* synthetic */ Integer next() {
        return this.f9607a.next();
    }

    @Override // java.util.PrimitiveIterator.OfInt, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f9607a.next();
    }

    @Override // java.util.PrimitiveIterator.OfInt
    public final /* synthetic */ int nextInt() {
        return this.f9607a.nextInt();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ void remove() {
        this.f9607a.remove();
    }
}
