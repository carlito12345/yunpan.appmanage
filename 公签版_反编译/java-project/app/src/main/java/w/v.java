package w;

import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.TextView;

/* loaded from: classes.dex */
public final class v {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f17280a;

    /* renamed from: b, reason: collision with root package name */
    public final h5.m f17281b;

    public v(TextView textView) {
        this.f17280a = textView;
        this.f17281b = new h5.m(textView);
    }

    public final void a(AttributeSet attributeSet, int i10) {
        TypedArray typedArrayObtainStyledAttributes = this.f17280a.getContext().obtainStyledAttributes(attributeSet, p.a.f12523i, i10, 0);
        try {
            boolean z = typedArrayObtainStyledAttributes.hasValue(14) ? typedArrayObtainStyledAttributes.getBoolean(14, true) : true;
            typedArrayObtainStyledAttributes.recycle();
            c(z);
        } catch (Throwable th2) {
            typedArrayObtainStyledAttributes.recycle();
            throw th2;
        }
    }

    public final void b(boolean z) {
        ((ha.l2) this.f17281b.f6611b).V(z);
    }

    public final void c(boolean z) {
        ((ha.l2) this.f17281b.f6611b).W(z);
    }
}
