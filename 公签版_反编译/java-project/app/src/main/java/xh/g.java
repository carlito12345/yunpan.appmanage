package xh;

import java.io.Serializable;
import java.util.Collections;
import java.util.List;
import sh.p;

/* loaded from: classes3.dex */
public final class g extends h implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final p f18512a;

    public g(p pVar) {
        this.f18512a = pVar;
    }

    @Override // xh.h
    public final p a(sh.d dVar) {
        return this.f18512a;
    }

    @Override // xh.h
    public final e b(sh.f fVar) {
        return null;
    }

    @Override // xh.h
    public final List c(sh.f fVar) {
        return Collections.singletonList(this.f18512a);
    }

    @Override // xh.h
    public final boolean d(sh.f fVar, p pVar) {
        return this.f18512a.equals(pVar);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        boolean z = obj instanceof g;
        p pVar = this.f18512a;
        if (z) {
            return pVar.equals(((g) obj).f18512a);
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return bVar.h() && pVar.equals(bVar.a(sh.d.f14576c));
    }

    public final int hashCode() {
        int i10 = this.f18512a.f14619a;
        return ((i10 + 31) ^ (i10 + 31)) ^ 1;
    }

    public final String toString() {
        return "FixedRules:" + this.f18512a;
    }
}
