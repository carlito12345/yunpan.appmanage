package dc;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import cc.d;
import cc.e;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class b implements e {

    /* renamed from: a, reason: collision with root package name */
    public final Drawable f4568a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4569b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4570c;

    /* renamed from: d, reason: collision with root package name */
    public int f4571d = 0;

    /* renamed from: e, reason: collision with root package name */
    public final int f4572e;

    /* renamed from: f, reason: collision with root package name */
    public final Paint f4573f;

    public b(Context context) {
        this.f4568a = context.getDrawable(R.drawable.ic_sora_handle_drop).mutate();
        this.f4569b = (int) TypedValue.applyDimension(1, 20.0f, context.getResources().getDisplayMetrics());
        this.f4570c = (int) TypedValue.applyDimension(1, 30.0f, context.getResources().getDisplayMetrics());
        this.f4572e = (int) TypedValue.applyDimension(1, 22.0f, context.getResources().getDisplayMetrics());
        Paint paint = new Paint();
        this.f4573f = paint;
        paint.setAntiAlias(true);
    }

    public final void a(Canvas canvas, int i10, float f10, float f11, int i11, d dVar) {
        float f12 = this.f4572e / 2.0f;
        Paint paint = this.f4573f;
        paint.setColor(i11);
        if (i10 != 0 && i10 != -1) {
            boolean z = i10 == 1;
            float f13 = z ? f10 - f12 : f10 + f12;
            float f14 = f11 + f12;
            canvas.drawCircle(f13, f14, f12, paint);
            canvas.drawRect(z ? f13 : f13 - f12, f11, z ? f13 + f12 : f13, f14, paint);
            float f15 = f13 - f12;
            float f16 = f13 + f12;
            float f17 = (f12 * 2.0f) + f11;
            dVar.f2990b = z ? 1 : 2;
            dVar.f2989a.set(f15, f11, f16, f17);
            return;
        }
        int i12 = this.f4571d;
        Drawable drawable = this.f4568a;
        if (i12 != i11) {
            this.f4571d = i11;
            drawable.setColorFilter(new PorterDuffColorFilter(i11, PorterDuff.Mode.SRC_ATOP));
        }
        float f18 = (this.f4569b * 1.0f) / 2.0f;
        int i13 = (int) (f10 - f18);
        int i14 = (int) f11;
        int i15 = (int) (f18 + f10);
        int i16 = (int) ((this.f4570c * 1.0f) + f11);
        drawable.setBounds(i13, i14, i15, i16);
        drawable.setAlpha(255);
        drawable.draw(canvas);
        dVar.f2990b = 0;
        dVar.f2989a.set(i13, i14, i15, i16);
    }
}
