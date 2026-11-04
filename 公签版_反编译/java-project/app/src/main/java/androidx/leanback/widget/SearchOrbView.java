package androidx.leanback.widget;

import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.yunpan.appmanage.R;
import java.util.WeakHashMap;
import x0.b1;

/* loaded from: classes.dex */
public class SearchOrbView extends FrameLayout implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public View.OnClickListener f1571a;

    /* renamed from: b, reason: collision with root package name */
    public final View f1572b;

    /* renamed from: c, reason: collision with root package name */
    public final View f1573c;

    /* renamed from: d, reason: collision with root package name */
    public final ImageView f1574d;

    /* renamed from: e, reason: collision with root package name */
    public Drawable f1575e;

    /* renamed from: f, reason: collision with root package name */
    public n0 f1576f;

    /* renamed from: g, reason: collision with root package name */
    public final float f1577g;

    /* renamed from: h, reason: collision with root package name */
    public final int f1578h;

    /* renamed from: i, reason: collision with root package name */
    public final int f1579i;

    /* renamed from: j, reason: collision with root package name */
    public final float f1580j;

    /* renamed from: k, reason: collision with root package name */
    public final float f1581k;
    public ValueAnimator l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f1582m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f1583n;

    /* renamed from: p, reason: collision with root package name */
    public final ArgbEvaluator f1584p;

    /* renamed from: q, reason: collision with root package name */
    public final m0 f1585q;
    public ValueAnimator r;

    /* renamed from: s, reason: collision with root package name */
    public final m0 f1586s;

    public SearchOrbView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.searchOrbViewStyle);
    }

    public final void a(boolean z) {
        float f10 = z ? this.f1577g : 1.0f;
        ViewPropertyAnimator viewPropertyAnimatorScaleY = this.f1572b.animate().scaleX(f10).scaleY(f10);
        long j10 = this.f1579i;
        viewPropertyAnimatorScaleY.setDuration(j10).start();
        if (this.r == null) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.r = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(this.f1586s);
        }
        if (z) {
            this.r.start();
        } else {
            this.r.reverse();
        }
        this.r.setDuration(j10);
        this.f1582m = z;
        b();
    }

    public final void b() {
        ValueAnimator valueAnimator = this.l;
        if (valueAnimator != null) {
            valueAnimator.end();
            this.l = null;
        }
        if (this.f1582m && this.f1583n) {
            ValueAnimator valueAnimatorOfObject = ValueAnimator.ofObject(this.f1584p, Integer.valueOf(this.f1576f.f1670a), Integer.valueOf(this.f1576f.f1671b), Integer.valueOf(this.f1576f.f1670a));
            this.l = valueAnimatorOfObject;
            valueAnimatorOfObject.setRepeatCount(-1);
            this.l.setDuration(this.f1578h * 2);
            this.l.addUpdateListener(this.f1585q);
            this.l.start();
        }
    }

    public float getFocusedZoom() {
        return this.f1577g;
    }

    public int getLayoutResourceId() {
        return R.layout.lb_search_orb;
    }

    public int getOrbColor() {
        return this.f1576f.f1670a;
    }

    public n0 getOrbColors() {
        return this.f1576f;
    }

    public Drawable getOrbIcon() {
        return this.f1575e;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f1583n = true;
        b();
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        View.OnClickListener onClickListener = this.f1571a;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        this.f1583n = false;
        b();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z, int i10, Rect rect) {
        super.onFocusChanged(z, i10, rect);
        a(z);
    }

    public void setOnOrbClickedListener(View.OnClickListener onClickListener) {
        this.f1571a = onClickListener;
    }

    public void setOrbColor(int i10) {
        setOrbColors(new n0(i10, i10, 0));
    }

    public void setOrbColors(n0 n0Var) {
        this.f1576f = n0Var;
        this.f1574d.setColorFilter(n0Var.f1672c);
        if (this.l == null) {
            setOrbViewColor(this.f1576f.f1670a);
        } else {
            this.f1582m = true;
            b();
        }
    }

    public void setOrbIcon(Drawable drawable) {
        this.f1575e = drawable;
        this.f1574d.setImageDrawable(drawable);
    }

    public void setOrbViewColor(int i10) {
        View view = this.f1573c;
        if (view.getBackground() instanceof GradientDrawable) {
            ((GradientDrawable) view.getBackground()).setColor(i10);
        }
    }

    public void setSearchOrbZ(float f10) {
        float f11 = this.f1581k;
        float f12 = this.f1580j;
        float fB = g.b.b(f11, f12, f10, f12);
        View view = this.f1573c;
        WeakHashMap weakHashMap = b1.f17953a;
        if (Build.VERSION.SDK_INT >= 21) {
            x0.p0.x(view, fB);
        }
    }

    public SearchOrbView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f1584p = new ArgbEvaluator();
        this.f1585q = new m0(this, 0);
        this.f1586s = new m0(this, 1);
        Resources resources = context.getResources();
        View viewInflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(getLayoutResourceId(), (ViewGroup) this, true);
        this.f1572b = viewInflate;
        this.f1573c = viewInflate.findViewById(R.id.search_orb);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.icon);
        this.f1574d = imageView;
        this.f1577g = context.getResources().getFraction(R.fraction.lb_search_orb_focused_zoom, 1, 1);
        this.f1578h = context.getResources().getInteger(R.integer.lb_search_orb_pulse_duration_ms);
        this.f1579i = context.getResources().getInteger(R.integer.lb_search_orb_scale_duration_ms);
        float dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.lb_search_orb_focused_z);
        this.f1581k = dimensionPixelSize;
        this.f1580j = context.getResources().getDimensionPixelSize(R.dimen.lb_search_orb_unfocused_z);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, n1.a.f11250g, i10, 0);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(2);
        setOrbIcon(drawable == null ? resources.getDrawable(R.drawable.lb_ic_in_app_search) : drawable);
        int color = typedArrayObtainStyledAttributes.getColor(1, resources.getColor(R.color.lb_default_search_color));
        setOrbColors(new n0(color, typedArrayObtainStyledAttributes.getColor(0, color), typedArrayObtainStyledAttributes.getColor(3, 0)));
        typedArrayObtainStyledAttributes.recycle();
        setFocusable(true);
        setClipChildren(false);
        setOnClickListener(this);
        setSoundEffectsEnabled(false);
        setSearchOrbZ(0.0f);
        WeakHashMap weakHashMap = b1.f17953a;
        if (Build.VERSION.SDK_INT >= 21) {
            x0.p0.x(imageView, dimensionPixelSize);
        }
    }
}
