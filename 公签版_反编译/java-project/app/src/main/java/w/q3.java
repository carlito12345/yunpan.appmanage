package w;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.widget.TextView;
import com.hsae.autosdk.popup.constant.PopupConst;
import com.yunpan.appmanage.R;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class q3 implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {

    /* renamed from: k, reason: collision with root package name */
    public static q3 f17215k;
    public static q3 l;

    /* renamed from: a, reason: collision with root package name */
    public final View f17216a;

    /* renamed from: b, reason: collision with root package name */
    public final CharSequence f17217b;

    /* renamed from: c, reason: collision with root package name */
    public final int f17218c;

    /* renamed from: d, reason: collision with root package name */
    public final p3 f17219d;

    /* renamed from: e, reason: collision with root package name */
    public final p3 f17220e;

    /* renamed from: f, reason: collision with root package name */
    public int f17221f;

    /* renamed from: g, reason: collision with root package name */
    public int f17222g;

    /* renamed from: h, reason: collision with root package name */
    public r3 f17223h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f17224i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f17225j;

    /* JADX WARN: Type inference failed for: r0v0, types: [w.p3] */
    /* JADX WARN: Type inference failed for: r0v1, types: [w.p3] */
    public q3(View view, CharSequence charSequence) {
        final int i10 = 0;
        this.f17219d = new Runnable(this) { // from class: w.p3

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ q3 f17200b;

            {
                this.f17200b = this;
            }

            @Override // java.lang.Runnable
            public final void run() throws Resources.NotFoundException {
                switch (i10) {
                    case 0:
                        this.f17200b.c(false);
                        break;
                    default:
                        this.f17200b.a();
                        break;
                }
            }
        };
        final int i11 = 1;
        this.f17220e = new Runnable(this) { // from class: w.p3

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ q3 f17200b;

            {
                this.f17200b = this;
            }

            @Override // java.lang.Runnable
            public final void run() throws Resources.NotFoundException {
                switch (i11) {
                    case 0:
                        this.f17200b.c(false);
                        break;
                    default:
                        this.f17200b.a();
                        break;
                }
            }
        };
        this.f17216a = view;
        this.f17217b = charSequence;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(view.getContext());
        Method method = x0.e1.f17977a;
        this.f17218c = Build.VERSION.SDK_INT >= 28 ? x0.d1.a(viewConfiguration) : viewConfiguration.getScaledTouchSlop() / 2;
        this.f17225j = true;
        view.setOnLongClickListener(this);
        view.setOnHoverListener(this);
    }

    public static void b(q3 q3Var) {
        q3 q3Var2 = f17215k;
        if (q3Var2 != null) {
            q3Var2.f17216a.removeCallbacks(q3Var2.f17219d);
        }
        f17215k = q3Var;
        if (q3Var != null) {
            q3Var.f17216a.postDelayed(q3Var.f17219d, ViewConfiguration.getLongPressTimeout());
        }
    }

    public final void a() {
        q3 q3Var = l;
        View view = this.f17216a;
        if (q3Var == this) {
            l = null;
            r3 r3Var = this.f17223h;
            if (r3Var != null) {
                View view2 = (View) r3Var.f17243b;
                if (view2.getParent() != null) {
                    ((WindowManager) ((Context) r3Var.f17242a).getSystemService("window")).removeView(view2);
                }
                this.f17223h = null;
                this.f17225j = true;
                view.removeOnAttachStateChangeListener(this);
            }
        }
        if (f17215k == this) {
            b(null);
        }
        view.removeCallbacks(this.f17220e);
    }

    public final void c(boolean z) throws Resources.NotFoundException {
        int height;
        int i10;
        String str;
        int i11;
        String str2;
        long longPressTimeout;
        long j10;
        long j11;
        View view = this.f17216a;
        if (x0.b1.l(view)) {
            b(null);
            q3 q3Var = l;
            if (q3Var != null) {
                q3Var.a();
            }
            l = this;
            this.f17224i = z;
            r3 r3Var = new r3(view.getContext());
            this.f17223h = r3Var;
            int width = this.f17221f;
            int i12 = this.f17222g;
            boolean z4 = this.f17224i;
            View view2 = (View) r3Var.f17243b;
            ViewParent parent = view2.getParent();
            Context context = (Context) r3Var.f17242a;
            if (parent != null && view2.getParent() != null) {
                ((WindowManager) context.getSystemService("window")).removeView(view2);
            }
            ((TextView) r3Var.f17244c).setText(this.f17217b);
            WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) r3Var.f17245d;
            layoutParams.token = view.getApplicationWindowToken();
            int dimensionPixelOffset = context.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_threshold);
            if (view.getWidth() < dimensionPixelOffset) {
                width = view.getWidth() / 2;
            }
            if (view.getHeight() >= dimensionPixelOffset) {
                int dimensionPixelOffset2 = context.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_extra_offset);
                height = i12 + dimensionPixelOffset2;
                i10 = i12 - dimensionPixelOffset2;
            } else {
                height = view.getHeight();
                i10 = 0;
            }
            layoutParams.gravity = 49;
            int dimensionPixelOffset3 = context.getResources().getDimensionPixelOffset(z4 ? R.dimen.tooltip_y_offset_touch : R.dimen.tooltip_y_offset_non_touch);
            View rootView = view.getRootView();
            ViewGroup.LayoutParams layoutParams2 = rootView.getLayoutParams();
            if (!(layoutParams2 instanceof WindowManager.LayoutParams) || ((WindowManager.LayoutParams) layoutParams2).type != 2) {
                Context context2 = view.getContext();
                while (true) {
                    if (!(context2 instanceof ContextWrapper)) {
                        break;
                    }
                    if (context2 instanceof Activity) {
                        rootView = ((Activity) context2).getWindow().getDecorView();
                        break;
                    }
                    context2 = ((ContextWrapper) context2).getBaseContext();
                }
            }
            if (rootView == null) {
                str2 = "window";
            } else {
                Rect rect = (Rect) r3Var.f17246e;
                rootView.getWindowVisibleDisplayFrame(rect);
                if (rect.left >= 0 || rect.top >= 0) {
                    str = "window";
                    i11 = 0;
                } else {
                    Resources resources = context.getResources();
                    str = "window";
                    int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
                    int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
                    DisplayMetrics displayMetrics = resources.getDisplayMetrics();
                    i11 = 0;
                    rect.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
                }
                int[] iArr = (int[]) r3Var.f17248g;
                rootView.getLocationOnScreen(iArr);
                int[] iArr2 = (int[]) r3Var.f17247f;
                view.getLocationOnScreen(iArr2);
                int i13 = iArr2[i11] - iArr[i11];
                iArr2[i11] = i13;
                iArr2[1] = iArr2[1] - iArr[1];
                layoutParams.x = (i13 + width) - (rootView.getWidth() / 2);
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i11, i11);
                view2.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                int measuredHeight = view2.getMeasuredHeight();
                int i14 = iArr2[1];
                int i15 = ((i10 + i14) - dimensionPixelOffset3) - measuredHeight;
                int i16 = i14 + height + dimensionPixelOffset3;
                if (z4) {
                    if (i15 >= 0) {
                        layoutParams.y = i15;
                    } else {
                        layoutParams.y = i16;
                    }
                } else if (measuredHeight + i16 <= rect.height()) {
                    layoutParams.y = i16;
                } else {
                    layoutParams.y = i15;
                }
                str2 = str;
            }
            ((WindowManager) context.getSystemService(str2)).addView(view2, layoutParams);
            view.addOnAttachStateChangeListener(this);
            if (this.f17224i) {
                j11 = 2500;
            } else {
                if ((x0.j0.g(view) & 1) == 1) {
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                    j10 = PopupConst.DURATION_POPUP_SHORT;
                } else {
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                    j10 = 15000;
                }
                j11 = j10 - longPressTimeout;
            }
            p3 p3Var = this.f17220e;
            view.removeCallbacks(p3Var);
            view.postDelayed(p3Var, j11);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0066  */
    @Override // android.view.View.OnHoverListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onHover(View view, MotionEvent motionEvent) {
        if (this.f17223h != null && this.f17224i) {
            return false;
        }
        View view2 = this.f17216a;
        AccessibilityManager accessibilityManager = (AccessibilityManager) view2.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 7) {
            if (action == 10) {
                this.f17225j = true;
                a();
            }
        } else if (view2.isEnabled() && this.f17223h == null) {
            int x10 = (int) motionEvent.getX();
            int y6 = (int) motionEvent.getY();
            if (!this.f17225j) {
                int iAbs = Math.abs(x10 - this.f17221f);
                int i10 = this.f17218c;
                if (iAbs > i10 || Math.abs(y6 - this.f17222g) > i10) {
                    this.f17221f = x10;
                    this.f17222g = y6;
                    this.f17225j = false;
                    b(this);
                }
            }
        }
        return false;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) throws Resources.NotFoundException {
        this.f17221f = view.getWidth() / 2;
        this.f17222g = view.getHeight() / 2;
        c(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        a();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }
}
