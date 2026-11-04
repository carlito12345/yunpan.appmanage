package je;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public class a implements Iterator, ve.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9856a = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f9857b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f9858c;

    public a(Object[] objArr) {
        ue.d.e(objArr, "array");
        this.f9858c = objArr;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.f9856a) {
            case 0:
                if (this.f9857b < ((d) this.f9858c).a()) {
                }
                break;
            default:
                if (this.f9857b < ((Object[]) this.f9858c).length) {
                }
                break;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.f9856a) {
            case 0:
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                int i10 = this.f9857b;
                this.f9857b = i10 + 1;
                return ((d) this.f9858c).get(i10);
            default:
                try {
                    Object[] objArr = (Object[]) this.f9858c;
                    int i11 = this.f9857b;
                    this.f9857b = i11 + 1;
                    return objArr[i11];
                } catch (ArrayIndexOutOfBoundsException e7) {
                    this.f9857b--;
                    throw new NoSuchElementException(e7.getMessage());
                }
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.f9856a) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public a(d dVar) {
        this.f9858c = dVar;
    }
}
