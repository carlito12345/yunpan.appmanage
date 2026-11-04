package com.owen.tvrecyclerview.widget;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.n2;
import androidx.recyclerview.widget.v1;
import com.owen.tvrecyclerview.utils.Loger;
import com.owen.tvrecyclerview.widget.MetroGridLayoutManager;

/* loaded from: classes.dex */
public class MetroTitleItemDecoration extends v1 {
    private Adapter mAdapter;
    private MetroGridLayoutManager.LayoutParams mTempItemLp;
    private View mTempTitleView;
    private final SparseArray<View> mTitleViews = new SparseArray<>();
    private final Rect mTempRect = new Rect();
    private int mTempSectionIndex = -1;

    public interface Adapter {
        View getTitleView(int i10, RecyclerView recyclerView);
    }

    public MetroTitleItemDecoration(Adapter adapter) {
        this.mAdapter = adapter;
    }

    private void createAndMeasureTitleView(RecyclerView recyclerView) {
        Adapter adapter = this.mAdapter;
        if (adapter == null) {
            return;
        }
        View titleView = adapter.getTitleView(this.mTempItemLp.sectionIndex, recyclerView);
        this.mTempTitleView = titleView;
        if (titleView != null) {
            ViewGroup.LayoutParams layoutParams = titleView.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = new ViewGroup.LayoutParams(-1, -2);
                this.mTempTitleView.setLayoutParams(layoutParams);
            }
            int paddingLeft = recyclerView.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) this.mTempItemLp).leftMargin;
            int paddingRight = recyclerView.getPaddingRight() + ((ViewGroup.MarginLayoutParams) this.mTempItemLp).rightMargin;
            int paddingTop = recyclerView.getPaddingTop() + ((ViewGroup.MarginLayoutParams) this.mTempItemLp).topMargin;
            int paddingBottom = recyclerView.getPaddingBottom() + ((ViewGroup.MarginLayoutParams) this.mTempItemLp).bottomMargin;
            int measuredWidth = layoutParams.width;
            if (measuredWidth < 0) {
                measuredWidth = (recyclerView.getMeasuredWidth() - paddingLeft) - paddingRight;
            }
            int measuredHeight = layoutParams.height;
            if (measuredHeight < 0) {
                measuredHeight = (recyclerView.getMeasuredHeight() - paddingTop) - paddingBottom;
            }
            this.mTempTitleView.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, layoutParams.width == -2 ? Integer.MIN_VALUE : 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, layoutParams.width == -2 ? Integer.MIN_VALUE : 1073741824));
            this.mTitleViews.put(this.mTempItemLp.sectionIndex, this.mTempTitleView);
        }
    }

    @Override // androidx.recyclerview.widget.v1
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, n2 n2Var) {
        this.mTempItemLp = (MetroGridLayoutManager.LayoutParams) view.getLayoutParams();
        Loger.i("ViewAdapterPosition=" + this.mTempItemLp.getViewAdapterPosition() + " isSectionStart=" + this.mTempItemLp.isSectionStart + " Decorated Top=" + recyclerView.getLayoutManager().getTopDecorationHeight(view));
        MetroGridLayoutManager.LayoutParams layoutParams = this.mTempItemLp;
        if (layoutParams.isSectionStart) {
            View view2 = this.mTitleViews.get(layoutParams.sectionIndex);
            this.mTempTitleView = view2;
            if (view2 == null) {
                createAndMeasureTitleView(recyclerView);
            }
            if (this.mTempTitleView != null) {
                boolean zIsVertical = ((MetroGridLayoutManager) recyclerView.getLayoutManager()).isVertical();
                rect.set(zIsVertical ? 0 : this.mTempTitleView.getMeasuredWidth(), zIsVertical ? this.mTempTitleView.getMeasuredHeight() : 0, 0, 0);
            }
        }
    }

    @Override // androidx.recyclerview.widget.v1
    public void onDraw(Canvas canvas, RecyclerView recyclerView, n2 n2Var) {
        int childCount = recyclerView.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            MetroGridLayoutManager.LayoutParams layoutParams = (MetroGridLayoutManager.LayoutParams) recyclerView.getChildAt(i10).getLayoutParams();
            this.mTempItemLp = layoutParams;
            int i11 = this.mTempSectionIndex;
            int i12 = layoutParams.sectionIndex;
            if (i11 != i12 && layoutParams.isSectionStart) {
                View view = this.mTitleViews.get(i12);
                this.mTempTitleView = view;
                if (view != null) {
                    View childAt = recyclerView.getChildAt(i10);
                    recyclerView.getLayoutManager().getDecoratedBoundsWithMargins(childAt, this.mTempRect);
                    int left = childAt.getLeft();
                    int i13 = this.mTempRect.top;
                    int measuredWidth = this.mTempTitleView.getMeasuredWidth() + left;
                    int measuredHeight = this.mTempTitleView.getMeasuredHeight() + i13;
                    canvas.save();
                    this.mTempTitleView.layout(left, i13, measuredWidth, measuredHeight);
                    canvas.translate(left, i13);
                    this.mTempTitleView.draw(canvas);
                    canvas.restore();
                    Loger.i("mTitleView.draw ... sectionIndex=" + this.mTempItemLp.sectionIndex);
                }
                this.mTempSectionIndex = this.mTempItemLp.sectionIndex;
            }
        }
        this.mTempSectionIndex = -1;
        this.mTempItemLp = null;
        this.mTempTitleView = null;
    }
}
