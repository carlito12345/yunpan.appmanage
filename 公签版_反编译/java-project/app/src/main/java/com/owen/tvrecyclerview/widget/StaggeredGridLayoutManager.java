package com.owen.tvrecyclerview.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.g2;
import androidx.recyclerview.widget.n2;
import com.owen.tvrecyclerview.BaseLayoutManager;
import com.owen.tvrecyclerview.Lanes;
import com.owen.tvrecyclerview.TwoWayLayoutManager;
import da.b;
import w9.a;

/* loaded from: classes.dex */
public class StaggeredGridLayoutManager extends GridLayoutManager {
    private static final int DEFAULT_NUM_COLS = 2;
    private static final int DEFAULT_NUM_ROWS = 2;
    private static final String LOGTAG = "StaggeredGridLayoutManager";

    public StaggeredGridLayoutManager(Context context) {
        this(context, null);
    }

    @Override // com.owen.tvrecyclerview.BaseLayoutManager
    public BaseLayoutManager.ItemEntry cacheChildFrame(View view, Rect rect) {
        StaggeredItemEntry staggeredItemEntry = (StaggeredItemEntry) getItemEntryForPosition(getPosition(view));
        if (staggeredItemEntry == null) {
            throw new IllegalStateException("Tried to cache frame on undefined item");
        }
        cacheItemFrame(staggeredItemEntry, rect);
        return staggeredItemEntry;
    }

    @Override // com.owen.tvrecyclerview.BaseLayoutManager
    public BaseLayoutManager.ItemEntry cacheChildLaneAndSpan(View view, TwoWayLayoutManager.Direction direction) {
        int position = getPosition(view);
        this.mTempLaneInfo.setUndefined();
        StaggeredItemEntry staggeredItemEntry = (StaggeredItemEntry) getItemEntryForPosition(position);
        if (staggeredItemEntry != null) {
            this.mTempLaneInfo.set(staggeredItemEntry.startLane, staggeredItemEntry.anchorLane);
        }
        if (this.mTempLaneInfo.isUndefined()) {
            getLaneForChild(this.mTempLaneInfo, view, direction);
        }
        if (staggeredItemEntry != null) {
            staggeredItemEntry.setLane(this.mTempLaneInfo);
            return staggeredItemEntry;
        }
        Lanes.LaneInfo laneInfo = this.mTempLaneInfo;
        StaggeredItemEntry staggeredItemEntry2 = new StaggeredItemEntry(laneInfo.startLane, laneInfo.anchorLane, getLaneSpanForChild(view));
        setItemEntryForPosition(position, staggeredItemEntry2);
        return staggeredItemEntry2;
    }

    public void cacheItemFrame(StaggeredItemEntry staggeredItemEntry, Rect rect) {
        staggeredItemEntry.width = rect.right - rect.left;
        staggeredItemEntry.height = rect.bottom - rect.top;
    }

    @Override // com.owen.tvrecyclerview.BaseLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean checkLayoutParams(RecyclerView.LayoutParams layoutParams) {
        boolean zCheckLayoutParams = super.checkLayoutParams(layoutParams);
        if (!(layoutParams instanceof LayoutParams)) {
            return zCheckLayoutParams;
        }
        int i10 = ((LayoutParams) layoutParams).span;
        return zCheckLayoutParams & (i10 >= 1 && i10 <= getLaneCount());
    }

    @Override // com.owen.tvrecyclerview.BaseLayoutManager
    public void getLaneForChild(Lanes.LaneInfo laneInfo, View view, TwoWayLayoutManager.Direction direction) {
        super.getLaneForChild(laneInfo, view, direction);
        if (laneInfo.isUndefined()) {
            getLanes().findLane(laneInfo, getLaneSpanForChild(view), direction);
        }
    }

    @Override // com.owen.tvrecyclerview.widget.GridLayoutManager, com.owen.tvrecyclerview.BaseLayoutManager
    public void getLaneForPosition(Lanes.LaneInfo laneInfo, int i10, TwoWayLayoutManager.Direction direction) {
        StaggeredItemEntry staggeredItemEntry = (StaggeredItemEntry) getItemEntryForPosition(i10);
        if (staggeredItemEntry != null) {
            laneInfo.set(staggeredItemEntry.startLane, staggeredItemEntry.anchorLane);
        } else {
            laneInfo.setUndefined();
        }
    }

    @Override // com.owen.tvrecyclerview.BaseLayoutManager
    public int getLaneSpanForChild(View view) {
        return ((LayoutParams) view.getLayoutParams()).span;
    }

    @Override // com.owen.tvrecyclerview.BaseLayoutManager
    public int getLaneSpanForPosition(int i10) {
        StaggeredItemEntry staggeredItemEntry = (StaggeredItemEntry) getItemEntryForPosition(i10);
        if (staggeredItemEntry != null) {
            return staggeredItemEntry.span;
        }
        View childAt = getChildAt(i10 - getFirstVisiblePosition());
        if (childAt != null) {
            return getLaneSpanForChild(childAt);
        }
        throw new IllegalStateException(b.a(i10, "Could not find span for position "));
    }

    @Override // com.owen.tvrecyclerview.widget.GridLayoutManager, com.owen.tvrecyclerview.BaseLayoutManager
    public void moveLayoutToPosition(int i10, int i11, g2 g2Var, n2 n2Var) {
        StaggeredItemEntry staggeredItemEntry;
        boolean zIsVertical = isVertical();
        Lanes lanes = getLanes();
        lanes.reset(0);
        for (int i12 = 0; i12 <= i10; i12++) {
            StaggeredItemEntry staggeredItemEntry2 = (StaggeredItemEntry) getItemEntryForPosition(i12);
            if (staggeredItemEntry2 != null) {
                this.mTempLaneInfo.set(staggeredItemEntry2.startLane, staggeredItemEntry2.anchorLane);
                if (this.mTempLaneInfo.isUndefined()) {
                    lanes.findLane(this.mTempLaneInfo, getLaneSpanForPosition(i12), TwoWayLayoutManager.Direction.END);
                    staggeredItemEntry2.setLane(this.mTempLaneInfo);
                }
                lanes.getChildFrame(this.mTempRect, staggeredItemEntry2.width, staggeredItemEntry2.height, this.mTempLaneInfo, TwoWayLayoutManager.Direction.END);
                staggeredItemEntry = staggeredItemEntry2;
            } else {
                View viewD = g2Var.d(i12);
                TwoWayLayoutManager.Direction direction = TwoWayLayoutManager.Direction.END;
                measureChild(viewD, direction);
                StaggeredItemEntry staggeredItemEntry3 = (StaggeredItemEntry) getItemEntryForPosition(i12);
                this.mTempLaneInfo.set(staggeredItemEntry3.startLane, staggeredItemEntry3.anchorLane);
                lanes.getChildFrame(this.mTempRect, getDecoratedMeasuredWidth(viewD), getDecoratedMeasuredHeight(viewD), this.mTempLaneInfo, direction);
                cacheItemFrame(staggeredItemEntry3, this.mTempRect);
                staggeredItemEntry = staggeredItemEntry3;
            }
            if (i12 != i10) {
                pushChildFrame(staggeredItemEntry, this.mTempRect, staggeredItemEntry.startLane, staggeredItemEntry.span, TwoWayLayoutManager.Direction.END);
            }
        }
        lanes.getLane(this.mTempLaneInfo.startLane, this.mTempRect);
        lanes.reset(TwoWayLayoutManager.Direction.END);
        Rect rect = this.mTempRect;
        lanes.offset(i11 - (zIsVertical ? rect.bottom : rect.right));
    }

    public static class LayoutParams extends RecyclerView.LayoutParams {
        private static final int DEFAULT_SPAN = 1;
        public int span;

        public LayoutParams(int i10, int i11) {
            super(i10, i11);
            this.span = 1;
        }

        private void init(ViewGroup.LayoutParams layoutParams) {
            if (layoutParams instanceof LayoutParams) {
                this.span = ((LayoutParams) layoutParams).span;
            } else {
                this.span = 1;
            }
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f17652f);
            this.span = Math.max(1, typedArrayObtainStyledAttributes.getInt(0, -1));
            typedArrayObtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            init(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            init(marginLayoutParams);
        }
    }

    public static class StaggeredItemEntry extends BaseLayoutManager.ItemEntry {
        public static final Parcelable.Creator<StaggeredItemEntry> CREATOR = new Parcelable.Creator<StaggeredItemEntry>() { // from class: com.owen.tvrecyclerview.widget.StaggeredGridLayoutManager.StaggeredItemEntry.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public StaggeredItemEntry createFromParcel(Parcel parcel) {
                return new StaggeredItemEntry(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public StaggeredItemEntry[] newArray(int i10) {
                return new StaggeredItemEntry[i10];
            }
        };
        private int height;
        private final int span;
        private int width;

        public StaggeredItemEntry(int i10, int i11, int i12) {
            super(i10, i11);
            this.span = i12;
        }

        @Override // com.owen.tvrecyclerview.BaseLayoutManager.ItemEntry, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.span);
            parcel.writeInt(this.width);
            parcel.writeInt(this.height);
        }

        public StaggeredItemEntry(Parcel parcel) {
            super(parcel);
            this.span = parcel.readInt();
            this.width = parcel.readInt();
            this.height = parcel.readInt();
        }
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // com.owen.tvrecyclerview.BaseLayoutManager, com.owen.tvrecyclerview.TwoWayLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public LayoutParams generateDefaultLayoutParams() {
        return isVertical() ? new LayoutParams(-1, -2) : new LayoutParams(-2, -1);
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10, 2, 2);
    }

    @Override // com.owen.tvrecyclerview.BaseLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        LayoutParams layoutParams2 = new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        if (isVertical()) {
            ((ViewGroup.MarginLayoutParams) layoutParams2).width = -1;
            ((ViewGroup.MarginLayoutParams) layoutParams2).height = layoutParams.height;
        } else {
            ((ViewGroup.MarginLayoutParams) layoutParams2).width = layoutParams.width;
            ((ViewGroup.MarginLayoutParams) layoutParams2).height = -1;
        }
        if (layoutParams instanceof LayoutParams) {
            layoutParams2.span = Math.max(1, Math.min(((LayoutParams) layoutParams).span, getLaneCount()));
        }
        return layoutParams2;
    }

    public StaggeredGridLayoutManager(TwoWayLayoutManager.Orientation orientation, int i10, int i11) {
        super(orientation, i10, i11);
    }

    @Override // com.owen.tvrecyclerview.BaseLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }
}
