package com.owen.tvrecyclerview;

import android.graphics.Rect;
import com.owen.tvrecyclerview.TwoWayLayoutManager;

/* loaded from: classes.dex */
public class Lanes {
    public static final int NO_LANE = -1;
    private Integer mInnerEnd;
    private Integer mInnerStart;
    private final boolean mIsVertical;
    private final float mLaneSize;
    private final Rect[] mLanes;
    private final BaseLayoutManager mLayout;
    private final Rect[] mSavedLanes;
    private final Rect mTempRect = new Rect();
    private final LaneInfo mTempLaneInfo = new LaneInfo();

    public static class LaneInfo {
        public int anchorLane;
        public int startLane;

        public boolean isUndefined() {
            return this.startLane == -1 || this.anchorLane == -1;
        }

        public void set(int i10, int i11) {
            this.startLane = i10;
            this.anchorLane = i11;
        }

        public void setUndefined() {
            this.startLane = -1;
            this.anchorLane = -1;
        }
    }

    public Lanes(BaseLayoutManager baseLayoutManager, TwoWayLayoutManager.Orientation orientation, Rect[] rectArr, float f10) {
        this.mLayout = baseLayoutManager;
        this.mIsVertical = orientation == TwoWayLayoutManager.Orientation.VERTICAL;
        this.mLanes = rectArr;
        this.mLaneSize = f10;
        this.mSavedLanes = new Rect[rectArr.length];
        for (int i10 = 0; i10 < this.mLanes.length; i10++) {
            this.mSavedLanes[i10] = new Rect();
        }
    }

    public static float calculateLaneSize(BaseLayoutManager baseLayoutManager, int i10) {
        int paddingTop;
        int paddingBottom;
        int height;
        if (baseLayoutManager.isVertical()) {
            paddingTop = baseLayoutManager.getPaddingLeft();
            paddingBottom = baseLayoutManager.getPaddingRight();
            height = baseLayoutManager.getWidth();
        } else {
            paddingTop = baseLayoutManager.getPaddingTop();
            paddingBottom = baseLayoutManager.getPaddingBottom();
            height = baseLayoutManager.getHeight();
        }
        return ((height - paddingTop) - paddingBottom) / i10;
    }

    private int findLaneThatFitsSpan(int i10, int i11, TwoWayLayoutManager.Direction direction) {
        int iMax = Math.max(0, (i10 - i11) + 1);
        int iMin = Math.min(iMax + i11, (this.mLanes.length - i11) + 1);
        while (iMax < iMin) {
            this.mTempLaneInfo.set(iMax, i10);
            Rect rect = this.mTempRect;
            boolean z = this.mIsVertical;
            getChildFrame(rect, z ? (int) (i11 * this.mLaneSize) : 1, z ? 1 : (int) (i11 * this.mLaneSize), this.mTempLaneInfo, direction);
            if (!intersects(iMax, i11, this.mTempRect)) {
                return iMax;
            }
            iMax++;
        }
        return -1;
    }

    private boolean intersects(int i10, int i11, Rect rect) {
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            if (Rect.intersects(this.mLanes[i12], rect)) {
                return true;
            }
        }
        return false;
    }

    private void invalidateEdges() {
        this.mInnerStart = null;
        this.mInnerEnd = null;
    }

    private void offsetLane(int i10, int i11) {
        Rect rect = this.mLanes[i10];
        boolean z = this.mIsVertical;
        int i12 = z ? 0 : i11;
        if (!z) {
            i11 = 0;
        }
        rect.offset(i12, i11);
    }

    public void findLane(LaneInfo laneInfo, int i10, TwoWayLayoutManager.Direction direction) {
        int iFindLaneThatFitsSpan;
        laneInfo.setUndefined();
        int i11 = direction == TwoWayLayoutManager.Direction.END ? Integer.MAX_VALUE : Integer.MIN_VALUE;
        int i12 = 0;
        while (true) {
            Rect[] rectArr = this.mLanes;
            if (i12 >= rectArr.length) {
                return;
            }
            int i13 = this.mIsVertical ? direction == TwoWayLayoutManager.Direction.END ? rectArr[i12].bottom : rectArr[i12].top : direction == TwoWayLayoutManager.Direction.END ? rectArr[i12].right : rectArr[i12].left;
            if (((direction == TwoWayLayoutManager.Direction.END && i13 < i11) || (direction == TwoWayLayoutManager.Direction.START && i13 > i11)) && (iFindLaneThatFitsSpan = findLaneThatFitsSpan(i12, i10, direction)) != -1) {
                laneInfo.set(iFindLaneThatFitsSpan, i12);
                i11 = i13;
            }
            i12++;
        }
    }

    public void getChildFrame(Rect rect, int i10, int i11, LaneInfo laneInfo, TwoWayLayoutManager.Direction direction) {
        if (laneInfo.startLane < 0) {
            laneInfo.startLane = 0;
        }
        Rect[] rectArr = this.mLanes;
        int i12 = laneInfo.startLane;
        Rect rect2 = rectArr[i12];
        TwoWayLayoutManager.Direction direction2 = TwoWayLayoutManager.Direction.END;
        if (direction == direction2) {
            i12 = laneInfo.anchorLane;
        }
        Rect rect3 = rectArr[i12];
        if (this.mIsVertical) {
            rect.left = rect2.left;
            rect.top = direction == direction2 ? rect3.bottom : rect3.top - i11;
        } else {
            rect.top = rect2.top;
            rect.left = direction == direction2 ? rect3.right : rect3.left - i10;
        }
        rect.right = rect.left + i10;
        rect.bottom = rect.top + i11;
    }

    public int getCount() {
        return this.mLanes.length;
    }

    public int getInnerEnd() {
        Integer num = this.mInnerEnd;
        if (num != null) {
            return num.intValue();
        }
        this.mInnerEnd = Integer.MAX_VALUE;
        int i10 = 0;
        while (true) {
            Rect[] rectArr = this.mLanes;
            if (i10 >= rectArr.length) {
                return this.mInnerEnd.intValue();
            }
            Rect rect = rectArr[i10];
            this.mInnerEnd = Integer.valueOf(Math.min(this.mInnerEnd.intValue(), this.mIsVertical ? rect.bottom : rect.right));
            i10++;
        }
    }

    public int getInnerStart() {
        Integer num = this.mInnerStart;
        if (num != null) {
            return num.intValue();
        }
        this.mInnerStart = Integer.MIN_VALUE;
        int i10 = 0;
        while (true) {
            Rect[] rectArr = this.mLanes;
            if (i10 >= rectArr.length) {
                return this.mInnerStart.intValue();
            }
            Rect rect = rectArr[i10];
            this.mInnerStart = Integer.valueOf(Math.max(this.mInnerStart.intValue(), this.mIsVertical ? rect.top : rect.left));
            i10++;
        }
    }

    public void getLane(int i10, Rect rect) {
        rect.set(this.mLanes[i10]);
    }

    public float getLaneSize() {
        return this.mLaneSize;
    }

    public TwoWayLayoutManager.Orientation getOrientation() {
        return this.mIsVertical ? TwoWayLayoutManager.Orientation.VERTICAL : TwoWayLayoutManager.Orientation.HORIZONTAL;
    }

    public void offset(int i10) {
        for (int i11 = 0; i11 < this.mLanes.length; i11++) {
            offset(i11, i10);
        }
        invalidateEdges();
    }

    public void popChildFrame(Rect rect, int i10, int i11, TwoWayLayoutManager.Direction direction) {
        if (i10 >= 0) {
            Rect[] rectArr = this.mLanes;
            if (i10 >= rectArr.length) {
                return;
            }
            Rect rect2 = rectArr[i10];
            if (this.mIsVertical) {
                if (direction == TwoWayLayoutManager.Direction.END) {
                    rect2.top = rect.bottom - i11;
                } else {
                    rect2.bottom = rect.top + i11;
                }
            } else if (direction == TwoWayLayoutManager.Direction.END) {
                rect2.left = rect.right - i11;
            } else {
                rect2.right = rect.left + i11;
            }
            invalidateEdges();
        }
    }

    public int pushChildFrame(Rect rect, int i10, int i11, TwoWayLayoutManager.Direction direction) {
        int i12;
        Rect rect2 = this.mLanes[i10];
        if (this.mIsVertical) {
            if (direction == TwoWayLayoutManager.Direction.END) {
                i12 = rect.top - rect2.bottom;
                rect2.bottom = rect.bottom + i11;
            } else {
                i12 = rect.bottom - rect2.top;
                rect2.top = rect.top - i11;
            }
        } else if (direction == TwoWayLayoutManager.Direction.END) {
            i12 = rect.left - rect2.right;
            rect2.right = rect.right + i11;
        } else {
            i12 = rect.right - rect2.left;
            rect2.left = rect.left - i11;
        }
        invalidateEdges();
        return i12;
    }

    public void reset(TwoWayLayoutManager.Direction direction) {
        int i10 = 0;
        while (true) {
            Rect[] rectArr = this.mLanes;
            if (i10 >= rectArr.length) {
                invalidateEdges();
                return;
            }
            Rect rect = rectArr[i10];
            if (this.mIsVertical) {
                if (direction == TwoWayLayoutManager.Direction.START) {
                    rect.bottom = rect.top;
                } else {
                    rect.top = rect.bottom;
                }
            } else if (direction == TwoWayLayoutManager.Direction.START) {
                rect.right = rect.left;
            } else {
                rect.left = rect.right;
            }
            i10++;
        }
    }

    public void restore() {
        int i10 = 0;
        while (true) {
            Rect[] rectArr = this.mLanes;
            if (i10 >= rectArr.length) {
                return;
            }
            rectArr[i10].set(this.mSavedLanes[i10]);
            i10++;
        }
    }

    public void save() {
        int i10 = 0;
        while (true) {
            Rect[] rectArr = this.mLanes;
            if (i10 >= rectArr.length) {
                return;
            }
            this.mSavedLanes[i10].set(rectArr[i10]);
            i10++;
        }
    }

    public void offset(int i10, int i11) {
        offsetLane(i10, i11);
        invalidateEdges();
    }

    public Lanes(BaseLayoutManager baseLayoutManager, int i10) {
        this.mLayout = baseLayoutManager;
        this.mIsVertical = baseLayoutManager.isVertical();
        this.mLanes = new Rect[i10];
        this.mSavedLanes = new Rect[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            this.mLanes[i11] = new Rect();
            this.mSavedLanes[i11] = new Rect();
        }
        this.mLaneSize = calculateLaneSize(baseLayoutManager, i10);
        int paddingLeft = baseLayoutManager.getPaddingLeft();
        int paddingTop = baseLayoutManager.getPaddingTop();
        for (int i12 = 0; i12 < i10; i12++) {
            float f10 = this.mLaneSize;
            int i13 = (int) (i12 * f10);
            boolean z = this.mIsVertical;
            int i14 = (z ? i13 : 0) + paddingLeft;
            int i15 = (z ? 0 : i13) + paddingTop;
            this.mLanes[i12].set(i14, i15, z ? ((int) f10) + i14 : i14, z ? i15 : ((int) f10) + i15);
        }
    }

    public void reset(int i10) {
        int i11 = 0;
        while (true) {
            Rect[] rectArr = this.mLanes;
            if (i11 < rectArr.length) {
                Rect rect = rectArr[i11];
                boolean z = this.mIsVertical;
                rect.offsetTo(z ? rect.left : i10, z ? i10 : rect.top);
                if (this.mIsVertical) {
                    rect.bottom = rect.top;
                } else {
                    rect.right = rect.left;
                }
                i11++;
            } else {
                invalidateEdges();
                return;
            }
        }
    }
}
