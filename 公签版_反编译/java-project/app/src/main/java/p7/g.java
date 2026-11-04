package p7;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.widget.LinearLayout;
import com.google.android.material.tabs.TabLayout;
import ha.l2;
import java.util.WeakHashMap;
import x0.b1;
import x0.j0;

/* loaded from: classes.dex */
public final class g extends LinearLayout {

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ int f12583d = 0;

    /* renamed from: a, reason: collision with root package name */
    public ValueAnimator f12584a;

    /* renamed from: b, reason: collision with root package name */
    public int f12585b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TabLayout f12586c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(TabLayout tabLayout, Context context) {
        super(context);
        this.f12586c = tabLayout;
        this.f12585b = -1;
        setWillNotDraw(false);
    }

    public final void a(int i10) {
        TabLayout tabLayout = this.f12586c;
        if (tabLayout.M0 == 0 || (tabLayout.getTabSelectedIndicator().getBounds().left == -1 && tabLayout.getTabSelectedIndicator().getBounds().right == -1)) {
            View childAt = getChildAt(i10);
            l2 l2Var = tabLayout.K;
            Drawable drawable = tabLayout.f3660p;
            l2Var.getClass();
            RectF rectFG = l2.G(tabLayout, childAt);
            drawable.setBounds((int) rectFG.left, drawable.getBounds().top, (int) rectFG.right, drawable.getBounds().bottom);
            tabLayout.f3646a = i10;
        }
    }

    public final void b(int i10) {
        TabLayout tabLayout = this.f12586c;
        Rect bounds = tabLayout.f3660p.getBounds();
        tabLayout.f3660p.setBounds(bounds.left, 0, bounds.right, i10);
        requestLayout();
    }

    public final void c(View view, View view2, float f10) {
        TabLayout tabLayout = this.f12586c;
        if (view == null || view.getWidth() <= 0) {
            Drawable drawable = tabLayout.f3660p;
            drawable.setBounds(-1, drawable.getBounds().top, -1, tabLayout.f3660p.getBounds().bottom);
        } else {
            tabLayout.K.X(tabLayout, view, view2, f10, tabLayout.f3660p);
        }
        WeakHashMap weakHashMap = b1.f17953a;
        j0.k(this);
    }

    public final void d(int i10, int i11, boolean z) {
        TabLayout tabLayout = this.f12586c;
        if (tabLayout.f3646a == i10) {
            return;
        }
        View childAt = getChildAt(tabLayout.getSelectedTabPosition());
        View childAt2 = getChildAt(i10);
        if (childAt2 == null) {
            a(tabLayout.getSelectedTabPosition());
            return;
        }
        tabLayout.f3646a = i10;
        f fVar = new f(this, childAt, childAt2);
        if (!z) {
            this.f12584a.removeAllUpdateListeners();
            this.f12584a.addUpdateListener(fVar);
            return;
        }
        ValueAnimator valueAnimator = new ValueAnimator();
        this.f12584a = valueAnimator;
        valueAnimator.setInterpolator(tabLayout.L);
        valueAnimator.setDuration(i11);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        valueAnimator.addUpdateListener(fVar);
        valueAnimator.start();
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int height;
        TabLayout tabLayout = this.f12586c;
        int iHeight = tabLayout.f3660p.getBounds().height();
        if (iHeight < 0) {
            iHeight = tabLayout.f3660p.getIntrinsicHeight();
        }
        int i10 = tabLayout.C;
        if (i10 == 0) {
            height = getHeight() - iHeight;
            iHeight = getHeight();
        } else if (i10 != 1) {
            height = 0;
            if (i10 != 2) {
                iHeight = i10 != 3 ? 0 : getHeight();
            }
        } else {
            height = (getHeight() - iHeight) / 2;
            iHeight = (getHeight() + iHeight) / 2;
        }
        if (tabLayout.f3660p.getBounds().width() > 0) {
            Rect bounds = tabLayout.f3660p.getBounds();
            tabLayout.f3660p.setBounds(bounds.left, height, bounds.right, iHeight);
            tabLayout.f3660p.draw(canvas);
        }
        super.draw(canvas);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i10, int i11, int i12, int i13) {
        super.onLayout(z, i10, i11, i12, i13);
        ValueAnimator valueAnimator = this.f12584a;
        TabLayout tabLayout = this.f12586c;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            d(tabLayout.getSelectedTabPosition(), -1, false);
            return;
        }
        if (tabLayout.f3646a == -1) {
            tabLayout.f3646a = tabLayout.getSelectedTabPosition();
        }
        a(tabLayout.f3646a);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (View.MeasureSpec.getMode(i10) != 1073741824) {
            return;
        }
        TabLayout tabLayout = this.f12586c;
        boolean z = true;
        if (tabLayout.A == 1 || tabLayout.D == 2) {
            int childCount = getChildCount();
            int iMax = 0;
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = getChildAt(i12);
                if (childAt.getVisibility() == 0) {
                    iMax = Math.max(iMax, childAt.getMeasuredWidth());
                }
            }
            if (iMax <= 0) {
                return;
            }
            if (iMax * childCount <= getMeasuredWidth() - (((int) g7.l.d(getContext(), 16)) * 2)) {
                boolean z4 = false;
                for (int i13 = 0; i13 < childCount; i13++) {
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i13).getLayoutParams();
                    if (layoutParams.width != iMax || layoutParams.weight != 0.0f) {
                        layoutParams.width = iMax;
                        layoutParams.weight = 0.0f;
                        z4 = true;
                    }
                }
                z = z4;
            } else {
                tabLayout.A = 0;
                tabLayout.n(false);
            }
            if (z) {
                super.onMeasure(i10, i11);
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onRtlPropertiesChanged(int i10) {
        super.onRtlPropertiesChanged(i10);
        if (Build.VERSION.SDK_INT >= 23 || this.f12585b == i10) {
            return;
        }
        requestLayout();
        this.f12585b = i10;
    }
}
