package i0;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;

/* loaded from: classes.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public int f8369a = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f8370b = 0;

    /* renamed from: c, reason: collision with root package name */
    public float f8371c = 1.0f;

    /* renamed from: d, reason: collision with root package name */
    public float f8372d = Float.NaN;

    public final void a(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, q.f8398g);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i10);
            if (index == 1) {
                this.f8371c = typedArrayObtainStyledAttributes.getFloat(index, this.f8371c);
            } else if (index == 0) {
                int i11 = typedArrayObtainStyledAttributes.getInt(index, this.f8369a);
                this.f8369a = i11;
                this.f8369a = n.f8386d[i11];
            } else if (index == 4) {
                this.f8370b = typedArrayObtainStyledAttributes.getInt(index, this.f8370b);
            } else if (index == 3) {
                this.f8372d = typedArrayObtainStyledAttributes.getFloat(index, this.f8372d);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
