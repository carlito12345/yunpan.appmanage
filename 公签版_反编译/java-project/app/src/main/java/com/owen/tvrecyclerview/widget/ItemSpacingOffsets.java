package com.owen.tvrecyclerview.widget;

import android.graphics.Rect;
import androidx.recyclerview.widget.RecyclerView;
import com.owen.tvrecyclerview.BaseLayoutManager;
import com.owen.tvrecyclerview.Lanes;
import com.owen.tvrecyclerview.TwoWayLayoutManager;

/* loaded from: classes.dex */
public class ItemSpacingOffsets {
    private boolean mAddSpacingAtEnd;
    private final int mHorizontalSpacing;
    private final Lanes.LaneInfo mTempLaneInfo = new Lanes.LaneInfo();
    private final int mVerticalSpacing;

    public ItemSpacingOffsets(int i10, int i11) {
        if (i10 < 0 || i11 < 0) {
            throw new IllegalArgumentException("Spacings should be equal or greater than 0");
        }
        this.mVerticalSpacing = i10;
        this.mHorizontalSpacing = i11;
    }

    public static boolean isFirstChildInLane(BaseLayoutManager baseLayoutManager, int i10) {
        int count = baseLayoutManager.getLanes().getCount();
        if (i10 >= count) {
            return false;
        }
        int laneSpanForPosition = 0;
        for (int i11 = 0; i11 < i10; i11++) {
            laneSpanForPosition += baseLayoutManager.getLaneSpanForPosition(i11);
            if (laneSpanForPosition >= count) {
                return false;
            }
        }
        return true;
    }

    public static boolean isLastChildInLane(BaseLayoutManager baseLayoutManager, int i10, int i11) {
        return (i10 < i11 - baseLayoutManager.getLanes().getCount() || (baseLayoutManager instanceof SpannableGridLayoutManager) || (baseLayoutManager instanceof StaggeredGridLayoutManager)) ? false : true;
    }

    public int getHorizontalSpacing() {
        return this.mHorizontalSpacing;
    }

    public void getItemOffsets(Rect rect, int i10, RecyclerView recyclerView) {
        double d10;
        int i11;
        double d11;
        int i12;
        BaseLayoutManager baseLayoutManager = (BaseLayoutManager) recyclerView.getLayoutManager();
        baseLayoutManager.getLaneForPosition(this.mTempLaneInfo, i10, TwoWayLayoutManager.Direction.END);
        int i13 = this.mTempLaneInfo.startLane;
        int laneSpanForPosition = baseLayoutManager.getLaneSpanForPosition(i10);
        int count = baseLayoutManager.getLanes().getCount();
        int iB = recyclerView.getAdapter().b();
        boolean zIsVertical = baseLayoutManager.isVertical();
        boolean z = i13 == 0;
        boolean zIsSecondLane = isSecondLane(baseLayoutManager, i10, i13);
        int i14 = i13 + laneSpanForPosition;
        boolean z4 = i14 == count;
        boolean z10 = i14 == count - 1;
        int i15 = zIsVertical ? this.mHorizontalSpacing : this.mVerticalSpacing;
        if (z) {
            i11 = 0;
        } else {
            if (z4 && !zIsSecondLane) {
                double d12 = i15;
                Double.isNaN(d12);
                d10 = d12 * 0.65d;
            } else if (!zIsSecondLane || z4) {
                double d13 = i15;
                Double.isNaN(d13);
                d10 = d13 * 0.5d;
            } else {
                double d14 = i15;
                Double.isNaN(d14);
                d10 = d14 * 0.35d;
            }
            i11 = (int) d10;
        }
        if (z4) {
            i12 = 0;
        } else {
            if (z && !z10) {
                double d15 = i15;
                Double.isNaN(d15);
                d11 = d15 * 0.65d;
            } else if (!z10 || z) {
                double d16 = i15;
                Double.isNaN(d16);
                d11 = d16 * 0.5d;
            } else {
                double d17 = i15;
                Double.isNaN(d17);
                d11 = d17 * 0.35d;
            }
            i12 = (int) d11;
        }
        boolean zIsFirstChildInLane = isFirstChildInLane(baseLayoutManager, i10);
        boolean z11 = !this.mAddSpacingAtEnd && isLastChildInLane(baseLayoutManager, i10, iB);
        if (zIsVertical) {
            rect.left = i11;
            rect.top = zIsFirstChildInLane ? 0 : this.mVerticalSpacing / 2;
            rect.right = i12;
            rect.bottom = z11 ? 0 : this.mVerticalSpacing / 2;
            return;
        }
        rect.left = zIsFirstChildInLane ? 0 : this.mHorizontalSpacing / 2;
        rect.top = i11;
        rect.right = z11 ? 0 : this.mHorizontalSpacing / 2;
        rect.bottom = i12;
    }

    public int getSpacingSize(BaseLayoutManager baseLayoutManager) {
        if (baseLayoutManager != null) {
            return baseLayoutManager.isVertical() ? this.mHorizontalSpacing : this.mVerticalSpacing;
        }
        return 0;
    }

    public int getVerticalSpacing() {
        return this.mVerticalSpacing;
    }

    public boolean isSecondLane(BaseLayoutManager baseLayoutManager, int i10, int i11) {
        if (i11 == 0 || i10 == 0) {
            return false;
        }
        int i12 = i10 - 1;
        int i13 = -1;
        while (i12 >= 0) {
            baseLayoutManager.getLaneForPosition(this.mTempLaneInfo, i12, TwoWayLayoutManager.Direction.END);
            i13 = this.mTempLaneInfo.startLane;
            if (i13 != i11) {
                break;
            }
            i12--;
        }
        return i13 == 0 && i11 == i13 + baseLayoutManager.getLaneSpanForPosition(i12);
    }

    public void setAddSpacingAtEnd(boolean z) {
        this.mAddSpacingAtEnd = z;
    }
}
