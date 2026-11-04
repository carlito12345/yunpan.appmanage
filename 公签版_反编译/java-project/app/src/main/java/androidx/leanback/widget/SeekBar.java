package androidx.leanback.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class SeekBar extends View {

    /* renamed from: a, reason: collision with root package name */
    public final RectF f1587a;

    /* renamed from: b, reason: collision with root package name */
    public final RectF f1588b;

    /* renamed from: c, reason: collision with root package name */
    public final RectF f1589c;

    /* renamed from: d, reason: collision with root package name */
    public final Paint f1590d;

    /* renamed from: e, reason: collision with root package name */
    public final Paint f1591e;

    /* renamed from: f, reason: collision with root package name */
    public final Paint f1592f;

    /* renamed from: g, reason: collision with root package name */
    public final Paint f1593g;

    /* renamed from: h, reason: collision with root package name */
    public int f1594h;

    /* renamed from: i, reason: collision with root package name */
    public int f1595i;

    /* renamed from: j, reason: collision with root package name */
    public int f1596j;

    /* renamed from: k, reason: collision with root package name */
    public int f1597k;
    public int l;

    /* renamed from: m, reason: collision with root package name */
    public int f1598m;

    /* renamed from: n, reason: collision with root package name */
    public int f1599n;

    public SeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1587a = new RectF();
        this.f1588b = new RectF();
        this.f1589c = new RectF();
        Paint paint = new Paint(1);
        this.f1590d = paint;
        Paint paint2 = new Paint(1);
        this.f1591e = paint2;
        Paint paint3 = new Paint(1);
        this.f1592f = paint3;
        Paint paint4 = new Paint(1);
        this.f1593g = paint4;
        setWillNotDraw(false);
        paint3.setColor(-7829368);
        paint.setColor(-3355444);
        paint2.setColor(-65536);
        paint4.setColor(-1);
        this.f1598m = context.getResources().getDimensionPixelSize(R.dimen.lb_playback_transport_progressbar_bar_height);
        this.f1599n = context.getResources().getDimensionPixelSize(R.dimen.lb_playback_transport_progressbar_active_bar_height);
        this.l = context.getResources().getDimensionPixelSize(R.dimen.lb_playback_transport_progressbar_active_radius);
    }

    public final void a() {
        int i10 = isFocused() ? this.f1599n : this.f1598m;
        int width = getWidth();
        int height = getHeight();
        int i11 = (height - i10) / 2;
        RectF rectF = this.f1589c;
        int i12 = this.f1598m;
        float f10 = i11;
        float f11 = height - i11;
        rectF.set(i12 / 2, f10, width - (i12 / 2), f11);
        int i13 = isFocused() ? this.l : this.f1598m / 2;
        float f12 = width - (i13 * 2);
        float f13 = (this.f1594h / this.f1596j) * f12;
        RectF rectF2 = this.f1587a;
        int i14 = this.f1598m;
        rectF2.set(i14 / 2, f10, (i14 / 2) + f13, f11);
        this.f1588b.set(rectF2.right, f10, (this.f1598m / 2) + ((this.f1595i / this.f1596j) * f12), f11);
        this.f1597k = i13 + ((int) f13);
        invalidate();
    }

    @Override // android.view.View
    public CharSequence getAccessibilityClassName() {
        return android.widget.SeekBar.class.getName();
    }

    public int getMax() {
        return this.f1596j;
    }

    public int getProgress() {
        return this.f1594h;
    }

    public int getSecondProgress() {
        return this.f1595i;
    }

    public int getSecondaryProgressColor() {
        return this.f1590d.getColor();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float f10 = isFocused() ? this.l : this.f1598m / 2;
        canvas.drawRoundRect(this.f1589c, f10, f10, this.f1592f);
        RectF rectF = this.f1588b;
        if (rectF.right > rectF.left) {
            canvas.drawRoundRect(rectF, f10, f10, this.f1590d);
        }
        canvas.drawRoundRect(this.f1587a, f10, f10, this.f1591e);
        canvas.drawCircle(this.f1597k, getHeight() / 2, f10, this.f1593g);
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z, int i10, Rect rect) {
        super.onFocusChanged(z, i10, rect);
        a();
    }

    @Override // android.view.View
    public final void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        a();
    }

    public void setAccessibilitySeekListener(o0 o0Var) {
    }

    public void setActiveBarHeight(int i10) {
        this.f1599n = i10;
        a();
    }

    public void setActiveRadius(int i10) {
        this.l = i10;
        a();
    }

    public void setBarHeight(int i10) {
        this.f1598m = i10;
        a();
    }

    public void setMax(int i10) {
        this.f1596j = i10;
        a();
    }

    public void setProgress(int i10) {
        int i11 = this.f1596j;
        if (i10 > i11) {
            i10 = i11;
        } else if (i10 < 0) {
            i10 = 0;
        }
        this.f1594h = i10;
        a();
    }

    public void setProgressColor(int i10) {
        this.f1591e.setColor(i10);
    }

    public void setSecondaryProgress(int i10) {
        int i11 = this.f1596j;
        if (i10 > i11) {
            i10 = i11;
        } else if (i10 < 0) {
            i10 = 0;
        }
        this.f1595i = i10;
        a();
    }

    public void setSecondaryProgressColor(int i10) {
        this.f1590d.setColor(i10);
    }
}
