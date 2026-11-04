package k7;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import m7.j;
import m7.u;
import q0.h;

/* loaded from: classes.dex */
public final class b extends Drawable implements u, h {

    /* renamed from: a, reason: collision with root package name */
    public a f10181a;

    public b(a aVar) {
        this.f10181a = aVar;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        a aVar = this.f10181a;
        if (aVar.f10180b) {
            aVar.f10179a.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.f10181a;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        this.f10181a.f10179a.getClass();
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        this.f10181a = new a(this.f10181a);
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f10181a.f10179a.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        boolean zOnStateChange = super.onStateChange(iArr);
        if (this.f10181a.f10179a.setState(iArr)) {
            zOnStateChange = true;
        }
        boolean zC = d.c(iArr);
        a aVar = this.f10181a;
        if (aVar.f10180b == zC) {
            return zOnStateChange;
        }
        aVar.f10180b = zC;
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i10) {
        this.f10181a.f10179a.setAlpha(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f10181a.f10179a.setColorFilter(colorFilter);
    }

    @Override // m7.u
    public final void setShapeAppearanceModel(j jVar) {
        this.f10181a.f10179a.setShapeAppearanceModel(jVar);
    }

    @Override // android.graphics.drawable.Drawable, q0.h
    public final void setTint(int i10) {
        this.f10181a.f10179a.setTint(i10);
    }

    @Override // android.graphics.drawable.Drawable, q0.h
    public final void setTintList(ColorStateList colorStateList) {
        this.f10181a.f10179a.setTintList(colorStateList);
    }

    @Override // android.graphics.drawable.Drawable, q0.h
    public final void setTintMode(PorterDuff.Mode mode) {
        this.f10181a.f10179a.setTintMode(mode);
    }
}
