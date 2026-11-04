package j$.util.concurrent;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
final class d extends AbstractC0026a implements Iterator {
    d(l[] lVarArr, int i10, int i11, ConcurrentHashMap concurrentHashMap) {
        super(lVarArr, i10, i11, concurrentHashMap);
    }

    @Override // java.util.Iterator
    public final Object next() {
        l lVar = this.f9108b;
        if (lVar == null) {
            throw new NoSuchElementException();
        }
        Object obj = lVar.f9100b;
        Object obj2 = lVar.f9101c;
        this.f9088j = lVar;
        a();
        return new k(obj, obj2, this.f9087i);
    }
}
