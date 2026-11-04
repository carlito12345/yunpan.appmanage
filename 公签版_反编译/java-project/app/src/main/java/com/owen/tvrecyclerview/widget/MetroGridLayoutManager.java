package com.owen.tvrecyclerview.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.session.a;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.g2;
import androidx.recyclerview.widget.m2;
import androidx.recyclerview.widget.n2;
import com.owen.tvrecyclerview.BaseLayoutManager;
import com.owen.tvrecyclerview.Lanes;
import com.owen.tvrecyclerview.TwoWayLayoutManager;
import com.owen.tvrecyclerview.utils.Loger;
import com.owen.tvrecyclerview.utils.MathUtil;
import g.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;
import x0.b1;

/* loaded from: classes.dex */
public class MetroGridLayoutManager extends GridLayoutManager {
    private static final int[] DEFAULT_LANE_COUNTS = {2};
    private boolean mIsIntelligentScroll;
    private int[] mLaneCounts;
    private boolean mMeasuring;
    private List<OnSectionSelectedListener> mSectionSelectedListeners;
    private int mSelectedSectionIndex;
    private int smoothTargetPosition;

    public interface OnSectionSelectedListener {
        void onSectionSelected(int i10);
    }

    public MetroGridLayoutManager(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private int getChildHeight(int i10) {
        return (int) (getLanes().getLaneSize() * i10);
    }

    private int getChildWidth(int i10) {
        return (int) (getLanes().getLaneSize() * i10);
    }

    private int getHeightUsed(View view) {
        return ((getHeight() - getPaddingTop()) - getPaddingBottom()) - getChildHeight(((LayoutParams) view.getLayoutParams()).getRowSpan());
    }

    private int getLaneSpan(LayoutParams layoutParams, boolean z) {
        return z ? layoutParams.getColSpan() : layoutParams.getRowSpan();
    }

    private int getWidthUsed(View view) {
        return ((getWidth() - getPaddingLeft()) - getPaddingRight()) - getChildWidth(((LayoutParams) view.getLayoutParams()).getColSpan());
    }

    private void initLaneCounts(int... iArr) {
        this.mLaneCounts = iArr;
        int iCommonMultiple = MathUtil.commonMultiple(iArr);
        setNumColumns(iCommonMultiple);
        setNumRows(iCommonMultiple);
        Loger.i("multiple=" + iCommonMultiple);
    }

    private void notifySectionSelectedChanged() {
        List<OnSectionSelectedListener> list = this.mSectionSelectedListeners;
        if (list != null) {
            Iterator<OnSectionSelectedListener> it = list.iterator();
            while (it.hasNext()) {
                it.next().onSectionSelected(this.mSelectedSectionIndex);
            }
        }
    }

    public void addOnSectionSelectedListener(OnSectionSelectedListener onSectionSelectedListener) {
        if (this.mSectionSelectedListeners == null) {
            this.mSectionSelectedListeners = new ArrayList();
        }
        this.mSectionSelectedListeners.add(onSectionSelectedListener);
    }

    @Override // com.owen.tvrecyclerview.BaseLayoutManager
    public BaseLayoutManager.ItemEntry cacheChildLaneAndSpan(View view, TwoWayLayoutManager.Direction direction) {
        int position = getPosition(view);
        this.mTempLaneInfo.setUndefined();
        MetroItemEntry metroItemEntry = (MetroItemEntry) getItemEntryForPosition(position);
        if (metroItemEntry != null) {
            this.mTempLaneInfo.set(metroItemEntry.startLane, metroItemEntry.anchorLane);
        }
        if (this.mTempLaneInfo.isUndefined()) {
            getLaneForChild(this.mTempLaneInfo, view, direction);
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (metroItemEntry == null) {
            Loger.i("cacheChildLaneAndSpan position=" + position + " direction=" + direction);
            int laneSpan = 0;
            for (int firstVisiblePosition = getFirstVisiblePosition(); firstVisiblePosition < position; firstVisiblePosition++) {
                MetroItemEntry metroItemEntry2 = (MetroItemEntry) getItemEntryForPosition(firstVisiblePosition);
                if (metroItemEntry2 != null && metroItemEntry2.sectionIndex == layoutParams.sectionIndex && (laneSpan = laneSpan + getLaneSpan(metroItemEntry2, isVertical())) > getLaneCount()) {
                    break;
                }
            }
            if (laneSpan + getLaneSpan(layoutParams, isVertical()) <= getLaneCount()) {
                layoutParams.isSectionStart = true;
            } else {
                layoutParams.isSectionStart = false;
            }
            Lanes.LaneInfo laneInfo = this.mTempLaneInfo;
            metroItemEntry = new MetroItemEntry(laneInfo.startLane, laneInfo.anchorLane, layoutParams.colSpan, layoutParams.rowSpan, layoutParams.scale, layoutParams.sectionIndex, layoutParams.isSectionStart);
            setItemEntryForPosition(position, metroItemEntry);
        } else {
            metroItemEntry.setLane(this.mTempLaneInfo);
            layoutParams.isSectionStart = metroItemEntry.isSectionStart;
        }
        StringBuilder sbN = b.n("cacheChildLaneAndSpan position=", position, " lp.isSectionStart=");
        sbN.append(layoutParams.isSectionStart);
        sbN.append(" TopDecorationHeight=");
        sbN.append(getTopDecorationHeight(view));
        Loger.i(sbN.toString());
        return metroItemEntry;
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
        int i12;
        int i13;
        super.checkLayoutParams(layoutParams);
        if (!(layoutParams instanceof LayoutParams)) {
            return false;
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        layoutParams2.scale = getLaneCount() / this.mLaneCounts[layoutParams2.sectionIndex];
        if (isVertical()) {
            ((ViewGroup.MarginLayoutParams) layoutParams2).height = (getChildHeight(layoutParams2.getRowSpan()) - ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin) - ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin;
            ((ViewGroup.MarginLayoutParams) layoutParams2).width = -1;
            return layoutParams2.rowSpan >= 1 && (i12 = layoutParams2.colSpan) >= 1 && i12 <= getLaneCount() && (i13 = layoutParams2.sectionIndex) >= 0 && i13 < this.mLaneCounts.length;
        }
        ((ViewGroup.MarginLayoutParams) layoutParams2).height = -1;
        ((ViewGroup.MarginLayoutParams) layoutParams2).width = (getChildHeight(layoutParams2.getColSpan()) - ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin) - ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
        return layoutParams2.colSpan >= 1 && (i10 = layoutParams2.rowSpan) >= 1 && i10 <= getLaneCount() && (i11 = layoutParams2.sectionIndex) >= 0 && i11 < this.mLaneCounts.length;
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
        MetroItemEntry metroItemEntry = (MetroItemEntry) getItemEntryForPosition(i10);
        if (metroItemEntry != null) {
            laneInfo.set(metroItemEntry.startLane, metroItemEntry.anchorLane);
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
        MetroItemEntry metroItemEntry = (MetroItemEntry) getItemEntryForPosition(i10);
        if (metroItemEntry != null) {
            return getLaneSpan(metroItemEntry, isVertical());
        }
        View childAt = getChildAt(i10 - getFirstVisiblePosition());
        if (childAt != null) {
            return getLaneSpanForChild(childAt);
        }
        throw new IllegalStateException(da.b.a(i10, "Could not find span for position "));
    }

    public int getSelectedSectionIndex() {
        return this.mSelectedSectionIndex;
    }

    public boolean isIntelligentScroll() {
        return this.mIsIntelligentScroll;
    }

    @Override // com.owen.tvrecyclerview.BaseLayoutManager, com.owen.tvrecyclerview.TwoWayLayoutManager
    public void layoutChild(View view, TwoWayLayoutManager.Direction direction) {
        super.layoutChild(view, direction);
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
            MetroItemEntry metroItemEntry = (MetroItemEntry) getItemEntryForPosition(i12);
            if (metroItemEntry == null) {
                metroItemEntry = (MetroItemEntry) cacheChildLaneAndSpan(g2Var.d(i12), TwoWayLayoutManager.Direction.END);
            }
            MetroItemEntry metroItemEntry2 = metroItemEntry;
            this.mTempLaneInfo.set(metroItemEntry2.startLane, metroItemEntry2.anchorLane);
            if (this.mTempLaneInfo.isUndefined()) {
                lanes.findLane(this.mTempLaneInfo, getLaneSpanForPosition(i12), TwoWayLayoutManager.Direction.END);
                metroItemEntry2.setLane(this.mTempLaneInfo);
            }
            Rect rect = this.mTempRect;
            int childWidth = getChildWidth(metroItemEntry2.getColSpan());
            int childHeight = getChildHeight(metroItemEntry2.getRowSpan());
            Lanes.LaneInfo laneInfo = this.mTempLaneInfo;
            TwoWayLayoutManager.Direction direction = TwoWayLayoutManager.Direction.END;
            lanes.getChildFrame(rect, childWidth, childHeight, laneInfo, direction);
            if (i12 != i10) {
                pushChildFrame(metroItemEntry2, this.mTempRect, metroItemEntry2.startLane, getLaneSpan(metroItemEntry2, zIsVertical), direction);
            }
        }
        lanes.getLane(this.mTempLaneInfo.startLane, this.mTempRect);
        lanes.reset(TwoWayLayoutManager.Direction.END);
        Rect rect2 = this.mTempRect;
        lanes.offset(i11 - (zIsVertical ? rect2.bottom : rect2.right));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onScrollStateChanged(int i10) {
        if (i10 == 0) {
            View viewFindViewByPosition = findViewByPosition(this.smoothTargetPosition);
            if (viewFindViewByPosition != null && !isSmoothScrolling() && !hasFocus()) {
                LayoutParams layoutParams = (LayoutParams) viewFindViewByPosition.getLayoutParams();
                int i11 = this.mSelectedSectionIndex;
                int i12 = layoutParams.sectionIndex;
                if (i11 != i12) {
                    this.mSelectedSectionIndex = i12;
                    notifySectionSelectedChanged();
                }
            }
            this.smoothTargetPosition = -1;
        }
    }

    public void removeOnSectionSelectedListener(OnSectionSelectedListener onSectionSelectedListener) {
        List<OnSectionSelectedListener> list = this.mSectionSelectedListeners;
        if (list != null) {
            list.remove(onSectionSelectedListener);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x009f  */
    @Override // com.owen.tvrecyclerview.TwoWayLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z4) {
        boolean z10;
        int width;
        int selectedItemOffsetEnd;
        int paddingLeft;
        int selectedItemOffsetStart;
        int i10;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i11 = this.mSelectedSectionIndex;
        int i12 = layoutParams.sectionIndex;
        if (i11 != i12) {
            TwoWayLayoutManager.Direction direction = i11 < i12 ? TwoWayLayoutManager.Direction.END : TwoWayLayoutManager.Direction.START;
            TwoWayLayoutManager.Direction direction2 = TwoWayLayoutManager.Direction.END;
            boolean z11 = direction == direction2 ? layoutParams.isSuportIntelligentScrollEnd : layoutParams.isSuportIntelligentScrollStart;
            if (this.mIsIntelligentScroll && z11 && (recyclerView instanceof TvRecyclerView)) {
                getDecoratedBoundsWithMargins(view, this.mTempRect);
                TvRecyclerView tvRecyclerView = (TvRecyclerView) recyclerView;
                if (isVertical()) {
                    if (direction == direction2) {
                        paddingLeft = this.mTempRect.top - getPaddingTop();
                        selectedItemOffsetStart = tvRecyclerView.getSelectedItemOffsetStart();
                        i10 = paddingLeft - selectedItemOffsetStart;
                    } else {
                        width = (tvRecyclerView.getHeight() - this.mTempRect.bottom) - getPaddingBottom();
                        selectedItemOffsetEnd = tvRecyclerView.getSelectedItemOffsetEnd();
                        i10 = -(width - selectedItemOffsetEnd);
                    }
                } else if (direction == direction2) {
                    paddingLeft = this.mTempRect.left - getPaddingLeft();
                    selectedItemOffsetStart = tvRecyclerView.getSelectedItemOffsetStart();
                    i10 = paddingLeft - selectedItemOffsetStart;
                } else {
                    width = (tvRecyclerView.getWidth() - this.mTempRect.right) - getPaddingRight();
                    selectedItemOffsetEnd = tvRecyclerView.getSelectedItemOffsetEnd();
                    i10 = -(width - selectedItemOffsetEnd);
                }
                if (!isVertical()) {
                    WeakHashMap weakHashMap = b1.f17953a;
                    int i13 = recyclerView.canScrollHorizontally(i10) ? i10 : 0;
                    if (isVertical()) {
                        WeakHashMap weakHashMap2 = b1.f17953a;
                        if (!recyclerView.canScrollVertically(i10)) {
                            i10 = 0;
                        }
                        Loger.d("dx=" + i13 + " dy=" + i10);
                        tvRecyclerView.smoothScrollBy(i13, i10);
                        z10 = true;
                    }
                }
            } else {
                z10 = false;
            }
            this.mSelectedSectionIndex = layoutParams.sectionIndex;
            notifySectionSelectedChanged();
        } else {
            z10 = false;
        }
        return z10 || super.requestChildRectangleOnScreen(recyclerView, view, rect, z, z4);
    }

    public void setIntelligentScroll(boolean z) {
        this.mIsIntelligentScroll = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void startSmoothScroll(m2 m2Var) {
        this.smoothTargetPosition = m2Var.getTargetPosition();
        super.startSmoothScroll(m2Var);
    }

    public static class LayoutParams extends RecyclerView.LayoutParams {
        private static final int DEFAULT_INDEX = 0;
        private static final int DEFAULT_SCALE = 1;
        private static final int DEFAULT_SPAN = 1;
        public int colSpan;
        public boolean isSectionStart;
        public boolean isSuportIntelligentScrollEnd;
        public boolean isSuportIntelligentScrollStart;
        public int rowSpan;
        private int scale;
        public int sectionIndex;

        public LayoutParams(int i10, int i11) {
            super(i10, i11);
            init(null);
        }

        private void init(ViewGroup.LayoutParams layoutParams) {
            if (layoutParams != null && (layoutParams instanceof LayoutParams)) {
                LayoutParams layoutParams2 = (LayoutParams) layoutParams;
                this.scale = layoutParams2.scale;
                this.sectionIndex = layoutParams2.sectionIndex;
                this.isSectionStart = layoutParams2.isSectionStart;
                this.isSuportIntelligentScrollStart = layoutParams2.isSuportIntelligentScrollStart;
                this.isSuportIntelligentScrollEnd = layoutParams2.isSuportIntelligentScrollEnd;
                return;
            }
            this.rowSpan = 1;
            this.colSpan = 1;
            this.scale = 1;
            this.sectionIndex = 0;
            this.isSectionStart = false;
            this.isSuportIntelligentScrollStart = true;
            this.isSuportIntelligentScrollEnd = true;
        }

        public int getColSpan() {
            return this.colSpan * this.scale;
        }

        public int getRowSpan() {
            return this.rowSpan * this.scale;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("[rowSpan=");
            sb2.append(this.rowSpan);
            sb2.append(" colSpan=");
            sb2.append(this.colSpan);
            sb2.append(" sectionIndex=");
            sb2.append(this.sectionIndex);
            sb2.append(" scale=");
            return a.s(sb2, this.scale, "]");
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, w9.a.f17651e);
            this.colSpan = Math.max(1, typedArrayObtainStyledAttributes.getInt(0, -1));
            this.rowSpan = Math.max(1, typedArrayObtainStyledAttributes.getInt(1, -1));
            typedArrayObtainStyledAttributes.recycle();
            init(null);
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

    public MetroGridLayoutManager(Context context, AttributeSet attributeSet, int i10) {
        int[] iArr;
        super(context, attributeSet, i10);
        this.mSelectedSectionIndex = 0;
        this.mIsIntelligentScroll = true;
        this.smoothTargetPosition = -1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, w9.a.f17648b, i10, 0);
        String string = typedArrayObtainStyledAttributes.getString(5);
        this.mIsIntelligentScroll = typedArrayObtainStyledAttributes.getBoolean(2, true);
        typedArrayObtainStyledAttributes.recycle();
        if (TextUtils.isEmpty(string)) {
            iArr = DEFAULT_LANE_COUNTS;
        } else {
            String[] strArrSplit = string.split(",");
            int length = strArrSplit.length;
            iArr = new int[length];
            for (int i11 = 0; i11 < length; i11++) {
                iArr[i11] = Integer.parseInt(strArrSplit[i11]);
            }
        }
        initLaneCounts(iArr);
    }

    private int getLaneSpan(MetroItemEntry metroItemEntry, boolean z) {
        return z ? metroItemEntry.getColSpan() : metroItemEntry.getRowSpan();
    }

    @Override // com.owen.tvrecyclerview.BaseLayoutManager, com.owen.tvrecyclerview.TwoWayLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // com.owen.tvrecyclerview.BaseLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        LayoutParams layoutParams2 = new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        if (layoutParams instanceof LayoutParams) {
            LayoutParams layoutParams3 = (LayoutParams) layoutParams;
            layoutParams2.sectionIndex = Math.max(0, Math.min(layoutParams3.sectionIndex, this.mLaneCounts.length - 1));
            layoutParams2.scale = getLaneCount() / this.mLaneCounts[layoutParams2.sectionIndex];
            if (isVertical()) {
                layoutParams2.colSpan = Math.max(1, Math.min(layoutParams3.colSpan, this.mLaneCounts[layoutParams3.sectionIndex]));
                layoutParams2.rowSpan = Math.max(1, layoutParams3.rowSpan);
                ((ViewGroup.MarginLayoutParams) layoutParams2).height = (getChildHeight(layoutParams2.getRowSpan()) - ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin) - ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin;
                ((ViewGroup.MarginLayoutParams) layoutParams2).width = -1;
            } else {
                layoutParams2.colSpan = Math.max(1, layoutParams3.colSpan);
                layoutParams2.rowSpan = Math.max(1, Math.min(layoutParams3.rowSpan, this.mLaneCounts[layoutParams3.sectionIndex]));
                ((ViewGroup.MarginLayoutParams) layoutParams2).height = -1;
                ((ViewGroup.MarginLayoutParams) layoutParams2).width = (getChildHeight(layoutParams2.getColSpan()) - ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin) - ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
            }
        }
        return layoutParams2;
    }

    public static class MetroItemEntry extends BaseLayoutManager.ItemEntry {
        public static final Parcelable.Creator<MetroItemEntry> CREATOR = new Parcelable.Creator<MetroItemEntry>() { // from class: com.owen.tvrecyclerview.widget.MetroGridLayoutManager.MetroItemEntry.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public MetroItemEntry createFromParcel(Parcel parcel) {
                return new MetroItemEntry(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public MetroItemEntry[] newArray(int i10) {
                return new MetroItemEntry[i10];
            }
        };
        private final int colSpan;
        private final boolean isSectionStart;
        private final int rowSpan;
        private final int scale;
        private final int sectionIndex;

        public MetroItemEntry(int i10, int i11, int i12, int i13, int i14, int i15, boolean z) {
            super(i10, i11);
            this.colSpan = i12;
            this.rowSpan = i13;
            this.scale = i14;
            this.sectionIndex = i15;
            this.isSectionStart = z;
        }

        @Override // com.owen.tvrecyclerview.BaseLayoutManager.ItemEntry, android.os.Parcelable
        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        public int getColSpan() {
            return this.colSpan * this.scale;
        }

        public int getRowSpan() {
            return this.rowSpan * this.scale;
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
            parcel.writeInt(this.scale);
            parcel.writeInt(this.sectionIndex);
            parcel.writeBooleanArray(new boolean[]{this.isSectionStart});
        }

        public MetroItemEntry(Parcel parcel) {
            super(parcel);
            this.colSpan = parcel.readInt();
            this.rowSpan = parcel.readInt();
            this.scale = parcel.readInt();
            this.sectionIndex = parcel.readInt();
            boolean[] zArr = new boolean[1];
            parcel.readBooleanArray(zArr);
            this.isSectionStart = zArr[0];
        }
    }

    @Override // com.owen.tvrecyclerview.BaseLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    public MetroGridLayoutManager(TwoWayLayoutManager.Orientation orientation, int... iArr) {
        super(orientation);
        this.mSelectedSectionIndex = 0;
        this.mIsIntelligentScroll = true;
        this.smoothTargetPosition = -1;
        initLaneCounts(iArr);
    }
}
