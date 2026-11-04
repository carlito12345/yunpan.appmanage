package wa;

import android.animation.ValueAnimator;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.WindowManager;
import android.widget.ImageView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.FloatWindowInsets;
import com.yunpan.appmanage.service.AccService;
import java.util.Random;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: k, reason: collision with root package name */
    public static final int[] f17653k = {-1762269, -1499549, -6543440, -10011977, -12627531, -11110404, -16537100, -16728876, -16738680, -14312668, -7617718, -3285959, -5317, -16121, -26624, -43230};

    /* renamed from: a, reason: collision with root package name */
    public final AccService f17654a;

    /* renamed from: b, reason: collision with root package name */
    public final WindowManager f17655b;

    /* renamed from: d, reason: collision with root package name */
    public ImageView f17657d;

    /* renamed from: e, reason: collision with root package name */
    public ValueAnimator f17658e;

    /* renamed from: f, reason: collision with root package name */
    public ai.a f17659f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f17660g;

    /* renamed from: j, reason: collision with root package name */
    public float f17663j;

    /* renamed from: c, reason: collision with root package name */
    public final Random f17656c = new Random();

    /* renamed from: h, reason: collision with root package name */
    public int f17661h = 0;

    /* renamed from: i, reason: collision with root package name */
    public int f17662i = -1;

    public a(AccService accService, WindowManager windowManager) {
        this.f17654a = accService;
        this.f17655b = windowManager;
    }

    public final WindowManager.LayoutParams a() {
        AccService accService = this.f17654a;
        FloatWindowInsets floatWindowInsets = (FloatWindowInsets) accService.f3937i.f18897d;
        boolean z = (floatWindowInsets.top == 0 && floatWindowInsets.bottom == 0 && floatWindowInsets.left == 0 && floatWindowInsets.right == 0) ? false : true;
        Point pointR = p000if.a.R(accService);
        this.f17659f.f717a = Math.max(pointR.x, pointR.y) / 8;
        int iMax = Math.max(pointR.x, pointR.y) / 32;
        int i10 = pointR.y - 60;
        int i11 = Build.VERSION.SDK_INT;
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(iMax, i10, i11 >= 22 ? 2032 : 2002, 792, -3);
        if (i11 >= 28) {
            layoutParams.layoutInDisplayCutoutMode = 1;
        }
        int i12 = this.f17661h;
        if (i12 == 0) {
            layoutParams.gravity = 8388659;
            layoutParams.x = z ? -((FloatWindowInsets) accService.f3937i.f18897d).left : 0;
            layoutParams.y = z ? 30 - ((FloatWindowInsets) accService.f3937i.f18897d).top : 30;
        } else if (i12 == 1) {
            layoutParams.gravity = 8388661;
            layoutParams.x = z ? -((FloatWindowInsets) accService.f3937i.f18897d).right : 0;
            layoutParams.y = z ? 30 - ((FloatWindowInsets) accService.f3937i.f18897d).top : 30;
        } else if (i12 == 2) {
            int i13 = pointR.x;
            layoutParams.width = i13;
            layoutParams.height = Math.max(i13, pointR.y) / 32;
            layoutParams.gravity = 8388691;
            layoutParams.x = z ? -((FloatWindowInsets) accService.f3937i.f18897d).left : 0;
            layoutParams.y = z ? -((FloatWindowInsets) accService.f3937i.f18897d).bottom : 0;
        }
        return layoutParams;
    }

    public final void b() {
        if (!this.f17660g || this.f17657d == null || this.f17659f == null) {
            d();
            return;
        }
        ValueAnimator valueAnimator = this.f17658e;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.f17663j, 0.0f);
        this.f17658e = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(this.f17659f.f718b);
        this.f17658e.addUpdateListener(new q7.i(2, this));
        this.f17658e.addListener(new h4.q(6, this));
        this.f17658e.start();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c(int i10) {
        Drawable drawable;
        d();
        this.f17659f = new ai.a(5);
        if (!(i10 == 0 || i10 == 1 || i10 == 2)) {
            i10 = 0;
        }
        this.f17661h = i10;
        this.f17662i = f17653k[this.f17656c.nextInt(16)];
        int i11 = this.f17661h;
        int i12 = i11 == 0 ? R.drawable.edge_colorful_light_left : i11 == 1 ? R.drawable.edge_colorful_light_right : R.drawable.edge_colorful_light_bottom;
        AccService accService = this.f17654a;
        if (i12 != 0) {
            int i13 = Build.VERSION.SDK_INT;
            drawable = i13 >= 21 ? accService.getResources().getDrawable(i12, null) : accService.getResources().getDrawable(i12);
            if (drawable == null) {
                drawable = null;
            } else {
                int i14 = this.f17662i;
                drawable.mutate();
                if (i13 >= 21) {
                    drawable.setTint(i14);
                } else {
                    drawable.setColorFilter(new PorterDuffColorFilter(i14, PorterDuff.Mode.SRC_IN));
                }
            }
        }
        if (drawable == null) {
            this.f17657d = null;
        } else {
            ImageView imageView = new ImageView(accService);
            this.f17657d = imageView;
            imageView.setScaleType(ImageView.ScaleType.FIT_XY);
            this.f17657d.setImageDrawable(drawable);
            this.f17657d.setAlpha(0.0f);
        }
        if (this.f17657d == null) {
            return;
        }
        try {
            this.f17655b.addView(this.f17657d, a());
            this.f17660g = true;
        } catch (Exception unused) {
            this.f17660g = false;
            this.f17657d = null;
        }
        e(0.0f);
    }

    public final void d() {
        ValueAnimator valueAnimator = this.f17658e;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f17658e = null;
        }
        if (this.f17660g) {
            try {
                ImageView imageView = this.f17657d;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.f17655b.removeView(this.f17657d);
                }
            } catch (Exception unused) {
            }
            this.f17660g = false;
            this.f17657d = null;
            this.f17659f = null;
            this.f17663j = 0.0f;
        }
    }

    public final void e(float f10) {
        ImageView imageView;
        ai.a aVar;
        if (!this.f17660g || (imageView = this.f17657d) == null || (aVar = this.f17659f) == null) {
            return;
        }
        float f11 = aVar.f717a;
        float f12 = f10 >= f11 ? 1.0f : f10 / f11;
        this.f17663j = f12;
        imageView.setAlpha(f12);
    }
}
