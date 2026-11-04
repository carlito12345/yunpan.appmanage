package q7;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public abstract class h extends m7.g {
    public static final /* synthetic */ int A = 0;
    public e z;

    public h(e eVar) {
        super(eVar);
        this.z = eVar;
    }

    @Override // m7.g, android.graphics.drawable.Drawable
    public final Drawable mutate() {
        this.z = new e(this.z);
        return this;
    }

    public final void o(float f10, float f11, float f12, float f13) {
        RectF rectF = this.z.f13068q;
        if (f10 == rectF.left && f11 == rectF.top && f12 == rectF.right && f13 == rectF.bottom) {
            return;
        }
        rectF.set(f10, f11, f12, f13);
        invalidateSelf();
    }
}
