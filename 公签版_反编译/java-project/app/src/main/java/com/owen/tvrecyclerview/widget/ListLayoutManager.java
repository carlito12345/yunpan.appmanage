package com.owen.tvrecyclerview.widget;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.g2;
import androidx.recyclerview.widget.n2;
import com.owen.tvrecyclerview.BaseLayoutManager;
import com.owen.tvrecyclerview.Lanes;
import com.owen.tvrecyclerview.TwoWayLayoutManager;

/* loaded from: classes.dex */
public class ListLayoutManager extends BaseLayoutManager {
    private static final String LOGTAG = "ListLayoutManager";

    public ListLayoutManager(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // com.owen.tvrecyclerview.BaseLayoutManager
    public int getLaneCount() {
        return 1;
    }

    @Override // com.owen.tvrecyclerview.BaseLayoutManager
    public void getLaneForPosition(Lanes.LaneInfo laneInfo, int i10, TwoWayLayoutManager.Direction direction) {
        laneInfo.set(0, 0);
    }

    @Override // com.owen.tvrecyclerview.BaseLayoutManager
    public void moveLayoutToPosition(int i10, int i11, g2 g2Var, n2 n2Var) {
        getLanes().reset(i11);
    }

    public ListLayoutManager(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }

    public ListLayoutManager(Context context, TwoWayLayoutManager.Orientation orientation) {
        super(orientation);
    }
}
