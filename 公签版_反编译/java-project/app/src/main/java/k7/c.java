package k7;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.util.TypedValue;
import com.yunpan.appmanage.R;
import n0.g;

/* loaded from: classes.dex */
public abstract class c {
    /* JADX INFO: Access modifiers changed from: private */
    public static Drawable b(Context context, int i10) {
        ColorStateList colorStateListD;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        gradientDrawable.setShape(1);
        InsetDrawable insetDrawable = new InsetDrawable((Drawable) gradientDrawable, i10, i10, i10, i10);
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(0);
        TypedValue typedValueD = android.support.v4.media.session.b.D(context, R.attr.colorControlHighlight);
        if (typedValueD != null) {
            int i11 = typedValueD.resourceId;
            colorStateListD = i11 != 0 ? g.d(context, i11) : ColorStateList.valueOf(typedValueD.data);
        } else {
            colorStateListD = null;
        }
        if (colorStateListD != null) {
            colorStateListValueOf = colorStateListD;
        }
        return new RippleDrawable(colorStateListValueOf, null, insetDrawable);
    }
}
