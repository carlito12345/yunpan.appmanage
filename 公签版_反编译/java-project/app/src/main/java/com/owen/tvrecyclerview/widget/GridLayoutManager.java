package com.owen.tvrecyclerview.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import androidx.recyclerview.widget.g2;
import androidx.recyclerview.widget.n2;
import com.owen.tvrecyclerview.BaseLayoutManager;
import com.owen.tvrecyclerview.Lanes;
import com.owen.tvrecyclerview.TwoWayLayoutManager;
import w9.a;

/* loaded from: classes.dex */
public class GridLayoutManager extends BaseLayoutManager {
    private static final int DEFAULT_NUM_COLS = 2;
    private static final int DEFAULT_NUM_ROWS = 2;
    private static final String LOGTAG = "GridLayoutManager";
    private int mNumColumns;
    private int mNumRows;

    public GridLayoutManager(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // com.owen.tvrecyclerview.BaseLayoutManager
    public int getLaneCount() {
        return isVertical() ? this.mNumColumns : this.mNumRows;
    }

    @Override // com.owen.tvrecyclerview.BaseLayoutManager
    public void getLaneForPosition(Lanes.LaneInfo laneInfo, int i10, TwoWayLayoutManager.Direction direction) {
        int laneCount = i10 % getLaneCount();
        laneInfo.set(laneCount, laneCount);
    }

    public int getNumColumns() {
        return this.mNumColumns;
    }

    public int getNumRows() {
        return this.mNumRows;
    }

    @Override // com.owen.tvrecyclerview.BaseLayoutManager
    public void moveLayoutToPosition(int i10, int i11, g2 g2Var, n2 n2Var) {
        Lanes lanes = getLanes();
        lanes.reset(i11);
        Lanes.LaneInfo laneInfo = this.mTempLaneInfo;
        TwoWayLayoutManager.Direction direction = TwoWayLayoutManager.Direction.END;
        getLaneForPosition(laneInfo, i10, direction);
        int i12 = this.mTempLaneInfo.startLane;
        if (i12 == 0) {
            return;
        }
        View viewD = g2Var.d(i10);
        measureChild(viewD, direction);
        int decoratedMeasuredHeight = isVertical() ? getDecoratedMeasuredHeight(viewD) : getDecoratedMeasuredWidth(viewD);
        for (int i13 = i12 - 1; i13 >= 0; i13--) {
            lanes.offset(i13, decoratedMeasuredHeight);
        }
    }

    public void setNumColumns(int i10) {
        if (this.mNumColumns == i10) {
            return;
        }
        this.mNumColumns = i10;
        if (isVertical()) {
            requestLayout();
        }
    }

    public void setNumRows(int i10) {
        if (this.mNumRows == i10) {
            return;
        }
        this.mNumRows = i10;
        if (isVertical()) {
            return;
        }
        requestLayout();
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 2, 2);
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11, int i12) {
        super(context, attributeSet, i10);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f17648b, i10, 0);
        this.mNumColumns = Math.max(1, typedArrayObtainStyledAttributes.getInt(8, i11));
        this.mNumRows = Math.max(1, typedArrayObtainStyledAttributes.getInt(9, i12));
        typedArrayObtainStyledAttributes.recycle();
    }

    public GridLayoutManager(TwoWayLayoutManager.Orientation orientation, int i10, int i11) {
        super(orientation);
        this.mNumColumns = i10;
        this.mNumRows = i11;
        if (i10 < 1) {
            throw new IllegalArgumentException("GridLayoutManager must have at least 1 column");
        }
        if (i11 < 1) {
            throw new IllegalArgumentException("GridLayoutManager must have at least 1 row");
        }
    }

    public GridLayoutManager(TwoWayLayoutManager.Orientation orientation) {
        this(orientation, 2, 2);
    }
}
