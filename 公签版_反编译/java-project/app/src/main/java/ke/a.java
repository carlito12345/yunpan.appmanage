package ke;

import java.util.AbstractList;
import java.util.ConcurrentModificationException;
import java.util.ListIterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class a implements ListIterator, ve.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10234a = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f10235b;

    /* renamed from: c, reason: collision with root package name */
    public int f10236c;

    /* renamed from: d, reason: collision with root package name */
    public int f10237d;

    /* renamed from: e, reason: collision with root package name */
    public final je.e f10238e;

    public a(c cVar, int i10) {
        ue.d.e(cVar, "list");
        this.f10238e = cVar;
        this.f10235b = i10;
        this.f10236c = -1;
        this.f10237d = ((AbstractList) cVar).modCount;
    }

    public void a() {
        if (((AbstractList) ((b) this.f10238e).f10243e).modCount != this.f10237d) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        switch (this.f10234a) {
            case 0:
                a();
                int i10 = this.f10235b;
                this.f10235b = i10 + 1;
                b bVar = (b) this.f10238e;
                bVar.add(i10, obj);
                this.f10236c = -1;
                this.f10237d = ((AbstractList) bVar).modCount;
                break;
            default:
                b();
                int i11 = this.f10235b;
                this.f10235b = i11 + 1;
                c cVar = (c) this.f10238e;
                cVar.add(i11, obj);
                this.f10236c = -1;
                this.f10237d = ((AbstractList) cVar).modCount;
                break;
        }
    }

    public void b() {
        if (((AbstractList) ((c) this.f10238e)).modCount != this.f10237d) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        switch (this.f10234a) {
            case 0:
                if (this.f10235b < ((b) this.f10238e).f10241c) {
                }
                break;
            default:
                if (this.f10235b < ((c) this.f10238e).f10246b) {
                }
                break;
        }
        return false;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        switch (this.f10234a) {
            case 0:
                if (this.f10235b > 0) {
                }
                break;
            default:
                if (this.f10235b > 0) {
                }
                break;
        }
        return false;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        switch (this.f10234a) {
            case 0:
                a();
                int i10 = this.f10235b;
                b bVar = (b) this.f10238e;
                if (i10 >= bVar.f10241c) {
                    throw new NoSuchElementException();
                }
                this.f10235b = i10 + 1;
                this.f10236c = i10;
                return bVar.f10239a[bVar.f10240b + i10];
            default:
                b();
                int i11 = this.f10235b;
                c cVar = (c) this.f10238e;
                if (i11 >= cVar.f10246b) {
                    throw new NoSuchElementException();
                }
                this.f10235b = i11 + 1;
                this.f10236c = i11;
                return cVar.f10245a[i11];
        }
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        switch (this.f10234a) {
        }
        return this.f10235b;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        switch (this.f10234a) {
            case 0:
                a();
                int i10 = this.f10235b;
                if (i10 <= 0) {
                    throw new NoSuchElementException();
                }
                int i11 = i10 - 1;
                this.f10235b = i11;
                this.f10236c = i11;
                b bVar = (b) this.f10238e;
                return bVar.f10239a[bVar.f10240b + i11];
            default:
                b();
                int i12 = this.f10235b;
                if (i12 <= 0) {
                    throw new NoSuchElementException();
                }
                int i13 = i12 - 1;
                this.f10235b = i13;
                this.f10236c = i13;
                return ((c) this.f10238e).f10245a[i13];
        }
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        switch (this.f10234a) {
        }
        return this.f10235b - 1;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        switch (this.f10234a) {
            case 0:
                a();
                int i10 = this.f10236c;
                if (i10 == -1) {
                    throw new IllegalStateException("Call next() or previous() before removing element from the iterator.");
                }
                b bVar = (b) this.f10238e;
                bVar.b(i10);
                this.f10235b = this.f10236c;
                this.f10236c = -1;
                this.f10237d = ((AbstractList) bVar).modCount;
                return;
            default:
                b();
                int i11 = this.f10236c;
                if (i11 == -1) {
                    throw new IllegalStateException("Call next() or previous() before removing element from the iterator.");
                }
                c cVar = (c) this.f10238e;
                cVar.b(i11);
                this.f10235b = this.f10236c;
                this.f10236c = -1;
                this.f10237d = ((AbstractList) cVar).modCount;
                return;
        }
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        switch (this.f10234a) {
            case 0:
                a();
                int i10 = this.f10236c;
                if (i10 == -1) {
                    throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.");
                }
                ((b) this.f10238e).set(i10, obj);
                return;
            default:
                b();
                int i11 = this.f10236c;
                if (i11 == -1) {
                    throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.");
                }
                ((c) this.f10238e).set(i11, obj);
                return;
        }
    }

    public a(b bVar, int i10) {
        ue.d.e(bVar, "list");
        this.f10238e = bVar;
        this.f10235b = i10;
        this.f10236c = -1;
        this.f10237d = ((AbstractList) bVar).modCount;
    }
}
