package androidx.leanback.widget;

import android.graphics.Rect;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.View;

/* loaded from: classes.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ q f1658a;

    public k(q qVar) {
        this.f1658a = qVar;
    }

    public final void a(Object obj, int i10, int i11, int i12, int i13) {
        int i14;
        int i15;
        o oVar;
        int i16;
        View view = (View) obj;
        q qVar = this.f1658a;
        if (i13 == Integer.MIN_VALUE || i13 == Integer.MAX_VALUE) {
            boolean z = qVar.D.f1651c;
            a2.w0 w0Var = qVar.F;
            if (z) {
                x0 x0Var = (x0) w0Var.f348d;
                i13 = x0Var.f1741i - x0Var.f1743k;
            } else {
                i13 = ((x0) w0Var.f348d).f1742j;
            }
        }
        if (qVar.D.f1651c) {
            i14 = i13 - i11;
            i15 = i13;
        } else {
            i15 = i11 + i13;
            i14 = i13;
        }
        int iJ = (qVar.j(i12) + ((x0) qVar.F.f349e).f1742j) - qVar.r;
        a0.h hVar = qVar.K;
        if (((a0.m) hVar.f30d) != null) {
            SparseArray<Parcelable> sparseArray = (SparseArray) ((a0.m) hVar.f30d).d(Integer.toString(i10));
            if (sparseArray != null) {
                view.restoreHierarchyState(sparseArray);
            }
        }
        this.f1658a.p(view, i12, i14, i15, iJ);
        if (!qVar.f1690e.f2205g) {
            qVar.K();
        }
        if ((qVar.f1696k & 3) == 1 || (oVar = qVar.f1699o) == null) {
            return;
        }
        boolean z4 = oVar.f1673c;
        q qVar2 = oVar.f1675e;
        if (z4 && (i16 = oVar.f1674d) != 0) {
            oVar.f1674d = qVar2.v(i16, true);
        }
        int i17 = oVar.f1674d;
        if (i17 == 0 || ((i17 > 0 && qVar2.n()) || (oVar.f1674d < 0 && qVar2.m()))) {
            oVar.setTargetPosition(qVar2.f1697m);
            oVar.stop();
        }
    }

    public final int b(int i10, boolean z, Object[] objArr, boolean z4) {
        int i11;
        View viewFindViewByPosition;
        q qVar = this.f1658a;
        View viewD = qVar.f1695j.d(i10 - qVar.f1691f);
        n nVar = (n) viewD.getLayoutParams();
        qVar.f1687b.getChildViewHolder(viewD);
        nVar.getClass();
        if (!nVar.isItemRemoved()) {
            if (z4) {
                if (z) {
                    qVar.addDisappearingView(viewD);
                } else {
                    qVar.addDisappearingView(viewD, 0);
                }
            } else if (z) {
                qVar.addView(viewD);
            } else {
                qVar.addView(viewD, 0);
            }
            int i12 = qVar.f1701q;
            if (i12 != -1) {
                viewD.setVisibility(i12);
            }
            o oVar = qVar.f1699o;
            if (oVar != null && !oVar.f1673c && (i11 = oVar.f1674d) != 0) {
                q qVar2 = oVar.f1675e;
                int i13 = i11 > 0 ? qVar2.f1697m + qVar2.B : qVar2.f1697m - qVar2.B;
                View view = null;
                while (oVar.f1674d != 0 && (viewFindViewByPosition = oVar.findViewByPosition(i13)) != null) {
                    qVar2.getClass();
                    if (viewFindViewByPosition.getVisibility() == 0 && (!qVar2.hasFocus() || viewFindViewByPosition.hasFocusable())) {
                        qVar2.f1697m = i13;
                        int i14 = oVar.f1674d;
                        if (i14 > 0) {
                            oVar.f1674d = i14 - 1;
                        } else {
                            oVar.f1674d = i14 + 1;
                        }
                        view = viewFindViewByPosition;
                    }
                    i13 = oVar.f1674d > 0 ? i13 + qVar2.B : i13 - qVar2.B;
                }
                if (view != null && qVar2.hasFocus()) {
                    qVar2.f1696k |= 32;
                    view.requestFocus();
                    qVar2.f1696k &= -33;
                }
            }
            if (viewD.findFocus() != null) {
                ((n) viewD.getLayoutParams()).getClass();
            }
            int i15 = qVar.f1696k;
            if ((i15 & 3) != 1) {
                if (i10 == qVar.f1697m && qVar.f1699o == null) {
                    qVar.b();
                }
            } else if ((i15 & 4) == 0) {
                int i16 = i15 & 16;
                if (i16 == 0 && i10 == qVar.f1697m) {
                    qVar.b();
                } else if (i16 != 0 && i10 >= qVar.f1697m && viewD.hasFocusable()) {
                    qVar.f1697m = i10;
                    qVar.f1696k &= -17;
                    qVar.b();
                }
            }
            qVar.r(viewD);
        }
        objArr[0] = viewD;
        return qVar.f1688c == 0 ? qVar.g(viewD) : qVar.f(viewD);
    }

    public final int c() {
        q qVar = this.f1658a;
        return qVar.f1690e.b() + qVar.f1691f;
    }

    public final int d(int i10) {
        q qVar = this.f1658a;
        View viewFindViewByPosition = qVar.findViewByPosition(i10 - qVar.f1691f);
        return (qVar.f1696k & 262144) != 0 ? qVar.f1689d.b(viewFindViewByPosition) : qVar.f1689d.e(viewFindViewByPosition);
    }

    public final int e(int i10) {
        q qVar = this.f1658a;
        View viewFindViewByPosition = qVar.findViewByPosition(i10 - qVar.f1691f);
        Rect rect = q.N;
        qVar.getDecoratedBoundsWithMargins(viewFindViewByPosition, rect);
        return qVar.f1688c == 0 ? rect.width() : rect.height();
    }

    public final void f(int i10) {
        q qVar = this.f1658a;
        View viewFindViewByPosition = qVar.findViewByPosition(i10 - qVar.f1691f);
        if ((qVar.f1696k & 3) == 1) {
            qVar.detachAndScrapView(viewFindViewByPosition, qVar.f1695j);
        } else {
            qVar.removeAndRecycleView(viewFindViewByPosition, qVar.f1695j);
        }
    }
}
