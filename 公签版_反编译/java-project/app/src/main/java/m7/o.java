package m7;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;

/* loaded from: classes.dex */
public final class o extends s {

    /* renamed from: c, reason: collision with root package name */
    public final q f10967c;

    /* renamed from: d, reason: collision with root package name */
    public final float f10968d;

    /* renamed from: e, reason: collision with root package name */
    public final float f10969e;

    public o(q qVar, float f10, float f11) {
        this.f10967c = qVar;
        this.f10968d = f10;
        this.f10969e = f11;
    }

    @Override // m7.s
    public final void a(Matrix matrix, l7.a aVar, int i10, Canvas canvas) {
        q qVar = this.f10967c;
        float f10 = qVar.f10978c;
        float f11 = this.f10969e;
        float f12 = qVar.f10977b;
        float f13 = this.f10968d;
        RectF rectF = new RectF(0.0f, 0.0f, (float) Math.hypot(f10 - f11, f12 - f13), 0.0f);
        Matrix matrix2 = this.f10981a;
        matrix2.set(matrix);
        matrix2.preTranslate(f13, f11);
        matrix2.preRotate(b());
        aVar.getClass();
        rectF.bottom += i10;
        rectF.offset(0.0f, -i10);
        int[] iArr = l7.a.f10693i;
        iArr[0] = aVar.f10701f;
        iArr[1] = aVar.f10700e;
        iArr[2] = aVar.f10699d;
        Paint paint = aVar.f10698c;
        float f14 = rectF.left;
        paint.setShader(new LinearGradient(f14, rectF.top, f14, rectF.bottom, iArr, l7.a.f10694j, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix2);
        canvas.drawRect(rectF, paint);
        canvas.restore();
    }

    public final float b() {
        q qVar = this.f10967c;
        return (float) Math.toDegrees(Math.atan((qVar.f10978c - this.f10969e) / (qVar.f10977b - this.f10968d)));
    }
}
