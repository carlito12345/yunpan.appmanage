package w;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;

/* loaded from: classes.dex */
public final class z extends PopupWindow {

    /* renamed from: b, reason: collision with root package name */
    public static final boolean f17322b;

    /* renamed from: a, reason: collision with root package name */
    public final boolean f17323a;

    static {
        f17322b = Build.VERSION.SDK_INT < 21;
    }

    public z(Context context, AttributeSet attributeSet, int i10) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        super(context, attributeSet, i10, 0);
        s4.a aVarJ = s4.a.j(context, attributeSet, p.a.f12531s, i10);
        TypedArray typedArray = (TypedArray) aVarJ.f14294c;
        if (typedArray.hasValue(2)) {
            boolean z = typedArray.getBoolean(2, false);
            if (f17322b) {
                this.f17323a = z;
            } else {
                com.bumptech.glide.d.f0(this, z);
            }
        }
        setBackgroundDrawable(aVarJ.e(0));
        aVarJ.r();
    }

    @Override // android.widget.PopupWindow
    public final void showAsDropDown(View view, int i10, int i11) {
        if (f17322b && this.f17323a) {
            i11 -= view.getHeight();
        }
        super.showAsDropDown(view, i10, i11);
    }

    @Override // android.widget.PopupWindow
    public final void update(View view, int i10, int i11, int i12, int i13) {
        if (f17322b && this.f17323a) {
            i11 -= view.getHeight();
        }
        super.update(view, i10, i11, i12, i13);
    }

    @Override // android.widget.PopupWindow
    public final void showAsDropDown(View view, int i10, int i11, int i12) {
        if (f17322b && this.f17323a) {
            i11 -= view.getHeight();
        }
        super.showAsDropDown(view, i10, i11, i12);
    }
}
