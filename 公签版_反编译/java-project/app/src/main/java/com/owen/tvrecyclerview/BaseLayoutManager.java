package com.owen.tvrecyclerview;

import android.content.Context;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.g2;
import androidx.recyclerview.widget.n2;
import com.owen.tvrecyclerview.Lanes;
import com.owen.tvrecyclerview.TwoWayLayoutManager;
import com.owen.tvrecyclerview.utils.Loger;
import g.b;

/* loaded from: classes.dex */
public abstract class BaseLayoutManager extends TwoWayLayoutManager {
    private static final String LOGTAG = "BaseLayoutManager";
    protected final Rect mChildFrame;
    private ItemEntries mItemEntries;
    private ItemEntries mItemEntriesToRestore;
    private Lanes mLanes;
    private Lanes mLanesToRestore;
    protected final Lanes.LaneInfo mTempLaneInfo;
    protected final Rect mTempRect;

    public static class LanedSavedState extends TwoWayLayoutManager.SavedState {
        public static final Parcelable.Creator<LanedSavedState> CREATOR = new Parcelable.Creator<LanedSavedState>() { // from class: com.owen.tvrecyclerview.BaseLayoutManager.LanedSavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LanedSavedState createFromParcel(Parcel parcel) {
                return new LanedSavedState(parcel, 0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LanedSavedState[] newArray(int i10) {
                return new LanedSavedState[i10];
            }
        };
        private ItemEntries itemEntries;
        private float laneSize;
        private Rect[] lanes;
        private TwoWayLayoutManager.Orientation orientation;

        public /* synthetic */ LanedSavedState(Parcel parcel, int i10) {
            this(parcel);
        }

        @Override // com.owen.tvrecyclerview.TwoWayLayoutManager.SavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.orientation.ordinal());
            parcel.writeFloat(this.laneSize);
            Rect[] rectArr = this.lanes;
            int length = rectArr != null ? rectArr.length : 0;
            parcel.writeInt(length);
            for (int i11 = 0; i11 < length; i11++) {
                this.lanes[i11].writeToParcel(parcel, 1);
            }
            ItemEntries itemEntries = this.itemEntries;
            int size = itemEntries != null ? itemEntries.size() : 0;
            parcel.writeInt(size);
            for (int i12 = 0; i12 < size; i12++) {
                parcel.writeParcelable(this.itemEntries.getItemEntry(i12), i10);
            }
        }

        public LanedSavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private LanedSavedState(Parcel parcel) {
            super(parcel);
            this.orientation = TwoWayLayoutManager.Orientation.values()[parcel.readInt()];
            this.laneSize = parcel.readFloat();
            int i10 = parcel.readInt();
            if (i10 > 0) {
                this.lanes = new Rect[i10];
                for (int i11 = 0; i11 < i10; i11++) {
                    Rect rect = new Rect();
                    rect.readFromParcel(parcel);
                    this.lanes[i11] = rect;
                }
            }
            int i12 = parcel.readInt();
            if (i12 > 0) {
                this.itemEntries = new ItemEntries();
                for (int i13 = 0; i13 < i12; i13++) {
                    this.itemEntries.restoreItemEntry(i13, (ItemEntry) parcel.readParcelable(getClass().getClassLoader()));
                }
            }
        }
    }

    public enum UpdateOp {
        ADD,
        REMOVE,
        UPDATE,
        MOVE
    }

    public BaseLayoutManager(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private boolean canUseLanes(Lanes lanes) {
        if (lanes == null) {
            return false;
        }
        int laneCount = getLaneCount();
        return lanes.getOrientation() == getOrientation() && lanes.getCount() == laneCount && lanes.getLaneSize() == Lanes.calculateLaneSize(this, laneCount);
    }

    private boolean ensureLayoutState() {
        int laneCount = getLaneCount();
        if (laneCount == 0 || getWidth() == 0 || getHeight() == 0 || canUseLanes(this.mLanes)) {
            return false;
        }
        Lanes lanes = this.mLanes;
        this.mLanes = new Lanes(this, laneCount);
        requestMoveLayout();
        if (this.mItemEntries == null) {
            this.mItemEntries = new ItemEntries();
        }
        if (lanes != null && lanes.getOrientation() == this.mLanes.getOrientation() && lanes.getLaneSize() == this.mLanes.getLaneSize()) {
            invalidateItemLanesAfter(0);
            return true;
        }
        this.mItemEntries.clear();
        return true;
    }

    private int getHeightUsed(View view) {
        if (isVertical()) {
            return 0;
        }
        return ((getHeight() - getPaddingTop()) - getPaddingBottom()) - ((int) (getLanes().getLaneSize() * getLaneSpanForChild(view)));
    }

    private int getWidthUsed(View view) {
        if (!isVertical()) {
            return 0;
        }
        return ((getWidth() - getPaddingLeft()) - getPaddingRight()) - ((int) (getLanes().getLaneSize() * getLaneSpanForChild(view)));
    }

    private void handleUpdate(int i10, int i11, UpdateOp updateOp) {
        invalidateItemLanesAfter(i10);
        int iOrdinal = updateOp.ordinal();
        if (iOrdinal == 0) {
            offsetForAddition(i10, i11);
        } else if (iOrdinal == 1) {
            offsetForRemoval(i10, i11);
        } else if (iOrdinal == 3) {
            offsetForRemoval(i10, 1);
            offsetForAddition(i11, 1);
        }
        if (i11 + i10 > getFirstVisiblePosition() && i10 <= getLastVisiblePosition()) {
            requestLayout();
        }
    }

    private void popChildFrame(ItemEntry itemEntry, Rect rect, int i10, int i11, TwoWayLayoutManager.Direction direction) {
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            this.mLanes.popChildFrame(rect, i12, (itemEntry == null || direction == TwoWayLayoutManager.Direction.END) ? 0 : ItemEntry.a(i12 - i10, itemEntry), direction);
        }
    }

    private void requestMoveLayout() {
        if (getPendingScrollPosition() != -1) {
            return;
        }
        int firstVisiblePosition = getFirstVisiblePosition();
        View viewFindViewByPosition = findViewByPosition(firstVisiblePosition);
        setPendingScrollPositionWithOffset(firstVisiblePosition, viewFindViewByPosition != null ? getChildStart(viewFindViewByPosition) : 0);
    }

    public ItemEntry cacheChildFrame(View view, Rect rect) {
        return null;
    }

    public ItemEntry cacheChildLaneAndSpan(View view, TwoWayLayoutManager.Direction direction) {
        return null;
    }

    @Override // com.owen.tvrecyclerview.TwoWayLayoutManager
    public boolean canAddMoreViews(TwoWayLayoutManager.Direction direction, int i10) {
        if (direction == TwoWayLayoutManager.Direction.START) {
            int paddingTop = isVertical() ? getPaddingTop() : getPaddingLeft();
            return this.mLanes.getInnerStart() + (paddingTop > 0 ? paddingTop : 20) > i10;
        }
        int paddingBottom = isVertical() ? getPaddingBottom() : getPaddingRight();
        return this.mLanes.getInnerEnd() - (paddingBottom > 0 ? paddingBottom : 20) < i10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean checkLayoutParams(RecyclerView.LayoutParams layoutParams) {
        return isVertical() ? ((ViewGroup.MarginLayoutParams) layoutParams).width == -1 : ((ViewGroup.MarginLayoutParams) layoutParams).height == -1;
    }

    public void clearItemEntries() {
        ItemEntries itemEntries = this.mItemEntries;
        if (itemEntries != null) {
            itemEntries.clear();
        }
    }

    @Override // com.owen.tvrecyclerview.TwoWayLayoutManager
    public void detachChild(View view, TwoWayLayoutManager.Direction direction) {
        int position = getPosition(view);
        getLaneForPosition(this.mTempLaneInfo, position, direction);
        getDecoratedChildFrame(view, this.mChildFrame);
        popChildFrame(getItemEntryForPosition(position), this.mChildFrame, this.mTempLaneInfo.startLane, getLaneSpanForChild(view), direction);
    }

    @Override // com.owen.tvrecyclerview.TwoWayLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return isVertical() ? new RecyclerView.LayoutParams(-1, -2) : new RecyclerView.LayoutParams(-2, -1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        RecyclerView.LayoutParams layoutParams2 = new RecyclerView.LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        if (isVertical()) {
            ((ViewGroup.MarginLayoutParams) layoutParams2).width = -1;
            ((ViewGroup.MarginLayoutParams) layoutParams2).height = layoutParams.height;
        } else {
            ((ViewGroup.MarginLayoutParams) layoutParams2).width = layoutParams.width;
            ((ViewGroup.MarginLayoutParams) layoutParams2).height = -1;
        }
        return layoutParams2;
    }

    public void getDecoratedChildFrame(View view, Rect rect) {
        rect.left = getDecoratedLeft(view);
        rect.top = getDecoratedTop(view);
        rect.right = getDecoratedRight(view);
        rect.bottom = getDecoratedBottom(view);
    }

    public ItemEntry getItemEntryForPosition(int i10) {
        ItemEntries itemEntries = this.mItemEntries;
        if (itemEntries != null) {
            return itemEntries.getItemEntry(i10);
        }
        return null;
    }

    public abstract int getLaneCount();

    public void getLaneForChild(Lanes.LaneInfo laneInfo, View view, TwoWayLayoutManager.Direction direction) {
        getLaneForPosition(laneInfo, getPosition(view), direction);
    }

    public abstract void getLaneForPosition(Lanes.LaneInfo laneInfo, int i10, TwoWayLayoutManager.Direction direction);

    public int getLaneSpanForChild(View view) {
        return 1;
    }

    public int getLaneSpanForPosition(int i10) {
        return 1;
    }

    public Lanes getLanes() {
        return this.mLanes;
    }

    public void invalidateItemLanesAfter(int i10) {
        ItemEntries itemEntries = this.mItemEntries;
        if (itemEntries != null) {
            itemEntries.invalidateItemLanesAfter(i10);
        }
    }

    @Override // com.owen.tvrecyclerview.TwoWayLayoutManager
    public void layoutChild(View view, TwoWayLayoutManager.Direction direction) {
        int position = getPosition(view);
        getLaneForChild(this.mTempLaneInfo, view, direction);
        this.mLanes.getChildFrame(this.mChildFrame, getDecoratedMeasuredWidth(view), getDecoratedMeasuredHeight(view), this.mTempLaneInfo, direction);
        ItemEntry itemEntryCacheChildFrame = cacheChildFrame(view, this.mChildFrame);
        Rect rect = this.mChildFrame;
        layoutDecorated(view, rect.left, rect.top, rect.right, rect.bottom);
        if (!((RecyclerView.LayoutParams) view.getLayoutParams()).isItemRemoved()) {
            pushChildFrame(itemEntryCacheChildFrame, this.mChildFrame, this.mTempLaneInfo.startLane, getLaneSpanForChild(view), direction);
        }
        StringBuilder sbN = b.n("child position ", position, " childFrame=");
        sbN.append(this.mChildFrame);
        Loger.i(sbN.toString());
    }

    @Override // com.owen.tvrecyclerview.TwoWayLayoutManager
    public void measureChild(View view, TwoWayLayoutManager.Direction direction) {
        cacheChildLaneAndSpan(view, direction);
        measureChildWithMargins(view);
    }

    public void measureChildWithMargins(View view) {
        measureChildWithMargins(view, getWidthUsed(view), getHeightUsed(view));
    }

    public abstract void moveLayoutToPosition(int i10, int i11, g2 g2Var, n2 n2Var);

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void offsetChildrenHorizontal(int i10) {
        if (!isVertical()) {
            this.mLanes.offset(i10);
        }
        super.offsetChildrenHorizontal(i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void offsetChildrenVertical(int i10) {
        super.offsetChildrenVertical(i10);
        if (isVertical()) {
            this.mLanes.offset(i10);
        }
    }

    public void offsetForAddition(int i10, int i11) {
        ItemEntries itemEntries = this.mItemEntries;
        if (itemEntries != null) {
            itemEntries.offsetForAddition(i10, i11);
        }
    }

    public void offsetForRemoval(int i10, int i11) {
        ItemEntries itemEntries = this.mItemEntries;
        if (itemEntries != null) {
            itemEntries.offsetForRemoval(i10, i11);
        }
    }

    @Override // com.owen.tvrecyclerview.TwoWayLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsAdded(RecyclerView recyclerView, int i10, int i11) {
        handleUpdate(i10, i11, UpdateOp.ADD);
        super.onItemsAdded(recyclerView, i10, i11);
    }

    @Override // com.owen.tvrecyclerview.TwoWayLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsChanged(RecyclerView recyclerView) {
        clearItemEntries();
        super.onItemsChanged(recyclerView);
    }

    @Override // com.owen.tvrecyclerview.TwoWayLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsMoved(RecyclerView recyclerView, int i10, int i11, int i12) {
        handleUpdate(i10, i11, UpdateOp.MOVE);
        super.onItemsMoved(recyclerView, i10, i11, i12);
    }

    @Override // com.owen.tvrecyclerview.TwoWayLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsRemoved(RecyclerView recyclerView, int i10, int i11) {
        handleUpdate(i10, i11, UpdateOp.REMOVE);
        super.onItemsRemoved(recyclerView, i10, i11);
    }

    @Override // com.owen.tvrecyclerview.TwoWayLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsUpdated(RecyclerView recyclerView, int i10, int i11) {
        handleUpdate(i10, i11, UpdateOp.UPDATE);
        super.onItemsUpdated(recyclerView, i10, i11);
    }

    @Override // com.owen.tvrecyclerview.TwoWayLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(g2 g2Var, n2 n2Var) {
        Lanes lanes = this.mLanesToRestore;
        boolean z = lanes != null;
        if (z) {
            this.mLanes = lanes;
            this.mItemEntries = this.mItemEntriesToRestore;
            this.mLanesToRestore = null;
            this.mItemEntriesToRestore = null;
        }
        boolean zEnsureLayoutState = ensureLayoutState();
        if (this.mLanes == null) {
            return;
        }
        int iB = n2Var.b();
        ItemEntries itemEntries = this.mItemEntries;
        if (itemEntries != null) {
            itemEntries.setAdapterSize(iB);
        }
        int anchorItemPosition = getAnchorItemPosition(n2Var);
        if (anchorItemPosition > 0 && (zEnsureLayoutState || !z)) {
            moveLayoutToPosition(anchorItemPosition, getPendingScrollOffset(), g2Var, n2Var);
        }
        this.mLanes.reset(TwoWayLayoutManager.Direction.START);
        super.onLayoutChildren(g2Var, n2Var);
    }

    @Override // com.owen.tvrecyclerview.TwoWayLayoutManager
    public void onLayoutScrapList(g2 g2Var, n2 n2Var) {
        this.mLanes.save();
        super.onLayoutScrapList(g2Var, n2Var);
        this.mLanes.restore();
    }

    @Override // com.owen.tvrecyclerview.TwoWayLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onRestoreInstanceState(Parcelable parcelable) {
        LanedSavedState lanedSavedState = (LanedSavedState) parcelable;
        if (lanedSavedState.lanes != null && lanedSavedState.laneSize > 0.0f) {
            this.mLanesToRestore = new Lanes(this, lanedSavedState.orientation, lanedSavedState.lanes, lanedSavedState.laneSize);
            this.mItemEntriesToRestore = lanedSavedState.itemEntries;
        }
        super.onRestoreInstanceState(lanedSavedState.getSuperState());
    }

    @Override // com.owen.tvrecyclerview.TwoWayLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public Parcelable onSaveInstanceState() {
        LanedSavedState lanedSavedState = new LanedSavedState(super.onSaveInstanceState());
        Lanes lanes = this.mLanes;
        int count = lanes != null ? lanes.getCount() : 0;
        lanedSavedState.lanes = new Rect[count];
        for (int i10 = 0; i10 < count; i10++) {
            Rect rect = new Rect();
            this.mLanes.getLane(i10, rect);
            lanedSavedState.lanes[i10] = rect;
        }
        lanedSavedState.orientation = getOrientation();
        Lanes lanes2 = this.mLanes;
        lanedSavedState.laneSize = lanes2 != null ? lanes2.getLaneSize() : 0.0f;
        lanedSavedState.itemEntries = this.mItemEntries;
        return lanedSavedState;
    }

    public void pushChildFrame(ItemEntry itemEntry, Rect rect, int i10, int i11, TwoWayLayoutManager.Direction direction) {
        boolean z = (direction != TwoWayLayoutManager.Direction.END || itemEntry == null || itemEntry.hasSpanMargins()) ? false : true;
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            int iPushChildFrame = this.mLanes.pushChildFrame(rect, i12, (itemEntry == null || direction == TwoWayLayoutManager.Direction.END) ? 0 : ItemEntry.a(i12 - i10, itemEntry), direction);
            if (i11 > 1 && z) {
                itemEntry.setSpanMargin(i12 - i10, iPushChildFrame, i11);
            }
        }
    }

    public void setItemEntryForPosition(int i10, ItemEntry itemEntry) {
        ItemEntries itemEntries = this.mItemEntries;
        if (itemEntries != null) {
            itemEntries.putItemEntry(i10, itemEntry);
        }
    }

    public BaseLayoutManager(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mChildFrame = new Rect();
        this.mTempRect = new Rect();
        this.mTempLaneInfo = new Lanes.LaneInfo();
    }

    public static class ItemEntry implements Parcelable {
        public static final Parcelable.Creator<ItemEntry> CREATOR = new Parcelable.Creator<ItemEntry>() { // from class: com.owen.tvrecyclerview.BaseLayoutManager.ItemEntry.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ItemEntry createFromParcel(Parcel parcel) {
                return new ItemEntry(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ItemEntry[] newArray(int i10) {
                return new ItemEntry[i10];
            }
        };
        public int anchorLane;
        private int[] spanMargins;
        public int startLane;

        public ItemEntry(int i10, int i11) {
            this.startLane = i10;
            this.anchorLane = i11;
        }

        public static /* bridge */ /* synthetic */ int a(int i10, ItemEntry itemEntry) {
            return itemEntry.getSpanMargin(i10);
        }

        private int getSpanMargin(int i10) {
            int[] iArr = this.spanMargins;
            if (iArr == null) {
                return 0;
            }
            return iArr[i10];
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean hasSpanMargins() {
            return this.spanMargins != null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSpanMargin(int i10, int i11, int i12) {
            if (this.spanMargins == null) {
                this.spanMargins = new int[i12];
            }
            this.spanMargins[i10] = i11;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public void invalidateLane() {
            this.startLane = -1;
            this.anchorLane = -1;
            this.spanMargins = null;
        }

        public void setLane(Lanes.LaneInfo laneInfo) {
            this.startLane = laneInfo.startLane;
            this.anchorLane = laneInfo.anchorLane;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeInt(this.startLane);
            parcel.writeInt(this.anchorLane);
            int[] iArr = this.spanMargins;
            int length = iArr != null ? iArr.length : 0;
            parcel.writeInt(length);
            for (int i11 = 0; i11 < length; i11++) {
                parcel.writeInt(this.spanMargins[i11]);
            }
        }

        public ItemEntry(Parcel parcel) {
            this.startLane = parcel.readInt();
            this.anchorLane = parcel.readInt();
            int i10 = parcel.readInt();
            if (i10 > 0) {
                this.spanMargins = new int[i10];
                for (int i11 = 0; i11 < i10; i11++) {
                    this.spanMargins[i11] = parcel.readInt();
                }
            }
        }
    }

    public BaseLayoutManager(TwoWayLayoutManager.Orientation orientation) {
        super(orientation);
        this.mChildFrame = new Rect();
        this.mTempRect = new Rect();
        this.mTempLaneInfo = new Lanes.LaneInfo();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new RecyclerView.LayoutParams(context, attributeSet);
    }
}
