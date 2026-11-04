package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class x1 implements e3 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RecyclerView.LayoutManager f2352a;

    public x1(RecyclerView.LayoutManager layoutManager) {
        this.f2352a = layoutManager;
    }

    @Override // androidx.recyclerview.widget.e3
    public final int a(View view) {
        return this.f2352a.getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).topMargin;
    }

    @Override // androidx.recyclerview.widget.e3
    public final int b() {
        return this.f2352a.getPaddingTop();
    }

    @Override // androidx.recyclerview.widget.e3
    public final int c() {
        RecyclerView.LayoutManager layoutManager = this.f2352a;
        return layoutManager.getHeight() - layoutManager.getPaddingBottom();
    }

    @Override // androidx.recyclerview.widget.e3
    public final View d(int i10) {
        return this.f2352a.getChildAt(i10);
    }

    @Override // androidx.recyclerview.widget.e3
    public final int e(View view) {
        return this.f2352a.getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).bottomMargin;
    }
}
