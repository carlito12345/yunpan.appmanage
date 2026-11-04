package ph;

/* loaded from: classes3.dex */
public final class d extends x {
    public d(String str) {
        super(str);
    }

    @Override // ph.x
    /* renamed from: C */
    public final x clone() {
        return (d) super.clone();
    }

    @Override // ph.x, ph.q
    public final Object clone() {
        return (d) super.clone();
    }

    @Override // ph.x, ph.q
    /* renamed from: f */
    public final q clone() {
        return (d) super.clone();
    }

    @Override // ph.x, ph.q
    public final String o() {
        return "#cdata";
    }

    @Override // ph.x, ph.q
    public final void s(oh.a aVar, g gVar) {
        aVar.b("<![CDATA[").b(A()).b("]]>");
    }
}
