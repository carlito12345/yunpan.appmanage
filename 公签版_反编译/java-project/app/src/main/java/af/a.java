package af;

import ie.e;
import java.util.Iterator;
import java.util.NoSuchElementException;
import le.b;
import s1.g;
import ue.d;

/* loaded from: classes.dex */
public final class a implements Iterator, le.a, ve.a {

    /* renamed from: a, reason: collision with root package name */
    public int f640a;

    /* renamed from: b, reason: collision with root package name */
    public Object f641b;

    /* renamed from: c, reason: collision with root package name */
    public Iterator f642c;

    /* renamed from: d, reason: collision with root package name */
    public le.a f643d;

    @Override // le.a
    public final void a(Object obj) throws Throwable {
        g.f0(obj);
        this.f640a = 4;
    }

    public final RuntimeException b() {
        int i10 = this.f640a;
        if (i10 == 4) {
            return new NoSuchElementException();
        }
        if (i10 == 5) {
            return new IllegalStateException("Iterator has failed.");
        }
        return new IllegalStateException("Unexpected state of the iterator: " + this.f640a);
    }

    @Override // le.a
    public final b getContext() {
        return b.f10713a;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        while (true) {
            int i10 = this.f640a;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2 || i10 == 3) {
                        return true;
                    }
                    if (i10 == 4) {
                        return false;
                    }
                    throw b();
                }
                Iterator it = this.f642c;
                d.b(it);
                if (it.hasNext()) {
                    this.f640a = 2;
                    return true;
                }
                this.f642c = null;
            }
            this.f640a = 5;
            le.a aVar = this.f643d;
            d.b(aVar);
            this.f643d = null;
            aVar.a(e.f8690c);
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i10 = this.f640a;
        if (i10 == 0 || i10 == 1) {
            if (hasNext()) {
                return next();
            }
            throw new NoSuchElementException();
        }
        if (i10 == 2) {
            this.f640a = 1;
            Iterator it = this.f642c;
            d.b(it);
            return it.next();
        }
        if (i10 != 3) {
            throw b();
        }
        this.f640a = 0;
        Object obj = this.f641b;
        this.f641b = null;
        return obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
