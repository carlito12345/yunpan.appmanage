package ph;

/* loaded from: classes3.dex */
public final class i extends p {
    public i(String str, String str2, String str3) {
        super(str);
        nh.b.d0(str2);
        nh.b.d0(str3);
        c cVarC = c();
        cVarC.a("name", str);
        cVarC.a("publicId", str2);
        cVarC.a("systemId", str3);
        if (C("publicId")) {
            c().a("pubSysKey", "PUBLIC");
        } else if (C("systemId")) {
            c().a("pubSysKey", "SYSTEM");
        }
    }

    public final boolean C(String str) {
        return !oh.f.f(b(str));
    }

    @Override // ph.q
    public final String o() {
        return "#doctype";
    }

    @Override // ph.q
    public final void s(oh.a aVar, g gVar) {
        if (gVar.f12714f != 1 || C("publicId") || C("systemId")) {
            aVar.b("<!DOCTYPE");
        } else {
            aVar.b("<!doctype");
        }
        if (C("name")) {
            aVar.b(" ").b(b("name"));
        }
        if (C("pubSysKey")) {
            aVar.b(" ").b(b("pubSysKey"));
        }
        if (C("publicId")) {
            aVar.b(" \"").b(b("publicId")).a('\"');
        }
        if (C("systemId")) {
            aVar.b(" \"").b(b("systemId")).a('\"');
        }
        aVar.a('>');
    }
}
