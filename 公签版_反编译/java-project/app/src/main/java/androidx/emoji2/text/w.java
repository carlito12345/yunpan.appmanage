package androidx.emoji2.text;

import a2.w0;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.style.ReplacementSpan;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class w extends ReplacementSpan {

    /* renamed from: b, reason: collision with root package name */
    public final p f1154b;

    /* renamed from: a, reason: collision with root package name */
    public final Paint.FontMetricsInt f1153a = new Paint.FontMetricsInt();

    /* renamed from: c, reason: collision with root package name */
    public float f1155c = 1.0f;

    public w(p pVar) {
        s1.g.l(pVar, "metadata cannot be null");
        this.f1154b = pVar;
    }

    @Override // android.text.style.ReplacementSpan
    public final void draw(Canvas canvas, CharSequence charSequence, int i10, int i11, float f10, int i12, int i13, int i14, Paint paint) {
        l.a().getClass();
        p pVar = this.f1154b;
        w0 w0Var = pVar.f1127b;
        Typeface typeface = (Typeface) w0Var.f349e;
        Typeface typeface2 = paint.getTypeface();
        paint.setTypeface(typeface);
        canvas.drawText((char[]) w0Var.f347c, pVar.f1126a * 2, 2, f10, i13, paint);
        paint.setTypeface(typeface2);
    }

    @Override // android.text.style.ReplacementSpan
    public final int getSize(Paint paint, CharSequence charSequence, int i10, int i11, Paint.FontMetricsInt fontMetricsInt) {
        Paint.FontMetricsInt fontMetricsInt2 = this.f1153a;
        paint.getFontMetricsInt(fontMetricsInt2);
        float fAbs = Math.abs(fontMetricsInt2.descent - fontMetricsInt2.ascent) * 1.0f;
        p pVar = this.f1154b;
        this.f1155c = fAbs / (pVar.c().a(14) != 0 ? ((ByteBuffer) r8.f6323d).getShort(r1 + r8.f6320a) : (short) 0);
        h1.a aVarC = pVar.c();
        int iA = aVarC.a(14);
        if (iA != 0) {
            ((ByteBuffer) aVarC.f6323d).getShort(iA + aVarC.f6320a);
        }
        short s8 = (short) ((pVar.c().a(12) != 0 ? ((ByteBuffer) r5.f6323d).getShort(r7 + r5.f6320a) : (short) 0) * this.f1155c);
        if (fontMetricsInt != null) {
            fontMetricsInt.ascent = fontMetricsInt2.ascent;
            fontMetricsInt.descent = fontMetricsInt2.descent;
            fontMetricsInt.top = fontMetricsInt2.top;
            fontMetricsInt.bottom = fontMetricsInt2.bottom;
        }
        return s8;
    }
}
