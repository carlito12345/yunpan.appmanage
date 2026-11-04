package q0;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;

/* loaded from: classes.dex */
public final class l extends Drawable.ConstantState {

    /* renamed from: a, reason: collision with root package name */
    public int f12925a;

    /* renamed from: b, reason: collision with root package name */
    public Drawable.ConstantState f12926b;

    /* renamed from: c, reason: collision with root package name */
    public ColorStateList f12927c;

    /* renamed from: d, reason: collision with root package name */
    public PorterDuff.Mode f12928d;

    public l(l lVar) {
        this.f12927c = null;
        this.f12928d = j.f12917g;
        if (lVar != null) {
            this.f12925a = lVar.f12925a;
            this.f12926b = lVar.f12926b;
            this.f12927c = lVar.f12927c;
            this.f12928d = lVar.f12928d;
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        int i10 = this.f12925a;
        Drawable.ConstantState constantState = this.f12926b;
        return i10 | (constantState != null ? constantState.getChangingConfigurations() : 0);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        return newDrawable(null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        return Build.VERSION.SDK_INT >= 21 ? new k(this, resources) : new j(this, resources);
    }
}
