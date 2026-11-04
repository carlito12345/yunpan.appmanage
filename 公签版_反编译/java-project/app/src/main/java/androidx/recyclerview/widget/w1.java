package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class w1 implements e3 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RecyclerView.LayoutManager f2340a;

    public w1(RecyclerView.LayoutManager layoutManager) {
        this.f2340a = layoutManager;
    }

    @Override // androidx.recyclerview.widget.e3
    public final int a(View view) {
        return this.f2340a.getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).leftMargin;
    }

    @Override // androidx.recyclerview.widget.e3
    public final int b() {
        return this.f2340a.getPaddingLeft();
    }

    @Override // androidx.recyclerview.widget.e3
    public final int c() {
        RecyclerView.LayoutManager layoutManager = this.f2340a;
        return layoutManager.getWidth() - layoutManager.getPaddingRight();
    }

    @Override // androidx.recyclerview.widget.e3
    public final View d(int i10) {
        return this.f2340a.getChildAt(i10);
    }

    @Override // androidx.recyclerview.widget.e3
    public final int e(View view) {
        return this.f2340a.getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).rightMargin;
    }
}
