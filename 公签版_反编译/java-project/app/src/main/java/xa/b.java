package xa;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.view.View;
import com.yunpan.appmanage.service.AccService;

/* loaded from: classes.dex */
public final class b extends View {

    /* renamed from: a, reason: collision with root package name */
    public final Paint f18416a;

    /* renamed from: b, reason: collision with root package name */
    public final Paint f18417b;

    /* renamed from: c, reason: collision with root package name */
    public int f18418c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f18419d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f18420e;

    public b(AccService accService) {
        super(accService);
        this.f18418c = 50;
        this.f18419d = true;
        this.f18420e = false;
        Paint paint = new Paint();
        this.f18416a = paint;
        paint.setColor(Color.parseColor("#6000FF00"));
        this.f18416a.setStrokeWidth((int) (1.0f * getResources().getDisplayMetrics().density));
        this.f18416a.setStyle(Paint.Style.STROKE);
        this.f18416a.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.f18417b = paint2;
        paint2.setColor(-65536);
        this.f18417b.setTextSize((int) (12.0f * getResources().getDisplayMetrics().scaledDensity));
        this.f18417b.setAntiAlias(true);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        float f10;
        super.onDraw(canvas);
        if (this.f18419d) {
            int width = getWidth();
            int height = getHeight();
            float f11 = 0.0f;
            float f12 = 0.0f;
            while (true) {
                f10 = height;
                if (f12 > f10) {
                    break;
                }
                canvas.drawLine(0.0f, f12, width, f12, this.f18416a);
                f12 += this.f18418c;
            }
            while (f11 <= width) {
                canvas.drawLine(f11, 0.0f, f11, f10, this.f18416a);
                f11 += this.f18418c;
            }
            if (this.f18420e) {
                int width2 = getWidth();
                int height2 = getHeight();
                float f13 = this.f18418c;
                while (f13 <= height2) {
                    float f14 = this.f18418c;
                    while (f14 <= width2) {
                        canvas.drawText(String.format("(%d, %d)", Integer.valueOf((int) f14), Integer.valueOf((int) f13)), f14 - 20.0f, f13 - 5.0f, this.f18417b);
                        f14 += this.f18418c;
                    }
                    f13 += this.f18418c;
                }
            }
        }
    }

    public void setCoordinatesVisible(boolean z) {
        this.f18420e = z;
        invalidate();
    }

    public void setGridSize(int i10) {
        this.f18418c = i10;
        invalidate();
    }

    public void setGridVisible(boolean z) {
        this.f18419d = z;
        invalidate();
    }
}
