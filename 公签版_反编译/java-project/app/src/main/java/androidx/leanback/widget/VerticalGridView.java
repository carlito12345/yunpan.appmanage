package androidx.leanback.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;

/* loaded from: classes.dex */
public class VerticalGridView extends f {
    public VerticalGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1634a.setOrientation(1);
        r(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, n1.a.f11252i);
        setColumnWidth(typedArrayObtainStyledAttributes);
        setNumColumns(typedArrayObtainStyledAttributes.getInt(1, 1));
        typedArrayObtainStyledAttributes.recycle();
    }

    public void setColumnWidth(TypedArray typedArray) {
        if (typedArray.peekValue(0) != null) {
            setColumnWidth(typedArray.getLayoutDimension(0, 0));
        }
    }

    public void setNumColumns(int i10) {
        q qVar = this.f1634a;
        if (i10 < 0) {
            qVar.getClass();
            throw new IllegalArgumentException();
        }
        qVar.C = i10;
        requestLayout();
    }

    public void setColumnWidth(int i10) {
        this.f1634a.E(i10);
        requestLayout();
    }
}
