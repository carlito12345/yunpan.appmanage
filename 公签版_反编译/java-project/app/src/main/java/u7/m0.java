package u7;

import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class m0 extends o1 {

    /* renamed from: a, reason: collision with root package name */
    public final Object f15500a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f15501b;

    public m0(Object obj) {
        this.f15500a = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.f15501b;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f15501b) {
            throw new NoSuchElementException();
        }
        this.f15501b = true;
        return this.f15500a;
    }
}
