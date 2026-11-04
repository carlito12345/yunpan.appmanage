package u7;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class r implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public int f15517a;

    /* renamed from: b, reason: collision with root package name */
    public int f15518b;

    /* renamed from: c, reason: collision with root package name */
    public int f15519c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ u f15520d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f15521e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ u f15522f;

    public r(u uVar, int i10) {
        this.f15521e = i10;
        this.f15522f = uVar;
        this.f15520d = uVar;
        this.f15517a = uVar.f15535e;
        this.f15518b = uVar.isEmpty() ? -1 : 0;
        this.f15519c = -1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f15518b >= 0;
    }

    @Override // java.util.Iterator
    public final Object next() {
        Object tVar;
        u uVar = this.f15520d;
        if (uVar.f15535e != this.f15517a) {
            throw new ConcurrentModificationException();
        }
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f15518b;
        this.f15519c = i10;
        switch (this.f15521e) {
            case 0:
                tVar = this.f15522f.i()[i10];
                break;
            case 1:
                tVar = new t(this.f15522f, i10);
                break;
            default:
                tVar = this.f15522f.j()[i10];
                break;
        }
        int i11 = this.f15518b + 1;
        if (i11 >= uVar.f15536f) {
            i11 = -1;
        }
        this.f15518b = i11;
        return tVar;
    }

    @Override // java.util.Iterator
    public final void remove() {
        u uVar = this.f15520d;
        if (uVar.f15535e != this.f15517a) {
            throw new ConcurrentModificationException();
        }
        a9.o.s("no calls to next() since the last call to remove()", this.f15519c >= 0);
        this.f15517a += 32;
        uVar.remove(uVar.i()[this.f15519c]);
        this.f15518b--;
        this.f15519c = -1;
    }
}
