package androidx.recyclerview.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class i0 extends RecyclerView.LayoutParams {

    /* renamed from: a, reason: collision with root package name */
    public int f2152a;

    /* renamed from: b, reason: collision with root package name */
    public int f2153b;

    public i0(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2152a = -1;
        this.f2153b = 0;
    }

    public i0(int i10, int i11) {
        super(i10, i11);
        this.f2152a = -1;
        this.f2153b = 0;
    }

    public i0(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.f2152a = -1;
        this.f2153b = 0;
    }

    public i0(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f2152a = -1;
        this.f2153b = 0;
    }
}
