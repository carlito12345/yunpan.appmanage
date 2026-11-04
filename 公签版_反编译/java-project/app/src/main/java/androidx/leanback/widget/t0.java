package androidx.leanback.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.style.ReplacementSpan;
import java.util.Random;

/* loaded from: classes.dex */
public final class t0 extends ReplacementSpan {

    /* renamed from: a, reason: collision with root package name */
    public final int f1714a;

    /* renamed from: b, reason: collision with root package name */
    public final int f1715b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SearchEditText f1716c;

    public t0(SearchEditText searchEditText, int i10, int i11) {
        this.f1716c = searchEditText;
        this.f1714a = i10;
        this.f1715b = i11;
    }

    @Override // android.text.style.ReplacementSpan
    public final void draw(Canvas canvas, CharSequence charSequence, int i10, int i11, float f10, int i12, int i13, int i14, Paint paint) {
        int iMeasureText = (int) paint.measureText(charSequence, i10, i11);
        SearchEditText searchEditText = this.f1716c;
        int width = searchEditText.f1725b.getWidth();
        int i15 = width * 2;
        int i16 = iMeasureText / i15;
        int i17 = (iMeasureText % i15) / 2;
        int i18 = 1;
        int i19 = 0;
        boolean z = 1 == searchEditText.getLayoutDirection();
        Random random = searchEditText.f1724a;
        random.setSeed(this.f1714a);
        int alpha = paint.getAlpha();
        while (i19 < i16 && this.f1715b + i19 < searchEditText.f1727d) {
            float f11 = (width / 2) + (i19 * i15) + i17;
            float f12 = z ? ((f10 + iMeasureText) - f11) - width : f10 + f11;
            paint.setAlpha((random.nextInt(4) + i18) * 63);
            if (random.nextBoolean()) {
                canvas.drawBitmap(searchEditText.f1726c, f12, i13 - r14.getHeight(), paint);
            } else {
                canvas.drawBitmap(searchEditText.f1725b, f12, i13 - r10.getHeight(), paint);
            }
            i19++;
            i18 = 1;
        }
        paint.setAlpha(alpha);
    }

    @Override // android.text.style.ReplacementSpan
    public final int getSize(Paint paint, CharSequence charSequence, int i10, int i11, Paint.FontMetricsInt fontMetricsInt) {
        return (int) paint.measureText(charSequence, i10, i11);
    }
}
