package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.yunpan.appmanage.R;
import java.util.WeakHashMap;
import w.s2;
import x0.b1;
import x0.j0;

/* loaded from: classes.dex */
public class ActionBarContainer extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public boolean f903a;

    /* renamed from: b, reason: collision with root package name */
    public View f904b;

    /* renamed from: c, reason: collision with root package name */
    public View f905c;

    /* renamed from: d, reason: collision with root package name */
    public Drawable f906d;

    /* renamed from: e, reason: collision with root package name */
    public Drawable f907e;

    /* renamed from: f, reason: collision with root package name */
    public Drawable f908f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f909g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f910h;

    /* renamed from: i, reason: collision with root package name */
    public final int f911i;

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        w.a aVar = new w.a(this);
        WeakHashMap weakHashMap = b1.f17953a;
        j0.q(this, aVar);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p.a.f12515a);
        boolean z = false;
        this.f906d = typedArrayObtainStyledAttributes.getDrawable(0);
        this.f907e = typedArrayObtainStyledAttributes.getDrawable(2);
        this.f911i = typedArrayObtainStyledAttributes.getDimensionPixelSize(13, -1);
        if (getId() == R.id.split_action_bar) {
            this.f909g = true;
            this.f908f = typedArrayObtainStyledAttributes.getDrawable(1);
        }
        typedArrayObtainStyledAttributes.recycle();
        if (!this.f909g ? !(this.f906d != null || this.f907e != null) : this.f908f == null) {
            z = true;
        }
        setWillNotDraw(z);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f906d;
        if (drawable != null && drawable.isStateful()) {
            this.f906d.setState(getDrawableState());
        }
        Drawable drawable2 = this.f907e;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f907e.setState(getDrawableState());
        }
        Drawable drawable3 = this.f908f;
        if (drawable3 == null || !drawable3.isStateful()) {
            return;
        }
        this.f908f.setState(getDrawableState());
    }

    public View getTabContainer() {
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f906d;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f907e;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.f908f;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f904b = findViewById(R.id.action_bar);
        this.f905c = findViewById(R.id.action_context_bar);
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f903a || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i10, int i11, int i12, int i13) {
        super.onLayout(z, i10, i11, i12, i13);
        boolean z4 = true;
        if (this.f909g) {
            Drawable drawable = this.f908f;
            if (drawable != null) {
                drawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            } else {
                z4 = false;
            }
        } else {
            if (this.f906d == null) {
                z4 = false;
            } else if (this.f904b.getVisibility() == 0) {
                this.f906d.setBounds(this.f904b.getLeft(), this.f904b.getTop(), this.f904b.getRight(), this.f904b.getBottom());
            } else {
                View view = this.f905c;
                if (view == null || view.getVisibility() != 0) {
                    this.f906d.setBounds(0, 0, 0, 0);
                } else {
                    this.f906d.setBounds(this.f905c.getLeft(), this.f905c.getTop(), this.f905c.getRight(), this.f905c.getBottom());
                }
            }
            this.f910h = false;
        }
        if (z4) {
            invalidate();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i10, int i11) {
        int i12;
        if (this.f904b == null && View.MeasureSpec.getMode(i11) == Integer.MIN_VALUE && (i12 = this.f911i) >= 0) {
            i11 = View.MeasureSpec.makeMeasureSpec(Math.min(i12, View.MeasureSpec.getSize(i11)), Integer.MIN_VALUE);
        }
        super.onMeasure(i10, i11);
        if (this.f904b == null) {
            return;
        }
        View.MeasureSpec.getMode(i11);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable) {
        Drawable drawable2 = this.f906d;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f906d);
        }
        this.f906d = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            View view = this.f904b;
            if (view != null) {
                this.f906d.setBounds(view.getLeft(), this.f904b.getTop(), this.f904b.getRight(), this.f904b.getBottom());
            }
        }
        boolean z = false;
        if (!this.f909g ? !(this.f906d != null || this.f907e != null) : this.f908f == null) {
            z = true;
        }
        setWillNotDraw(z);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            a2.d.i(this);
        }
    }

    public void setSplitBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f908f;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f908f);
        }
        this.f908f = drawable;
        boolean z = this.f909g;
        boolean z4 = false;
        if (drawable != null) {
            drawable.setCallback(this);
            if (z && (drawable2 = this.f908f) != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            }
        }
        if (!z ? !(this.f906d != null || this.f907e != null) : this.f908f == null) {
            z4 = true;
        }
        setWillNotDraw(z4);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            a2.d.i(this);
        }
    }

    public void setStackedBackground(Drawable drawable) {
        Drawable drawable2 = this.f907e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f907e);
        }
        this.f907e = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f910h && this.f907e != null) {
                throw null;
            }
        }
        boolean z = false;
        if (!this.f909g ? !(this.f906d != null || this.f907e != null) : this.f908f == null) {
            z = true;
        }
        setWillNotDraw(z);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            a2.d.i(this);
        }
    }

    public void setTransitioning(boolean z) {
        this.f903a = z;
        setDescendantFocusability(z ? 393216 : 262144);
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        boolean z = i10 == 0;
        Drawable drawable = this.f906d;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
        Drawable drawable2 = this.f907e;
        if (drawable2 != null) {
            drawable2.setVisible(z, false);
        }
        Drawable drawable3 = this.f908f;
        if (drawable3 != null) {
            drawable3.setVisible(z, false);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        Drawable drawable2 = this.f906d;
        boolean z = this.f909g;
        return (drawable == drawable2 && !z) || (drawable == this.f907e && this.f910h) || ((drawable == this.f908f && z) || super.verifyDrawable(drawable));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i10) {
        if (i10 != 0) {
            return super.startActionModeForChild(view, callback, i10);
        }
        return null;
    }

    public void setTabContainer(s2 s2Var) {
    }
}
