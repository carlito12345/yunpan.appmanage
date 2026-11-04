package i4;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public final class r extends Drawable.ConstantState {

    /* renamed from: a, reason: collision with root package name */
    public final Drawable.ConstantState f8594a;

    public r(Drawable.ConstantState constantState) {
        this.f8594a = constantState;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final boolean canApplyTheme() {
        return this.f8594a.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        return this.f8594a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        s sVar = new s();
        sVar.f8543a = g7.d.l(this.f8594a.newDrawable());
        return sVar;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        s sVar = new s();
        sVar.f8543a = g7.d.l(this.f8594a.newDrawable(resources));
        return sVar;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources, Resources.Theme theme) {
        s sVar = new s();
        sVar.f8543a = g7.d.l(this.f8594a.newDrawable(resources, theme));
        return sVar;
    }
}
