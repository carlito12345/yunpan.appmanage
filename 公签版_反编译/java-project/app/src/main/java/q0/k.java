package q0;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import java.lang.reflect.Method;
import m0.o;

/* loaded from: classes.dex */
public final class k extends j {

    /* renamed from: h, reason: collision with root package name */
    public static Method f12924h;

    public k(Drawable drawable) {
        super(drawable);
        if (f12924h == null) {
            try {
                f12924h = Drawable.class.getDeclaredMethod("isProjected", null);
            } catch (Exception unused) {
            }
        }
    }

    @Override // q0.j
    public final boolean a() {
        if (Build.VERSION.SDK_INT != 21) {
            return false;
        }
        Drawable drawable = this.f12923f;
        return (drawable instanceof GradientDrawable) || (drawable instanceof DrawableContainer) || (drawable instanceof InsetDrawable) || o.s(drawable);
    }

    @Override // android.graphics.drawable.Drawable
    public final Rect getDirtyBounds() {
        return this.f12923f.getDirtyBounds();
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        this.f12923f.getOutline(outline);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isProjected() {
        Method method;
        Drawable drawable = this.f12923f;
        if (drawable == null || (method = f12924h) == null) {
            return false;
        }
        try {
            return ((Boolean) method.invoke(drawable, null)).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspot(float f10, float f11) {
        this.f12923f.setHotspot(f10, f11);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspotBounds(int i10, int i11, int i12, int i13) {
        this.f12923f.setHotspotBounds(i10, i11, i12, i13);
    }

    @Override // q0.j, android.graphics.drawable.Drawable
    public final boolean setState(int[] iArr) {
        if (!super.setState(iArr)) {
            return false;
        }
        invalidateSelf();
        return true;
    }

    @Override // q0.j, android.graphics.drawable.Drawable, q0.h
    public final void setTint(int i10) {
        if (a()) {
            super.setTint(i10);
        } else {
            this.f12923f.setTint(i10);
        }
    }

    @Override // q0.j, android.graphics.drawable.Drawable, q0.h
    public final void setTintList(ColorStateList colorStateList) {
        if (a()) {
            super.setTintList(colorStateList);
        } else {
            this.f12923f.setTintList(colorStateList);
        }
    }

    @Override // q0.j, android.graphics.drawable.Drawable, q0.h
    public final void setTintMode(PorterDuff.Mode mode) {
        if (a()) {
            super.setTintMode(mode);
        } else {
            this.f12923f.setTintMode(mode);
        }
    }

    public k(l lVar, Resources resources) {
        super(lVar, resources);
        if (f12924h == null) {
            try {
                f12924h = Drawable.class.getDeclaredMethod("isProjected", null);
            } catch (Exception unused) {
            }
        }
    }
}
