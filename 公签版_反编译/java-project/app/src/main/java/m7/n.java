package m7;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;

/* loaded from: classes.dex */
public final class n extends s {

    /* renamed from: c, reason: collision with root package name */
    public final p f10966c;

    public n(p pVar) {
        this.f10966c = pVar;
    }

    @Override // m7.s
    public final void a(Matrix matrix, l7.a aVar, int i10, Canvas canvas) {
        p pVar = this.f10966c;
        float f10 = pVar.f10975f;
        float f11 = pVar.f10976g;
        RectF rectF = new RectF(pVar.f10971b, pVar.f10972c, pVar.f10973d, pVar.f10974e);
        aVar.getClass();
        boolean z = f11 < 0.0f;
        Path path = aVar.f10702g;
        int[] iArr = l7.a.f10695k;
        if (z) {
            iArr[0] = 0;
            iArr[1] = aVar.f10701f;
            iArr[2] = aVar.f10700e;
            iArr[3] = aVar.f10699d;
        } else {
            path.rewind();
            path.moveTo(rectF.centerX(), rectF.centerY());
            path.arcTo(rectF, f10, f11);
            path.close();
            float f12 = -i10;
            rectF.inset(f12, f12);
            iArr[0] = 0;
            iArr[1] = aVar.f10699d;
            iArr[2] = aVar.f10700e;
            iArr[3] = aVar.f10701f;
        }
        float fWidth = rectF.width() / 2.0f;
        if (fWidth <= 0.0f) {
            return;
        }
        float f13 = 1.0f - (i10 / fWidth);
        float[] fArr = l7.a.l;
        fArr[1] = f13;
        fArr[2] = ((1.0f - f13) / 2.0f) + f13;
        RadialGradient radialGradient = new RadialGradient(rectF.centerX(), rectF.centerY(), fWidth, iArr, fArr, Shader.TileMode.CLAMP);
        Paint paint = aVar.f10697b;
        paint.setShader(radialGradient);
        canvas.save();
        canvas.concat(matrix);
        canvas.scale(1.0f, rectF.height() / rectF.width());
        if (!z) {
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            canvas.drawPath(path, aVar.f10703h);
        }
        canvas.drawArc(rectF, f10, f11, true, paint);
        canvas.restore();
    }
}
