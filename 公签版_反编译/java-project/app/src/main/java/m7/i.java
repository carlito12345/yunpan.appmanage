package m7;

/* loaded from: classes.dex */
public final class i extends qf.c {
    @Override // qf.c
    public final void t(t tVar, float f10, float f11) {
        tVar.d(f11 * f10, 180.0f, 90.0f);
        float f12 = f11 * 2.0f * f10;
        p pVar = new p(0.0f, 0.0f, f12, f12);
        pVar.f10975f = 180.0f;
        pVar.f10976g = 90.0f;
        tVar.f10987f.add(pVar);
        n nVar = new n(pVar);
        tVar.a(180.0f);
        tVar.f10988g.add(nVar);
        tVar.f10985d = 270.0f;
        float f13 = (0.0f + f12) * 0.5f;
        float f14 = (f12 - 0.0f) / 2.0f;
        double d10 = 270.0f;
        tVar.f10983b = (((float) Math.cos(Math.toRadians(d10))) * f14) + f13;
        tVar.f10984c = (f14 * ((float) Math.sin(Math.toRadians(d10)))) + f13;
    }
}
