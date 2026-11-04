package androidx.leanback.widget;

import android.view.View;
import android.view.animation.DecelerateInterpolator;
import androidx.recyclerview.widget.a1;
import androidx.recyclerview.widget.k2;
import androidx.recyclerview.widget.n2;

/* loaded from: classes.dex */
public abstract class m extends a1 {

    /* renamed from: a, reason: collision with root package name */
    public boolean f1660a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ q f1661b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(q qVar) {
        super(qVar.f1687b.getContext());
        this.f1661b = qVar;
    }

    public void a() {
        View viewFindViewByPosition = findViewByPosition(getTargetPosition());
        q qVar = this.f1661b;
        if (viewFindViewByPosition == null) {
            if (getTargetPosition() >= 0) {
                qVar.B(getTargetPosition(), false);
                return;
            }
            return;
        }
        if (qVar.f1697m != getTargetPosition()) {
            qVar.f1697m = getTargetPosition();
        }
        if (qVar.hasFocus()) {
            qVar.f1696k |= 32;
            viewFindViewByPosition.requestFocus();
            qVar.f1696k &= -33;
        }
        qVar.b();
        qVar.c();
    }

    @Override // androidx.recyclerview.widget.a1
    public final int calculateTimeForScrolling(int i10) {
        int iCalculateTimeForScrolling = super.calculateTimeForScrolling(i10);
        int i11 = ((x0) this.f1661b.F.f348d).f1741i;
        if (i11 <= 0) {
            return iCalculateTimeForScrolling;
        }
        float f10 = (30.0f / i11) * i10;
        return ((float) iCalculateTimeForScrolling) < f10 ? (int) f10 : iCalculateTimeForScrolling;
    }

    @Override // androidx.recyclerview.widget.a1, androidx.recyclerview.widget.m2
    public final void onStop() {
        super.onStop();
        if (!this.f1660a) {
            a();
        }
        q qVar = this.f1661b;
        if (qVar.f1698n == this) {
            qVar.f1698n = null;
        }
        if (qVar.f1699o == this) {
            qVar.f1699o = null;
        }
    }

    @Override // androidx.recyclerview.widget.a1, androidx.recyclerview.widget.m2
    public final void onTargetFound(View view, n2 n2Var, k2 k2Var) {
        int i10;
        int i11;
        int[] iArr = q.O;
        q qVar = this.f1661b;
        if (qVar.k(view, null, iArr)) {
            if (qVar.f1688c == 0) {
                i10 = iArr[0];
                i11 = iArr[1];
            } else {
                i10 = iArr[1];
                i11 = iArr[0];
            }
            int iCalculateTimeForDeceleration = calculateTimeForDeceleration((int) Math.sqrt((i11 * i11) + (i10 * i10)));
            DecelerateInterpolator decelerateInterpolator = this.mDecelerateInterpolator;
            k2Var.f2169a = i10;
            k2Var.f2170b = i11;
            k2Var.f2171c = iCalculateTimeForDeceleration;
            k2Var.f2173e = decelerateInterpolator;
            k2Var.f2174f = true;
        }
    }
}
