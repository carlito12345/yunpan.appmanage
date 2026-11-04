package androidx.leanback.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
class MediaRowFocusView extends View {

    /* renamed from: a, reason: collision with root package name */
    public final Paint f1509a;

    /* renamed from: b, reason: collision with root package name */
    public final RectF f1510b;

    /* renamed from: c, reason: collision with root package name */
    public int f1511c;

    public MediaRowFocusView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1510b = new RectF();
        Paint paint = new Paint();
        paint.setColor(context.getResources().getColor(R.color.lb_playback_media_row_highlight_color));
        this.f1509a = paint;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight() / 2;
        this.f1511c = height;
        int height2 = ((height * 2) - getHeight()) / 2;
        RectF rectF = this.f1510b;
        rectF.set(0.0f, -height2, getWidth(), getHeight() + height2);
        int i10 = this.f1511c;
        canvas.drawRoundRect(rectF, i10, i10, this.f1509a);
    }
}
