package ph;

/* loaded from: classes3.dex */
public final class f extends p {
    public f(String str) {
        super(str);
    }

    @Override // ph.q
    public final Object clone() {
        return (f) super.clone();
    }

    @Override // ph.q
    /* renamed from: f */
    public final q clone() {
        return (f) super.clone();
    }

    @Override // ph.q
    public final String o() {
        return "#data";
    }

    @Override // ph.q
    public final void s(oh.a aVar, g gVar) {
        String strA = A();
        if (gVar.f12714f != 2 || strA.contains("<![CDATA[")) {
            aVar.b(strA);
            return;
        }
        l lVar = this.f12741a;
        if (lVar != null && lVar.f12722d.f13285c.equals("script")) {
            aVar.b("//<![CDATA[\n").b(strA).b("\n//]]>");
            return;
        }
        l lVar2 = this.f12741a;
        if (lVar2 == null || !lVar2.f12722d.f13285c.equals("style")) {
            aVar.b("<![CDATA[").b(strA).b("]]>");
        } else {
            aVar.b("/*<![CDATA[*/\n").b(strA).b("\n/*]]>*/");
        }
    }
}
