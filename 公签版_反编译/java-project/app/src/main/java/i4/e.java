package i4;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public final class e extends Drawable.ConstantState {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8529a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f8530b;

    public /* synthetic */ e(int i10, Object obj) {
        this.f8529a = i10;
        this.f8530b = obj;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public boolean canApplyTheme() {
        switch (this.f8529a) {
            case 0:
                return ((Drawable.ConstantState) this.f8530b).canApplyTheme();
            default:
                return super.canApplyTheme();
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        switch (this.f8529a) {
            case 0:
                return ((Drawable.ConstantState) this.f8530b).getChangingConfigurations();
            default:
                return 0;
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        switch (this.f8529a) {
            case 0:
                f fVar = new f(null);
                Drawable drawableNewDrawable = ((Drawable.ConstantState) this.f8530b).newDrawable();
                fVar.f8543a = drawableNewDrawable;
                drawableNewDrawable.setCallback(fVar.f8537g);
                return fVar;
            default:
                return new s5.b(this);
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        switch (this.f8529a) {
            case 0:
                f fVar = new f(null);
                Drawable drawableNewDrawable = ((Drawable.ConstantState) this.f8530b).newDrawable(resources);
                fVar.f8543a = drawableNewDrawable;
                drawableNewDrawable.setCallback(fVar.f8537g);
                return fVar;
            default:
                return new s5.b(this);
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable(Resources resources, Resources.Theme theme) {
        switch (this.f8529a) {
            case 0:
                f fVar = new f(null);
                Drawable drawableNewDrawable = ((Drawable.ConstantState) this.f8530b).newDrawable(resources, theme);
                fVar.f8543a = drawableNewDrawable;
                drawableNewDrawable.setCallback(fVar.f8537g);
                return fVar;
            default:
                return super.newDrawable(resources, theme);
        }
    }
}
