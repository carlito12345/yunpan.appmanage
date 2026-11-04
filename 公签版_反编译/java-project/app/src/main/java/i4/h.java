package i4;

import android.animation.TypeEvaluator;

/* loaded from: classes.dex */
public final class h implements TypeEvaluator {

    /* renamed from: a, reason: collision with root package name */
    public static final h f8539a = new h();

    @Override // android.animation.TypeEvaluator
    public final Object evaluate(float f10, Object obj, Object obj2) {
        int iIntValue = ((Integer) obj).intValue();
        float f11 = ((iIntValue >> 24) & 255) / 255.0f;
        int iIntValue2 = ((Integer) obj2).intValue();
        float f12 = ((iIntValue2 >> 24) & 255) / 255.0f;
        float fPow = (float) Math.pow(((iIntValue >> 16) & 255) / 255.0f, 2.2d);
        float fPow2 = (float) Math.pow(((iIntValue >> 8) & 255) / 255.0f, 2.2d);
        float fPow3 = (float) Math.pow((iIntValue & 255) / 255.0f, 2.2d);
        float fPow4 = (float) Math.pow(((iIntValue2 >> 16) & 255) / 255.0f, 2.2d);
        float fPow5 = (float) Math.pow(((iIntValue2 >> 8) & 255) / 255.0f, 2.2d);
        float fPow6 = (float) Math.pow((iIntValue2 & 255) / 255.0f, 2.2d);
        float fB = g.b.b(f12, f11, f10, f11);
        float fB2 = g.b.b(fPow4, fPow, f10, fPow);
        float fB3 = g.b.b(fPow5, fPow2, f10, fPow2);
        float fB4 = g.b.b(fPow6, fPow3, f10, fPow3);
        float fPow7 = ((float) Math.pow(fB2, 0.45454545454545453d)) * 255.0f;
        float fPow8 = ((float) Math.pow(fB3, 0.45454545454545453d)) * 255.0f;
        return Integer.valueOf(Math.round(((float) Math.pow(fB4, 0.45454545454545453d)) * 255.0f) | (Math.round(fPow7) << 16) | (Math.round(fB * 255.0f) << 24) | (Math.round(fPow8) << 8));
    }
}
