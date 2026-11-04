package eb;

import android.graphics.Paint;
import android.os.Build;
import android.text.GetChars;

/* loaded from: classes.dex */
public final class c extends Paint {

    /* renamed from: a, reason: collision with root package name */
    public float f4828a = measureText(" ");

    /* renamed from: b, reason: collision with root package name */
    public boolean f4829b;

    public c(boolean z) {
        this.f4829b = z;
    }

    public final int a(GetChars getChars, int i10, int i11, int i12, int i13, boolean z, float f10) {
        int i14 = i13 - i12;
        char[] cArrE = sb.h.e(i14);
        getChars.getChars(i12, i13, cArrE, 0);
        try {
            return Build.VERSION.SDK_INT >= 23 ? i12 + getOffsetForAdvance(cArrE, i10 - i12, i11 - i12, 0, i14, z, f10) : breakText(cArrE, i10 - i12, i11 - i10, f10, null) + i10;
        } finally {
            sb.h.h(cArrE);
        }
    }

    public final float b(GetChars getChars, int i10, int i11, int i12, int i13, boolean z, float[] fArr, int i14) {
        float fMeasureText;
        char[] cArrE = sb.h.e(i13);
        getChars.getChars(i12, i12 + i13, cArrE, 0);
        float textRunAdvances = getTextRunAdvances(cArrE, i10 - i12, i11, 0, i13, z, fArr, i14);
        if (this.f4829b) {
            for (int i15 = 0; i15 < i11; i15++) {
                char cCharAt = getChars.charAt(i10 + i15);
                if (mb.k.f(cCharAt)) {
                    float fMeasureText2 = measureText(mb.k.d(cCharAt));
                    if (fArr != null) {
                        int i16 = i14 + i15;
                        fMeasureText = textRunAdvances - fArr[i16];
                        fArr[i16] = fMeasureText2;
                    } else {
                        fMeasureText = textRunAdvances - measureText(Character.toString(cCharAt));
                    }
                    textRunAdvances = fMeasureText + fMeasureText2;
                }
            }
        }
        sb.h.h(cArrE);
        return textRunAdvances;
    }

    public final void c() {
        this.f4828a = measureText(" ");
    }

    public final void d(String str) {
        setFontFeatureSettings(str);
        c();
    }

    @Override // android.graphics.Paint
    public final void setLetterSpacing(float f10) {
        super.setLetterSpacing(f10);
        c();
    }
}
