package w;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public final class j3 extends ViewGroup.MarginLayoutParams {

    /* renamed from: a, reason: collision with root package name */
    public int f17132a;

    /* renamed from: b, reason: collision with root package name */
    public int f17133b;

    public j3(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f17132a = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p.a.f12516b);
        this.f17132a = typedArrayObtainStyledAttributes.getInt(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.f17133b = 0;
    }

    public j3() {
        super(-2, -2);
        this.f17133b = 0;
        this.f17132a = 8388627;
    }

    public j3(j3 j3Var) {
        super((ViewGroup.MarginLayoutParams) j3Var);
        this.f17132a = 0;
        this.f17132a = j3Var.f17132a;
    }

    public j3(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f17132a = 0;
    }
}
