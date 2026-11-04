package m4;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.g2;
import androidx.recyclerview.widget.n2;
import androidx.viewpager2.widget.ViewPager2;

/* loaded from: classes.dex */
public final class h extends LinearLayoutManager {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewPager2 f10869a;

    public h(ViewPager2 viewPager2) {
        this.f10869a = viewPager2;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void calculateExtraLayoutSpace(n2 n2Var, int[] iArr) {
        ViewPager2 viewPager2 = this.f10869a;
        int offscreenPageLimit = viewPager2.getOffscreenPageLimit();
        if (offscreenPageLimit == -1) {
            super.calculateExtraLayoutSpace(n2Var, iArr);
            return;
        }
        int pageSize = viewPager2.getPageSize() * offscreenPageLimit;
        iArr[0] = pageSize;
        iArr[1] = pageSize;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onInitializeAccessibilityNodeInfo(g2 g2Var, n2 n2Var, y0.n nVar) {
        super.onInitializeAccessibilityNodeInfo(g2Var, n2Var, nVar);
        this.f10869a.f2488v.getClass();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onInitializeAccessibilityNodeInfoForItem(g2 g2Var, n2 n2Var, View view, y0.n nVar) {
        ViewPager2 viewPager2 = (ViewPager2) this.f10869a.f2488v.f349e;
        nVar.l(y0.m.a(viewPager2.getOrientation() == 1 ? viewPager2.f2477g.getPosition(view) : 0, 1, viewPager2.getOrientation() == 0 ? viewPager2.f2477g.getPosition(view) : 0, 1, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean performAccessibilityAction(g2 g2Var, n2 n2Var, int i10, Bundle bundle) {
        this.f10869a.f2488v.getClass();
        return super.performAccessibilityAction(g2Var, n2Var, i10, bundle);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z4) {
        return false;
    }
}
