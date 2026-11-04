package androidx.leanback.widget;

import android.graphics.PointF;
import android.view.View;
import androidx.recyclerview.widget.k2;

/* loaded from: classes.dex */
public final class o extends m {

    /* renamed from: c, reason: collision with root package name */
    public final boolean f1673c;

    /* renamed from: d, reason: collision with root package name */
    public int f1674d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ q f1675e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(q qVar, int i10, boolean z) {
        super(qVar);
        this.f1675e = qVar;
        this.f1674d = i10;
        this.f1673c = z;
        setTargetPosition(-2);
    }

    @Override // androidx.leanback.widget.m
    public final void a() {
        super.a();
        this.f1674d = 0;
        View viewFindViewByPosition = findViewByPosition(getTargetPosition());
        if (viewFindViewByPosition != null) {
            this.f1675e.D(viewFindViewByPosition, true);
        }
    }

    @Override // androidx.recyclerview.widget.m2
    public final PointF computeScrollVectorForPosition(int i10) {
        int i11 = this.f1674d;
        if (i11 == 0) {
            return null;
        }
        q qVar = this.f1675e;
        int i12 = ((qVar.f1696k & 262144) == 0 ? i11 >= 0 : i11 <= 0) ? 1 : -1;
        return qVar.f1688c == 0 ? new PointF(i12, 0.0f) : new PointF(0.0f, i12);
    }

    @Override // androidx.recyclerview.widget.a1
    public final void updateActionForInterimTarget(k2 k2Var) {
        if (this.f1674d == 0) {
            return;
        }
        super.updateActionForInterimTarget(k2Var);
    }
}
