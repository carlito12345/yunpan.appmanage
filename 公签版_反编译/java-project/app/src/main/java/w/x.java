package w;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;
import ua.t7;

/* loaded from: classes.dex */
public class x extends ImageView implements x0.e0, b1.y {

    /* renamed from: a, reason: collision with root package name */
    public final b5.i f17287a;

    /* renamed from: b, reason: collision with root package name */
    public final ha.u3 f17288b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f17289c;

    public x(Context context, AttributeSet attributeSet, int i10) {
        super(c3.a(context), attributeSet, i10);
        this.f17289c = false;
        b3.a(this, getContext());
        b5.i iVar = new b5.i(this);
        this.f17287a = iVar;
        iVar.h(attributeSet, i10);
        ha.u3 u3Var = new ha.u3(this);
        this.f17288b = u3Var;
        u3Var.e(attributeSet, i10);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        b5.i iVar = this.f17287a;
        if (iVar != null) {
            iVar.c();
        }
        ha.u3 u3Var = this.f17288b;
        if (u3Var != null) {
            u3Var.c();
        }
    }

    @Override // x0.e0
    public ColorStateList getSupportBackgroundTintList() {
        b5.i iVar = this.f17287a;
        if (iVar != null) {
            return iVar.f();
        }
        return null;
    }

    @Override // x0.e0
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        b5.i iVar = this.f17287a;
        if (iVar != null) {
            return iVar.g();
        }
        return null;
    }

    @Override // b1.y
    public ColorStateList getSupportImageTintList() {
        d3 d3Var;
        ha.u3 u3Var = this.f17288b;
        if (u3Var == null || (d3Var = (d3) u3Var.f7854c) == null) {
            return null;
        }
        return d3Var.f17047a;
    }

    @Override // b1.y
    public PorterDuff.Mode getSupportImageTintMode() {
        d3 d3Var;
        ha.u3 u3Var = this.f17288b;
        if (u3Var == null || (d3Var = (d3) u3Var.f7854c) == null) {
            return null;
        }
        return d3Var.f17048b;
    }

    @Override // android.widget.ImageView, android.view.View
    public final boolean hasOverlappingRendering() {
        return (Build.VERSION.SDK_INT < 21 || !t7.u(((ImageView) this.f17288b.f7853b).getBackground())) && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        b5.i iVar = this.f17287a;
        if (iVar != null) {
            iVar.i();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        b5.i iVar = this.f17287a;
        if (iVar != null) {
            iVar.j(i10);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        ha.u3 u3Var = this.f17288b;
        if (u3Var != null) {
            u3Var.c();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        ha.u3 u3Var = this.f17288b;
        if (u3Var != null && drawable != null && !this.f17289c) {
            u3Var.f7852a = drawable.getLevel();
        }
        super.setImageDrawable(drawable);
        if (u3Var != null) {
            u3Var.c();
            if (this.f17289c) {
                return;
            }
            ImageView imageView = (ImageView) u3Var.f7853b;
            if (imageView.getDrawable() != null) {
                imageView.getDrawable().setLevel(u3Var.f7852a);
            }
        }
    }

    @Override // android.widget.ImageView
    public void setImageLevel(int i10) {
        super.setImageLevel(i10);
        this.f17289c = true;
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i10) {
        ha.u3 u3Var = this.f17288b;
        if (u3Var != null) {
            ImageView imageView = (ImageView) u3Var.f7853b;
            if (i10 != 0) {
                Drawable drawableX = com.bumptech.glide.d.x(imageView.getContext(), i10);
                if (drawableX != null) {
                    n1.a(drawableX);
                }
                imageView.setImageDrawable(drawableX);
            } else {
                imageView.setImageDrawable(null);
            }
            u3Var.c();
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        ha.u3 u3Var = this.f17288b;
        if (u3Var != null) {
            u3Var.c();
        }
    }

    @Override // x0.e0
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        b5.i iVar = this.f17287a;
        if (iVar != null) {
            iVar.o(colorStateList);
        }
    }

    @Override // x0.e0
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        b5.i iVar = this.f17287a;
        if (iVar != null) {
            iVar.p(mode);
        }
    }

    @Override // b1.y
    public void setSupportImageTintList(ColorStateList colorStateList) {
        ha.u3 u3Var = this.f17288b;
        if (u3Var != null) {
            if (((d3) u3Var.f7854c) == null) {
                u3Var.f7854c = new d3();
            }
            d3 d3Var = (d3) u3Var.f7854c;
            d3Var.f17047a = colorStateList;
            d3Var.f17050d = true;
            u3Var.c();
        }
    }

    @Override // b1.y
    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        ha.u3 u3Var = this.f17288b;
        if (u3Var != null) {
            if (((d3) u3Var.f7854c) == null) {
                u3Var.f7854c = new d3();
            }
            d3 d3Var = (d3) u3Var.f7854c;
            d3Var.f17048b = mode;
            d3Var.f17049c = true;
            u3Var.c();
        }
    }
}
