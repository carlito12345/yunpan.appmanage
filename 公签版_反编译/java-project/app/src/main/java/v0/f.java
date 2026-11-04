package v0;

import android.os.Build;
import android.text.PrecomputedText;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final TextPaint f16313a;

    /* renamed from: b, reason: collision with root package name */
    public final TextDirectionHeuristic f16314b;

    /* renamed from: c, reason: collision with root package name */
    public final int f16315c;

    /* renamed from: d, reason: collision with root package name */
    public final int f16316d;

    public f(TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, int i10, int i11) {
        if (Build.VERSION.SDK_INT >= 29) {
            new PrecomputedText.Params.Builder(textPaint).setBreakStrategy(i10).setHyphenationFrequency(i11).setTextDirection(textDirectionHeuristic).build();
        }
        this.f16313a = textPaint;
        this.f16314b = textDirectionHeuristic;
        this.f16315c = i10;
        this.f16316d = i11;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0018  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean equals(Object obj) {
        boolean z;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 23) {
            if (this.f16315c == fVar.f16315c && this.f16316d == fVar.f16316d) {
                TextPaint textPaint = this.f16313a;
                if (textPaint.getTextSize() != fVar.f16313a.getTextSize()) {
                    z = false;
                } else {
                    float textScaleX = textPaint.getTextScaleX();
                    TextPaint textPaint2 = fVar.f16313a;
                    if (textScaleX == textPaint2.getTextScaleX() && textPaint.getTextSkewX() == textPaint2.getTextSkewX() && ((i10 < 21 || (textPaint.getLetterSpacing() == textPaint2.getLetterSpacing() && TextUtils.equals(textPaint.getFontFeatureSettings(), textPaint2.getFontFeatureSettings()))) && textPaint.getFlags() == textPaint2.getFlags() && (i10 < 24 ? textPaint.getTextLocale().equals(textPaint2.getTextLocale()) : textPaint.getTextLocales().equals(textPaint2.getTextLocales())) && (textPaint.getTypeface() != null ? textPaint.getTypeface().equals(textPaint2.getTypeface()) : textPaint2.getTypeface() == null))) {
                        z = true;
                    }
                }
            }
        }
        if (z) {
            return i10 < 18 || this.f16314b == fVar.f16314b;
        }
        return false;
    }

    public final int hashCode() {
        int i10 = Build.VERSION.SDK_INT;
        int i11 = this.f16316d;
        int i12 = this.f16315c;
        TextPaint textPaint = this.f16313a;
        return i10 >= 24 ? qf.c.E(Float.valueOf(textPaint.getTextSize()), Float.valueOf(textPaint.getTextScaleX()), Float.valueOf(textPaint.getTextSkewX()), Float.valueOf(textPaint.getLetterSpacing()), Integer.valueOf(textPaint.getFlags()), textPaint.getTextLocales(), textPaint.getTypeface(), Boolean.valueOf(textPaint.isElegantTextHeight()), this.f16314b, Integer.valueOf(i12), Integer.valueOf(i11)) : i10 >= 21 ? qf.c.E(Float.valueOf(textPaint.getTextSize()), Float.valueOf(textPaint.getTextScaleX()), Float.valueOf(textPaint.getTextSkewX()), Float.valueOf(textPaint.getLetterSpacing()), Integer.valueOf(textPaint.getFlags()), textPaint.getTextLocale(), textPaint.getTypeface(), Boolean.valueOf(textPaint.isElegantTextHeight()), this.f16314b, Integer.valueOf(i12), Integer.valueOf(i11)) : i10 >= 18 ? qf.c.E(Float.valueOf(textPaint.getTextSize()), Float.valueOf(textPaint.getTextScaleX()), Float.valueOf(textPaint.getTextSkewX()), Integer.valueOf(textPaint.getFlags()), textPaint.getTextLocale(), textPaint.getTypeface(), this.f16314b, Integer.valueOf(i12), Integer.valueOf(i11)) : qf.c.E(Float.valueOf(textPaint.getTextSize()), Float.valueOf(textPaint.getTextScaleX()), Float.valueOf(textPaint.getTextSkewX()), Integer.valueOf(textPaint.getFlags()), textPaint.getTextLocale(), textPaint.getTypeface(), this.f16314b, Integer.valueOf(i12), Integer.valueOf(i11));
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        StringBuilder sb3 = new StringBuilder("textSize=");
        TextPaint textPaint = this.f16313a;
        sb3.append(textPaint.getTextSize());
        sb2.append(sb3.toString());
        sb2.append(", textScaleX=" + textPaint.getTextScaleX());
        sb2.append(", textSkewX=" + textPaint.getTextSkewX());
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 21) {
            sb2.append(", letterSpacing=" + textPaint.getLetterSpacing());
            sb2.append(", elegantTextHeight=" + textPaint.isElegantTextHeight());
        }
        if (i10 >= 24) {
            sb2.append(", textLocale=" + textPaint.getTextLocales());
        } else {
            sb2.append(", textLocale=" + textPaint.getTextLocale());
        }
        sb2.append(", typeface=" + textPaint.getTypeface());
        if (i10 >= 26) {
            sb2.append(", variationSettings=" + textPaint.getFontVariationSettings());
        }
        sb2.append(", textDir=" + this.f16314b);
        sb2.append(", breakStrategy=" + this.f16315c);
        sb2.append(", hyphenationFrequency=" + this.f16316d);
        sb2.append("}");
        return sb2.toString();
    }

    public f(PrecomputedText.Params params) {
        this.f16313a = params.getTextPaint();
        this.f16314b = params.getTextDirection();
        this.f16315c = params.getBreakStrategy();
        this.f16316d = params.getHyphenationFrequency();
    }
}
