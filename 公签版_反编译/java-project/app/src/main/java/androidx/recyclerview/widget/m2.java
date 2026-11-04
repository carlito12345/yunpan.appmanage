package androidx.recyclerview.widget;

import android.graphics.PointF;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public abstract class m2 {
    private RecyclerView.LayoutManager mLayoutManager;
    private boolean mPendingInitialRun;
    private RecyclerView mRecyclerView;
    private boolean mRunning;
    private boolean mStarted;
    private View mTargetView;
    private int mTargetPosition = -1;
    private final k2 mRecyclingAction = new k2();

    public PointF computeScrollVectorForPosition(int i10) {
        Object layoutManager = getLayoutManager();
        if (layoutManager instanceof l2) {
            return ((l2) layoutManager).computeScrollVectorForPosition(i10);
        }
        return null;
    }

    public View findViewByPosition(int i10) {
        return this.mRecyclerView.mLayout.findViewByPosition(i10);
    }

    public int getChildCount() {
        return this.mRecyclerView.mLayout.getChildCount();
    }

    public int getChildPosition(View view) {
        return this.mRecyclerView.getChildLayoutPosition(view);
    }

    public RecyclerView.LayoutManager getLayoutManager() {
        return this.mLayoutManager;
    }

    public int getTargetPosition() {
        return this.mTargetPosition;
    }

    @Deprecated
    public void instantScrollToPosition(int i10) {
        this.mRecyclerView.scrollToPosition(i10);
    }

    public boolean isPendingInitialRun() {
        return this.mPendingInitialRun;
    }

    public boolean isRunning() {
        return this.mRunning;
    }

    public void normalize(PointF pointF) {
        float f10 = pointF.x;
        float f11 = pointF.y;
        float fSqrt = (float) Math.sqrt((f11 * f11) + (f10 * f10));
        pointF.x /= fSqrt;
        pointF.y /= fSqrt;
    }

    public void onAnimation(int i10, int i11) {
        PointF pointFComputeScrollVectorForPosition;
        RecyclerView recyclerView = this.mRecyclerView;
        if (this.mTargetPosition == -1 || recyclerView == null) {
            stop();
        }
        if (this.mPendingInitialRun && this.mTargetView == null && this.mLayoutManager != null && (pointFComputeScrollVectorForPosition = computeScrollVectorForPosition(this.mTargetPosition)) != null) {
            float f10 = pointFComputeScrollVectorForPosition.x;
            if (f10 != 0.0f || pointFComputeScrollVectorForPosition.y != 0.0f) {
                recyclerView.scrollStep((int) Math.signum(f10), (int) Math.signum(pointFComputeScrollVectorForPosition.y), null);
            }
        }
        this.mPendingInitialRun = false;
        View view = this.mTargetView;
        if (view != null) {
            if (getChildPosition(view) == this.mTargetPosition) {
                onTargetFound(this.mTargetView, recyclerView.mState, this.mRecyclingAction);
                this.mRecyclingAction.a(recyclerView);
                stop();
            } else {
                this.mTargetView = null;
            }
        }
        if (this.mRunning) {
            onSeekTargetStep(i10, i11, recyclerView.mState, this.mRecyclingAction);
            k2 k2Var = this.mRecyclingAction;
            boolean z = k2Var.f2172d >= 0;
            k2Var.a(recyclerView);
            if (z && this.mRunning) {
                this.mPendingInitialRun = true;
                recyclerView.mViewFlinger.b();
            }
        }
    }

    public void onChildAttachedToWindow(View view) {
        if (getChildPosition(view) == getTargetPosition()) {
            this.mTargetView = view;
            int i10 = RecyclerView.HORIZONTAL;
        }
    }

    public abstract void onSeekTargetStep(int i10, int i11, n2 n2Var, k2 k2Var);

    public abstract void onStart();

    public abstract void onStop();

    public abstract void onTargetFound(View view, n2 n2Var, k2 k2Var);

    public void setTargetPosition(int i10) {
        this.mTargetPosition = i10;
    }

    public void start(RecyclerView recyclerView, RecyclerView.LayoutManager layoutManager) {
        q2 q2Var = recyclerView.mViewFlinger;
        q2Var.f2240g.removeCallbacks(q2Var);
        q2Var.f2236c.abortAnimation();
        this.mRecyclerView = recyclerView;
        this.mLayoutManager = layoutManager;
        int i10 = this.mTargetPosition;
        if (i10 == -1) {
            throw new IllegalArgumentException("Invalid target position");
        }
        recyclerView.mState.f2199a = i10;
        this.mRunning = true;
        this.mPendingInitialRun = true;
        this.mTargetView = findViewByPosition(getTargetPosition());
        onStart();
        this.mRecyclerView.mViewFlinger.b();
        this.mStarted = true;
    }

    public final void stop() {
        if (this.mRunning) {
            this.mRunning = false;
            onStop();
            this.mRecyclerView.mState.f2199a = -1;
            this.mTargetView = null;
            this.mTargetPosition = -1;
            this.mPendingInitialRun = false;
            this.mLayoutManager.onSmoothScrollerStopped(this);
            this.mLayoutManager = null;
            this.mRecyclerView = null;
        }
    }
}
