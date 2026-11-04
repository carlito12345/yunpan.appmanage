package m7;

/* loaded from: classes.dex */
public final class d extends qf.c {
    @Override // qf.c
    public final void t(t tVar, float f10, float f11) {
        tVar.d(f11 * f10, 180.0f, 90.0f);
        double dSin = Math.sin(Math.toRadians(90.0f));
        double d10 = f11;
        Double.isNaN(d10);
        double d11 = f10;
        Double.isNaN(d11);
        double dSin2 = Math.sin(Math.toRadians(0.0f));
        Double.isNaN(d10);
        Double.isNaN(d11);
        tVar.c((float) (dSin * d10 * d11), (float) (dSin2 * d10 * d11));
    }
}
