package a0;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class a implements Iterator, ve.a {

    /* renamed from: a, reason: collision with root package name */
    public int f6a;

    /* renamed from: b, reason: collision with root package name */
    public int f7b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f8c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f9d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f10e;

    public a(int i10) {
        this.f6a = i10;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f7b < this.f6a;
    }

    @Override // java.util.Iterator
    public final Object next() {
        Object objF;
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f7b;
        switch (this.f9d) {
            case 0:
                objF = ((e) this.f10e).f(i10);
                break;
            case 1:
                objF = ((e) this.f10e).j(i10);
                break;
            default:
                objF = ((f) this.f10e).f21b[i10];
                break;
        }
        this.f7b++;
        this.f8c = true;
        return objF;
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f8c) {
            throw new IllegalStateException("Call next() before removing an element.");
        }
        int i10 = this.f7b - 1;
        this.f7b = i10;
        switch (this.f9d) {
            case 0:
                ((e) this.f10e).h(i10);
                break;
            case 1:
                ((e) this.f10e).h(i10);
                break;
            default:
                ((f) this.f10e).a(i10);
                break;
        }
        this.f6a--;
        this.f8c = false;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public a(f fVar) {
        this(fVar.f22c);
        this.f9d = 2;
        this.f10e = fVar;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public a(e eVar, int i10) {
        this(eVar.f65c);
        this.f9d = i10;
        switch (i10) {
            case 1:
                this.f10e = eVar;
                this(eVar.f65c);
                break;
            default:
                this.f10e = eVar;
                break;
        }
    }
}
