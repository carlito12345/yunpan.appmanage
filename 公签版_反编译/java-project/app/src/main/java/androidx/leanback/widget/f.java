package androidx.leanback.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.h2;
import androidx.recyclerview.widget.t1;
import androidx.recyclerview.widget.u2;
import java.util.ArrayList;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* loaded from: classes.dex */
public abstract class f extends RecyclerView {

    /* renamed from: a, reason: collision with root package name */
    public final q f1634a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f1635b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f1636c;

    /* renamed from: d, reason: collision with root package name */
    public t1 f1637d;

    /* renamed from: e, reason: collision with root package name */
    public h2 f1638e;

    /* renamed from: f, reason: collision with root package name */
    public int f1639f;

    public f(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f1635b = true;
        this.f1636c = true;
        this.f1639f = 4;
        q qVar = new q(this);
        this.f1634a = qVar;
        setLayoutManager(qVar);
        setPreserveFocusAfterLayout(false);
        setDescendantFocusability(262144);
        setHasFixedSize(true);
        setChildrenDrawingOrderEnabled(true);
        setWillNotDraw(true);
        setOverScrollMode(2);
        ((u2) getItemAnimator()).f2316g = false;
        super.setRecyclerListener(new a(this));
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchGenericFocusedEvent(MotionEvent motionEvent) {
        return super.dispatchGenericFocusedEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.View
    public final View focusSearch(int i10) {
        if (isFocused()) {
            q qVar = this.f1634a;
            View viewFindViewByPosition = qVar.findViewByPosition(qVar.f1697m);
            if (viewFindViewByPosition != null) {
                return focusSearch(viewFindViewByPosition, i10);
            }
        }
        return super.focusSearch(i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public final int getChildDrawingOrder(int i10, int i11) {
        int iIndexOfChild;
        q qVar = this.f1634a;
        View viewFindViewByPosition = qVar.findViewByPosition(qVar.f1697m);
        return (viewFindViewByPosition != null && i11 >= (iIndexOfChild = indexOfChild(viewFindViewByPosition))) ? i11 < i10 + (-1) ? ((iIndexOfChild + i10) - 1) - i11 : iIndexOfChild : i11;
    }

    public int getExtraLayoutSpace() {
        return this.f1634a.I;
    }

    public int getFocusScrollStrategy() {
        return this.f1634a.E;
    }

    @Deprecated
    public int getHorizontalMargin() {
        return this.f1634a.f1706w;
    }

    public int getHorizontalSpacing() {
        return this.f1634a.f1706w;
    }

    public int getInitialPrefetchItemCount() {
        return this.f1639f;
    }

    public int getItemAlignmentOffset() {
        return ((u) this.f1634a.G.f16476d).f1718b;
    }

    public float getItemAlignmentOffsetPercent() {
        return ((u) this.f1634a.G.f16476d).f1719c;
    }

    public int getItemAlignmentViewId() {
        return ((u) this.f1634a.G.f16476d).f1717a;
    }

    public e getOnUnhandledKeyListener() {
        return null;
    }

    public final int getSaveChildrenLimitNumber() {
        return this.f1634a.K.f29c;
    }

    public final int getSaveChildrenPolicy() {
        return this.f1634a.K.f28b;
    }

    public int getSelectedPosition() {
        return this.f1634a.f1697m;
    }

    public int getSelectedSubPosition() {
        this.f1634a.getClass();
        return 0;
    }

    @Deprecated
    public int getVerticalMargin() {
        return this.f1634a.f1707x;
    }

    public int getVerticalSpacing() {
        return this.f1634a.f1707x;
    }

    public int getWindowAlignment() {
        return ((x0) this.f1634a.F.f348d).f1738f;
    }

    public int getWindowAlignmentOffset() {
        return ((x0) this.f1634a.F.f348d).f1739g;
    }

    public float getWindowAlignmentOffsetPercent() {
        return ((x0) this.f1634a.F.f348d).f1740h;
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return this.f1636c;
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z, int i10, Rect rect) {
        super.onFocusChanged(z, i10, rect);
        q qVar = this.f1634a;
        if (!z) {
            qVar.getClass();
            return;
        }
        int i11 = qVar.f1697m;
        while (true) {
            View viewFindViewByPosition = qVar.findViewByPosition(i11);
            if (viewFindViewByPosition == null) {
                return;
            }
            if (viewFindViewByPosition.getVisibility() == 0 && viewFindViewByPosition.hasFocusable()) {
                viewFindViewByPosition.requestFocus();
                return;
            }
            i11++;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i10, Rect rect) {
        int i11;
        int i12;
        int i13;
        q qVar = this.f1634a;
        int i14 = qVar.E;
        boolean z = true;
        if (i14 != 1 && i14 != 2) {
            View viewFindViewByPosition = qVar.findViewByPosition(qVar.f1697m);
            if (viewFindViewByPosition != null) {
                return viewFindViewByPosition.requestFocus(i10, rect);
            }
            return false;
        }
        int childCount = qVar.getChildCount();
        if ((i10 & 2) != 0) {
            i12 = childCount;
            i11 = 0;
            i13 = 1;
        } else {
            i11 = childCount - 1;
            i12 = -1;
            i13 = -1;
        }
        x0 x0Var = (x0) qVar.F.f348d;
        int i15 = x0Var.f1742j;
        int i16 = ((x0Var.f1741i - i15) - x0Var.f1743k) + i15;
        while (true) {
            if (i11 == i12) {
                z = false;
                break;
            }
            View childAt = qVar.getChildAt(i11);
            if (childAt.getVisibility() == 0 && qVar.f1689d.e(childAt) >= i15 && qVar.f1689d.b(childAt) <= i16 && childAt.requestFocus(i10, rect)) {
                break;
            }
            i11 += i13;
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x000d  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onRtlPropertiesChanged(int i10) {
        int i11;
        q qVar = this.f1634a;
        if (qVar.f1688c == 0) {
            i11 = i10 == 1 ? 262144 : 0;
        } else if (i10 == 1) {
            i11 = PKIFailureInfo.signerNotTrusted;
        }
        int i12 = qVar.f1696k;
        if ((786432 & i12) == i11) {
            return;
        }
        qVar.f1696k = i11 | (i12 & (-786433)) | 256;
        ((x0) qVar.F.f347c).l = i10 == 1;
    }

    public final void r(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, n1.a.f11246c);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(4, false);
        boolean z4 = typedArrayObtainStyledAttributes.getBoolean(3, false);
        q qVar = this.f1634a;
        qVar.f1696k = (z ? 2048 : 0) | (qVar.f1696k & (-6145)) | (z4 ? 4096 : 0);
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(6, true);
        boolean z11 = typedArrayObtainStyledAttributes.getBoolean(5, true);
        qVar.f1696k = (z10 ? 8192 : 0) | (qVar.f1696k & (-24577)) | (z11 ? 16384 : 0);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, typedArrayObtainStyledAttributes.getDimensionPixelSize(8, 0));
        if (qVar.f1688c == 1) {
            qVar.f1707x = dimensionPixelSize;
            qVar.f1708y = dimensionPixelSize;
        } else {
            qVar.f1707x = dimensionPixelSize;
            qVar.z = dimensionPixelSize;
        }
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, typedArrayObtainStyledAttributes.getDimensionPixelSize(7, 0));
        if (qVar.f1688c == 0) {
            qVar.f1706w = dimensionPixelSize2;
            qVar.f1708y = dimensionPixelSize2;
        } else {
            qVar.f1706w = dimensionPixelSize2;
            qVar.z = dimensionPixelSize2;
        }
        if (typedArrayObtainStyledAttributes.hasValue(0)) {
            setGravity(typedArrayObtainStyledAttributes.getInt(0, 0));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public final void scrollToPosition(int i10) {
        q qVar = this.f1634a;
        if ((qVar.f1696k & 64) != 0) {
            qVar.F(i10, false);
        } else {
            super.scrollToPosition(i10);
        }
    }

    public void setAnimateChildLayout(boolean z) {
        if (this.f1635b != z) {
            this.f1635b = z;
            if (z) {
                super.setItemAnimator(this.f1637d);
            } else {
                this.f1637d = getItemAnimator();
                super.setItemAnimator(null);
            }
        }
    }

    public void setChildrenVisibility(int i10) {
        q qVar = this.f1634a;
        qVar.f1701q = i10;
        if (i10 != -1) {
            int childCount = qVar.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                qVar.getChildAt(i11).setVisibility(qVar.f1701q);
            }
        }
    }

    public void setExtraLayoutSpace(int i10) {
        q qVar = this.f1634a;
        int i11 = qVar.I;
        if (i11 == i10) {
            return;
        }
        if (i11 < 0) {
            throw new IllegalArgumentException("ExtraLayoutSpace must >= 0");
        }
        qVar.I = i10;
        qVar.requestLayout();
    }

    public void setFocusDrawingOrderEnabled(boolean z) {
        super.setChildrenDrawingOrderEnabled(z);
    }

    public void setFocusScrollStrategy(int i10) {
        if (i10 != 0 && i10 != 1 && i10 != 2) {
            throw new IllegalArgumentException("Invalid scrollStrategy");
        }
        this.f1634a.E = i10;
        requestLayout();
    }

    public final void setFocusSearchDisabled(boolean z) {
        setDescendantFocusability(z ? 393216 : 262144);
        q qVar = this.f1634a;
        qVar.f1696k = (z ? 32768 : 0) | (qVar.f1696k & (-32769));
    }

    public void setGravity(int i10) {
        this.f1634a.A = i10;
        requestLayout();
    }

    public void setHasOverlappingRendering(boolean z) {
        this.f1636c = z;
    }

    @Deprecated
    public void setHorizontalMargin(int i10) {
        setHorizontalSpacing(i10);
    }

    public void setHorizontalSpacing(int i10) {
        q qVar = this.f1634a;
        if (qVar.f1688c == 0) {
            qVar.f1706w = i10;
            qVar.f1708y = i10;
        } else {
            qVar.f1706w = i10;
            qVar.z = i10;
        }
        requestLayout();
    }

    public void setInitialPrefetchItemCount(int i10) {
        this.f1639f = i10;
    }

    public void setItemAlignmentOffset(int i10) {
        q qVar = this.f1634a;
        ((u) qVar.G.f16476d).f1718b = i10;
        qVar.G();
        requestLayout();
    }

    public void setItemAlignmentOffsetPercent(float f10) {
        q qVar = this.f1634a;
        u uVar = (u) qVar.G.f16476d;
        uVar.getClass();
        if ((f10 < 0.0f || f10 > 100.0f) && f10 != -1.0f) {
            throw new IllegalArgumentException();
        }
        uVar.f1719c = f10;
        qVar.G();
        requestLayout();
    }

    public void setItemAlignmentOffsetWithPadding(boolean z) {
        q qVar = this.f1634a;
        ((u) qVar.G.f16476d).f1720d = z;
        qVar.G();
        requestLayout();
    }

    public void setItemAlignmentViewId(int i10) {
        q qVar = this.f1634a;
        ((u) qVar.G.f16476d).f1717a = i10;
        qVar.G();
    }

    @Deprecated
    public void setItemMargin(int i10) {
        setItemSpacing(i10);
    }

    public void setItemSpacing(int i10) {
        q qVar = this.f1634a;
        qVar.f1706w = i10;
        qVar.f1707x = i10;
        qVar.z = i10;
        qVar.f1708y = i10;
        requestLayout();
    }

    public void setLayoutEnabled(boolean z) {
        q qVar = this.f1634a;
        int i10 = qVar.f1696k;
        if (((i10 & 512) != 0) != z) {
            qVar.f1696k = (i10 & (-513)) | (z ? 512 : 0);
            qVar.requestLayout();
        }
    }

    public void setOnChildLaidOutListener(x xVar) {
        this.f1634a.getClass();
    }

    public void setOnChildSelectedListener(y yVar) {
        this.f1634a.getClass();
    }

    public void setOnChildViewHolderSelectedListener(z zVar) {
        q qVar = this.f1634a;
        if (zVar == null) {
            qVar.l = null;
            return;
        }
        ArrayList arrayList = qVar.l;
        if (arrayList == null) {
            qVar.l = new ArrayList();
        } else {
            arrayList.clear();
        }
        qVar.l.add(zVar);
    }

    public void setOnKeyInterceptListener(b bVar) {
    }

    public void setOnMotionInterceptListener(c cVar) {
    }

    public void setOnTouchInterceptListener(d dVar) {
    }

    public void setOnUnhandledKeyListener(e eVar) {
    }

    public void setPruneChild(boolean z) {
        q qVar = this.f1634a;
        int i10 = qVar.f1696k;
        if (((i10 & 65536) != 0) != z) {
            qVar.f1696k = (i10 & (-65537)) | (z ? 65536 : 0);
            if (z) {
                qVar.requestLayout();
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setRecyclerListener(h2 h2Var) {
        this.f1638e = h2Var;
    }

    public final void setSaveChildrenLimitNumber(int i10) {
        a0.h hVar = this.f1634a.K;
        hVar.f29c = i10;
        hVar.g();
    }

    public final void setSaveChildrenPolicy(int i10) {
        a0.h hVar = this.f1634a.K;
        hVar.f28b = i10;
        hVar.g();
    }

    public void setScrollEnabled(boolean z) {
        int i10;
        q qVar = this.f1634a;
        int i11 = qVar.f1696k;
        if (((i11 & 131072) != 0) != z) {
            int i12 = (i11 & (-131073)) | (z ? 131072 : 0);
            qVar.f1696k = i12;
            if ((i12 & 131072) == 0 || qVar.E != 0 || (i10 = qVar.f1697m) == -1) {
                return;
            }
            qVar.B(i10, true);
        }
    }

    public void setSelectedPosition(int i10) {
        this.f1634a.F(i10, false);
    }

    public void setSelectedPositionSmooth(int i10) {
        this.f1634a.F(i10, true);
    }

    @Deprecated
    public void setVerticalMargin(int i10) {
        setVerticalSpacing(i10);
    }

    public void setVerticalSpacing(int i10) {
        q qVar = this.f1634a;
        if (qVar.f1688c == 1) {
            qVar.f1707x = i10;
            qVar.f1708y = i10;
        } else {
            qVar.f1707x = i10;
            qVar.z = i10;
        }
        requestLayout();
    }

    public void setWindowAlignment(int i10) {
        ((x0) this.f1634a.F.f348d).f1738f = i10;
        requestLayout();
    }

    public void setWindowAlignmentOffset(int i10) {
        ((x0) this.f1634a.F.f348d).f1739g = i10;
        requestLayout();
    }

    public void setWindowAlignmentOffsetPercent(float f10) {
        x0 x0Var = (x0) this.f1634a.F.f348d;
        x0Var.getClass();
        if ((f10 < 0.0f || f10 > 100.0f) && f10 != -1.0f) {
            throw new IllegalArgumentException();
        }
        x0Var.f1740h = f10;
        requestLayout();
    }

    public void setWindowAlignmentPreferKeyLineOverHighEdge(boolean z) {
        x0 x0Var = (x0) this.f1634a.F.f348d;
        x0Var.f1737e = z ? x0Var.f1737e | 2 : x0Var.f1737e & (-3);
        requestLayout();
    }

    public void setWindowAlignmentPreferKeyLineOverLowEdge(boolean z) {
        x0 x0Var = (x0) this.f1634a.F.f348d;
        x0Var.f1737e = z ? x0Var.f1737e | 1 : x0Var.f1737e & (-2);
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public final void smoothScrollToPosition(int i10) {
        q qVar = this.f1634a;
        if ((qVar.f1696k & 64) != 0) {
            qVar.F(i10, false);
        } else {
            super.smoothScrollToPosition(i10);
        }
    }
}
