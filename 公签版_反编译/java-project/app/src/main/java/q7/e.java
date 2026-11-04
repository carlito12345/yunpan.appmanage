package q7;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;

/* loaded from: classes.dex */
public final class e extends m7.f {

    /* renamed from: q, reason: collision with root package name */
    public final RectF f13068q;

    public e(m7.j jVar, RectF rectF) {
        super(jVar);
        this.f13068q = rectF;
    }

    @Override // m7.f, android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        Drawable gVar = Build.VERSION.SDK_INT >= 18 ? new g(this) : new f(this);
        gVar.invalidateSelf();
        return gVar;
    }

    public e(e eVar) {
        super(eVar);
        this.f13068q = eVar.f13068q;
    }
}
