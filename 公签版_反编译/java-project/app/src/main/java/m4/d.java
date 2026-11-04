package m4;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.d2;
import androidx.viewpager2.widget.ViewPager2;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Locale;

/* loaded from: classes.dex */
public final class d extends d2 {

    /* renamed from: a, reason: collision with root package name */
    public androidx.viewpager2.adapter.c f10854a;

    /* renamed from: b, reason: collision with root package name */
    public final ViewPager2 f10855b;

    /* renamed from: c, reason: collision with root package name */
    public final m f10856c;

    /* renamed from: d, reason: collision with root package name */
    public final LinearLayoutManager f10857d;

    /* renamed from: e, reason: collision with root package name */
    public int f10858e;

    /* renamed from: f, reason: collision with root package name */
    public int f10859f;

    /* renamed from: g, reason: collision with root package name */
    public final c f10860g;

    /* renamed from: h, reason: collision with root package name */
    public int f10861h;

    /* renamed from: i, reason: collision with root package name */
    public int f10862i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f10863j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f10864k;
    public boolean l;

    public d(ViewPager2 viewPager2) {
        this.f10855b = viewPager2;
        m mVar = viewPager2.f2480j;
        this.f10856c = mVar;
        this.f10857d = (LinearLayoutManager) mVar.getLayoutManager();
        this.f10860g = new c();
        d();
    }

    @Override // androidx.recyclerview.widget.d2
    public final void a(RecyclerView recyclerView, int i10) {
        androidx.viewpager2.adapter.c cVar;
        androidx.viewpager2.adapter.c cVar2;
        int i11 = this.f10858e;
        boolean z = true;
        if (!(i11 == 1 && this.f10859f == 1) && i10 == 1) {
            this.f10858e = 1;
            int i12 = this.f10862i;
            if (i12 != -1) {
                this.f10861h = i12;
                this.f10862i = -1;
            } else if (this.f10861h == -1) {
                this.f10861h = this.f10857d.findFirstVisibleItemPosition();
            }
            c(1);
            return;
        }
        if ((i11 == 1 || i11 == 4) && i10 == 2) {
            if (this.f10864k) {
                c(2);
                this.f10863j = true;
                return;
            }
            return;
        }
        if (i11 != 1 && i11 != 4) {
            z = false;
        }
        c cVar3 = this.f10860g;
        if (z && i10 == 0) {
            e();
            if (!this.f10864k) {
                int i13 = cVar3.f10852b;
                if (i13 != -1 && (cVar2 = this.f10854a) != null) {
                    cVar2.b(i13, 0.0f, 0);
                }
            } else if (cVar3.f10853c == 0) {
                int i14 = this.f10861h;
                int i15 = cVar3.f10852b;
                if (i14 != i15 && (cVar = this.f10854a) != null) {
                    cVar.c(i15);
                }
            }
            c(0);
            d();
        }
        if (this.f10858e == 2 && i10 == 0 && this.l) {
            e();
            if (cVar3.f10853c == 0) {
                int i16 = this.f10862i;
                int i17 = cVar3.f10852b;
                if (i16 != i17) {
                    if (i17 == -1) {
                        i17 = 0;
                    }
                    androidx.viewpager2.adapter.c cVar4 = this.f10854a;
                    if (cVar4 != null) {
                        cVar4.c(i17);
                    }
                }
                c(0);
                d();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0028  */
    @Override // androidx.recyclerview.widget.d2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(RecyclerView recyclerView, int i10, int i11) {
        int i12;
        androidx.viewpager2.adapter.c cVar;
        this.f10864k = true;
        e();
        boolean z = this.f10863j;
        c cVar2 = this.f10860g;
        if (z) {
            this.f10863j = false;
            if (i11 > 0) {
                i12 = cVar2.f10853c != 0 ? cVar2.f10852b + 1 : cVar2.f10852b;
                this.f10862i = i12;
                if (this.f10861h != i12 && (cVar = this.f10854a) != null) {
                    cVar.c(i12);
                }
            } else {
                if (i11 == 0) {
                    if ((i10 < 0) == (this.f10855b.f2477g.getLayoutDirection() == 1)) {
                    }
                }
                this.f10862i = i12;
                if (this.f10861h != i12) {
                    cVar.c(i12);
                }
            }
        } else if (this.f10858e == 0) {
            int i13 = cVar2.f10852b;
            if (i13 == -1) {
                i13 = 0;
            }
            androidx.viewpager2.adapter.c cVar3 = this.f10854a;
            if (cVar3 != null) {
                cVar3.c(i13);
            }
        }
        int i14 = cVar2.f10852b;
        if (i14 == -1) {
            i14 = 0;
        }
        float f10 = cVar2.f10851a;
        int i15 = cVar2.f10853c;
        androidx.viewpager2.adapter.c cVar4 = this.f10854a;
        if (cVar4 != null) {
            cVar4.b(i14, f10, i15);
        }
        int i16 = cVar2.f10852b;
        int i17 = this.f10862i;
        if ((i16 == i17 || i17 == -1) && cVar2.f10853c == 0 && this.f10859f != 1) {
            c(0);
            d();
        }
    }

    public final void c(int i10) {
        if ((this.f10858e == 3 && this.f10859f == 0) || this.f10859f == i10) {
            return;
        }
        this.f10859f = i10;
        androidx.viewpager2.adapter.c cVar = this.f10854a;
        if (cVar != null) {
            cVar.a(i10);
        }
    }

    public final void d() {
        this.f10858e = 0;
        this.f10859f = 0;
        c cVar = this.f10860g;
        cVar.f10852b = -1;
        cVar.f10851a = 0.0f;
        cVar.f10853c = 0;
        this.f10861h = -1;
        this.f10862i = -1;
        this.f10863j = false;
        this.f10864k = false;
        this.l = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x012b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void e() {
        int top;
        int childCount;
        int top2;
        int i10;
        int bottom;
        int i11;
        LinearLayoutManager linearLayoutManager = this.f10857d;
        int iFindFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
        c cVar = this.f10860g;
        cVar.f10852b = iFindFirstVisibleItemPosition;
        if (iFindFirstVisibleItemPosition == -1) {
            cVar.f10852b = -1;
            cVar.f10851a = 0.0f;
            cVar.f10853c = 0;
            return;
        }
        View viewFindViewByPosition = linearLayoutManager.findViewByPosition(iFindFirstVisibleItemPosition);
        if (viewFindViewByPosition == null) {
            cVar.f10852b = -1;
            cVar.f10851a = 0.0f;
            cVar.f10853c = 0;
            return;
        }
        int leftDecorationWidth = linearLayoutManager.getLeftDecorationWidth(viewFindViewByPosition);
        int rightDecorationWidth = linearLayoutManager.getRightDecorationWidth(viewFindViewByPosition);
        int topDecorationHeight = linearLayoutManager.getTopDecorationHeight(viewFindViewByPosition);
        int bottomDecorationHeight = linearLayoutManager.getBottomDecorationHeight(viewFindViewByPosition);
        ViewGroup.LayoutParams layoutParams = viewFindViewByPosition.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            leftDecorationWidth += marginLayoutParams.leftMargin;
            rightDecorationWidth += marginLayoutParams.rightMargin;
            topDecorationHeight += marginLayoutParams.topMargin;
            bottomDecorationHeight += marginLayoutParams.bottomMargin;
        }
        int height = viewFindViewByPosition.getHeight() + topDecorationHeight + bottomDecorationHeight;
        int width = viewFindViewByPosition.getWidth() + leftDecorationWidth + rightDecorationWidth;
        int orientation = linearLayoutManager.getOrientation();
        m mVar = this.f10856c;
        if (orientation == 0) {
            top = (viewFindViewByPosition.getLeft() - leftDecorationWidth) - mVar.getPaddingLeft();
            if (this.f10855b.f2477g.getLayoutDirection() == 1) {
                top = -top;
            }
            height = width;
        } else {
            top = (viewFindViewByPosition.getTop() - topDecorationHeight) - mVar.getPaddingTop();
        }
        int i12 = -top;
        cVar.f10853c = i12;
        if (i12 >= 0) {
            cVar.f10851a = height != 0 ? i12 / height : 0.0f;
            return;
        }
        int childCount2 = linearLayoutManager.getChildCount();
        if (childCount2 != 0) {
            boolean z = linearLayoutManager.getOrientation() == 0;
            int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, childCount2, 2);
            for (int i13 = 0; i13 < childCount2; i13++) {
                View childAt = linearLayoutManager.getChildAt(i13);
                if (childAt == null) {
                    throw new IllegalStateException("null view contained in the view hierarchy");
                }
                ViewGroup.LayoutParams layoutParams2 = childAt.getLayoutParams();
                ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : a.f10850a;
                int[] iArr2 = iArr[i13];
                if (z) {
                    top2 = childAt.getLeft();
                    i10 = marginLayoutParams2.leftMargin;
                } else {
                    top2 = childAt.getTop();
                    i10 = marginLayoutParams2.topMargin;
                }
                iArr2[0] = top2 - i10;
                int[] iArr3 = iArr[i13];
                if (z) {
                    bottom = childAt.getRight();
                    i11 = marginLayoutParams2.rightMargin;
                } else {
                    bottom = childAt.getBottom();
                    i11 = marginLayoutParams2.bottomMargin;
                }
                iArr3[1] = bottom + i11;
            }
            Arrays.sort(iArr, new a5.a(10));
            int i14 = 1;
            while (true) {
                if (i14 >= childCount2) {
                    int[] iArr4 = iArr[0];
                    int i15 = iArr4[1];
                    int i16 = iArr4[0];
                    int i17 = i15 - i16;
                    if (i16 > 0 || iArr[childCount2 - 1][1] < i17) {
                        break;
                    }
                } else if (iArr[i14 - 1][1] != iArr[i14][0]) {
                    break;
                } else {
                    i14++;
                }
            }
            childCount = linearLayoutManager.getChildCount();
            for (int i18 = 0; i18 < childCount; i18++) {
                if (a.a(linearLayoutManager.getChildAt(i18))) {
                    throw new IllegalStateException("Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started.");
                }
            }
        } else if (linearLayoutManager.getChildCount() <= 1) {
            childCount = linearLayoutManager.getChildCount();
            while (i18 < childCount) {
            }
        }
        Locale locale = Locale.US;
        throw new IllegalStateException(da.b.a(cVar.f10853c, "Page can only be offset by a positive amount, not by "));
    }
}
