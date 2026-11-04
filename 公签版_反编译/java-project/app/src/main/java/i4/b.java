package i4;

import android.content.res.ColorStateList;
import android.graphics.drawable.Animatable2;
import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public final class b extends Animatable2.AnimationCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a7.a f8522a;

    public b(a7.a aVar) {
        this.f8522a = aVar;
    }

    @Override // android.graphics.drawable.Animatable2.AnimationCallback
    public final void onAnimationEnd(Drawable drawable) {
        ColorStateList colorStateList = this.f8522a.f450b.f462p;
        if (colorStateList != null) {
            com.bumptech.glide.c.f0(drawable, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Animatable2.AnimationCallback
    public final void onAnimationStart(Drawable drawable) {
        a7.d dVar = this.f8522a.f450b;
        ColorStateList colorStateList = dVar.f462p;
        if (colorStateList != null) {
            com.bumptech.glide.c.e0(drawable, colorStateList.getColorForState(dVar.f465t, colorStateList.getDefaultColor()));
        }
    }
}
