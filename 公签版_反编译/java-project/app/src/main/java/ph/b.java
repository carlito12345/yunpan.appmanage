package ph;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes3.dex */
public final class b implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public int f12703a;

    /* renamed from: b, reason: collision with root package name */
    public int f12704b = 0;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ c f12705c;

    public b(c cVar) {
        this.f12705c = cVar;
        this.f12703a = cVar.f12706a;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        c cVar = this.f12705c;
        if (cVar.f12706a != this.f12703a) {
            throw new ConcurrentModificationException("Use Iterator#remove() instead to remove attributes while iterating.");
        }
        while (true) {
            int i10 = this.f12704b;
            if (i10 >= cVar.f12706a || !c.i(cVar.f12707b[i10])) {
                break;
            }
            this.f12704b++;
        }
        return this.f12704b < cVar.f12706a;
    }

    @Override // java.util.Iterator
    public final Object next() {
        c cVar = this.f12705c;
        int i10 = cVar.f12706a;
        if (i10 != this.f12703a) {
            throw new ConcurrentModificationException("Use Iterator#remove() instead to remove attributes while iterating.");
        }
        int i11 = this.f12704b;
        if (i11 >= i10) {
            throw new NoSuchElementException();
        }
        a aVar = new a(cVar.f12707b[i11], (String) cVar.f12708c[this.f12704b], cVar);
        this.f12704b++;
        return aVar;
    }

    @Override // java.util.Iterator
    public final void remove() {
        int i10 = this.f12704b - 1;
        this.f12704b = i10;
        this.f12705c.k(i10);
        this.f12703a--;
    }
}
