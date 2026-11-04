package androidx.leanback.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.FocusFinder;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import androidx.leanback.widget.picker.DatePicker;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.d1;
import androidx.recyclerview.widget.f1;
import androidx.recyclerview.widget.g2;
import androidx.recyclerview.widget.m1;
import androidx.recyclerview.widget.m2;
import androidx.recyclerview.widget.n2;
import androidx.recyclerview.widget.y1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import x0.b1;

/* loaded from: classes.dex */
public final class q extends RecyclerView.LayoutManager {
    public static final Rect N = new Rect();
    public static final int[] O = new int[2];
    public int B;
    public j D;
    public int H;
    public int I;

    /* renamed from: b, reason: collision with root package name */
    public final f f1687b;

    /* renamed from: e, reason: collision with root package name */
    public n2 f1690e;

    /* renamed from: f, reason: collision with root package name */
    public int f1691f;

    /* renamed from: g, reason: collision with root package name */
    public int f1692g;

    /* renamed from: i, reason: collision with root package name */
    public int[] f1694i;

    /* renamed from: j, reason: collision with root package name */
    public g2 f1695j;

    /* renamed from: n, reason: collision with root package name */
    public m f1698n;

    /* renamed from: o, reason: collision with root package name */
    public o f1699o;
    public int r;

    /* renamed from: s, reason: collision with root package name */
    public int f1702s;

    /* renamed from: t, reason: collision with root package name */
    public int f1703t;

    /* renamed from: u, reason: collision with root package name */
    public int[] f1704u;

    /* renamed from: v, reason: collision with root package name */
    public int f1705v;

    /* renamed from: w, reason: collision with root package name */
    public int f1706w;

    /* renamed from: x, reason: collision with root package name */
    public int f1707x;

    /* renamed from: y, reason: collision with root package name */
    public int f1708y;
    public int z;

    /* renamed from: a, reason: collision with root package name */
    public final int f1686a = 10;

    /* renamed from: c, reason: collision with root package name */
    public int f1688c = 0;

    /* renamed from: d, reason: collision with root package name */
    public f1 f1689d = new d1(this);

    /* renamed from: h, reason: collision with root package name */
    public final SparseIntArray f1693h = new SparseIntArray();

    /* renamed from: k, reason: collision with root package name */
    public int f1696k = 221696;
    public ArrayList l = null;

    /* renamed from: m, reason: collision with root package name */
    public int f1697m = -1;

    /* renamed from: p, reason: collision with root package name */
    public int f1700p = 0;
    public int A = 8388659;
    public int C = 1;
    public int E = 0;
    public final a2.w0 F = new a2.w0(3);
    public final v3.f G = new v3.f((byte) 0, 4);
    public final int[] J = new int[2];
    public final a0.h K = new a0.h(1);
    public final androidx.activity.h L = new androidx.activity.h(1, this);
    public final k M = new k(this);

    /* renamed from: q, reason: collision with root package name */
    public int f1701q = -1;

    public q(f fVar) {
        this.f1687b = fVar;
        setItemPrefetchEnabled(false);
    }

    public static int e(View view) {
        n nVar;
        if (view == null || (nVar = (n) view.getLayoutParams()) == null || nVar.isItemRemoved()) {
            return -1;
        }
        return nVar.getViewAdapterPosition();
    }

    public final int A(int i10) {
        int i11 = 0;
        if (i10 == 0) {
            return 0;
        }
        int i12 = -i10;
        int childCount = getChildCount();
        if (this.f1688c == 0) {
            while (i11 < childCount) {
                getChildAt(i11).offsetTopAndBottom(i12);
                i11++;
            }
        } else {
            while (i11 < childCount) {
                getChildAt(i11).offsetLeftAndRight(i12);
                i11++;
            }
        }
        this.r += i10;
        L();
        this.f1687b.invalidate();
        return i10;
    }

    public final void B(int i10, boolean z) {
        View viewFindViewByPosition = findViewByPosition(i10);
        boolean zIsSmoothScrolling = isSmoothScrolling();
        f fVar = this.f1687b;
        if (!zIsSmoothScrolling && !fVar.isLayoutRequested() && viewFindViewByPosition != null && e(viewFindViewByPosition) == i10) {
            this.f1696k |= 32;
            D(viewFindViewByPosition, z);
            this.f1696k &= -33;
            return;
        }
        int i11 = this.f1696k;
        if ((i11 & 512) == 0 || (i11 & 64) != 0) {
            this.f1697m = i10;
            this.f1700p = Integer.MIN_VALUE;
            return;
        }
        if (z && !fVar.isLayoutRequested()) {
            this.f1697m = i10;
            this.f1700p = Integer.MIN_VALUE;
            if (this.D == null) {
                fVar.getId();
                return;
            }
            l lVar = new l(this);
            lVar.setTargetPosition(i10);
            startSmoothScroll(lVar);
            int targetPosition = lVar.getTargetPosition();
            if (targetPosition != this.f1697m) {
                this.f1697m = targetPosition;
                return;
            }
            return;
        }
        if (zIsSmoothScrolling) {
            m mVar = this.f1698n;
            if (mVar != null) {
                mVar.f1660a = true;
            }
            fVar.stopScroll();
        }
        if (!fVar.isLayoutRequested() && viewFindViewByPosition != null && e(viewFindViewByPosition) == i10) {
            this.f1696k |= 32;
            D(viewFindViewByPosition, z);
            this.f1696k &= -33;
        } else {
            this.f1697m = i10;
            this.f1700p = Integer.MIN_VALUE;
            this.f1696k |= 256;
            requestLayout();
        }
    }

    public final void C(View view, View view2, boolean z, int i10, int i11) {
        if ((this.f1696k & 64) != 0) {
            return;
        }
        int iE = e(view);
        if (view != null && view2 != null) {
            ((n) view.getLayoutParams()).getClass();
        }
        int i12 = this.f1697m;
        f fVar = this.f1687b;
        if (iE != i12) {
            this.f1697m = iE;
            this.f1700p = 0;
            if ((this.f1696k & 3) != 1) {
                b();
            }
            if (fVar.h()) {
                fVar.invalidate();
            }
        }
        if (view == null) {
            return;
        }
        if (!view.hasFocus() && fVar.hasFocus()) {
            view.requestFocus();
        }
        if ((this.f1696k & 131072) == 0 && z) {
            return;
        }
        int[] iArr = O;
        if (!k(view, view2, iArr) && i10 == 0 && i11 == 0) {
            return;
        }
        int i13 = iArr[0] + i10;
        int i14 = iArr[1] + i11;
        if ((this.f1696k & 3) == 1) {
            z(i13);
            A(i14);
            return;
        }
        if (this.f1688c != 0) {
            i14 = i13;
            i13 = i14;
        }
        if (z) {
            fVar.smoothScrollBy(i13, i14);
        } else {
            fVar.scrollBy(i13, i14);
            c();
        }
    }

    public final void D(View view, boolean z) {
        C(view, view.findFocus(), z, 0, 0);
    }

    public final void E(int i10) {
        if (i10 < 0 && i10 != -2) {
            throw new IllegalArgumentException(da.b.a(i10, "Invalid row height: "));
        }
        this.f1702s = i10;
    }

    public final void F(int i10, boolean z) {
        if (this.f1697m == i10 || i10 == -1) {
            return;
        }
        B(i10, z);
    }

    public final void G() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            H(getChildAt(i10));
        }
    }

    public final void H(View view) {
        n nVar = (n) view.getLayoutParams();
        nVar.getClass();
        v3.f fVar = this.G;
        u uVar = (u) fVar.f16475c;
        nVar.f1668e = v.a(view, uVar, uVar.f1721e);
        u uVar2 = (u) fVar.f16474b;
        nVar.f1669f = v.a(view, uVar2, uVar2.f1721e);
    }

    public final void I() {
        if (getChildCount() <= 0) {
            this.f1691f = 0;
        } else {
            this.f1691f = this.D.f1654f - ((n) getChildAt(0).getLayoutParams()).getViewLayoutPosition();
        }
    }

    public final void J() {
        int i10 = (this.f1696k & (-1025)) | (u(false) ? 1024 : 0);
        this.f1696k = i10;
        if ((i10 & 1024) != 0) {
            WeakHashMap weakHashMap = b1.f17953a;
            x0.j0.m(this.f1687b, this.L);
        }
    }

    public final void K() {
        int i10;
        int i11;
        int iB;
        int i12;
        int i13;
        int i14;
        int top;
        int i15;
        int top2;
        int i16;
        if (this.f1690e.b() == 0) {
            return;
        }
        if ((this.f1696k & 262144) == 0) {
            i12 = this.D.f1655g;
            int iB2 = this.f1690e.b() - 1;
            i10 = this.D.f1654f;
            i11 = iB2;
            iB = 0;
        } else {
            j jVar = this.D;
            int i17 = jVar.f1654f;
            i10 = jVar.f1655g;
            i11 = 0;
            iB = this.f1690e.b() - 1;
            i12 = i17;
        }
        if (i12 < 0 || i10 < 0) {
            return;
        }
        boolean z = i12 == i11;
        boolean z4 = i10 == iB;
        int i18 = Integer.MIN_VALUE;
        int iG = Integer.MAX_VALUE;
        a2.w0 w0Var = this.F;
        if (!z) {
            x0 x0Var = (x0) w0Var.f348d;
            if (x0Var.f1733a == Integer.MAX_VALUE && !z4 && x0Var.f1734b == Integer.MIN_VALUE) {
                return;
            }
        }
        int[] iArr = O;
        if (z) {
            iG = this.D.g(true, iArr);
            View viewFindViewByPosition = findViewByPosition(iArr[1]);
            if (this.f1688c == 0) {
                n nVar = (n) viewFindViewByPosition.getLayoutParams();
                nVar.getClass();
                top2 = viewFindViewByPosition.getLeft() + nVar.f1664a;
                i16 = nVar.f1668e;
            } else {
                n nVar2 = (n) viewFindViewByPosition.getLayoutParams();
                nVar2.getClass();
                top2 = viewFindViewByPosition.getTop() + nVar2.f1665b;
                i16 = nVar2.f1669f;
            }
            i13 = top2 + i16;
            ((n) viewFindViewByPosition.getLayoutParams()).getClass();
        } else {
            i13 = Integer.MAX_VALUE;
        }
        if (z4) {
            i18 = this.D.i(false, iArr);
            View viewFindViewByPosition2 = findViewByPosition(iArr[1]);
            if (this.f1688c == 0) {
                n nVar3 = (n) viewFindViewByPosition2.getLayoutParams();
                nVar3.getClass();
                top = viewFindViewByPosition2.getLeft() + nVar3.f1664a;
                i15 = nVar3.f1668e;
            } else {
                n nVar4 = (n) viewFindViewByPosition2.getLayoutParams();
                nVar4.getClass();
                top = viewFindViewByPosition2.getTop() + nVar4.f1665b;
                i15 = nVar4.f1669f;
            }
            i14 = top + i15;
        } else {
            i14 = Integer.MIN_VALUE;
        }
        ((x0) w0Var.f348d).c(i18, iG, i14, i13);
    }

    public final void L() {
        x0 x0Var = (x0) this.F.f349e;
        int i10 = x0Var.f1742j - this.r;
        int iL = l() + i10;
        x0Var.c(i10, iL, i10, iL);
    }

    public final void a() {
        this.D.b((this.f1696k & 262144) != 0 ? (-this.I) - this.f1692g : this.H + this.I + this.f1692g, false);
    }

    public final void b() {
        ArrayList arrayList = this.l;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        int i10 = this.f1697m;
        View viewFindViewByPosition = i10 == -1 ? null : findViewByPosition(i10);
        f fVar = this.f1687b;
        if (viewFindViewByPosition != null) {
            d(fVar, fVar.getChildViewHolder(viewFindViewByPosition), this.f1697m);
        } else {
            d(fVar, null, -1);
        }
        if ((this.f1696k & 3) == 1 || fVar.isLayoutRequested()) {
            return;
        }
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            if (getChildAt(i11).isLayoutRequested()) {
                WeakHashMap weakHashMap = b1.f17953a;
                x0.j0.m(fVar, this.L);
                return;
            }
        }
    }

    public final void c() {
        ArrayList arrayList = this.l;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        int i10 = this.f1697m;
        View viewFindViewByPosition = i10 == -1 ? null : findViewByPosition(i10);
        if (viewFindViewByPosition == null) {
            ArrayList arrayList2 = this.l;
            if (arrayList2 == null) {
                return;
            }
            for (int size = arrayList2.size() - 1; size >= 0; size--) {
                ((z) this.l.get(size)).getClass();
            }
            return;
        }
        this.f1687b.getChildViewHolder(viewFindViewByPosition);
        ArrayList arrayList3 = this.l;
        if (arrayList3 == null) {
            return;
        }
        for (int size2 = arrayList3.size() - 1; size2 >= 0; size2--) {
            ((z) this.l.get(size2)).getClass();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean canScrollHorizontally() {
        return this.f1688c == 0 || this.B > 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean canScrollVertically() {
        return this.f1688c == 1 || this.B > 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void collectAdjacentPrefetchPositions(int i10, int i11, n2 n2Var, y1 y1Var) {
        try {
            y(null, n2Var);
            if (this.f1688c != 0) {
                i10 = i11;
            }
            if (getChildCount() != 0 && i10 != 0) {
                this.D.e(i10 < 0 ? -this.I : this.H + this.I, i10, y1Var);
                q();
            }
        } finally {
            q();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void collectInitialPrefetchPositions(int i10, y1 y1Var) {
        int i11 = this.f1687b.f1639f;
        if (i10 == 0 || i11 == 0) {
            return;
        }
        int iMax = Math.max(0, Math.min(this.f1697m - ((i11 - 1) / 2), i10 - i11));
        for (int i12 = iMax; i12 < i10 && i12 < iMax + i11; i12++) {
            ((androidx.recyclerview.widget.e0) y1Var).a(i12, 0);
        }
    }

    public final void d(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, int i10) {
        ArrayList arrayList = this.l;
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            o1.a aVar = (o1.a) ((z) this.l.get(size));
            aVar.getClass();
            o1.d dVar = aVar.f11486a;
            int iIndexOf = dVar.f11494b.indexOf(recyclerView);
            dVar.d(iIndexOf);
            if (viewHolder != null) {
                int i11 = ((o1.e) dVar.f11495c.get(iIndexOf)).f11508b + i10;
                DatePicker datePicker = (DatePicker) dVar;
                datePicker.D.setTimeInMillis(datePicker.C.getTimeInMillis());
                ArrayList arrayList2 = datePicker.f11495c;
                int i12 = (arrayList2 == null ? null : (o1.e) arrayList2.get(iIndexOf)).f11507a;
                if (iIndexOf == datePicker.f1683w) {
                    datePicker.D.add(5, i11 - i12);
                } else if (iIndexOf == datePicker.f1682v) {
                    datePicker.D.add(2, i11 - i12);
                } else {
                    if (iIndexOf != datePicker.f1684x) {
                        throw new IllegalArgumentException();
                    }
                    datePicker.D.add(1, i11 - i12);
                }
                datePicker.C.set(datePicker.D.get(1), datePicker.D.get(2), datePicker.D.get(5));
                if (datePicker.C.before(datePicker.A)) {
                    datePicker.C.setTimeInMillis(datePicker.A.getTimeInMillis());
                } else if (datePicker.C.after(datePicker.B)) {
                    datePicker.C.setTimeInMillis(datePicker.B.getTimeInMillis());
                }
                datePicker.post(new androidx.activity.h(13, datePicker));
            }
        }
    }

    public final int f(View view) {
        n nVar = (n) view.getLayoutParams();
        return getDecoratedMeasuredHeight(view) + ((ViewGroup.MarginLayoutParams) nVar).topMargin + ((ViewGroup.MarginLayoutParams) nVar).bottomMargin;
    }

    public final int g(View view) {
        n nVar = (n) view.getLayoutParams();
        return getDecoratedMeasuredWidth(view) + ((ViewGroup.MarginLayoutParams) nVar).leftMargin + ((ViewGroup.MarginLayoutParams) nVar).rightMargin;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new n();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new n(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int getColumnCountForAccessibility(g2 g2Var, n2 n2Var) {
        j jVar;
        return (this.f1688c != 1 || (jVar = this.D) == null) ? super.getColumnCountForAccessibility(g2Var, n2Var) : jVar.f1653e;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int getDecoratedBottom(View view) {
        return super.getDecoratedBottom(view) - ((n) view.getLayoutParams()).f1667d;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void getDecoratedBoundsWithMargins(View view, Rect rect) {
        super.getDecoratedBoundsWithMargins(view, rect);
        n nVar = (n) view.getLayoutParams();
        rect.left += nVar.f1664a;
        rect.top += nVar.f1665b;
        rect.right -= nVar.f1666c;
        rect.bottom -= nVar.f1667d;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int getDecoratedLeft(View view) {
        return super.getDecoratedLeft(view) + ((n) view.getLayoutParams()).f1664a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int getDecoratedRight(View view) {
        return super.getDecoratedRight(view) - ((n) view.getLayoutParams()).f1666c;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int getDecoratedTop(View view) {
        return super.getDecoratedTop(view) + ((n) view.getLayoutParams()).f1665b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int getRowCountForAccessibility(g2 g2Var, n2 n2Var) {
        j jVar;
        return (this.f1688c != 0 || (jVar = this.D) == null) ? super.getRowCountForAccessibility(g2Var, n2Var) : jVar.f1653e;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001d  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int h(int i10) {
        int i11 = this.f1688c;
        int i12 = 2;
        if (i11 != 0) {
            if (i11 == 1) {
                if (i10 != 17) {
                    if (i10 == 33) {
                        return 0;
                    }
                    if (i10 != 66) {
                        if (i10 == 130) {
                            return 1;
                        }
                    } else if ((this.f1696k & PKIFailureInfo.signerNotTrusted) == 0) {
                    }
                } else if ((this.f1696k & PKIFailureInfo.signerNotTrusted) != 0) {
                }
            }
            return 17;
        }
        if (i10 != 17) {
            if (i10 != 33) {
                i12 = i10 != 66 ? i10 != 130 ? 17 : 3 : (this.f1696k & 262144) == 0 ? 1 : 0;
            }
        } else if ((this.f1696k & 262144) == 0) {
        }
        return i12;
    }

    public final int i(int i10) {
        int i11 = this.f1703t;
        if (i11 != 0) {
            return i11;
        }
        int[] iArr = this.f1704u;
        if (iArr == null) {
            return 0;
        }
        return iArr[i10];
    }

    public final int j(int i10) {
        int i11 = 0;
        if ((this.f1696k & PKIFailureInfo.signerNotTrusted) != 0) {
            for (int i12 = this.B - 1; i12 > i10; i12--) {
                i11 += i(i12) + this.z;
            }
            return i11;
        }
        int i13 = 0;
        while (i11 < i10) {
            i13 += i(i11) + this.z;
            i11++;
        }
        return i13;
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0174  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean k(View view, View view2, int[] iArr) {
        View viewFindViewByPosition;
        int i10;
        int iB;
        int left;
        int i11;
        int iB2;
        int top;
        int i12;
        int left2;
        int i13;
        int i14 = this.E;
        a2.w0 w0Var = this.F;
        if (i14 != 1 && i14 != 2) {
            x0 x0Var = (x0) w0Var.f348d;
            if (this.f1688c == 0) {
                n nVar = (n) view.getLayoutParams();
                nVar.getClass();
                top = view.getLeft() + nVar.f1664a;
                i12 = nVar.f1668e;
            } else {
                n nVar2 = (n) view.getLayoutParams();
                nVar2.getClass();
                top = view.getTop() + nVar2.f1665b;
                i12 = nVar2.f1669f;
            }
            int iB3 = x0Var.b(top + i12);
            if (view2 != null) {
                ((n) view.getLayoutParams()).getClass();
            }
            if (this.f1688c == 0) {
                n nVar3 = (n) view.getLayoutParams();
                nVar3.getClass();
                left2 = view.getTop() + nVar3.f1665b;
                i13 = nVar3.f1669f;
            } else {
                n nVar4 = (n) view.getLayoutParams();
                nVar4.getClass();
                left2 = view.getLeft() + nVar4.f1664a;
                i13 = nVar4.f1668e;
            }
            int iB4 = ((x0) w0Var.f349e).b(left2 + i13);
            if (iB3 == 0 && iB4 == 0) {
                iArr[0] = 0;
                iArr[1] = 0;
                return false;
            }
            iArr[0] = iB3;
            iArr[1] = iB4;
            return true;
        }
        int iE = e(view);
        int iE2 = this.f1689d.e(view);
        int iB5 = this.f1689d.b(view);
        x0 x0Var2 = (x0) w0Var.f348d;
        int i15 = x0Var2.f1742j;
        int i16 = (x0Var2.f1741i - i15) - x0Var2.f1743k;
        i iVarK = this.D.k(iE);
        int i17 = iVarK == null ? -1 : iVarK.f1647b;
        View viewFindViewByPosition2 = null;
        if (iE2 < i15) {
            if (this.E == 2) {
                View view3 = view;
                while (true) {
                    j jVar = this.D;
                    if (!jVar.m(jVar.f1651c ? Integer.MIN_VALUE : Integer.MAX_VALUE, true)) {
                        viewFindViewByPosition = null;
                        viewFindViewByPosition2 = view3;
                        break;
                    }
                    j jVar2 = this.D;
                    a0.h hVar = jVar2.j(jVar2.f1654f, iE)[i17];
                    View viewFindViewByPosition3 = findViewByPosition(hVar.k(0));
                    if (iB5 - this.f1689d.e(viewFindViewByPosition3) <= i16) {
                        view3 = viewFindViewByPosition3;
                    } else if ((hVar.f28b & hVar.f29c) > 2) {
                        viewFindViewByPosition = null;
                        viewFindViewByPosition2 = findViewByPosition(hVar.k(2));
                    } else {
                        viewFindViewByPosition = null;
                        viewFindViewByPosition2 = viewFindViewByPosition3;
                    }
                }
            } else {
                viewFindViewByPosition = null;
                viewFindViewByPosition2 = view;
            }
        } else if (iB5 <= i16 + i15) {
            viewFindViewByPosition = null;
        } else if (this.E == 2) {
            while (true) {
                j jVar3 = this.D;
                a0.h hVar2 = jVar3.j(iE, jVar3.f1655g)[i17];
                viewFindViewByPosition = findViewByPosition(hVar2.k((hVar2.f28b & hVar2.f29c) - 1));
                if (this.f1689d.b(viewFindViewByPosition) - iE2 > i16) {
                    viewFindViewByPosition = null;
                    break;
                }
                if (!this.D.a()) {
                    break;
                }
            }
            if (viewFindViewByPosition == null) {
                viewFindViewByPosition2 = view;
            }
        } else {
            viewFindViewByPosition = view;
        }
        if (viewFindViewByPosition2 != null) {
            iB = this.f1689d.e(viewFindViewByPosition2);
        } else {
            if (viewFindViewByPosition == null) {
                i10 = 0;
                if (viewFindViewByPosition2 == null) {
                    view = viewFindViewByPosition2;
                } else if (viewFindViewByPosition != null) {
                    view = viewFindViewByPosition;
                }
                if (this.f1688c != 0) {
                    n nVar5 = (n) view.getLayoutParams();
                    nVar5.getClass();
                    left = view.getTop() + nVar5.f1665b;
                    i11 = nVar5.f1669f;
                } else {
                    n nVar6 = (n) view.getLayoutParams();
                    nVar6.getClass();
                    left = view.getLeft() + nVar6.f1664a;
                    i11 = nVar6.f1668e;
                }
                iB2 = ((x0) w0Var.f349e).b(left + i11);
                if (i10 != 0 && iB2 == 0) {
                    return false;
                }
                iArr[0] = i10;
                iArr[1] = iB2;
                return true;
            }
            iB = this.f1689d.b(viewFindViewByPosition);
            i15 += i16;
        }
        i10 = iB - i15;
        if (viewFindViewByPosition2 == null) {
        }
        if (this.f1688c != 0) {
        }
        iB2 = ((x0) w0Var.f349e).b(left + i11);
        if (i10 != 0) {
        }
        iArr[0] = i10;
        iArr[1] = iB2;
        return true;
    }

    public final int l() {
        int i10 = (this.f1696k & PKIFailureInfo.signerNotTrusted) != 0 ? 0 : this.B - 1;
        return i(i10) + j(i10);
    }

    public final boolean m() {
        return getItemCount() == 0 || this.f1687b.findViewHolderForAdapterPosition(0) != null;
    }

    public final boolean n() {
        int itemCount = getItemCount();
        return itemCount == 0 || this.f1687b.findViewHolderForAdapterPosition(itemCount - 1) != null;
    }

    public final boolean o(int i10) {
        f fVar = this.f1687b;
        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = fVar.findViewHolderForAdapterPosition(i10);
        return viewHolderFindViewHolderForAdapterPosition != null && viewHolderFindViewHolderForAdapterPosition.itemView.getLeft() >= 0 && viewHolderFindViewHolderForAdapterPosition.itemView.getRight() <= fVar.getWidth() && viewHolderFindViewHolderForAdapterPosition.itemView.getTop() >= 0 && viewHolderFindViewHolderForAdapterPosition.itemView.getBottom() <= fVar.getHeight();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onAdapterChanged(m1 m1Var, m1 m1Var2) {
        if (m1Var != null) {
            this.D = null;
            this.f1704u = null;
            this.f1696k &= -1025;
            this.f1697m = -1;
            this.f1700p = 0;
            a0.m mVar = (a0.m) this.K.f30d;
            if (mVar != null) {
                mVar.f(-1);
            }
        }
        super.onAdapterChanged(m1Var, m1Var2);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00b2  */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onAddFocusables(RecyclerView recyclerView, ArrayList arrayList, int i10, int i11) {
        int i12;
        View viewFindViewByPosition;
        View viewFindContainingItemView;
        if ((this.f1696k & 32768) != 0) {
            return true;
        }
        if (!recyclerView.hasFocus()) {
            int size = arrayList.size();
            if (this.E != 0) {
                x0 x0Var = (x0) this.F.f348d;
                int i13 = x0Var.f1742j;
                int i14 = ((x0Var.f1741i - i13) - x0Var.f1743k) + i13;
                int childCount = getChildCount();
                for (int i15 = 0; i15 < childCount; i15++) {
                    View childAt = getChildAt(i15);
                    if (childAt.getVisibility() == 0 && this.f1689d.e(childAt) >= i13 && this.f1689d.b(childAt) <= i14) {
                        childAt.addFocusables(arrayList, i10, i11);
                    }
                }
                if (arrayList.size() == size) {
                    int childCount2 = getChildCount();
                    for (int i16 = 0; i16 < childCount2; i16++) {
                        View childAt2 = getChildAt(i16);
                        if (childAt2.getVisibility() == 0) {
                            childAt2.addFocusables(arrayList, i10, i11);
                        }
                    }
                }
            } else {
                View viewFindViewByPosition2 = findViewByPosition(this.f1697m);
                if (viewFindViewByPosition2 != null) {
                    viewFindViewByPosition2.addFocusables(arrayList, i10, i11);
                }
            }
            if (arrayList.size() == size && recyclerView.isFocusable()) {
                arrayList.add(recyclerView);
            }
        } else {
            if (this.f1699o != null) {
                return true;
            }
            int iH = h(i10);
            View viewFindFocus = recyclerView.findFocus();
            f fVar = this.f1687b;
            if (fVar != null && viewFindFocus != fVar && (viewFindContainingItemView = findContainingItemView(viewFindFocus)) != null) {
                int childCount3 = getChildCount();
                i12 = 0;
                while (i12 < childCount3) {
                    if (getChildAt(i12) == viewFindContainingItemView) {
                        break;
                    }
                    i12++;
                }
                i12 = -1;
                int iE = e(getChildAt(i12));
                if (iE != -1) {
                }
                if (viewFindViewByPosition != null) {
                }
                if (this.D != null) {
                }
                return true;
            }
            i12 = -1;
            int iE2 = e(getChildAt(i12));
            viewFindViewByPosition = iE2 != -1 ? null : findViewByPosition(iE2);
            if (viewFindViewByPosition != null) {
                viewFindViewByPosition.addFocusables(arrayList, i10, i11);
            }
            if (this.D != null || getChildCount() == 0) {
                return true;
            }
            if ((iH == 3 || iH == 2) && this.D.f1653e <= 1) {
                return true;
            }
            j jVar = this.D;
            int i17 = (jVar == null || viewFindViewByPosition == null) ? -1 : jVar.k(iE2).f1647b;
            int size2 = arrayList.size();
            int i18 = (iH == 1 || iH == 3) ? 1 : -1;
            int childCount4 = i18 > 0 ? getChildCount() - 1 : 0;
            int childCount5 = i12 == -1 ? i18 > 0 ? 0 : getChildCount() - 1 : i12 + i18;
            while (true) {
                if (i18 <= 0) {
                    if (childCount5 < childCount4) {
                        break;
                    }
                } else {
                    if (childCount5 > childCount4) {
                        break;
                    }
                    View childAt3 = getChildAt(childCount5);
                    if (childAt3.getVisibility() == 0 && childAt3.hasFocusable()) {
                        if (viewFindViewByPosition == null) {
                            childAt3.addFocusables(arrayList, i10, i11);
                            if (arrayList.size() > size2) {
                                break;
                            }
                        } else {
                            int iE3 = e(getChildAt(childCount5));
                            i iVarK = this.D.k(iE3);
                            if (iVarK != null) {
                                int i19 = iVarK.f1647b;
                                if (iH == 1) {
                                    if (i19 == i17 && iE3 > iE2) {
                                        childAt3.addFocusables(arrayList, i10, i11);
                                        if (arrayList.size() > size2) {
                                            break;
                                        }
                                    }
                                } else if (iH == 0) {
                                    if (i19 == i17 && iE3 < iE2) {
                                        childAt3.addFocusables(arrayList, i10, i11);
                                        if (arrayList.size() > size2) {
                                            break;
                                        }
                                    }
                                } else if (iH == 3) {
                                    if (i19 != i17) {
                                        if (i19 < i17) {
                                            break;
                                        }
                                        childAt3.addFocusables(arrayList, i10, i11);
                                    }
                                } else if (iH == 2 && i19 != i17) {
                                    if (i19 > i17) {
                                        break;
                                    }
                                    childAt3.addFocusables(arrayList, i10, i11);
                                }
                            }
                        }
                    }
                    childCount5 += i18;
                }
            }
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onInitializeAccessibilityNodeInfo(g2 g2Var, n2 n2Var, y0.n nVar) {
        y(g2Var, n2Var);
        int iB = n2Var.b();
        boolean z = (this.f1696k & 262144) != 0;
        if (iB > 1 && !o(0)) {
            if (Build.VERSION.SDK_INT < 23) {
                nVar.a(8192);
            } else if (this.f1688c == 0) {
                nVar.b(z ? y0.f.f18542n : y0.f.l);
            } else {
                nVar.b(y0.f.f18540k);
            }
            nVar.n(true);
        }
        if (iB > 1 && !o(iB - 1)) {
            if (Build.VERSION.SDK_INT < 23) {
                nVar.a(4096);
            } else if (this.f1688c == 0) {
                nVar.b(z ? y0.f.l : y0.f.f18542n);
            } else {
                nVar.b(y0.f.f18541m);
            }
            nVar.n(true);
        }
        nVar.k(kh.h.b(getRowCountForAccessibility(g2Var, n2Var), getColumnCountForAccessibility(g2Var, n2Var), getSelectionModeForAccessibility(g2Var, n2Var), isLayoutHierarchical(g2Var, n2Var)));
        q();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onInitializeAccessibilityNodeInfoForItem(g2 g2Var, n2 n2Var, View view, y0.n nVar) {
        i iVarK;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (this.D == null || !(layoutParams instanceof n)) {
            return;
        }
        int viewAdapterPosition = ((n) layoutParams).getViewAdapterPosition();
        int i10 = -1;
        if (viewAdapterPosition >= 0 && (iVarK = this.D.k(viewAdapterPosition)) != null) {
            i10 = iVarK.f1647b;
        }
        if (i10 < 0) {
            return;
        }
        int i11 = viewAdapterPosition / this.D.f1653e;
        if (this.f1688c == 0) {
            nVar.l(y0.m.a(i10, 1, i11, 1, false));
        } else {
            nVar.l(y0.m.a(i11, 1, i10, 1, false));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final View onInterceptFocusSearch(View view, int i10) {
        View viewFindNextFocus;
        View viewFindNextFocus2;
        if ((this.f1696k & 32768) != 0) {
            return view;
        }
        FocusFinder focusFinder = FocusFinder.getInstance();
        f fVar = this.f1687b;
        if (i10 == 2 || i10 == 1) {
            if (canScrollVertically()) {
                viewFindNextFocus = focusFinder.findNextFocus(fVar, view, i10 == 2 ? 130 : 33);
            } else {
                viewFindNextFocus = null;
            }
            if (canScrollHorizontally()) {
                viewFindNextFocus2 = focusFinder.findNextFocus(fVar, view, (getLayoutDirection() == 1) ^ (i10 == 2) ? 66 : 17);
            } else {
                viewFindNextFocus2 = viewFindNextFocus;
            }
        } else {
            viewFindNextFocus2 = focusFinder.findNextFocus(fVar, view, i10);
        }
        if (viewFindNextFocus2 != null) {
            return viewFindNextFocus2;
        }
        if (fVar.getDescendantFocusability() == 393216) {
            return fVar.getParent().focusSearch(view, i10);
        }
        int iH = h(i10);
        boolean z = fVar.getScrollState() != 0;
        if (iH == 1) {
            if (z || (this.f1696k & 4096) == 0) {
                viewFindNextFocus2 = view;
            }
            if ((this.f1696k & 131072) != 0 && !n()) {
                t(true);
                viewFindNextFocus2 = view;
            }
        } else if (iH == 0) {
            if (z || (this.f1696k & 2048) == 0) {
                viewFindNextFocus2 = view;
            }
            if ((this.f1696k & 131072) != 0 && !m()) {
                t(false);
                viewFindNextFocus2 = view;
            }
        } else if (iH == 3) {
        }
        if (viewFindNextFocus2 != null) {
            return viewFindNextFocus2;
        }
        View viewFocusSearch = fVar.getParent().focusSearch(view, i10);
        return viewFocusSearch != null ? viewFocusSearch : view != null ? view : fVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onItemsAdded(RecyclerView recyclerView, int i10, int i11) {
        j jVar;
        int i12;
        int i13 = this.f1697m;
        if (i13 != -1 && (jVar = this.D) != null && jVar.f1654f >= 0 && (i12 = this.f1700p) != Integer.MIN_VALUE && i10 <= i13 + i12) {
            this.f1700p = i12 + i11;
        }
        a0.m mVar = (a0.m) this.K.f30d;
        if (mVar != null) {
            mVar.f(-1);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onItemsChanged(RecyclerView recyclerView) {
        this.f1700p = 0;
        a0.m mVar = (a0.m) this.K.f30d;
        if (mVar != null) {
            mVar.f(-1);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onItemsMoved(RecyclerView recyclerView, int i10, int i11, int i12) {
        int i13;
        int i14 = this.f1697m;
        if (i14 != -1 && (i13 = this.f1700p) != Integer.MIN_VALUE) {
            int i15 = i14 + i13;
            if (i10 <= i15 && i15 < i10 + i12) {
                this.f1700p = (i11 - i10) + i13;
            } else if (i10 < i15 && i11 > i15 - i12) {
                this.f1700p = i13 - i12;
            } else if (i10 > i15 && i11 < i15) {
                this.f1700p = i13 + i12;
            }
        }
        a0.m mVar = (a0.m) this.K.f30d;
        if (mVar != null) {
            mVar.f(-1);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onItemsRemoved(RecyclerView recyclerView, int i10, int i11) {
        j jVar;
        int i12;
        int i13;
        int i14 = this.f1697m;
        if (i14 != -1 && (jVar = this.D) != null && jVar.f1654f >= 0 && (i12 = this.f1700p) != Integer.MIN_VALUE && i10 <= (i13 = i14 + i12)) {
            if (i10 + i11 > i13) {
                this.f1697m = (i10 - i13) + i12 + i14;
                this.f1700p = Integer.MIN_VALUE;
            } else {
                this.f1700p = i12 - i11;
            }
        }
        a0.m mVar = (a0.m) this.K.f30d;
        if (mVar != null) {
            mVar.f(-1);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onItemsUpdated(RecyclerView recyclerView, int i10, int i11) {
        int i12 = i11 + i10;
        while (i10 < i12) {
            a0.h hVar = this.K;
            a0.m mVar = (a0.m) hVar.f30d;
            if (mVar != null && mVar.e() != 0) {
                ((a0.m) hVar.f30d).d(Integer.toString(i10));
            }
            i10++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:125:0x0297 A[LOOP:3: B:124:0x0295->B:125:0x0297, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x02af  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x02c4 A[LOOP:11: B:134:0x02c4->B:355:?, LOOP_START] */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0320  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x03b9  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x03bc  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x03d1 A[LOOP:12: B:174:0x03d1->B:356:?, LOOP_START] */
    /* JADX WARN: Removed duplicated region for block: B:315:0x0612 A[PHI: r0 r1
  0x0612: PHI (r0v43 int) = (r0v39 int), (r0v46 int) binds: [B:314:0x0610, B:302:0x05dd] A[DONT_GENERATE, DONT_INLINE]
  0x0612: PHI (r1v47 int) = (r1v43 int), (r1v51 int) binds: [B:314:0x0610, B:302:0x05dd] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onLayoutChildren(g2 g2Var, n2 n2Var) {
        int i10;
        int i11;
        int i12;
        f fVar;
        SparseIntArray sparseIntArray;
        View view;
        int i13;
        int i14;
        j p0Var;
        int i15;
        f fVar2;
        f fVar3;
        j jVar;
        int width;
        int left;
        int right;
        int i16;
        List list;
        int size;
        SparseIntArray sparseIntArray2;
        j jVar2;
        int i17;
        int i18;
        int i19;
        i iVarK;
        int i20;
        i iVarK2;
        if (this.B != 0 && n2Var.b() >= 0) {
            if ((this.f1696k & 64) != 0 && getChildCount() > 0) {
                this.f1696k |= 128;
                return;
            }
            int i21 = this.f1696k;
            if ((i21 & 512) == 0) {
                this.D = null;
                this.f1704u = null;
                this.f1696k = i21 & (-1025);
                removeAndRecycleAllViews(g2Var);
                return;
            }
            this.f1696k = (i21 & (-4)) | 1;
            y(g2Var, n2Var);
            boolean z = n2Var.f2205g;
            int iMax = Integer.MIN_VALUE;
            f fVar4 = this.f1687b;
            if (z) {
                I();
                int childCount = getChildCount();
                if (this.D != null && childCount > 0) {
                    int oldPosition = fVar4.getChildViewHolder(getChildAt(0)).getOldPosition();
                    int oldPosition2 = fVar4.getChildViewHolder(getChildAt(childCount - 1)).getOldPosition();
                    int iMin = Integer.MAX_VALUE;
                    for (int i22 = 0; i22 < childCount; i22++) {
                        View childAt = getChildAt(i22);
                        n nVar = (n) childAt.getLayoutParams();
                        int childAdapterPosition = fVar4.getChildAdapterPosition(childAt);
                        if (nVar.isItemChanged() || nVar.isItemRemoved() || childAt.isLayoutRequested() || ((!childAt.hasFocus() && this.f1697m == nVar.getViewAdapterPosition()) || ((childAt.hasFocus() && this.f1697m != nVar.getViewAdapterPosition()) || childAdapterPosition < oldPosition || childAdapterPosition > oldPosition2))) {
                            iMin = Math.min(iMin, this.f1689d.e(childAt));
                            iMax = Math.max(iMax, this.f1689d.b(childAt));
                        }
                    }
                    if (iMax > iMin) {
                        this.f1692g = iMax - iMin;
                    }
                    a();
                    s();
                }
                this.f1696k &= -4;
                q();
                return;
            }
            boolean z4 = n2Var.f2209k;
            SparseIntArray sparseIntArray3 = this.f1693h;
            if (z4) {
                sparseIntArray3.clear();
                int childCount2 = getChildCount();
                for (int i23 = 0; i23 < childCount2; i23++) {
                    int oldPosition3 = fVar4.getChildViewHolder(getChildAt(i23)).getOldPosition();
                    if (oldPosition3 >= 0 && (iVarK2 = this.D.k(oldPosition3)) != null) {
                        sparseIntArray3.put(oldPosition3, iVarK2.f1647b);
                    }
                }
            }
            boolean z10 = !isSmoothScrolling() && this.E == 0;
            int i24 = this.f1697m;
            if (i24 != -1 && (i20 = this.f1700p) != Integer.MIN_VALUE) {
                this.f1697m = i24 + i20;
            }
            this.f1700p = 0;
            View viewFindViewByPosition = findViewByPosition(this.f1697m);
            int i25 = this.f1697m;
            boolean zHasFocus = fVar4.hasFocus();
            j jVar3 = this.D;
            int i26 = jVar3 != null ? jVar3.f1654f : -1;
            int i27 = jVar3 != null ? jVar3.f1655g : -1;
            if (this.f1688c == 0) {
                i11 = n2Var.f2212o;
                i10 = n2Var.f2213p;
            } else {
                i10 = n2Var.f2212o;
                i11 = n2Var.f2213p;
            }
            int i28 = i11;
            int i29 = i10;
            int i30 = i28;
            int iB = this.f1690e.b();
            if (iB == 0) {
                this.f1697m = -1;
            } else {
                int i31 = this.f1697m;
                if (i31 >= iB) {
                    this.f1697m = iB - 1;
                } else if (i31 == -1 && iB > 0) {
                    this.f1697m = 0;
                }
            }
            boolean z11 = this.f1690e.f2204f;
            a2.w0 w0Var = this.F;
            if (z11 || (jVar2 = this.D) == null || jVar2.f1654f < 0 || (this.f1696k & 256) != 0 || jVar2.f1653e != this.B) {
                i12 = i29;
                fVar = fVar4;
                sparseIntArray = sparseIntArray3;
                view = viewFindViewByPosition;
                i13 = i25;
                i14 = i30;
                int i32 = this.f1696k;
                this.f1696k = i32 & (-257);
                j jVar4 = this.D;
                if (jVar4 == null || this.B != jVar4.f1653e) {
                    int i33 = this.B;
                    if (i33 == 1) {
                        p0Var = new p0();
                    } else {
                        s0 s0Var = new s0();
                        s0Var.n(i33);
                        p0Var = s0Var;
                    }
                    this.D = p0Var;
                    p0Var.f1650b = this.M;
                    p0Var.f1651c = (this.f1696k & 262144) != 0;
                    x0 x0Var = (x0) w0Var.f348d;
                    x0Var.f1734b = Integer.MIN_VALUE;
                    x0Var.f1733a = Integer.MAX_VALUE;
                    int width2 = getWidth();
                    x0 x0Var2 = (x0) w0Var.f347c;
                    x0Var2.f1741i = width2;
                    int height = getHeight();
                    x0 x0Var3 = (x0) w0Var.f346b;
                    x0Var3.f1741i = height;
                    int paddingLeft = getPaddingLeft();
                    int paddingRight = getPaddingRight();
                    x0Var2.f1742j = paddingLeft;
                    x0Var2.f1743k = paddingRight;
                    int paddingTop = getPaddingTop();
                    int paddingBottom = getPaddingBottom();
                    x0Var3.f1742j = paddingTop;
                    x0Var3.f1743k = paddingBottom;
                    this.H = ((x0) w0Var.f348d).f1741i;
                    this.r = 0;
                    L();
                    this.D.f1652d = this.f1708y;
                    detachAndScrapAttachedViews(this.f1695j);
                    j jVar5 = this.D;
                    jVar5.f1655g = -1;
                    jVar5.f1654f = -1;
                    x0 x0Var4 = (x0) w0Var.f348d;
                    x0Var4.f1734b = Integer.MIN_VALUE;
                    x0Var4.f1736d = Integer.MIN_VALUE;
                    x0Var4.f1733a = Integer.MAX_VALUE;
                    x0Var4.f1735c = Integer.MAX_VALUE;
                    int i34 = this.f1696k;
                    this.f1696k = i34 & (-5);
                    this.f1696k = (i34 & (-21)) | (!zHasFocus ? 16 : 0);
                    if (z10 && (i26 < 0 || (i15 = this.f1697m) > i27 || i15 < i26)) {
                        i26 = this.f1697m;
                        i27 = i26;
                    }
                    jVar5.f1657i = i26;
                    if (i27 != -1) {
                        while (this.D.a() && findViewByPosition(i27) == null) {
                        }
                    }
                } else {
                    if (((i32 & 262144) != 0) != jVar4.f1651c) {
                    }
                    x0 x0Var5 = (x0) w0Var.f348d;
                    x0Var5.f1734b = Integer.MIN_VALUE;
                    x0Var5.f1733a = Integer.MAX_VALUE;
                    int width22 = getWidth();
                    x0 x0Var22 = (x0) w0Var.f347c;
                    x0Var22.f1741i = width22;
                    int height2 = getHeight();
                    x0 x0Var32 = (x0) w0Var.f346b;
                    x0Var32.f1741i = height2;
                    int paddingLeft2 = getPaddingLeft();
                    int paddingRight2 = getPaddingRight();
                    x0Var22.f1742j = paddingLeft2;
                    x0Var22.f1743k = paddingRight2;
                    int paddingTop2 = getPaddingTop();
                    int paddingBottom2 = getPaddingBottom();
                    x0Var32.f1742j = paddingTop2;
                    x0Var32.f1743k = paddingBottom2;
                    this.H = ((x0) w0Var.f348d).f1741i;
                    this.r = 0;
                    L();
                    this.D.f1652d = this.f1708y;
                    detachAndScrapAttachedViews(this.f1695j);
                    j jVar52 = this.D;
                    jVar52.f1655g = -1;
                    jVar52.f1654f = -1;
                    x0 x0Var42 = (x0) w0Var.f348d;
                    x0Var42.f1734b = Integer.MIN_VALUE;
                    x0Var42.f1736d = Integer.MIN_VALUE;
                    x0Var42.f1733a = Integer.MAX_VALUE;
                    x0Var42.f1735c = Integer.MAX_VALUE;
                    int i342 = this.f1696k;
                    this.f1696k = i342 & (-5);
                    this.f1696k = (i342 & (-21)) | (!zHasFocus ? 16 : 0);
                    if (z10) {
                        i26 = this.f1697m;
                        i27 = i26;
                    }
                    jVar52.f1657i = i26;
                    if (i27 != -1) {
                    }
                }
            } else {
                ((x0) w0Var.f347c).f1741i = getWidth();
                int height3 = getHeight();
                x0 x0Var6 = (x0) w0Var.f346b;
                x0Var6.f1741i = height3;
                int paddingLeft3 = getPaddingLeft();
                int paddingRight3 = getPaddingRight();
                x0 x0Var7 = (x0) w0Var.f347c;
                x0Var7.f1742j = paddingLeft3;
                x0Var7.f1743k = paddingRight3;
                int paddingTop3 = getPaddingTop();
                int paddingBottom3 = getPaddingBottom();
                x0Var6.f1742j = paddingTop3;
                x0Var6.f1743k = paddingBottom3;
                this.H = ((x0) w0Var.f348d).f1741i;
                L();
                j jVar6 = this.D;
                jVar6.f1652d = this.f1708y;
                this.f1696k |= 4;
                jVar6.f1657i = this.f1697m;
                int childCount3 = getChildCount();
                int i35 = this.D.f1654f;
                this.f1696k &= -9;
                int i36 = i35;
                int i37 = 0;
                while (i37 < childCount3) {
                    View childAt2 = getChildAt(i37);
                    if (i36 == e(childAt2) && (iVarK = this.D.k(i36)) != null) {
                        int i38 = i30;
                        int i39 = i29;
                        int iJ = (j(iVarK.f1647b) + ((x0) w0Var.f349e).f1742j) - this.r;
                        int iE = this.f1689d.e(childAt2);
                        Rect rect = N;
                        getDecoratedBoundsWithMargins(childAt2, rect);
                        view = viewFindViewByPosition;
                        int iWidth = this.f1688c == 0 ? rect.width() : rect.height();
                        if (((n) childAt2.getLayoutParams()).viewNeedsUpdate()) {
                            this.f1696k |= 8;
                            detachAndScrapView(childAt2, this.f1695j);
                            childAt2 = this.f1695j.d(i36);
                            addView(childAt2, i37);
                        }
                        View view2 = childAt2;
                        r(view2);
                        int iG = this.f1688c == 0 ? g(view2) : f(view2);
                        i13 = i25;
                        int i40 = iG;
                        sparseIntArray = sparseIntArray3;
                        i14 = i38;
                        i17 = i37;
                        fVar = fVar4;
                        i18 = i36;
                        i12 = i39;
                        p(view2, iVarK.f1647b, iE, iE + iG, iJ);
                        if (iWidth != i40) {
                            int i41 = this.D.f1655g;
                            for (i19 = childCount3 - 1; i19 >= i17; i19--) {
                                detachAndScrapView(getChildAt(i19), this.f1695j);
                            }
                            this.D.l(i18);
                            if ((this.f1696k & 65536) == 0) {
                                a();
                                int i42 = this.f1697m;
                                if (i42 >= 0 && i42 <= i41) {
                                    while (true) {
                                        j jVar7 = this.D;
                                        if (jVar7.f1655g >= this.f1697m) {
                                            break;
                                        } else {
                                            jVar7.a();
                                        }
                                    }
                                }
                            } else {
                                while (this.D.a() && this.D.f1655g < i41) {
                                }
                            }
                            K();
                            L();
                        } else {
                            i37 = i17 + 1;
                            i36 = i18 + 1;
                            i30 = i14;
                            fVar4 = fVar;
                            viewFindViewByPosition = view;
                            i25 = i13;
                            sparseIntArray3 = sparseIntArray;
                            i29 = i12;
                        }
                    } else {
                        i17 = i37;
                        i12 = i29;
                        fVar = fVar4;
                        sparseIntArray = sparseIntArray3;
                        view = viewFindViewByPosition;
                        i13 = i25;
                        i14 = i30;
                        i18 = i36;
                        int i412 = this.D.f1655g;
                        while (i19 >= i17) {
                        }
                        this.D.l(i18);
                        if ((this.f1696k & 65536) == 0) {
                        }
                        K();
                        L();
                    }
                }
                i12 = i29;
                fVar = fVar4;
                sparseIntArray = sparseIntArray3;
                view = viewFindViewByPosition;
                i13 = i25;
                i14 = i30;
                K();
                L();
            }
            while (true) {
                K();
                j jVar8 = this.D;
                int i43 = jVar8.f1654f;
                int i44 = jVar8.f1655g;
                int i45 = -i14;
                int i46 = i12;
                int i47 = -i46;
                View viewFindViewByPosition2 = findViewByPosition(this.f1697m);
                if (viewFindViewByPosition2 != null && z10) {
                    C(viewFindViewByPosition2, viewFindViewByPosition2.findFocus(), false, i45, i47);
                }
                if (viewFindViewByPosition2 == null || !zHasFocus || viewFindViewByPosition2.hasFocus()) {
                    if (!zHasFocus && !fVar.hasFocus()) {
                        if (viewFindViewByPosition2 == null || !viewFindViewByPosition2.hasFocusable()) {
                            fVar2 = fVar;
                            int childCount4 = getChildCount();
                            int i48 = 0;
                            while (true) {
                                if (i48 >= childCount4) {
                                    break;
                                }
                                viewFindViewByPosition2 = getChildAt(i48);
                                if (viewFindViewByPosition2 != null && viewFindViewByPosition2.hasFocusable()) {
                                    fVar2.focusableViewAvailable(viewFindViewByPosition2);
                                    break;
                                }
                                i48++;
                            }
                        } else {
                            fVar2 = fVar;
                            fVar2.focusableViewAvailable(viewFindViewByPosition2);
                        }
                        View view3 = viewFindViewByPosition2;
                        if (z10 && view3 != null && view3.hasFocus()) {
                            fVar3 = fVar2;
                            C(view3, view3.findFocus(), false, i45, i47);
                        } else {
                            fVar3 = fVar2;
                        }
                    }
                    a();
                    s();
                    jVar = this.D;
                    if (jVar.f1654f != i43 && jVar.f1655g == i44) {
                        break;
                    }
                    fVar = fVar3;
                    i12 = i46;
                } else {
                    viewFindViewByPosition2.requestFocus();
                }
                fVar3 = fVar;
                a();
                s();
                jVar = this.D;
                if (jVar.f1654f != i43) {
                }
                fVar = fVar3;
                i12 = i46;
            }
            x();
            w();
            if (n2Var.f2209k && (size = (list = this.f1695j.f2133d).size()) != 0) {
                int[] iArr = this.f1694i;
                if (iArr == null || size > iArr.length) {
                    int length = iArr == null ? 16 : iArr.length;
                    while (length < size) {
                        length <<= 1;
                    }
                    this.f1694i = new int[length];
                }
                int i49 = 0;
                for (int i50 = 0; i50 < size; i50++) {
                    int adapterPosition = ((RecyclerView.ViewHolder) list.get(i50)).getAdapterPosition();
                    if (adapterPosition >= 0) {
                        this.f1694i[i49] = adapterPosition;
                        i49++;
                    }
                }
                if (i49 > 0) {
                    Arrays.sort(this.f1694i, 0, i49);
                    j jVar9 = this.D;
                    int[] iArr2 = this.f1694i;
                    int i51 = jVar9.f1655g;
                    int iBinarySearch = i51 >= 0 ? Arrays.binarySearch(iArr2, 0, i49, i51) : 0;
                    Object[] objArr = jVar9.f1649a;
                    if (iBinarySearch < 0) {
                        int i52 = (-iBinarySearch) - 1;
                        int iD = jVar9.f1651c ? (jVar9.f1650b.d(i51) - jVar9.f1650b.e(i51)) - jVar9.f1652d : jVar9.f1652d + jVar9.f1650b.e(i51) + jVar9.f1650b.d(i51);
                        while (i52 < i49) {
                            int i53 = iArr2[i52];
                            SparseIntArray sparseIntArray4 = sparseIntArray;
                            int i54 = sparseIntArray4.get(i53);
                            int i55 = i54 < 0 ? 0 : i54;
                            int iB2 = jVar9.f1650b.b(i53, true, objArr, true);
                            jVar9.f1650b.a(objArr[0], i53, iB2, i55, iD);
                            iD = jVar9.f1651c ? (iD - iB2) - jVar9.f1652d : iD + iB2 + jVar9.f1652d;
                            i52++;
                            sparseIntArray = sparseIntArray4;
                        }
                    }
                    sparseIntArray2 = sparseIntArray;
                    int i56 = jVar9.f1654f;
                    int iBinarySearch2 = i56 >= 0 ? Arrays.binarySearch(iArr2, 0, i49, i56) : 0;
                    if (iBinarySearch2 < 0) {
                        int iD2 = jVar9.f1651c ? jVar9.f1650b.d(i56) : jVar9.f1650b.d(i56);
                        for (int i57 = (-iBinarySearch2) - 2; i57 >= 0; i57--) {
                            int i58 = iArr2[i57];
                            int i59 = sparseIntArray2.get(i58);
                            int i60 = i59 < 0 ? 0 : i59;
                            int iB3 = jVar9.f1650b.b(i58, false, objArr, true);
                            iD2 = jVar9.f1651c ? iD2 + jVar9.f1652d + iB3 : (iD2 - jVar9.f1652d) - iB3;
                            jVar9.f1650b.a(objArr[0], i58, iB3, i60, iD2);
                        }
                    }
                } else {
                    sparseIntArray2 = sparseIntArray;
                }
                sparseIntArray2.clear();
            }
            int i61 = this.f1696k;
            if ((i61 & 1024) != 0) {
                this.f1696k = i61 & (-1025);
            } else {
                J();
            }
            if (((this.f1696k & 4) != 0 && ((i16 = this.f1697m) != i13 || findViewByPosition(i16) != view || (this.f1696k & 8) != 0)) || (this.f1696k & 20) == 16) {
                b();
            }
            c();
            int i62 = this.f1696k;
            if ((i62 & 64) != 0) {
                if (this.f1688c == 1) {
                    width = -getHeight();
                    if (getChildCount() > 0 && (left = getChildAt(0).getTop()) < 0) {
                        width += left;
                    }
                    z(width);
                } else {
                    if ((i62 & 262144) != 0) {
                        width = getWidth();
                        if (getChildCount() > 0 && (right = getChildAt(0).getRight()) > width) {
                            width = right;
                        }
                    } else {
                        width = -getWidth();
                        if (getChildCount() > 0 && (left = getChildAt(0).getLeft()) < 0) {
                        }
                    }
                    z(width);
                }
            }
            this.f1696k &= -4;
            q();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onLayoutCompleted(n2 n2Var) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onMeasure(g2 g2Var, n2 n2Var, int i10, int i11) {
        int size;
        int size2;
        int mode;
        int paddingLeft;
        int paddingRight;
        int iL;
        y(g2Var, n2Var);
        if (this.f1688c == 0) {
            size2 = View.MeasureSpec.getSize(i10);
            size = View.MeasureSpec.getSize(i11);
            mode = View.MeasureSpec.getMode(i11);
            paddingLeft = getPaddingTop();
            paddingRight = getPaddingBottom();
        } else {
            size = View.MeasureSpec.getSize(i10);
            size2 = View.MeasureSpec.getSize(i11);
            mode = View.MeasureSpec.getMode(i10);
            paddingLeft = getPaddingLeft();
            paddingRight = getPaddingRight();
        }
        int i12 = paddingRight + paddingLeft;
        this.f1705v = size;
        int i13 = this.f1702s;
        if (i13 == -2) {
            int i14 = this.C;
            if (i14 == 0) {
                i14 = 1;
            }
            this.B = i14;
            this.f1703t = 0;
            int[] iArr = this.f1704u;
            if (iArr == null || iArr.length != i14) {
                this.f1704u = new int[i14];
            }
            if (this.f1690e.f2205g) {
                I();
            }
            u(true);
            if (mode == Integer.MIN_VALUE) {
                size = Math.min(l() + i12, this.f1705v);
            } else if (mode == 0) {
                iL = l();
                size = iL + i12;
            } else {
                if (mode != 1073741824) {
                    throw new IllegalStateException("wrong spec");
                }
                size = this.f1705v;
            }
        } else {
            if (mode != Integer.MIN_VALUE) {
                if (mode == 0) {
                    if (i13 == 0) {
                        i13 = size - i12;
                    }
                    this.f1703t = i13;
                    int i15 = this.C;
                    if (i15 == 0) {
                        i15 = 1;
                    }
                    this.B = i15;
                    iL = ((i15 - 1) * this.z) + (i13 * i15);
                    size = iL + i12;
                } else if (mode != 1073741824) {
                    throw new IllegalStateException("wrong spec");
                }
            }
            int i16 = this.C;
            if (i16 == 0 && i13 == 0) {
                this.B = 1;
                this.f1703t = size - i12;
            } else if (i16 == 0) {
                this.f1703t = i13;
                int i17 = this.z;
                this.B = (size + i17) / (i13 + i17);
            } else if (i13 == 0) {
                this.B = i16;
                this.f1703t = ((size - i12) - ((i16 - 1) * this.z)) / i16;
            } else {
                this.B = i16;
                this.f1703t = i13;
            }
            if (mode == Integer.MIN_VALUE) {
                int i18 = this.f1703t;
                int i19 = this.B;
                int i20 = ((i19 - 1) * this.z) + (i18 * i19) + i12;
                if (i20 < size) {
                    size = i20;
                }
            }
        }
        if (this.f1688c == 0) {
            setMeasuredDimension(size2, size);
        } else {
            setMeasuredDimension(size, size2);
        }
        q();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean onRequestChildFocus(RecyclerView recyclerView, View view, View view2) {
        if ((this.f1696k & 32768) == 0 && e(view) != -1 && (this.f1696k & 35) == 0) {
            C(view, view2, true, 0, 0);
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof p) {
            p pVar = (p) parcelable;
            this.f1697m = pVar.f1676a;
            this.f1700p = 0;
            Bundle bundle = pVar.f1677b;
            a0.h hVar = this.K;
            a0.m mVar = (a0.m) hVar.f30d;
            if (mVar != null && bundle != null) {
                mVar.f(-1);
                for (String str : bundle.keySet()) {
                    ((a0.m) hVar.f30d).c(str, bundle.getSparseParcelableArray(str));
                }
            }
            this.f1696k |= 256;
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final Parcelable onSaveInstanceState() {
        Bundle bundle;
        LinkedHashMap linkedHashMap;
        p pVar = new p();
        pVar.f1676a = this.f1697m;
        a0.h hVar = this.K;
        a0.m mVar = (a0.m) hVar.f30d;
        if (mVar == null || mVar.e() == 0) {
            bundle = null;
        } else {
            a0.m mVar2 = (a0.m) hVar.f30d;
            synchronized (mVar2.f41c) {
                Set setEntrySet = mVar2.f40b.f2422a.entrySet();
                ue.d.d(setEntrySet, "<get-entries>(...)");
                linkedHashMap = new LinkedHashMap(setEntrySet.size());
                Set<Map.Entry> setEntrySet2 = mVar2.f40b.f2422a.entrySet();
                ue.d.d(setEntrySet2, "<get-entries>(...)");
                for (Map.Entry entry : setEntrySet2) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            bundle = new Bundle();
            for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                bundle.putSparseParcelableArray((String) entry2.getKey(), (SparseArray) entry2.getValue());
            }
        }
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            int iE = e(childAt);
            if (iE != -1 && this.K.f28b != 0) {
                String string = Integer.toString(iE);
                SparseArray<Parcelable> sparseArray = new SparseArray<>();
                childAt.saveHierarchyState(sparseArray);
                if (bundle == null) {
                    bundle = new Bundle();
                }
                bundle.putSparseParcelableArray(string, sparseArray);
            }
        }
        pVar.f1677b = bundle;
        return pVar;
    }

    public final void p(View view, int i10, int i11, int i12, int i13) {
        int i14;
        int i15;
        int iF = this.f1688c == 0 ? f(view) : g(view);
        int i16 = this.f1703t;
        if (i16 > 0) {
            iF = Math.min(iF, i16);
        }
        int i17 = this.A;
        int i18 = i17 & 112;
        int absoluteGravity = (this.f1696k & 786432) != 0 ? Gravity.getAbsoluteGravity(i17 & 8388615, 1) : i17 & 7;
        int i19 = this.f1688c;
        if ((i19 != 0 || i18 != 48) && (i19 != 1 || absoluteGravity != 3)) {
            if ((i19 == 0 && i18 == 80) || (i19 == 1 && absoluteGravity == 5)) {
                i14 = i(i10) - iF;
            } else if ((i19 == 0 && i18 == 16) || (i19 == 1 && absoluteGravity == 1)) {
                i14 = (i(i10) - iF) / 2;
            }
            i13 += i14;
        }
        if (this.f1688c == 0) {
            i15 = iF + i13;
        } else {
            int i20 = iF + i13;
            int i21 = i13;
            i13 = i11;
            i11 = i21;
            i15 = i12;
            i12 = i20;
        }
        n nVar = (n) view.getLayoutParams();
        layoutDecoratedWithMargins(view, i11, i13, i12, i15);
        Rect rect = N;
        super.getDecoratedBoundsWithMargins(view, rect);
        int i22 = i11 - rect.left;
        int i23 = i13 - rect.top;
        int i24 = rect.right - i12;
        int i25 = rect.bottom - i15;
        nVar.f1664a = i22;
        nVar.f1665b = i23;
        nVar.f1666c = i24;
        nVar.f1667d = i25;
        H(view);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004d  */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean performAccessibilityAction(g2 g2Var, n2 n2Var, int i10, Bundle bundle) {
        if ((this.f1696k & 131072) != 0) {
            y(g2Var, n2Var);
            boolean z = (this.f1696k & 262144) != 0;
            if (Build.VERSION.SDK_INT >= 23) {
                if (this.f1688c == 0) {
                    if (i10 == y0.f.l.a()) {
                        i10 = z ? 4096 : 8192;
                    } else if (i10 == y0.f.f18542n.a()) {
                        if (z) {
                        }
                    }
                } else if (i10 != y0.f.f18540k.a()) {
                    if (i10 == y0.f.f18541m.a()) {
                    }
                }
            }
            if (i10 == 4096) {
                t(true);
                v(1, false);
            } else if (i10 == 8192) {
                t(false);
                v(-1, false);
            }
            q();
        }
        return true;
    }

    public final void q() {
        this.f1695j = null;
        this.f1690e = null;
        this.f1691f = 0;
        this.f1692g = 0;
    }

    public final void r(View view) {
        int childMeasureSpec;
        int childMeasureSpec2;
        n nVar = (n) view.getLayoutParams();
        Rect rect = N;
        calculateItemDecorationsForChild(view, rect);
        int i10 = ((ViewGroup.MarginLayoutParams) nVar).leftMargin + ((ViewGroup.MarginLayoutParams) nVar).rightMargin + rect.left + rect.right;
        int i11 = ((ViewGroup.MarginLayoutParams) nVar).topMargin + ((ViewGroup.MarginLayoutParams) nVar).bottomMargin + rect.top + rect.bottom;
        int iMakeMeasureSpec = this.f1702s == -2 ? View.MeasureSpec.makeMeasureSpec(0, 0) : View.MeasureSpec.makeMeasureSpec(this.f1703t, 1073741824);
        if (this.f1688c == 0) {
            childMeasureSpec = ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(0, 0), i10, ((ViewGroup.MarginLayoutParams) nVar).width);
            childMeasureSpec2 = ViewGroup.getChildMeasureSpec(iMakeMeasureSpec, i11, ((ViewGroup.MarginLayoutParams) nVar).height);
        } else {
            int childMeasureSpec3 = ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(0, 0), i11, ((ViewGroup.MarginLayoutParams) nVar).height);
            childMeasureSpec = ViewGroup.getChildMeasureSpec(iMakeMeasureSpec, i10, ((ViewGroup.MarginLayoutParams) nVar).width);
            childMeasureSpec2 = childMeasureSpec3;
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void removeAndRecycleAllViews(g2 g2Var) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            removeAndRecycleViewAt(childCount, g2Var);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z) {
        return false;
    }

    public final void s() {
        this.D.m((this.f1696k & 262144) != 0 ? this.H + this.I + this.f1692g : (-this.I) - this.f1692g, false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int scrollHorizontallyBy(int i10, g2 g2Var, n2 n2Var) {
        if ((this.f1696k & 512) == 0 || this.D == null) {
            return 0;
        }
        y(g2Var, n2Var);
        this.f1696k = (this.f1696k & (-4)) | 2;
        int iZ = this.f1688c == 0 ? z(i10) : A(i10);
        q();
        this.f1696k &= -4;
        return iZ;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void scrollToPosition(int i10) {
        F(i10, false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int scrollVerticallyBy(int i10, g2 g2Var, n2 n2Var) {
        int i11 = this.f1696k;
        if ((i11 & 512) == 0 || this.D == null) {
            return 0;
        }
        this.f1696k = (i11 & (-4)) | 2;
        y(g2Var, n2Var);
        int iZ = this.f1688c == 1 ? z(i10) : A(i10);
        q();
        this.f1696k &= -4;
        return iZ;
    }

    public final void setOrientation(int i10) {
        if (i10 == 0 || i10 == 1) {
            this.f1688c = i10;
            this.f1689d = f1.a(this, i10);
            a2.w0 w0Var = this.F;
            w0Var.getClass();
            x0 x0Var = (x0) w0Var.f346b;
            x0 x0Var2 = (x0) w0Var.f347c;
            if (i10 == 0) {
                w0Var.f348d = x0Var2;
                w0Var.f349e = x0Var;
            } else {
                w0Var.f348d = x0Var;
                w0Var.f349e = x0Var2;
            }
            v3.f fVar = this.G;
            fVar.getClass();
            if (i10 == 0) {
                fVar.f16476d = (u) fVar.f16475c;
            } else {
                fVar.f16476d = (u) fVar.f16474b;
            }
            this.f1696k |= 256;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void smoothScrollToPosition(RecyclerView recyclerView, n2 n2Var, int i10) {
        F(i10, true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void startSmoothScroll(m2 m2Var) {
        m mVar = this.f1698n;
        if (mVar != null) {
            mVar.f1660a = true;
        }
        super.startSmoothScroll(m2Var);
        if (!m2Var.isRunning() || !(m2Var instanceof m)) {
            this.f1698n = null;
            this.f1699o = null;
            return;
        }
        m mVar2 = (m) m2Var;
        this.f1698n = mVar2;
        if (mVar2 instanceof o) {
            this.f1699o = (o) mVar2;
        } else {
            this.f1699o = null;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean supportsPredictiveItemAnimations() {
        return true;
    }

    public final void t(boolean z) {
        if (z) {
            if (n()) {
                return;
            }
        } else if (m()) {
            return;
        }
        o oVar = this.f1699o;
        if (oVar == null) {
            this.f1687b.stopScroll();
            o oVar2 = new o(this, z ? 1 : -1, this.B > 1);
            this.f1700p = 0;
            startSmoothScroll(oVar2);
            return;
        }
        q qVar = oVar.f1675e;
        if (z) {
            int i10 = oVar.f1674d;
            if (i10 < qVar.f1686a) {
                oVar.f1674d = i10 + 1;
                return;
            }
            return;
        }
        int i11 = oVar.f1674d;
        if (i11 > (-qVar.f1686a)) {
            oVar.f1674d = i11 - 1;
        }
    }

    public final boolean u(boolean z) {
        if (this.f1703t != 0 || this.f1704u == null) {
            return false;
        }
        j jVar = this.D;
        a0.h[] hVarArrJ = jVar == null ? null : jVar.j(jVar.f1654f, jVar.f1655g);
        boolean z4 = false;
        int i10 = -1;
        for (int i11 = 0; i11 < this.B; i11++) {
            a0.h hVar = hVarArrJ == null ? null : hVarArrJ[i11];
            int i12 = hVar == null ? 0 : hVar.f28b & hVar.f29c;
            int i13 = -1;
            for (int i14 = 0; i14 < i12; i14 += 2) {
                int iK = hVar.k(i14 + 1);
                for (int iK2 = hVar.k(i14); iK2 <= iK; iK2++) {
                    View viewFindViewByPosition = findViewByPosition(iK2 - this.f1691f);
                    if (viewFindViewByPosition != null) {
                        if (z) {
                            r(viewFindViewByPosition);
                        }
                        int iF = this.f1688c == 0 ? f(viewFindViewByPosition) : g(viewFindViewByPosition);
                        if (iF > i13) {
                            i13 = iF;
                        }
                    }
                }
            }
            int iB = this.f1690e.b();
            f fVar = this.f1687b;
            if (!fVar.hasFixedSize() && z && i13 < 0 && iB > 0) {
                if (i10 < 0) {
                    int i15 = this.f1697m;
                    if (i15 < 0) {
                        i15 = 0;
                    } else if (i15 >= iB) {
                        i15 = iB - 1;
                    }
                    if (getChildCount() > 0) {
                        int layoutPosition = fVar.getChildViewHolder(getChildAt(0)).getLayoutPosition();
                        int layoutPosition2 = fVar.getChildViewHolder(getChildAt(getChildCount() - 1)).getLayoutPosition();
                        if (i15 >= layoutPosition && i15 <= layoutPosition2) {
                            i15 = i15 - layoutPosition <= layoutPosition2 - i15 ? layoutPosition - 1 : layoutPosition2 + 1;
                            if (i15 < 0 && layoutPosition2 < iB - 1) {
                                i15 = layoutPosition2 + 1;
                            } else if (i15 >= iB && layoutPosition > 0) {
                                i15 = layoutPosition - 1;
                            }
                        }
                    }
                    if (i15 >= 0 && i15 < iB) {
                        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
                        View viewD = this.f1695j.d(i15);
                        int[] iArr = this.J;
                        if (viewD != null) {
                            n nVar = (n) viewD.getLayoutParams();
                            Rect rect = N;
                            calculateItemDecorationsForChild(viewD, rect);
                            viewD.measure(ViewGroup.getChildMeasureSpec(iMakeMeasureSpec, getPaddingRight() + getPaddingLeft() + ((ViewGroup.MarginLayoutParams) nVar).leftMargin + ((ViewGroup.MarginLayoutParams) nVar).rightMargin + rect.left + rect.right, ((ViewGroup.MarginLayoutParams) nVar).width), ViewGroup.getChildMeasureSpec(iMakeMeasureSpec2, getPaddingBottom() + getPaddingTop() + ((ViewGroup.MarginLayoutParams) nVar).topMargin + ((ViewGroup.MarginLayoutParams) nVar).bottomMargin + rect.top + rect.bottom, ((ViewGroup.MarginLayoutParams) nVar).height));
                            iArr[0] = g(viewD);
                            iArr[1] = f(viewD);
                            this.f1695j.j(viewD);
                        }
                        i10 = this.f1688c == 0 ? iArr[1] : iArr[0];
                    }
                }
                if (i10 >= 0) {
                    i13 = i10;
                }
            }
            if (i13 < 0) {
                i13 = 0;
            }
            int[] iArr2 = this.f1704u;
            if (iArr2[i11] != i13) {
                iArr2[i11] = i13;
                z4 = true;
            }
        }
        return z4;
    }

    public final int v(int i10, boolean z) {
        i iVarK;
        j jVar = this.D;
        if (jVar == null) {
            return i10;
        }
        int i11 = this.f1697m;
        int i12 = (i11 == -1 || (iVarK = jVar.k(i11)) == null) ? -1 : iVarK.f1647b;
        int childCount = getChildCount();
        View view = null;
        for (int i13 = 0; i13 < childCount && i10 != 0; i13++) {
            int i14 = i10 > 0 ? i13 : (childCount - 1) - i13;
            View childAt = getChildAt(i14);
            if (childAt.getVisibility() == 0 && (!hasFocus() || childAt.hasFocusable())) {
                int iE = e(getChildAt(i14));
                i iVarK2 = this.D.k(iE);
                int i15 = iVarK2 == null ? -1 : iVarK2.f1647b;
                if (i12 == -1) {
                    i11 = iE;
                    view = childAt;
                    i12 = i15;
                } else if (i15 == i12 && ((i10 > 0 && iE > i11) || (i10 < 0 && iE < i11))) {
                    i10 = i10 > 0 ? i10 - 1 : i10 + 1;
                    i11 = iE;
                    view = childAt;
                }
            }
        }
        if (view != null) {
            if (z) {
                if (hasFocus()) {
                    this.f1696k |= 32;
                    view.requestFocus();
                    this.f1696k &= -33;
                }
                this.f1697m = i11;
            } else {
                D(view, true);
            }
        }
        return i10;
    }

    public final void w() {
        int i10 = this.f1696k;
        if ((65600 & i10) == 65536) {
            j jVar = this.D;
            int i11 = this.f1697m;
            int i12 = (i10 & 262144) != 0 ? -this.I : this.H + this.I;
            while (true) {
                int i13 = jVar.f1655g;
                if (i13 >= jVar.f1654f && i13 > i11) {
                    if (!jVar.f1651c) {
                        if (jVar.f1650b.d(i13) < i12) {
                            break;
                        }
                        jVar.f1650b.f(jVar.f1655g);
                        jVar.f1655g--;
                    } else {
                        if (jVar.f1650b.d(i13) > i12) {
                            break;
                        }
                        jVar.f1650b.f(jVar.f1655g);
                        jVar.f1655g--;
                    }
                } else {
                    break;
                }
            }
            if (jVar.f1655g < jVar.f1654f) {
                jVar.f1655g = -1;
                jVar.f1654f = -1;
            }
        }
    }

    public final void x() {
        int i10 = this.f1696k;
        if ((65600 & i10) == 65536) {
            j jVar = this.D;
            int i11 = this.f1697m;
            int i12 = (i10 & 262144) != 0 ? this.H + this.I : -this.I;
            while (true) {
                int i13 = jVar.f1655g;
                int i14 = jVar.f1654f;
                if (i13 >= i14 && i14 < i11) {
                    int iE = jVar.f1650b.e(i14);
                    if (!jVar.f1651c) {
                        if (jVar.f1650b.d(jVar.f1654f) + iE > i12) {
                            break;
                        }
                        jVar.f1650b.f(jVar.f1654f);
                        jVar.f1654f++;
                    } else {
                        if (jVar.f1650b.d(jVar.f1654f) - iE < i12) {
                            break;
                        }
                        jVar.f1650b.f(jVar.f1654f);
                        jVar.f1654f++;
                    }
                } else {
                    break;
                }
            }
            if (jVar.f1655g < jVar.f1654f) {
                jVar.f1655g = -1;
                jVar.f1654f = -1;
            }
        }
    }

    public final void y(g2 g2Var, n2 n2Var) {
        if (this.f1695j == null) {
            n2 n2Var2 = this.f1690e;
        }
        this.f1695j = g2Var;
        this.f1690e = n2Var;
        this.f1691f = 0;
        this.f1692g = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0031 A[PHI: r0
  0x0031: PHI (r0v9 int) = (r0v8 int), (r0v12 int) binds: [B:19:0x002f, B:12:0x001d] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int z(int i10) {
        int i11;
        int i12 = this.f1696k;
        if ((i12 & 64) == 0 && (i12 & 3) != 1) {
            a2.w0 w0Var = this.F;
            if (i10 > 0) {
                x0 x0Var = (x0) w0Var.f348d;
                if (x0Var.f1733a != Integer.MAX_VALUE && i10 > (i11 = x0Var.f1735c)) {
                    i10 = i11;
                }
            } else if (i10 < 0) {
                x0 x0Var2 = (x0) w0Var.f348d;
                if (x0Var2.f1734b != Integer.MIN_VALUE && i10 < (i11 = x0Var2.f1736d)) {
                }
            }
        }
        if (i10 == 0) {
            return 0;
        }
        int i13 = -i10;
        int childCount = getChildCount();
        if (this.f1688c == 1) {
            for (int i14 = 0; i14 < childCount; i14++) {
                getChildAt(i14).offsetTopAndBottom(i13);
            }
        } else {
            for (int i15 = 0; i15 < childCount; i15++) {
                getChildAt(i15).offsetLeftAndRight(i13);
            }
        }
        if ((this.f1696k & 3) == 1) {
            K();
            return i10;
        }
        int childCount2 = getChildCount();
        if ((this.f1696k & 262144) == 0 ? i10 >= 0 : i10 <= 0) {
            a();
        } else {
            s();
        }
        boolean z = getChildCount() > childCount2;
        int childCount3 = getChildCount();
        if ((262144 & this.f1696k) == 0 ? i10 >= 0 : i10 <= 0) {
            x();
        } else {
            w();
        }
        if (z | (getChildCount() < childCount3)) {
            J();
        }
        this.f1687b.invalidate();
        K();
        return i10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof n ? new n((n) layoutParams) : layoutParams instanceof RecyclerView.LayoutParams ? new n((RecyclerView.LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new n((ViewGroup.MarginLayoutParams) layoutParams) : new n(layoutParams);
    }
}
