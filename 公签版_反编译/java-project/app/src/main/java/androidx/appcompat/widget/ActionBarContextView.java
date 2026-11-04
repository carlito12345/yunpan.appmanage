package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.leanback.widget.h0;
import com.yunpan.appmanage.R;
import eb.h;
import java.util.WeakHashMap;
import ta.q;
import v.k;
import v.z;
import w.e;
import w.j;
import w.u3;
import x0.b1;
import x0.j0;
import x0.l1;

/* loaded from: classes.dex */
public class ActionBarContextView extends ViewGroup {

    /* renamed from: a, reason: collision with root package name */
    public final h f912a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f913b;

    /* renamed from: c, reason: collision with root package name */
    public ActionMenuView f914c;

    /* renamed from: d, reason: collision with root package name */
    public j f915d;

    /* renamed from: e, reason: collision with root package name */
    public int f916e;

    /* renamed from: f, reason: collision with root package name */
    public l1 f917f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f918g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f919h;

    /* renamed from: i, reason: collision with root package name */
    public CharSequence f920i;

    /* renamed from: j, reason: collision with root package name */
    public CharSequence f921j;

    /* renamed from: k, reason: collision with root package name */
    public View f922k;
    public View l;

    /* renamed from: m, reason: collision with root package name */
    public View f923m;

    /* renamed from: n, reason: collision with root package name */
    public LinearLayout f924n;

    /* renamed from: p, reason: collision with root package name */
    public TextView f925p;

    /* renamed from: q, reason: collision with root package name */
    public TextView f926q;
    public final int r;

    /* renamed from: s, reason: collision with root package name */
    public final int f927s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f928t;

    /* renamed from: v, reason: collision with root package name */
    public final int f929v;

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        int resourceId;
        super(context, attributeSet, R.attr.actionModeStyle);
        this.f912a = new h(this);
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(R.attr.actionBarPopupTheme, typedValue, true) || typedValue.resourceId == 0) {
            this.f913b = context;
        } else {
            this.f913b = new ContextThemeWrapper(context, typedValue.resourceId);
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p.a.f12518d, R.attr.actionModeStyle, 0);
        Drawable drawable = (!typedArrayObtainStyledAttributes.hasValue(0) || (resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0)) == 0) ? typedArrayObtainStyledAttributes.getDrawable(0) : com.bumptech.glide.d.x(context, resourceId);
        WeakHashMap weakHashMap = b1.f17953a;
        j0.q(this, drawable);
        this.r = typedArrayObtainStyledAttributes.getResourceId(5, 0);
        this.f927s = typedArrayObtainStyledAttributes.getResourceId(4, 0);
        this.f916e = typedArrayObtainStyledAttributes.getLayoutDimension(3, 0);
        this.f929v = typedArrayObtainStyledAttributes.getResourceId(2, R.layout.abc_action_mode_close_item_material);
        typedArrayObtainStyledAttributes.recycle();
    }

    public static int f(View view, int i10, int i11) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i10, Integer.MIN_VALUE), i11);
        return Math.max(0, i10 - view.getMeasuredWidth());
    }

    public static int g(View view, int i10, int i11, int i12, boolean z) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int iG = q.g(i12, measuredHeight, 2, i11);
        if (z) {
            view.layout(i10 - measuredWidth, iG, i10, measuredHeight + iG);
        } else {
            view.layout(i10, iG, i10 + measuredWidth, measuredHeight + iG);
        }
        return z ? -measuredWidth : measuredWidth;
    }

    public final void c(u.a aVar) {
        View view = this.f922k;
        if (view == null) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(this.f929v, (ViewGroup) this, false);
            this.f922k = viewInflate;
            addView(viewInflate);
        } else if (view.getParent() == null) {
            addView(this.f922k);
        }
        View viewFindViewById = this.f922k.findViewById(R.id.action_mode_close_button);
        this.l = viewFindViewById;
        viewFindViewById.setOnClickListener(new h0(6, aVar));
        k kVarC = aVar.c();
        j jVar = this.f915d;
        if (jVar != null) {
            jVar.h();
            e eVar = jVar.f17125v;
            if (eVar != null && eVar.b()) {
                eVar.f16298i.dismiss();
            }
        }
        j jVar2 = new j(getContext());
        this.f915d = jVar2;
        jVar2.l = true;
        jVar2.f17119m = true;
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        kVarC.b(this.f915d, this.f913b);
        j jVar3 = this.f915d;
        z zVar = jVar3.f17115h;
        if (zVar == null) {
            z zVar2 = (z) jVar3.f17111d.inflate(jVar3.f17113f, (ViewGroup) this, false);
            jVar3.f17115h = zVar2;
            zVar2.a(jVar3.f17110c);
            jVar3.g();
        }
        z zVar3 = jVar3.f17115h;
        if (zVar != zVar3) {
            ((ActionMenuView) zVar3).setPresenter(jVar3);
        }
        ActionMenuView actionMenuView = (ActionMenuView) zVar3;
        this.f914c = actionMenuView;
        WeakHashMap weakHashMap = b1.f17953a;
        j0.q(actionMenuView, null);
        addView(this.f914c, layoutParams);
    }

    public final void d() {
        if (this.f924n == null) {
            LayoutInflater.from(getContext()).inflate(R.layout.abc_action_bar_title_item, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.f924n = linearLayout;
            this.f925p = (TextView) linearLayout.findViewById(R.id.action_bar_title);
            this.f926q = (TextView) this.f924n.findViewById(R.id.action_bar_subtitle);
            int i10 = this.r;
            if (i10 != 0) {
                this.f925p.setTextAppearance(getContext(), i10);
            }
            int i11 = this.f927s;
            if (i11 != 0) {
                this.f926q.setTextAppearance(getContext(), i11);
            }
        }
        this.f925p.setText(this.f920i);
        this.f926q.setText(this.f921j);
        boolean zIsEmpty = TextUtils.isEmpty(this.f920i);
        boolean zIsEmpty2 = TextUtils.isEmpty(this.f921j);
        this.f926q.setVisibility(!zIsEmpty2 ? 0 : 8);
        this.f924n.setVisibility((zIsEmpty && zIsEmpty2) ? 8 : 0);
        if (this.f924n.getParent() == null) {
            addView(this.f924n);
        }
    }

    public final void e() {
        removeAllViews();
        this.f923m = null;
        this.f914c = null;
        this.f915d = null;
        View view = this.l;
        if (view != null) {
            view.setOnClickListener(null);
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    public int getAnimatedVisibility() {
        return this.f917f != null ? this.f912a.f4845a : getVisibility();
    }

    public int getContentHeight() {
        return this.f916e;
    }

    public CharSequence getSubtitle() {
        return this.f921j;
    }

    public CharSequence getTitle() {
        return this.f920i;
    }

    @Override // android.view.View
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public final void setVisibility(int i10) {
        if (i10 != getVisibility()) {
            l1 l1Var = this.f917f;
            if (l1Var != null) {
                l1Var.b();
            }
            super.setVisibility(i10);
        }
    }

    public final l1 i(int i10, long j10) {
        l1 l1Var = this.f917f;
        if (l1Var != null) {
            l1Var.b();
        }
        h hVar = this.f912a;
        if (i10 != 0) {
            l1 l1VarA = b1.a(this);
            l1VarA.a(0.0f);
            l1VarA.c(j10);
            ((ActionBarContextView) hVar.f4847c).f917f = l1VarA;
            hVar.f4845a = i10;
            l1VarA.d(hVar);
            return l1VarA;
        }
        if (getVisibility() != 0) {
            setAlpha(0.0f);
        }
        l1 l1VarA2 = b1.a(this);
        l1VarA2.a(1.0f);
        l1VarA2.c(j10);
        ((ActionBarContextView) hVar.f4847c).f917f = l1VarA2;
        hVar.f4845a = i10;
        l1VarA2.d(hVar);
        return l1VarA2;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, p.a.f12515a, R.attr.actionBarStyle, 0);
        setContentHeight(typedArrayObtainStyledAttributes.getLayoutDimension(13, 0));
        typedArrayObtainStyledAttributes.recycle();
        j jVar = this.f915d;
        if (jVar != null) {
            Configuration configuration2 = jVar.f17109b.getResources().getConfiguration();
            int i10 = configuration2.screenWidthDp;
            int i11 = configuration2.screenHeightDp;
            jVar.f17122q = (configuration2.smallestScreenWidthDp > 600 || i10 > 600 || (i10 > 960 && i11 > 720) || (i10 > 720 && i11 > 960)) ? 5 : (i10 >= 500 || (i10 > 640 && i11 > 480) || (i10 > 480 && i11 > 640)) ? 4 : i10 >= 360 ? 3 : 2;
            k kVar = jVar.f17110c;
            if (kVar != null) {
                kVar.p(true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        j jVar = this.f915d;
        if (jVar != null) {
            jVar.h();
            e eVar = this.f915d.f17125v;
            if (eVar == null || !eVar.b()) {
                return;
            }
            eVar.f16298i.dismiss();
        }
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f919h = false;
        }
        if (!this.f919h) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.f919h = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f919h = false;
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i10, int i11, int i12, int i13) {
        boolean zA = u3.a(this);
        int paddingRight = zA ? (i12 - i10) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i13 - i11) - getPaddingTop()) - getPaddingBottom();
        View view = this.f922k;
        if (view != null && view.getVisibility() != 8) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f922k.getLayoutParams();
            int i14 = zA ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i15 = zA ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int i16 = zA ? paddingRight - i14 : paddingRight + i14;
            int iG = g(this.f922k, i16, paddingTop, paddingTop2, zA) + i16;
            paddingRight = zA ? iG - i15 : iG + i15;
        }
        LinearLayout linearLayout = this.f924n;
        if (linearLayout != null && this.f923m == null && linearLayout.getVisibility() != 8) {
            paddingRight += g(this.f924n, paddingRight, paddingTop, paddingTop2, zA);
        }
        View view2 = this.f923m;
        if (view2 != null) {
            g(view2, paddingRight, paddingTop, paddingTop2, zA);
        }
        int paddingLeft = zA ? getPaddingLeft() : (i12 - i10) - getPaddingRight();
        ActionMenuView actionMenuView = this.f914c;
        if (actionMenuView != null) {
            g(actionMenuView, paddingLeft, paddingTop, paddingTop2, !zA);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i10, int i11) {
        if (View.MeasureSpec.getMode(i10) != 1073741824) {
            throw new IllegalStateException(getClass().getSimpleName().concat(" can only be used with android:layout_width=\"match_parent\" (or fill_parent)"));
        }
        if (View.MeasureSpec.getMode(i11) == 0) {
            throw new IllegalStateException(getClass().getSimpleName().concat(" can only be used with android:layout_height=\"wrap_content\""));
        }
        int size = View.MeasureSpec.getSize(i10);
        int size2 = this.f916e;
        if (size2 <= 0) {
            size2 = View.MeasureSpec.getSize(i11);
        }
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int iMin = size2 - paddingBottom;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMin, Integer.MIN_VALUE);
        View view = this.f922k;
        if (view != null) {
            int iF = f(view, paddingLeft, iMakeMeasureSpec);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f922k.getLayoutParams();
            paddingLeft = iF - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
        }
        ActionMenuView actionMenuView = this.f914c;
        if (actionMenuView != null && actionMenuView.getParent() == this) {
            paddingLeft = f(this.f914c, paddingLeft, iMakeMeasureSpec);
        }
        LinearLayout linearLayout = this.f924n;
        if (linearLayout != null && this.f923m == null) {
            if (this.f928t) {
                this.f924n.measure(View.MeasureSpec.makeMeasureSpec(0, 0), iMakeMeasureSpec);
                int measuredWidth = this.f924n.getMeasuredWidth();
                boolean z = measuredWidth <= paddingLeft;
                if (z) {
                    paddingLeft -= measuredWidth;
                }
                this.f924n.setVisibility(z ? 0 : 8);
            } else {
                paddingLeft = f(linearLayout, paddingLeft, iMakeMeasureSpec);
            }
        }
        View view2 = this.f923m;
        if (view2 != null) {
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            int i12 = layoutParams.width;
            int i13 = i12 != -2 ? 1073741824 : Integer.MIN_VALUE;
            if (i12 >= 0) {
                paddingLeft = Math.min(i12, paddingLeft);
            }
            int i14 = layoutParams.height;
            int i15 = i14 == -2 ? Integer.MIN_VALUE : 1073741824;
            if (i14 >= 0) {
                iMin = Math.min(i14, iMin);
            }
            this.f923m.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i13), View.MeasureSpec.makeMeasureSpec(iMin, i15));
        }
        if (this.f916e > 0) {
            setMeasuredDimension(size, size2);
            return;
        }
        int childCount = getChildCount();
        int i16 = 0;
        for (int i17 = 0; i17 < childCount; i17++) {
            int measuredHeight = getChildAt(i17).getMeasuredHeight() + paddingBottom;
            if (measuredHeight > i16) {
                i16 = measuredHeight;
            }
        }
        setMeasuredDimension(size, i16);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f918g = false;
        }
        if (!this.f918g) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.f918g = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f918g = false;
        }
        return true;
    }

    public void setContentHeight(int i10) {
        this.f916e = i10;
    }

    public void setCustomView(View view) {
        LinearLayout linearLayout;
        View view2 = this.f923m;
        if (view2 != null) {
            removeView(view2);
        }
        this.f923m = view;
        if (view != null && (linearLayout = this.f924n) != null) {
            removeView(linearLayout);
            this.f924n = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f921j = charSequence;
        d();
    }

    public void setTitle(CharSequence charSequence) {
        this.f920i = charSequence;
        d();
        b1.z(this, charSequence);
    }

    public void setTitleOptional(boolean z) {
        if (z != this.f928t) {
            requestLayout();
        }
        this.f928t = z;
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }
}
