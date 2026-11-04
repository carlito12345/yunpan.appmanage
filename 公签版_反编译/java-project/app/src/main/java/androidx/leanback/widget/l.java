package androidx.leanback.widget;

import android.graphics.PointF;

/* loaded from: classes.dex */
public final class l extends m {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ q f1659c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(q qVar) {
        super(qVar);
        this.f1659c = qVar;
    }

    @Override // androidx.recyclerview.widget.m2
    public final PointF computeScrollVectorForPosition(int i10) {
        if (getChildCount() == 0) {
            return null;
        }
        q qVar = this.f1659c;
        int position = qVar.getPosition(qVar.getChildAt(0));
        int i11 = ((qVar.f1696k & 262144) == 0 ? i10 >= position : i10 <= position) ? 1 : -1;
        return qVar.f1688c == 0 ? new PointF(i11, 0.0f) : new PointF(0.0f, i11);
    }
}
