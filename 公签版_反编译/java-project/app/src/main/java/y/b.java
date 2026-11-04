package y;

import java.util.Iterator;

/* loaded from: classes.dex */
public final class b extends e implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public c f18516a;

    /* renamed from: b, reason: collision with root package name */
    public c f18517b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f18518c;

    public b(c cVar, c cVar2, int i10) {
        this.f18518c = i10;
        this.f18516a = cVar2;
        this.f18517b = cVar;
    }

    @Override // y.e
    public final void a(c cVar) {
        c cVar2;
        c cVarB = null;
        if (this.f18516a == cVar && cVar == this.f18517b) {
            this.f18517b = null;
            this.f18516a = null;
        }
        c cVar3 = this.f18516a;
        if (cVar3 == cVar) {
            switch (this.f18518c) {
                case 0:
                    cVar2 = cVar3.f18522d;
                    break;
                default:
                    cVar2 = cVar3.f18521c;
                    break;
            }
            this.f18516a = cVar2;
        }
        c cVar4 = this.f18517b;
        if (cVar4 == cVar) {
            c cVar5 = this.f18516a;
            if (cVar4 != cVar5 && cVar5 != null) {
                cVarB = b(cVar4);
            }
            this.f18517b = cVarB;
        }
    }

    public final c b(c cVar) {
        switch (this.f18518c) {
            case 0:
                return cVar.f18521c;
            default:
                return cVar.f18522d;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f18517b != null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        c cVar = this.f18517b;
        c cVar2 = this.f18516a;
        this.f18517b = (cVar == cVar2 || cVar2 == null) ? null : b(cVar);
        return cVar;
    }
}
