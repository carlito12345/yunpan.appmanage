package q7;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;

/* loaded from: classes.dex */
public final class f extends h {
    public Paint B;
    public int C;

    public f(e eVar) {
        super(eVar);
    }

    @Override // m7.g, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Drawable.Callback callback = getCallback();
        if (callback instanceof View) {
            View view = (View) callback;
            if (view.getLayerType() != 2) {
                view.setLayerType(2, null);
            }
        } else if (Build.VERSION.SDK_INT >= 21) {
            this.C = canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), null);
        } else {
            this.C = canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), null, 31);
        }
        super.draw(canvas);
        if (getCallback() instanceof View) {
            return;
        }
        canvas.restoreToCount(this.C);
    }

    @Override // m7.g
    public final void f(Canvas canvas) {
        super.f(canvas);
        RectF rectF = this.z.f13068q;
        if (this.B == null) {
            Paint paint = new Paint(1);
            this.B = paint;
            paint.setStyle(Paint.Style.FILL_AND_STROKE);
            this.B.setColor(-1);
            this.B.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        }
        canvas.drawRect(rectF, this.B);
    }
}
