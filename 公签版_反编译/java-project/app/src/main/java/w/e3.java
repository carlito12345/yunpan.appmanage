package w;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class e3 extends q2 {

    /* renamed from: b, reason: collision with root package name */
    public final WeakReference f17053b;

    public e3(c3 c3Var, Resources resources) {
        super(resources);
        this.f17053b = new WeakReference(c3Var);
    }

    @Override // android.content.res.Resources
    public final Drawable getDrawable(int i10) {
        Drawable drawableA = a(i10);
        Context context = (Context) this.f17053b.get();
        if (drawableA != null && context != null) {
            p2.d().o(context, i10, drawableA);
        }
        return drawableA;
    }
}
