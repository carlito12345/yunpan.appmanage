package j$.util.concurrent;

import java.util.Enumeration;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
final class h extends AbstractC0026a implements Iterator, Enumeration {

    /* renamed from: k, reason: collision with root package name */
    public final /* synthetic */ int f9093k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ h(l[] lVarArr, int i10, int i11, ConcurrentHashMap concurrentHashMap, int i12) {
        super(lVarArr, i10, i11, concurrentHashMap);
        this.f9093k = i12;
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.f9093k) {
            case 0:
                l lVar = this.f9108b;
                if (lVar == null) {
                    throw new NoSuchElementException();
                }
                this.f9088j = lVar;
                a();
                return lVar.f9100b;
            default:
                l lVar2 = this.f9108b;
                if (lVar2 == null) {
                    throw new NoSuchElementException();
                }
                Object obj = lVar2.f9101c;
                this.f9088j = lVar2;
                a();
                return obj;
        }
    }

    @Override // java.util.Enumeration
    public final Object nextElement() {
        switch (this.f9093k) {
        }
        return next();
    }
}
