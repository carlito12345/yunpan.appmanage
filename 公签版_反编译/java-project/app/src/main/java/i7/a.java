package i7;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.support.v4.media.session.b;
import android.util.AttributeSet;
import com.bumptech.glide.c;
import com.bumptech.glide.d;
import g7.l;
import w.c0;

/* loaded from: classes.dex */
public final class a extends c0 {

    /* renamed from: g, reason: collision with root package name */
    public static final int[][] f8638g = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};

    /* renamed from: e, reason: collision with root package name */
    public ColorStateList f8639e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f8640f;

    public a(Context context, AttributeSet attributeSet) {
        super(s7.a.a(context, attributeSet, com.yunpan.appmanage.R.attr.radioButtonStyle, com.yunpan.appmanage.R.style.Widget_MaterialComponents_CompoundButton_RadioButton), attributeSet);
        Context context2 = getContext();
        TypedArray typedArrayG = l.g(context2, attributeSet, q6.a.f13044p, com.yunpan.appmanage.R.attr.radioButtonStyle, com.yunpan.appmanage.R.style.Widget_MaterialComponents_CompoundButton_RadioButton, new int[0]);
        if (typedArrayG.hasValue(0)) {
            b.G(this, c.w(context2, typedArrayG, 0));
        }
        this.f8640f = typedArrayG.getBoolean(1, false);
        typedArrayG.recycle();
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f8639e == null) {
            int iS = d.s(com.yunpan.appmanage.R.attr.colorControlActivated, this);
            int iS2 = d.s(com.yunpan.appmanage.R.attr.colorOnSurface, this);
            int iS3 = d.s(com.yunpan.appmanage.R.attr.colorSurface, this);
            this.f8639e = new ColorStateList(f8638g, new int[]{d.K(iS3, 1.0f, iS), d.K(iS3, 0.54f, iS2), d.K(iS3, 0.38f, iS2), d.K(iS3, 0.38f, iS2)});
        }
        return this.f8639e;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f8640f) {
            if ((Build.VERSION.SDK_INT >= 21 ? b1.b.a(this) : getSupportButtonTintList()) == null) {
                setUseMaterialThemeColors(true);
            }
        }
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.f8640f = z;
        if (z) {
            b.G(this, getMaterialThemeColorsTintList());
        } else {
            b.G(this, null);
        }
    }
}
