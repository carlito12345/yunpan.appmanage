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
public class SpannableGridLayoutManager extends GridLayoutManager {
    private static final int DEFAULT_NUM_COLS = 3;
    private static final int DEFAULT_NUM_ROWS = 3;
    public static final String LOGTAG = "SpannableGridLM";
    private boolean mMeasuring;

    public SpannableGridLayoutManager(Context context) {
        this(context, null);
    }

    private int getChildHeight(int i10) {
        return ((int) getLanes().getLaneSize()) * i10;
    }

    private int getChildWidth(int i10) {
        return ((int) getLanes().getLaneSize()) * i10;
    }

    private int getHeightUsed(View view) {
        return ((getHeight() - getPaddingTop()) - getPaddingBottom()) - getChildHeight(((LayoutParams) view.getLayoutParams()).rowSpan);
    }

    private static int getLaneSpan(LayoutParams layoutParams, boolean z) {
        return z ? layoutParams.colSpan : layoutParams.rowSpan;
    }

    private int getWidthUsed(View view) {
        return ((getWidth() - getPaddingLeft()) - getPaddingRight()) - getChildWidth(((LayoutParams) view.getLayoutParams()).colSpan);
    }

    @Override // com.owen.tvrecyclerview.BaseLayoutManager
    public BaseLayoutManager.ItemEntry cacheChildLaneAndSpan(View view, TwoWayLayoutManager.Direction direction) {
        int position = getPosition(view);
        this.mTempLaneInfo.setUndefined();
        SpannableItemEntry spannableItemEntry = (SpannableItemEntry) getItemEntryForPosition(position);
        if (spannableItemEntry != null) {
            this.mTempLaneInfo.set(spannableItemEntry.startLane, spannableItemEntry.anchorLane);
        }
        if (this.mTempLaneInfo.isUndefined()) {
            getLaneForChild(this.mTempLaneInfo, view, direction);
        }
        if (spannableItemEntry != null) {
            spannableItemEntry.setLane(this.mTempLaneInfo);
            return spannableItemEntry;
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Lanes.LaneInfo laneInfo = this.mTempLaneInfo;
        SpannableItemEntry spannableItemEntry2 = new SpannableItemEntry(laneInfo.startLane, laneInfo.anchorLane, layoutParams.colSpan, layoutParams.rowSpan);
        setItemEntryForPosition(position, spannableItemEntry2);
        return spannableItemEntry2;
    }

    @Override // com.owen.tvrecyclerview.TwoWayLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        return super.canScrollHorizontally() && !this.mMeasuring;
    }

    @Override // com.owen.tvrecyclerview.TwoWayLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        return super.canScrollVertically() && !this.mMeasuring;
    }

    @Override // com.owen.tvrecyclerview.BaseLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean checkLayoutParams(RecyclerView.LayoutParams layoutParams) {
        int i10;
        int i11;
        super.checkLayoutParams(layoutParams);
        if (((ViewGroup.MarginLayoutParams) layoutParams).width != -1 || ((ViewGroup.MarginLayoutParams) layoutParams).height != -1 || !(layoutParams instanceof LayoutParams)) {
            return false;
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        return isVertical() ? layoutParams2.rowSpan >= 1 && (i11 = layoutParams2.colSpan) >= 1 && i11 <= getLaneCount() : layoutParams2.colSpan >= 1 && (i10 = layoutParams2.rowSpan) >= 1 && i10 <= getLaneCount();
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
        SpannableItemEntry spannableItemEntry = (SpannableItemEntry) getItemEntryForPosition(i10);
        if (spannableItemEntry != null) {
            laneInfo.set(spannableItemEntry.startLane, spannableItemEntry.anchorLane);
        } else {
            laneInfo.setUndefined();
        }
    }

    @Override // com.owen.tvrecyclerview.BaseLayoutManager
    public int getLaneSpanForChild(View view) {
        return getLaneSpan((LayoutParams) view.getLayoutParams(), isVertical());
    }

    @Override // com.owen.tvrecyclerview.BaseLayoutManager
    public int getLaneSpanForPosition(int i10) {
        SpannableItemEntry spannableItemEntry = (SpannableItemEntry) getItemEntryForPosition(i10);
        if (spannableItemEntry != null) {
            return getLaneSpan(spannableItemEntry, isVertical());
        }
        View childAt = getChildAt(i10 - getFirstVisiblePosition());
        if (childAt != null) {
            return getLaneSpanForChild(childAt);
        }
        throw new IllegalStateException(b.a(i10, "Could not find span for position "));
    }

    @Override // com.owen.tvrecyclerview.BaseLayoutManager
    public void measureChildWithMargins(View view) {
        this.mMeasuring = true;
        measureChildWithMargins(view, getWidthUsed(view), getHeightUsed(view));
        this.mMeasuring = false;
    }

    @Override // com.owen.tvrecyclerview.widget.GridLayoutManager, com.owen.tvrecyclerview.BaseLayoutManager
    public void moveLayoutToPosition(int i10, int i11, g2 g2Var, n2 n2Var) {
        boolean zIsVertical = isVertical();
        Lanes lanes = getLanes();
        lanes.reset(0);
        for (int i12 = 0; i12 <= i10; i12++) {
            SpannableItemEntry spannableItemEntry = (SpannableItemEntry) getItemEntryForPosition(i12);
            if (spannableItemEntry == null) {
                spannableItemEntry = (SpannableItemEntry) cacheChildLaneAndSpan(g2Var.d(i12), TwoWayLayoutManager.Direction.END);
            }
            SpannableItemEntry spannableItemEntry2 = spannableItemEntry;
            this.mTempLaneInfo.set(spannableItemEntry2.startLane, spannableItemEntry2.anchorLane);
            if (this.mTempLaneInfo.isUndefined()) {
                lanes.findLane(this.mTempLaneInfo, getLaneSpanForPosition(i12), TwoWayLayoutManager.Direction.END);
                spannableItemEntry2.setLane(this.mTempLaneInfo);
            }
            Rect rect = this.mTempRect;
            int childWidth = getChildWidth(spannableItemEntry2.colSpan);
            int childHeight = getChildHeight(spannableItemEntry2.rowSpan);
            Lanes.LaneInfo laneInfo = this.mTempLaneInfo;
            TwoWayLayoutManager.Direction direction = TwoWayLayoutManager.Direction.END;
            lanes.getChildFrame(rect, childWidth, childHeight, laneInfo, direction);
            if (i12 != i10) {
                pushChildFrame(spannableItemEntry2, this.mTempRect, spannableItemEntry2.startLane, getLaneSpan(spannableItemEntry2, zIsVertical), direction);
            }
        }
        lanes.getLane(this.mTempLaneInfo.startLane, this.mTempRect);
        lanes.reset(TwoWayLayoutManager.Direction.END);
        Rect rect2 = this.mTempRect;
        lanes.offset(i11 - (zIsVertical ? rect2.bottom : rect2.right));
    }

    public SpannableGridLayoutManager(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private static int getLaneSpan(SpannableItemEntry spannableItemEntry, boolean z) {
        return z ? spannableItemEntry.colSpan : spannableItemEntry.rowSpan;
    }

    @Override // com.owen.tvrecyclerview.BaseLayoutManager, com.owen.tvrecyclerview.TwoWayLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    public static class LayoutParams extends RecyclerView.LayoutParams {
        private static final int DEFAULT_SPAN = 1;
        public int colSpan;
        public int rowSpan;

        public LayoutParams(int i10, int i11) {
            super(i10, i11);
            this.rowSpan = 1;
            this.colSpan = 1;
        }

        private void init(ViewGroup.LayoutParams layoutParams) {
            if (!(layoutParams instanceof LayoutParams)) {
                this.rowSpan = 1;
                this.colSpan = 1;
            } else {
                LayoutParams layoutParams2 = (LayoutParams) layoutParams;
                this.rowSpan = layoutParams2.rowSpan;
                this.colSpan = layoutParams2.colSpan;
            }
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f17651e);
            this.colSpan = Math.max(1, typedArrayObtainStyledAttributes.getInt(0, -1));
            this.rowSpan = Math.max(1, typedArrayObtainStyledAttributes.getInt(1, -1));
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

    public static class SpannableItemEntry extends BaseLayoutManager.ItemEntry {
        public static final Parcelable.Creator<SpannableItemEntry> CREATOR = new Parcelable.Creator<SpannableItemEntry>() { // from class: com.owen.tvrecyclerview.widget.SpannableGridLayoutManager.SpannableItemEntry.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SpannableItemEntry createFromParcel(Parcel parcel) {
                return new SpannableItemEntry(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SpannableItemEntry[] newArray(int i10) {
                return new SpannableItemEntry[i10];
            }
        };
        private final int colSpan;
        private final int rowSpan;

        public SpannableItemEntry(int i10, int i11, int i12, int i13) {
            super(i10, i11);
            this.colSpan = i12;
            this.rowSpan = i13;
        }

        @Override // com.owen.tvrecyclerview.BaseLayoutManager.ItemEntry, android.os.Parcelable
        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        @Override // com.owen.tvrecyclerview.BaseLayoutManager.ItemEntry
        public /* bridge */ /* synthetic */ void invalidateLane() {
            super.invalidateLane();
        }

        @Override // com.owen.tvrecyclerview.BaseLayoutManager.ItemEntry
        public /* bridge */ /* synthetic */ void setLane(Lanes.LaneInfo laneInfo) {
            super.setLane(laneInfo);
        }

        @Override // com.owen.tvrecyclerview.BaseLayoutManager.ItemEntry, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.colSpan);
            parcel.writeInt(this.rowSpan);
        }

        public SpannableItemEntry(Parcel parcel) {
            super(parcel);
            this.colSpan = parcel.readInt();
            this.rowSpan = parcel.readInt();
        }
    }

    public SpannableGridLayoutManager(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10, 3, 3);
    }

    @Override // com.owen.tvrecyclerview.BaseLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        LayoutParams layoutParams2 = new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        ((ViewGroup.MarginLayoutParams) layoutParams2).width = -1;
        ((ViewGroup.MarginLayoutParams) layoutParams2).height = -1;
        if (layoutParams instanceof LayoutParams) {
            LayoutParams layoutParams3 = (LayoutParams) layoutParams;
            if (isVertical()) {
                layoutParams2.colSpan = Math.max(1, Math.min(layoutParams3.colSpan, getLaneCount()));
                layoutParams2.rowSpan = Math.max(1, layoutParams3.rowSpan);
            } else {
                layoutParams2.colSpan = Math.max(1, layoutParams3.colSpan);
                layoutParams2.rowSpan = Math.max(1, Math.min(layoutParams3.rowSpan, getLaneCount()));
            }
        }
        return layoutParams2;
    }

    public SpannableGridLayoutManager(TwoWayLayoutManager.Orientation orientation, int i10, int i11) {
        super(orientation, i10, i11);
    }

    @Override // com.owen.tvrecyclerview.BaseLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }
}
