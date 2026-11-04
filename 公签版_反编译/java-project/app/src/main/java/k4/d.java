package k4;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public final class d extends ViewGroup.LayoutParams {

    /* renamed from: a, reason: collision with root package name */
    public boolean f10138a;

    /* renamed from: b, reason: collision with root package name */
    public final int f10139b;

    /* renamed from: c, reason: collision with root package name */
    public float f10140c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f10141d;

    /* renamed from: e, reason: collision with root package name */
    public int f10142e;

    /* renamed from: f, reason: collision with root package name */
    public int f10143f;

    public d() {
        super(-1, -1);
        this.f10140c = 0.0f;
    }

    public d(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10140c = 0.0f;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, g.M);
        this.f10139b = typedArrayObtainStyledAttributes.getInteger(0, 48);
        typedArrayObtainStyledAttributes.recycle();
    }
}
