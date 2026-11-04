package th;

import sh.f;
import sh.r;
import wh.m;
import wh.n;
import wh.o;
import wh.q;

/* loaded from: classes3.dex */
public abstract class c extends vh.a implements Comparable {
    @Override // vh.b, wh.k
    public Object c(o oVar) {
        if (oVar == n.f17926a || oVar == n.f17929d) {
            return ((r) this).f14626c;
        }
        if (oVar != n.f17927b) {
            return oVar == n.f17928c ? wh.b.NANOS : oVar == n.f17930e ? ((r) this).f14625b : oVar == n.f17931f ? sh.e.w(((r) this).f14624a.f14586a.m()) : oVar == n.f17932g ? ((r) this).f14624a.f14587b : super.c(oVar);
        }
        ((r) this).f14624a.f14586a.getClass();
        return e.f15102a;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        c cVar = (c) obj;
        int iM = p000if.a.m(m(), cVar.m());
        if (iM != 0) {
            return iM;
        }
        r rVar = (r) this;
        f fVar = rVar.f14624a;
        int i10 = fVar.f14587b.f14594d;
        r rVar2 = (r) cVar;
        f fVar2 = rVar2.f14624a;
        int iCompareTo = i10 - fVar2.f14587b.f14594d;
        if (iCompareTo != 0 || (iCompareTo = fVar.compareTo(fVar2)) != 0) {
            return iCompareTo;
        }
        int iCompareTo2 = rVar.f14626c.m().compareTo(rVar2.f14626c.m());
        if (iCompareTo2 != 0) {
            return iCompareTo2;
        }
        fVar.f14586a.getClass();
        e eVar = e.f15102a;
        fVar2.f14586a.getClass();
        eVar.getClass();
        return 0;
    }

    @Override // vh.b, wh.k
    public int i(m mVar) {
        if (!(mVar instanceof wh.a)) {
            return super.i(mVar);
        }
        int iOrdinal = ((wh.a) mVar).ordinal();
        if (iOrdinal != 28) {
            return iOrdinal != 29 ? ((r) this).f14624a.i(mVar) : ((r) this).f14625b.f14619a;
        }
        throw new q(org.bouncycastle.jcajce.provider.digest.a.f("Field too large for an int: ", mVar));
    }

    public final long m() {
        return ((((r) this).f14624a.f14586a.m() * 86400) + r1.f14587b.x()) - r0.f14625b.f14619a;
    }
}
