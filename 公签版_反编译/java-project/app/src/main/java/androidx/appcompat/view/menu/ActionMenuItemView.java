package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import p.a;
import v.b;
import v.c;
import v.j;
import v.m;
import v.y;
import w.b1;
import w.k;

/* loaded from: classes.dex */
public class ActionMenuItemView extends b1 implements y, View.OnClickListener, k {

    /* renamed from: h, reason: collision with root package name */
    public m f877h;

    /* renamed from: i, reason: collision with root package name */
    public CharSequence f878i;

    /* renamed from: j, reason: collision with root package name */
    public Drawable f879j;

    /* renamed from: k, reason: collision with root package name */
    public j f880k;
    public b l;

    /* renamed from: m, reason: collision with root package name */
    public c f881m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f882n;

    /* renamed from: p, reason: collision with root package name */
    public boolean f883p;

    /* renamed from: q, reason: collision with root package name */
    public final int f884q;
    public int r;

    /* renamed from: s, reason: collision with root package name */
    public final int f885s;

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        Resources resources = context.getResources();
        this.f882n = g();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f12517c, 0, 0);
        this.f884q = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.f885s = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.r = -1;
        setSaveEnabled(false);
    }

    @Override // w.k
    public final boolean a() {
        return !TextUtils.isEmpty(getText());
    }

    @Override // w.k
    public final boolean b() {
        return !TextUtils.isEmpty(getText()) && this.f877h.getIcon() == null;
    }

    @Override // v.y
    public final void c(m mVar) {
        this.f877h = mVar;
        setIcon(mVar.getIcon());
        setTitle(mVar.getTitleCondensed());
        setId(mVar.f16257a);
        setVisibility(mVar.isVisible() ? 0 : 8);
        setEnabled(mVar.isEnabled());
        if (mVar.hasSubMenu() && this.l == null) {
            this.l = new b(this);
        }
    }

    public final boolean g() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i10 = configuration.screenWidthDp;
        return i10 >= 480 || (i10 >= 640 && configuration.screenHeightDp >= 480) || configuration.orientation == 2;
    }

    @Override // android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        return Button.class.getName();
    }

    @Override // v.y
    public m getItemData() {
        return this.f877h;
    }

    public final void h() {
        boolean z = true;
        boolean z4 = !TextUtils.isEmpty(this.f878i);
        if (this.f879j != null && ((this.f877h.A & 4) != 4 || (!this.f882n && !this.f883p))) {
            z = false;
        }
        boolean z10 = z4 & z;
        setText(z10 ? this.f878i : null);
        CharSequence charSequence = this.f877h.r;
        if (TextUtils.isEmpty(charSequence)) {
            setContentDescription(z10 ? null : this.f877h.f16261e);
        } else {
            setContentDescription(charSequence);
        }
        CharSequence charSequence2 = this.f877h.f16272s;
        if (TextUtils.isEmpty(charSequence2)) {
            q4.a.a0(this, z10 ? null : this.f877h.f16261e);
        } else {
            q4.a.a0(this, charSequence2);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        j jVar = this.f880k;
        if (jVar != null) {
            jVar.b(this.f877h);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f882n = g();
        h();
    }

    @Override // w.b1, android.widget.TextView, android.view.View
    public final void onMeasure(int i10, int i11) {
        int i12;
        boolean zIsEmpty = TextUtils.isEmpty(getText());
        if (!zIsEmpty && (i12 = this.r) >= 0) {
            super.setPadding(i12, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i10, i11);
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        int measuredWidth = getMeasuredWidth();
        int i13 = this.f884q;
        int iMin = mode == Integer.MIN_VALUE ? Math.min(size, i13) : i13;
        if (mode != 1073741824 && i13 > 0 && measuredWidth < iMin) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(iMin, 1073741824), i11);
        }
        if (!zIsEmpty || this.f879j == null) {
            return;
        }
        super.setPadding((getMeasuredWidth() - this.f879j.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        b bVar;
        if (this.f877h.hasSubMenu() && (bVar = this.l) != null && bVar.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setCheckable(boolean z) {
    }

    public void setChecked(boolean z) {
    }

    public void setExpandedFormat(boolean z) {
        if (this.f883p != z) {
            this.f883p = z;
            m mVar = this.f877h;
            if (mVar != null) {
                v.k kVar = mVar.f16269n;
                kVar.f16243k = true;
                kVar.p(true);
            }
        }
    }

    public void setIcon(Drawable drawable) {
        this.f879j = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i10 = this.f885s;
            if (intrinsicWidth > i10) {
                intrinsicHeight = (int) (intrinsicHeight * (i10 / intrinsicWidth));
                intrinsicWidth = i10;
            }
            if (intrinsicHeight > i10) {
                intrinsicWidth = (int) (intrinsicWidth * (i10 / intrinsicHeight));
            } else {
                i10 = intrinsicHeight;
            }
            drawable.setBounds(0, 0, intrinsicWidth, i10);
        }
        setCompoundDrawables(drawable, null, null, null);
        h();
    }

    public void setItemInvoker(j jVar) {
        this.f880k = jVar;
    }

    @Override // android.widget.TextView, android.view.View
    public final void setPadding(int i10, int i11, int i12, int i13) {
        this.r = i10;
        super.setPadding(i10, i11, i12, i13);
    }

    public void setPopupCallback(c cVar) {
        this.f881m = cVar;
    }

    public void setTitle(CharSequence charSequence) {
        this.f878i = charSequence;
        h();
    }
}
