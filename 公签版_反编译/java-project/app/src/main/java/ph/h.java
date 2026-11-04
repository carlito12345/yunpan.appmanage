package ph;

import qh.e0;
import qh.f0;

/* loaded from: classes3.dex */
public final class h extends l {

    /* renamed from: j, reason: collision with root package name */
    public g f12715j;

    /* renamed from: k, reason: collision with root package name */
    public e0 f12716k;
    public int l;

    public h(String str, String str2, e0 e0Var) {
        super(new f0("#root", oh.a.d("#root"), str), str2, null);
        this.f12715j = new g();
        this.l = 1;
        this.f12716k = e0Var;
    }

    @Override // ph.l, ph.q
    /* renamed from: N, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final h clone() {
        h hVar = (h) super.clone();
        c cVar = this.f12724f;
        if (cVar != null) {
            hVar.f12724f = cVar.clone();
        }
        hVar.f12715j = this.f12715j.clone();
        return hVar;
    }

    @Override // ph.l, ph.q
    public final String o() {
        return "#document";
    }

    @Override // ph.q
    public final String r() {
        StringBuilder sbB = oh.f.b();
        q qVarI = i();
        if (qVarI != null) {
            oh.a aVarE = oh.a.e(sbB);
            h hVarT = qVarI.t();
            if (hVarT == null) {
                hVarT = new h();
            }
            g gVar = hVarT.f12715j;
            gVar.getClass();
            rh.u sVar = gVar.f12711c ? new s(qVarI, aVarE, gVar) : new v3.f(25, qVarI, aVarE, gVar, false);
            while (qVarI != null) {
                org.bouncycastle.jcajce.provider.digest.a.a(sVar, qVarI);
                qVarI = qVarI.n();
            }
        }
        String strL = oh.f.l(sbB);
        h hVarT2 = t();
        if (hVarT2 == null) {
            hVarT2 = new h();
        }
        return hVarT2.f12715j.f12711c ? strL.trim() : strL;
    }

    public h() {
        this("http://www.w3.org/1999/xhtml", "", new e0(new qh.c()));
    }
}
