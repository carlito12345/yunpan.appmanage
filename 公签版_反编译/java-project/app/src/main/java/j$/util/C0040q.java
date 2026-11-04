package j$.util;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* renamed from: j$.util.q, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0040q implements PrimitiveIterator.OfDouble {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ r f9177a;

    private /* synthetic */ C0040q(r rVar) {
        this.f9177a = rVar;
    }

    public static /* synthetic */ PrimitiveIterator.OfDouble a(r rVar) {
        if (rVar == null) {
            return null;
        }
        return rVar instanceof C0039p ? ((C0039p) rVar).f9176a : new C0040q(rVar);
    }

    public final /* synthetic */ boolean equals(Object obj) {
        r rVar = this.f9177a;
        if (obj instanceof C0040q) {
            obj = ((C0040q) obj).f9177a;
        }
        return rVar.equals(obj);
    }

    @Override // java.util.PrimitiveIterator
    public final /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        this.f9177a.forEachRemaining((Object) doubleConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfDouble, java.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f9177a.forEachRemaining(consumer);
    }

    @Override // java.util.PrimitiveIterator.OfDouble
    /* renamed from: forEachRemaining, reason: avoid collision after fix types in other method */
    public final /* synthetic */ void forEachRemaining2(DoubleConsumer doubleConsumer) {
        this.f9177a.forEachRemaining(doubleConsumer);
    }

    @Override // java.util.Iterator
    public final /* synthetic */ boolean hasNext() {
        return this.f9177a.hasNext();
    }

    public final /* synthetic */ int hashCode() {
        return this.f9177a.hashCode();
    }

    @Override // java.util.PrimitiveIterator.OfDouble, java.util.Iterator
    public final /* synthetic */ Double next() {
        return this.f9177a.next();
    }

    @Override // java.util.PrimitiveIterator.OfDouble, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f9177a.next();
    }

    @Override // java.util.PrimitiveIterator.OfDouble
    public final /* synthetic */ double nextDouble() {
        return this.f9177a.nextDouble();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ void remove() {
        this.f9177a.remove();
    }
}
