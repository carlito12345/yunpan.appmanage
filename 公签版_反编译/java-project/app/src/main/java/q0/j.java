package q0;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;

/* loaded from: classes.dex */
public class j extends Drawable implements Drawable.Callback, i, h {

    /* renamed from: g, reason: collision with root package name */
    public static final PorterDuff.Mode f12917g = PorterDuff.Mode.SRC_IN;

    /* renamed from: a, reason: collision with root package name */
    public int f12918a;

    /* renamed from: b, reason: collision with root package name */
    public PorterDuff.Mode f12919b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f12920c;

    /* renamed from: d, reason: collision with root package name */
    public l f12921d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f12922e;

    /* renamed from: f, reason: collision with root package name */
    public Drawable f12923f;

    public j(l lVar, Resources resources) {
        Drawable.ConstantState constantState;
        this.f12921d = lVar;
        if (lVar == null || (constantState = lVar.f12926b) == null) {
            return;
        }
        b(constantState.newDrawable(resources));
    }

    public boolean a() {
        return true;
    }

    public final void b(Drawable drawable) {
        Drawable drawable2 = this.f12923f;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f12923f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            setVisible(drawable.isVisible(), true);
            setState(drawable.getState());
            setLevel(drawable.getLevel());
            setBounds(drawable.getBounds());
            l lVar = this.f12921d;
            if (lVar != null) {
                lVar.f12926b = drawable.getConstantState();
            }
        }
        invalidateSelf();
    }

    public final boolean c(int[] iArr) {
        if (!a()) {
            return false;
        }
        l lVar = this.f12921d;
        ColorStateList colorStateList = lVar.f12927c;
        PorterDuff.Mode mode = lVar.f12928d;
        if (colorStateList == null || mode == null) {
            this.f12920c = false;
            clearColorFilter();
        } else {
            int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
            if (!this.f12920c || colorForState != this.f12918a || mode != this.f12919b) {
                setColorFilter(colorForState, mode);
                this.f12918a = colorForState;
                this.f12919b = mode;
                this.f12920c = true;
                return true;
            }
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        this.f12923f.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        l lVar = this.f12921d;
        return changingConfigurations | (lVar != null ? lVar.getChangingConfigurations() : 0) | this.f12923f.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        l lVar = this.f12921d;
        if (lVar == null || lVar.f12926b == null) {
            return null;
        }
        lVar.f12925a = getChangingConfigurations();
        return this.f12921d;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable getCurrent() {
        return this.f12923f.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f12923f.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f12923f.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getLayoutDirection() {
        return com.bumptech.glide.c.F(this.f12923f);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumHeight() {
        return this.f12923f.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumWidth() {
        return this.f12923f.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return this.f12923f.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        return this.f12923f.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public final int[] getState() {
        return this.f12923f.getState();
    }

    @Override // android.graphics.drawable.Drawable
    public final Region getTransparentRegion() {
        return this.f12923f.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        Drawable drawable = this.f12923f;
        if (Build.VERSION.SDK_INT >= 19) {
            return a.d(drawable);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        l lVar;
        ColorStateList colorStateList = (!a() || (lVar = this.f12921d) == null) ? null : lVar.f12927c;
        return (colorStateList != null && colorStateList.isStateful()) || this.f12923f.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final void jumpToCurrentState() {
        this.f12923f.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        if (!this.f12922e && super.mutate() == this) {
            this.f12921d = new l(this.f12921d);
            Drawable drawable = this.f12923f;
            if (drawable != null) {
                drawable.mutate();
            }
            l lVar = this.f12921d;
            if (lVar != null) {
                Drawable drawable2 = this.f12923f;
                lVar.f12926b = drawable2 != null ? drawable2.getConstantState() : null;
            }
            this.f12922e = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.f12923f;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLayoutDirectionChanged(int i10) {
        return com.bumptech.glide.c.d0(this.f12923f, i10);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i10) {
        return this.f12923f.setLevel(i10);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
        scheduleSelf(runnable, j10);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i10) {
        this.f12923f.setAlpha(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z) {
        com.bumptech.glide.c.a0(this.f12923f, z);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setChangingConfigurations(int i10) {
        this.f12923f.setChangingConfigurations(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f12923f.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setDither(boolean z) {
        this.f12923f.setDither(z);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setFilterBitmap(boolean z) {
        this.f12923f.setFilterBitmap(z);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        return c(iArr) || this.f12923f.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable, q0.h
    public void setTint(int i10) {
        setTintList(ColorStateList.valueOf(i10));
    }

    @Override // android.graphics.drawable.Drawable, q0.h
    public void setTintList(ColorStateList colorStateList) {
        this.f12921d.f12927c = colorStateList;
        c(this.f12923f.getState());
    }

    @Override // android.graphics.drawable.Drawable, q0.h
    public void setTintMode(PorterDuff.Mode mode) {
        this.f12921d.f12928d = mode;
        c(this.f12923f.getState());
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z4) {
        return super.setVisible(z, z4) || this.f12923f.setVisible(z, z4);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }

    public j(Drawable drawable) {
        this.f12921d = new l(this.f12921d);
        b(drawable);
    }
}
