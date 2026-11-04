package i1;

import android.graphics.Rect;
import android.text.method.TransformationMethod;
import android.view.View;
import androidx.emoji2.text.l;

/* loaded from: classes.dex */
public final class k implements TransformationMethod {

    /* renamed from: a, reason: collision with root package name */
    public final TransformationMethod f8425a;

    public k(TransformationMethod transformationMethod) {
        this.f8425a = transformationMethod;
    }

    @Override // android.text.method.TransformationMethod
    public final CharSequence getTransformation(CharSequence charSequence, View view) {
        if (view.isInEditMode()) {
            return charSequence;
        }
        TransformationMethod transformationMethod = this.f8425a;
        if (transformationMethod != null) {
            charSequence = transformationMethod.getTransformation(charSequence, view);
        }
        if (charSequence == null || l.a().b() != 1) {
            return charSequence;
        }
        l lVarA = l.a();
        lVarA.getClass();
        return lVarA.f(0, charSequence.length(), charSequence);
    }

    @Override // android.text.method.TransformationMethod
    public final void onFocusChanged(View view, CharSequence charSequence, boolean z, int i10, Rect rect) {
        TransformationMethod transformationMethod = this.f8425a;
        if (transformationMethod != null) {
            transformationMethod.onFocusChanged(view, charSequence, z, i10, rect);
        }
    }
}
