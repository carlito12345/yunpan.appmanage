package k7;

import android.graphics.drawable.Drawable;
import m7.g;

/* loaded from: classes.dex */
public final class a extends Drawable.ConstantState {

    /* renamed from: a, reason: collision with root package name */
    public final g f10179a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f10180b;

    public a(g gVar) {
        this.f10179a = gVar;
        this.f10180b = false;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        return new b(new a(this));
    }

    public a(a aVar) {
        this.f10179a = (g) aVar.f10179a.f10920a.newDrawable();
        this.f10180b = aVar.f10180b;
    }
}
