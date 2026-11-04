package y;

import java.util.Iterator;

/* loaded from: classes.dex */
public final class d extends e implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public c f18523a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f18524b = true;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ f f18525c;

    public d(f fVar) {
        this.f18525c = fVar;
    }

    @Override // y.e
    public final void a(c cVar) {
        c cVar2 = this.f18523a;
        if (cVar == cVar2) {
            c cVar3 = cVar2.f18522d;
            this.f18523a = cVar3;
            this.f18524b = cVar3 == null;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f18524b) {
            return this.f18525c.f18526a != null;
        }
        c cVar = this.f18523a;
        return (cVar == null || cVar.f18521c == null) ? false : true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f18524b) {
            this.f18524b = false;
            this.f18523a = this.f18525c.f18526a;
        } else {
            c cVar = this.f18523a;
            this.f18523a = cVar != null ? cVar.f18521c : null;
        }
        return this.f18523a;
    }
}
