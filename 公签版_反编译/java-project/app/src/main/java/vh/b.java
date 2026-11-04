package vh;

import wh.k;
import wh.m;
import wh.n;
import wh.o;
import wh.q;
import wh.r;

/* loaded from: classes3.dex */
public abstract class b implements k {
    @Override // wh.k
    public Object c(o oVar) {
        if (oVar == n.f17926a || oVar == n.f17927b || oVar == n.f17928c) {
            return null;
        }
        return oVar.b(this);
    }

    @Override // wh.k
    public r f(m mVar) {
        if (!(mVar instanceof wh.a)) {
            return mVar.c(this);
        }
        if (d(mVar)) {
            return ((wh.a) mVar).f17909b;
        }
        throw new q(org.bouncycastle.jcajce.provider.digest.a.f("Unsupported field: ", mVar));
    }

    @Override // wh.k
    public int i(m mVar) {
        return f(mVar).a(b(mVar), mVar);
    }
}
