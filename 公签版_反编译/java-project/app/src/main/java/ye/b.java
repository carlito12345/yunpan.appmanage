package ye;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class b implements Iterator, ve.a {

    /* renamed from: a, reason: collision with root package name */
    public final int f19145a;

    /* renamed from: b, reason: collision with root package name */
    public final int f19146b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f19147c;

    /* renamed from: d, reason: collision with root package name */
    public int f19148d;

    public b(int i10, int i11, int i12) {
        this.f19145a = i12;
        this.f19146b = i11;
        boolean z = false;
        if (i12 <= 0 ? i10 >= i11 : i10 <= i11) {
            z = true;
        }
        this.f19147c = z;
        this.f19148d = z ? i10 : i11;
    }

    public final int a() {
        int i10 = this.f19148d;
        if (i10 != this.f19146b) {
            this.f19148d = this.f19145a + i10;
        } else {
            if (!this.f19147c) {
                throw new NoSuchElementException();
            }
            this.f19147c = false;
        }
        return i10;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f19147c;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return Integer.valueOf(a());
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
