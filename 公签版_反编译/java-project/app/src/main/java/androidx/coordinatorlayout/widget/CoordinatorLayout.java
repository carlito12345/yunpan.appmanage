package androidx.coordinatorlayout.widget;

import a0.t;
import a2.w0;
import a5.a;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.yunpan.appmanage.R;
import eb.j;
import h5.m;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.WeakHashMap;
import k0.c;
import k0.e;
import k0.f;
import n0.g;
import w0.d;
import x0.b1;
import x0.j0;
import x0.j2;
import x0.k0;
import x0.n;
import x0.u;
import x0.v;
import x5.b;

/* loaded from: classes.dex */
public class CoordinatorLayout extends ViewGroup implements u, v {

    /* renamed from: v, reason: collision with root package name */
    public static final String f1032v;

    /* renamed from: w, reason: collision with root package name */
    public static final Class[] f1033w;

    /* renamed from: x, reason: collision with root package name */
    public static final ThreadLocal f1034x;

    /* renamed from: y, reason: collision with root package name */
    public static final a f1035y;
    public static final d z;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f1036a;

    /* renamed from: b, reason: collision with root package name */
    public final w0 f1037b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f1038c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f1039d;

    /* renamed from: e, reason: collision with root package name */
    public final int[] f1040e;

    /* renamed from: f, reason: collision with root package name */
    public final int[] f1041f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f1042g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f1043h;

    /* renamed from: i, reason: collision with root package name */
    public final int[] f1044i;

    /* renamed from: j, reason: collision with root package name */
    public View f1045j;

    /* renamed from: k, reason: collision with root package name */
    public View f1046k;
    public b l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f1047m;

    /* renamed from: n, reason: collision with root package name */
    public j2 f1048n;

    /* renamed from: p, reason: collision with root package name */
    public boolean f1049p;

    /* renamed from: q, reason: collision with root package name */
    public Drawable f1050q;
    public ViewGroup.OnHierarchyChangeListener r;

    /* renamed from: s, reason: collision with root package name */
    public m f1051s;

    /* renamed from: t, reason: collision with root package name */
    public final j f1052t;

    static {
        Package r02 = CoordinatorLayout.class.getPackage();
        f1032v = r02 != null ? r02.getName() : null;
        if (Build.VERSION.SDK_INT >= 21) {
            f1035y = new a(7);
        } else {
            f1035y = null;
        }
        f1033w = new Class[]{Context.class, AttributeSet.class};
        f1034x = new ThreadLocal();
        z = new d(12);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet) throws Resources.NotFoundException {
        super(context, attributeSet, R.attr.coordinatorLayoutStyle);
        this.f1036a = new ArrayList();
        this.f1037b = new w0(8);
        this.f1038c = new ArrayList();
        this.f1039d = new ArrayList();
        this.f1040e = new int[2];
        this.f1041f = new int[2];
        this.f1052t = new j();
        int[] iArr = j0.a.f9616a;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, R.attr.coordinatorLayoutStyle, 0);
        if (Build.VERSION.SDK_INT >= 29) {
            saveAttributeDataForStyleable(context, iArr, attributeSet, typedArrayObtainStyledAttributes, R.attr.coordinatorLayoutStyle, 0);
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            int[] intArray = resources.getIntArray(resourceId);
            this.f1044i = intArray;
            float f10 = resources.getDisplayMetrics().density;
            int length = intArray.length;
            for (int i10 = 0; i10 < length; i10++) {
                this.f1044i[i10] = (int) (r2[i10] * f10);
            }
        }
        this.f1050q = typedArrayObtainStyledAttributes.getDrawable(1);
        typedArrayObtainStyledAttributes.recycle();
        v();
        super.setOnHierarchyChangeListener(new c(this));
        WeakHashMap weakHashMap = b1.f17953a;
        if (j0.c(this) == 0) {
            b1.B(this, 1);
        }
    }

    public static Rect g() {
        Rect rect = (Rect) z.a();
        return rect == null ? new Rect() : rect;
    }

    public static void l(int i10, Rect rect, Rect rect2, k0.d dVar, int i11, int i12) {
        int i13 = dVar.f10000c;
        if (i13 == 0) {
            i13 = 17;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(i13, i10);
        int i14 = dVar.f10001d;
        if ((i14 & 7) == 0) {
            i14 |= 8388611;
        }
        if ((i14 & 112) == 0) {
            i14 |= 48;
        }
        int absoluteGravity2 = Gravity.getAbsoluteGravity(i14, i10);
        int i15 = absoluteGravity & 7;
        int i16 = absoluteGravity & 112;
        int i17 = absoluteGravity2 & 7;
        int i18 = absoluteGravity2 & 112;
        int iWidth = i17 != 1 ? i17 != 5 ? rect.left : rect.right : rect.left + (rect.width() / 2);
        int iHeight = i18 != 16 ? i18 != 80 ? rect.top : rect.bottom : rect.top + (rect.height() / 2);
        if (i15 == 1) {
            iWidth -= i11 / 2;
        } else if (i15 != 5) {
            iWidth -= i11;
        }
        if (i16 == 16) {
            iHeight -= i12 / 2;
        } else if (i16 != 80) {
            iHeight -= i12;
        }
        rect2.set(iWidth, iHeight, i11 + iWidth, i12 + iHeight);
    }

    public static k0.d m(View view) {
        k0.d dVar = (k0.d) view.getLayoutParams();
        if (!dVar.f9999b) {
            k0.b bVar = null;
            for (Class<?> superclass = view.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
                bVar = (k0.b) superclass.getAnnotation(k0.b.class);
                if (bVar != null) {
                    break;
                }
            }
            if (bVar != null) {
                try {
                    k0.a aVar = (k0.a) bVar.value().getDeclaredConstructor(null).newInstance(null);
                    k0.a aVar2 = dVar.f9998a;
                    if (aVar2 != aVar) {
                        if (aVar2 != null) {
                            aVar2.e();
                        }
                        dVar.f9998a = aVar;
                        dVar.f9999b = true;
                        if (aVar != null) {
                            aVar.c(dVar);
                        }
                    }
                } catch (Exception unused) {
                    bVar.value().getClass();
                }
            }
            dVar.f9999b = true;
        }
        return dVar;
    }

    public static void t(int i10, View view) {
        k0.d dVar = (k0.d) view.getLayoutParams();
        int i11 = dVar.f10006i;
        if (i11 != i10) {
            b1.o(i10 - i11, view);
            dVar.f10006i = i10;
        }
    }

    public static void u(int i10, View view) {
        k0.d dVar = (k0.d) view.getLayoutParams();
        int i11 = dVar.f10007j;
        if (i11 != i10) {
            b1.p(i10 - i11, view);
            dVar.f10007j = i10;
        }
    }

    @Override // x0.u
    public final void a(int i10, View view) {
        j jVar = this.f1052t;
        if (i10 == 1) {
            jVar.f4864b = 0;
        } else {
            jVar.f4863a = 0;
        }
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            k0.d dVar = (k0.d) childAt.getLayoutParams();
            if (dVar.a(i10)) {
                k0.a aVar = dVar.f9998a;
                if (aVar != null) {
                    aVar.p(childAt, view, i10);
                }
                if (i10 == 0) {
                    dVar.f10009m = false;
                } else if (i10 == 1) {
                    dVar.f10010n = false;
                }
            }
        }
        this.f1046k = null;
    }

    @Override // x0.v
    public final void b(View view, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
        k0.a aVar;
        int childCount = getChildCount();
        boolean z4 = false;
        int iMax = 0;
        int iMax2 = 0;
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt = getChildAt(i15);
            if (childAt.getVisibility() != 8) {
                k0.d dVar = (k0.d) childAt.getLayoutParams();
                if (dVar.a(i14) && (aVar = dVar.f9998a) != null) {
                    int[] iArr2 = this.f1040e;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    aVar.k(this, childAt, i11, i12, i13, iArr2);
                    iMax = i12 > 0 ? Math.max(iMax, iArr2[0]) : Math.min(iMax, iArr2[0]);
                    iMax2 = i13 > 0 ? Math.max(iMax2, iArr2[1]) : Math.min(iMax2, iArr2[1]);
                    z4 = true;
                }
            }
        }
        iArr[0] = iArr[0] + iMax;
        iArr[1] = iArr[1] + iMax2;
        if (z4) {
            o(1);
        }
    }

    @Override // x0.u
    public final void c(View view, int i10, int i11, int i12, int i13, int i14) {
        b(view, i10, i11, i12, i13, 0, this.f1041f);
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof k0.d) && super.checkLayoutParams(layoutParams);
    }

    @Override // x0.u
    public final boolean d(View view, View view2, int i10, int i11) {
        int childCount = getChildCount();
        boolean z4 = false;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                k0.d dVar = (k0.d) childAt.getLayoutParams();
                k0.a aVar = dVar.f9998a;
                if (aVar != null) {
                    boolean zO = aVar.o(childAt, i10, i11);
                    z4 |= zO;
                    if (i11 == 0) {
                        dVar.f10009m = zO;
                    } else if (i11 == 1) {
                        dVar.f10010n = zO;
                    }
                } else if (i11 == 0) {
                    dVar.f10009m = false;
                } else if (i11 == 1) {
                    dVar.f10010n = false;
                }
            }
        }
        return z4;
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j10) {
        k0.a aVar = ((k0.d) view.getLayoutParams()).f9998a;
        if (aVar != null) {
            aVar.getClass();
        }
        return super.drawChild(canvas, view, j10);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f1050q;
        if ((drawable == null || !drawable.isStateful()) ? false : drawable.setState(drawableState)) {
            invalidate();
        }
    }

    @Override // x0.u
    public final void e(View view, View view2, int i10, int i11) {
        j jVar = this.f1052t;
        if (i11 == 1) {
            jVar.f4864b = i10;
        } else {
            jVar.f4863a = i10;
        }
        this.f1046k = view2;
        int childCount = getChildCount();
        for (int i12 = 0; i12 < childCount; i12++) {
            ((k0.d) getChildAt(i12).getLayoutParams()).getClass();
        }
    }

    @Override // x0.u
    public final void f(View view, int i10, int i11, int[] iArr, int i12) {
        k0.a aVar;
        int childCount = getChildCount();
        boolean z4 = false;
        int iMax = 0;
        int iMax2 = 0;
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = getChildAt(i13);
            if (childAt.getVisibility() != 8) {
                k0.d dVar = (k0.d) childAt.getLayoutParams();
                if (dVar.a(i12) && (aVar = dVar.f9998a) != null) {
                    int[] iArr2 = this.f1040e;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    aVar.j(this, childAt, view, i10, i11, iArr2, i12);
                    iMax = i10 > 0 ? Math.max(iMax, iArr2[0]) : Math.min(iMax, iArr2[0]);
                    iMax2 = i11 > 0 ? Math.max(iMax2, iArr2[1]) : Math.min(iMax2, iArr2[1]);
                    z4 = true;
                }
            }
        }
        iArr[0] = iMax;
        iArr[1] = iMax2;
        if (z4) {
            o(1);
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new k0.d();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new k0.d(getContext(), attributeSet);
    }

    public final List<View> getDependencySortedChildren() {
        r();
        return Collections.unmodifiableList(this.f1036a);
    }

    public final j2 getLastWindowInsets() {
        return this.f1048n;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        j jVar = this.f1052t;
        return jVar.f4864b | jVar.f4863a;
    }

    public Drawable getStatusBarBackground() {
        return this.f1050q;
    }

    @Override // android.view.View
    public int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingBottom() + getPaddingTop());
    }

    @Override // android.view.View
    public int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingRight() + getPaddingLeft());
    }

    public final void h(k0.d dVar, Rect rect, int i10, int i11) {
        int width = getWidth();
        int height = getHeight();
        int iMax = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) dVar).leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i10) - ((ViewGroup.MarginLayoutParams) dVar).rightMargin));
        int iMax2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) dVar).topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i11) - ((ViewGroup.MarginLayoutParams) dVar).bottomMargin));
        rect.set(iMax, iMax2, i10 + iMax, i11 + iMax2);
    }

    public final void i(View view, Rect rect, boolean z4) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z4) {
            k(view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    public final ArrayList j(View view) {
        t tVar = (t) this.f1037b.f347c;
        int i10 = tVar.f65c;
        ArrayList arrayList = null;
        for (int i11 = 0; i11 < i10; i11++) {
            ArrayList arrayList2 = (ArrayList) tVar.j(i11);
            if (arrayList2 != null && arrayList2.contains(view)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(tVar.f(i11));
            }
        }
        ArrayList arrayList3 = this.f1039d;
        arrayList3.clear();
        if (arrayList != null) {
            arrayList3.addAll(arrayList);
        }
        return arrayList3;
    }

    public final void k(View view, Rect rect) {
        ThreadLocal threadLocal = f.f10013a;
        rect.set(0, 0, view.getWidth(), view.getHeight());
        ThreadLocal threadLocal2 = f.f10013a;
        Matrix matrix = (Matrix) threadLocal2.get();
        if (matrix == null) {
            matrix = new Matrix();
            threadLocal2.set(matrix);
        } else {
            matrix.reset();
        }
        f.a(this, view, matrix);
        ThreadLocal threadLocal3 = f.f10014b;
        RectF rectF = (RectF) threadLocal3.get();
        if (rectF == null) {
            rectF = new RectF();
            threadLocal3.set(rectF);
        }
        rectF.set(rect);
        matrix.mapRect(rectF);
        rect.set((int) (rectF.left + 0.5f), (int) (rectF.top + 0.5f), (int) (rectF.right + 0.5f), (int) (rectF.bottom + 0.5f));
    }

    public final boolean n(View view, int i10, int i11) {
        d dVar = z;
        Rect rectG = g();
        k(view, rectG);
        try {
            return rectG.contains(i10, i11);
        } finally {
            rectG.setEmpty();
            dVar.c(rectG);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x02a8  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x02ce  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x02d9  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x004b A[EDGE_INSN: B:134:0x004b->B:10:0x004b BREAK  A[LOOP:2: B:122:0x02d5->B:127:0x02ec], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00e8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void o(int i10) {
        int i11;
        Rect rect;
        int i12;
        Rect rect2;
        int i13;
        Rect rect3;
        int i14;
        int i15;
        ArrayList arrayList;
        boolean z4;
        int i16;
        boolean z10;
        int width;
        int i17;
        int i18;
        int i19;
        int height;
        int i20;
        int i21;
        int i22;
        k0.d dVar;
        int i23;
        d dVar2;
        int i24;
        Rect rect4;
        Rect rect5;
        Rect rect6;
        ArrayList arrayList2;
        int i25;
        k0.a aVar;
        int i26 = i10;
        WeakHashMap weakHashMap = b1.f17953a;
        int iD = k0.d(this);
        ArrayList arrayList3 = this.f1036a;
        int size = arrayList3.size();
        Rect rectG = g();
        Rect rectG2 = g();
        Rect rectG3 = g();
        int i27 = 0;
        while (true) {
            d dVar3 = z;
            if (i27 >= size) {
                Rect rect7 = rectG3;
                Rect rect8 = rectG2;
                Rect rect9 = rectG;
                rect9.setEmpty();
                dVar3.c(rect9);
                rect8.setEmpty();
                dVar3.c(rect8);
                rect7.setEmpty();
                dVar3.c(rect7);
                return;
            }
            View view = (View) arrayList3.get(i27);
            k0.d dVar4 = (k0.d) view.getLayoutParams();
            if (i26 == 0 && view.getVisibility() == 8) {
                i13 = i26;
                i12 = iD;
                i11 = i27;
                rect3 = rectG3;
                rect = rectG2;
                rect2 = rectG;
                arrayList = arrayList3;
                i15 = size;
            } else {
                int i28 = 0;
                while (i28 < i27) {
                    if (dVar4.l == ((View) arrayList3.get(i28))) {
                        k0.d dVar5 = (k0.d) view.getLayoutParams();
                        if (dVar5.f10008k != null) {
                            Rect rectG4 = g();
                            Rect rectG5 = g();
                            arrayList2 = arrayList3;
                            Rect rectG6 = g();
                            k(dVar5.f10008k, rectG4);
                            i(view, rectG5, false);
                            i25 = size;
                            int measuredWidth = view.getMeasuredWidth();
                            int measuredHeight = view.getMeasuredHeight();
                            dVar = dVar4;
                            dVar2 = dVar3;
                            i24 = i27;
                            i23 = iD;
                            rect4 = rectG3;
                            rect5 = rectG2;
                            rect6 = rectG;
                            l(iD, rectG4, rectG6, dVar5, measuredWidth, measuredHeight);
                            boolean z11 = (rectG6.left == rectG5.left && rectG6.top == rectG5.top) ? false : true;
                            h(dVar5, rectG6, measuredWidth, measuredHeight);
                            int i29 = rectG6.left - rectG5.left;
                            int i30 = rectG6.top - rectG5.top;
                            if (i29 != 0) {
                                b1.o(i29, view);
                            }
                            if (i30 != 0) {
                                b1.p(i30, view);
                            }
                            if (z11 && (aVar = dVar5.f9998a) != null) {
                                aVar.d(this, view, dVar5.f10008k);
                            }
                            rectG4.setEmpty();
                            dVar2.c(rectG4);
                            rectG5.setEmpty();
                            dVar2.c(rectG5);
                            rectG6.setEmpty();
                            dVar2.c(rectG6);
                        } else {
                            dVar = dVar4;
                            i23 = iD;
                            dVar2 = dVar3;
                            i24 = i27;
                            rect4 = rectG3;
                            rect5 = rectG2;
                            rect6 = rectG;
                            arrayList2 = arrayList3;
                            i25 = size;
                        }
                    }
                    i28++;
                    dVar3 = dVar2;
                    size = i25;
                    arrayList3 = arrayList2;
                    iD = i23;
                    dVar4 = dVar;
                    i27 = i24;
                    rectG3 = rect4;
                    rectG2 = rect5;
                    rectG = rect6;
                }
                k0.d dVar6 = dVar4;
                int i31 = iD;
                d0.d dVar7 = dVar3;
                i11 = i27;
                Rect rect10 = rectG3;
                rect = rectG2;
                Rect rect11 = rectG;
                ArrayList arrayList4 = arrayList3;
                int i32 = size;
                i(view, rect, true);
                if (dVar6.f10004g == 0 || rect.isEmpty()) {
                    i12 = i31;
                    rect2 = rect11;
                } else {
                    i12 = i31;
                    int absoluteGravity = Gravity.getAbsoluteGravity(dVar6.f10004g, i12);
                    int i33 = absoluteGravity & 112;
                    if (i33 == 48) {
                        rect2 = rect11;
                        rect2.top = Math.max(rect2.top, rect.bottom);
                    } else if (i33 != 80) {
                        rect2 = rect11;
                    } else {
                        rect2 = rect11;
                        rect2.bottom = Math.max(rect2.bottom, getHeight() - rect.top);
                    }
                    int i34 = absoluteGravity & 7;
                    if (i34 == 3) {
                        rect2.left = Math.max(rect2.left, rect.right);
                    } else if (i34 == 5) {
                        rect2.right = Math.max(rect2.right, getWidth() - rect.left);
                    }
                }
                if (dVar6.f10005h == 0 || view.getVisibility() != 0 || !b1.m(view) || view.getWidth() <= 0 || view.getHeight() <= 0) {
                    i13 = i10;
                    if (i13 != 2) {
                        rect3 = rect10;
                        rect3.set(((k0.d) view.getLayoutParams()).f10011o);
                        if (rect3.equals(rect)) {
                            i15 = i32;
                            arrayList = arrayList4;
                        } else {
                            ((k0.d) view.getLayoutParams()).f10011o.set(rect);
                        }
                    } else {
                        rect3 = rect10;
                    }
                    i14 = i11 + 1;
                    i15 = i32;
                    while (true) {
                        arrayList = arrayList4;
                        if (i14 >= i15) {
                            break;
                        }
                        View view2 = (View) arrayList.get(i14);
                        k0.a aVar2 = ((k0.d) view2.getLayoutParams()).f9998a;
                        if (aVar2 != null) {
                            aVar2.b(view2);
                        }
                        i14++;
                        arrayList4 = arrayList;
                    }
                } else {
                    k0.d dVar8 = (k0.d) view.getLayoutParams();
                    k0.a aVar3 = dVar8.f9998a;
                    Rect rectG7 = g();
                    Rect rectG8 = g();
                    rectG8.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
                    if (aVar3 == null || !aVar3.a(view)) {
                        rectG7.set(rectG8);
                    } else if (!rectG8.contains(rectG7)) {
                        throw new IllegalArgumentException("Rect should be within the child's bounds. Rect:" + rectG7.toShortString() + " | Bounds:" + rectG8.toShortString());
                    }
                    rectG8.setEmpty();
                    dVar7.c(rectG8);
                    if (rectG7.isEmpty()) {
                        rectG7.setEmpty();
                        dVar7.c(rectG7);
                        i13 = i10;
                        if (i13 != 2) {
                        }
                        i14 = i11 + 1;
                        i15 = i32;
                        while (true) {
                            arrayList = arrayList4;
                            if (i14 >= i15) {
                            }
                            i14++;
                            arrayList4 = arrayList;
                        }
                    } else {
                        int absoluteGravity2 = Gravity.getAbsoluteGravity(dVar8.f10005h, i12);
                        if ((absoluteGravity2 & 48) != 48 || (i21 = (rectG7.top - ((ViewGroup.MarginLayoutParams) dVar8).topMargin) - dVar8.f10007j) >= (i22 = rect2.top)) {
                            z4 = false;
                        } else {
                            u(i22 - i21, view);
                            z4 = true;
                        }
                        if ((absoluteGravity2 & 80) == 80 && (height = ((getHeight() - rectG7.bottom) - ((ViewGroup.MarginLayoutParams) dVar8).bottomMargin) + dVar8.f10007j) < (i20 = rect2.bottom)) {
                            u(height - i20, view);
                            z4 = true;
                        }
                        if (z4) {
                            i16 = 0;
                        } else {
                            i16 = 0;
                            u(0, view);
                        }
                        if ((absoluteGravity2 & 3) != 3 || (i18 = (rectG7.left - ((ViewGroup.MarginLayoutParams) dVar8).leftMargin) - dVar8.f10006i) >= (i19 = rect2.left)) {
                            z10 = false;
                        } else {
                            t(i19 - i18, view);
                            z10 = true;
                        }
                        if ((absoluteGravity2 & 5) == 5 && (width = ((getWidth() - rectG7.right) - ((ViewGroup.MarginLayoutParams) dVar8).rightMargin) + dVar8.f10006i) < (i17 = rect2.right)) {
                            t(width - i17, view);
                            z10 = true;
                        }
                        if (!z10) {
                            t(i16, view);
                        }
                        rectG7.setEmpty();
                        dVar7.c(rectG7);
                        i13 = i10;
                        if (i13 != 2) {
                        }
                        i14 = i11 + 1;
                        i15 = i32;
                        while (true) {
                            arrayList = arrayList4;
                            if (i14 >= i15) {
                            }
                            i14++;
                            arrayList4 = arrayList;
                        }
                    }
                }
            }
            size = i15;
            i27 = i11 + 1;
            rectG2 = rect;
            i26 = i13;
            rectG3 = rect3;
            arrayList3 = arrayList;
            rectG = rect2;
            iD = i12;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        s(false);
        if (this.f1047m) {
            if (this.l == null) {
                this.l = new b(this);
            }
            getViewTreeObserver().addOnPreDrawListener(this.l);
        }
        if (this.f1048n == null) {
            WeakHashMap weakHashMap = b1.f17953a;
            if (j0.b(this)) {
                b1.v(this);
            }
        }
        this.f1043h = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        s(false);
        if (this.f1047m && this.l != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.l);
        }
        View view = this.f1046k;
        if (view != null) {
            a(0, view);
        }
        this.f1043h = false;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.f1049p || this.f1050q == null) {
            return;
        }
        j2 j2Var = this.f1048n;
        int iD = j2Var != null ? j2Var.d() : 0;
        if (iD > 0) {
            this.f1050q.setBounds(0, 0, getWidth(), iD);
            this.f1050q.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            s(true);
        }
        boolean zQ = q(motionEvent, 0);
        if (actionMasked == 1 || actionMasked == 3) {
            s(true);
        }
        return zQ;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i10, int i11, int i12, int i13) {
        k0.a aVar;
        WeakHashMap weakHashMap = b1.f17953a;
        int iD = k0.d(this);
        ArrayList arrayList = this.f1036a;
        int size = arrayList.size();
        for (int i14 = 0; i14 < size; i14++) {
            View view = (View) arrayList.get(i14);
            if (view.getVisibility() != 8 && ((aVar = ((k0.d) view.getLayoutParams()).f9998a) == null || !aVar.g(this, view, iD))) {
                p(iD, view);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0122 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0196  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onMeasure(int i10, int i11) {
        boolean z4;
        int i12;
        int i13;
        int iMax;
        int i14;
        int i15;
        k0.a aVar;
        int i16;
        ArrayList arrayList;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int absoluteGravity;
        r();
        int childCount = getChildCount();
        int i26 = 0;
        loop0: while (true) {
            if (i26 >= childCount) {
                z4 = false;
                break;
            }
            View childAt = getChildAt(i26);
            t tVar = (t) this.f1037b.f347c;
            int i27 = tVar.f65c;
            for (int i28 = 0; i28 < i27; i28++) {
                ArrayList arrayList2 = (ArrayList) tVar.j(i28);
                if (arrayList2 != null && arrayList2.contains(childAt)) {
                    z4 = true;
                    break loop0;
                }
            }
            i26++;
        }
        if (z4 != this.f1047m) {
            if (z4) {
                if (this.f1043h) {
                    if (this.l == null) {
                        this.l = new b(this);
                    }
                    getViewTreeObserver().addOnPreDrawListener(this.l);
                }
                this.f1047m = true;
            } else {
                if (this.f1043h && this.l != null) {
                    getViewTreeObserver().removeOnPreDrawListener(this.l);
                }
                this.f1047m = false;
            }
        }
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        WeakHashMap weakHashMap = b1.f17953a;
        int iD = k0.d(this);
        boolean z10 = iD == 1;
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size2 = View.MeasureSpec.getSize(i11);
        int i29 = paddingLeft + paddingRight;
        int i30 = paddingTop + paddingBottom;
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        boolean z11 = this.f1048n != null && j0.b(this);
        ArrayList arrayList3 = this.f1036a;
        int size3 = arrayList3.size();
        int i31 = suggestedMinimumWidth;
        int i32 = suggestedMinimumHeight;
        int iCombineMeasuredStates = 0;
        int i33 = 0;
        while (i33 < size3) {
            View view = (View) arrayList3.get(i33);
            if (view.getVisibility() == 8) {
                i23 = i33;
                i16 = size3;
                arrayList = arrayList3;
                i21 = paddingLeft;
                i17 = paddingRight;
                i18 = iD;
            } else {
                k0.d dVar = (k0.d) view.getLayoutParams();
                int i34 = dVar.f10002e;
                if (i34 < 0 || mode == 0) {
                    i12 = iCombineMeasuredStates;
                    i13 = i33;
                } else {
                    i12 = iCombineMeasuredStates;
                    int[] iArr = this.f1044i;
                    if (iArr == null) {
                        toString();
                        i13 = i33;
                    } else {
                        i13 = i33;
                        if (i34 < 0 || i34 >= iArr.length) {
                            toString();
                        } else {
                            i24 = iArr[i34];
                            i25 = dVar.f10000c;
                            if (i25 == 0) {
                                i25 = 8388661;
                            }
                            absoluteGravity = Gravity.getAbsoluteGravity(i25, iD) & 7;
                            if (!(absoluteGravity == 3 || z10) || (absoluteGravity == 5 && z10)) {
                                iMax = Math.max(0, (size - paddingRight) - i24);
                            } else if ((absoluteGravity == 5 && !z10) || (absoluteGravity == 3 && z10)) {
                                iMax = Math.max(0, i24 - paddingLeft);
                            }
                            if (z11 || j0.b(view)) {
                                i14 = i10;
                                i15 = i11;
                            } else {
                                int iC = this.f1048n.c() + this.f1048n.b();
                                int iA = this.f1048n.a() + this.f1048n.d();
                                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size - iC, mode);
                                int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(size2 - iA, mode2);
                                i14 = iMakeMeasureSpec;
                                i15 = iMakeMeasureSpec2;
                            }
                            aVar = dVar.f9998a;
                            if (aVar == null) {
                                int i35 = i12;
                                i23 = i13;
                                i21 = paddingLeft;
                                i22 = i35;
                                i17 = paddingRight;
                                i19 = i32;
                                i18 = iD;
                                i20 = i31;
                                i16 = size3;
                                arrayList = arrayList3;
                                if (!aVar.h(this, view, i14, iMax, i15)) {
                                }
                                int iMax2 = Math.max(i20, view.getMeasuredWidth() + i29 + ((ViewGroup.MarginLayoutParams) dVar).leftMargin + ((ViewGroup.MarginLayoutParams) dVar).rightMargin);
                                int iMax3 = Math.max(i19, view.getMeasuredHeight() + i30 + ((ViewGroup.MarginLayoutParams) dVar).topMargin + ((ViewGroup.MarginLayoutParams) dVar).bottomMargin);
                                i31 = iMax2;
                                iCombineMeasuredStates = View.combineMeasuredStates(i22, view.getMeasuredState());
                                i32 = iMax3;
                            } else {
                                i16 = size3;
                                arrayList = arrayList3;
                                i17 = paddingRight;
                                i18 = iD;
                                i19 = i32;
                                i20 = i31;
                                int i36 = i13;
                                i21 = paddingLeft;
                                i22 = i12;
                                i23 = i36;
                            }
                            measureChildWithMargins(view, i14, iMax, i15, 0);
                            int iMax22 = Math.max(i20, view.getMeasuredWidth() + i29 + ((ViewGroup.MarginLayoutParams) dVar).leftMargin + ((ViewGroup.MarginLayoutParams) dVar).rightMargin);
                            int iMax32 = Math.max(i19, view.getMeasuredHeight() + i30 + ((ViewGroup.MarginLayoutParams) dVar).topMargin + ((ViewGroup.MarginLayoutParams) dVar).bottomMargin);
                            i31 = iMax22;
                            iCombineMeasuredStates = View.combineMeasuredStates(i22, view.getMeasuredState());
                            i32 = iMax32;
                        }
                    }
                    i24 = 0;
                    i25 = dVar.f10000c;
                    if (i25 == 0) {
                    }
                    absoluteGravity = Gravity.getAbsoluteGravity(i25, iD) & 7;
                    if (absoluteGravity == 3) {
                        if (absoluteGravity == 5) {
                        }
                    } else if (absoluteGravity == 5) {
                    }
                }
                iMax = 0;
                if (z11) {
                    i14 = i10;
                    i15 = i11;
                    aVar = dVar.f9998a;
                    if (aVar == null) {
                    }
                    measureChildWithMargins(view, i14, iMax, i15, 0);
                    int iMax222 = Math.max(i20, view.getMeasuredWidth() + i29 + ((ViewGroup.MarginLayoutParams) dVar).leftMargin + ((ViewGroup.MarginLayoutParams) dVar).rightMargin);
                    int iMax322 = Math.max(i19, view.getMeasuredHeight() + i30 + ((ViewGroup.MarginLayoutParams) dVar).topMargin + ((ViewGroup.MarginLayoutParams) dVar).bottomMargin);
                    i31 = iMax222;
                    iCombineMeasuredStates = View.combineMeasuredStates(i22, view.getMeasuredState());
                    i32 = iMax322;
                }
            }
            i33 = i23 + 1;
            paddingLeft = i21;
            paddingRight = i17;
            iD = i18;
            size3 = i16;
            arrayList3 = arrayList;
        }
        int i37 = iCombineMeasuredStates;
        setMeasuredDimension(View.resolveSizeAndState(i31, i10, (-16777216) & i37), View.resolveSizeAndState(i32, i11, i37 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, x0.w
    public final boolean onNestedFling(View view, float f10, float f11, boolean z4) {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                k0.d dVar = (k0.d) childAt.getLayoutParams();
                if (dVar.a(0)) {
                    k0.a aVar = dVar.f9998a;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, x0.w
    public final boolean onNestedPreFling(View view, float f10, float f11) {
        k0.a aVar;
        int childCount = getChildCount();
        boolean zI = false;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                k0.d dVar = (k0.d) childAt.getLayoutParams();
                if (dVar.a(0) && (aVar = dVar.f9998a) != null) {
                    zI |= aVar.i(view);
                }
            }
        }
        return zI;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, x0.w
    public final void onNestedPreScroll(View view, int i10, int i11, int[] iArr) {
        f(view, i10, i11, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, x0.w
    public final void onNestedScroll(View view, int i10, int i11, int i12, int i13) {
        c(view, i10, i11, i12, i13, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, x0.w
    public final void onNestedScrollAccepted(View view, View view2, int i10) {
        e(view, view2, i10, 0);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof e)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        e eVar = (e) parcelable;
        super.onRestoreInstanceState(eVar.f4709a);
        SparseArray sparseArray = eVar.f10012c;
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            int id2 = childAt.getId();
            k0.a aVar = m(childAt).f9998a;
            if (id2 != -1 && aVar != null && (parcelable2 = (Parcelable) sparseArray.get(id2)) != null) {
                aVar.m(childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Parcelable parcelableN;
        e eVar = new e(super.onSaveInstanceState());
        SparseArray sparseArray = new SparseArray();
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            int id2 = childAt.getId();
            k0.a aVar = ((k0.d) childAt.getLayoutParams()).f9998a;
            if (id2 != -1 && aVar != null && (parcelableN = aVar.n(childAt)) != null) {
                sparseArray.append(id2, parcelableN);
            }
        }
        eVar.f10012c = sparseArray;
        return eVar;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, x0.w
    public final boolean onStartNestedScroll(View view, View view2, int i10) {
        return d(view, view2, i10, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, x0.w
    public final void onStopNestedScroll(View view) {
        a(0, view);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0015 A[PHI: r3
  0x0015: PHI (r3v4 boolean) = (r3v2 boolean), (r3v5 boolean) binds: [B:10:0x0022, B:5:0x0012] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zQ;
        boolean zQ2;
        MotionEvent motionEventObtain;
        int actionMasked = motionEvent.getActionMasked();
        if (this.f1045j == null) {
            zQ = q(motionEvent, 1);
            if (!zQ) {
                zQ2 = false;
            }
            motionEventObtain = null;
            if (this.f1045j != null) {
                zQ2 |= super.onTouchEvent(motionEvent);
            } else if (zQ) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                super.onTouchEvent(motionEventObtain);
            }
            if (motionEventObtain != null) {
                motionEventObtain.recycle();
            }
            if (actionMasked != 1 || actionMasked == 3) {
                s(false);
            }
            return zQ2;
        }
        zQ = false;
        k0.a aVar = ((k0.d) this.f1045j.getLayoutParams()).f9998a;
        if (aVar != null) {
            zQ2 = aVar.q(this.f1045j, motionEvent);
        }
        motionEventObtain = null;
        if (this.f1045j != null) {
        }
        if (motionEventObtain != null) {
        }
        if (actionMasked != 1) {
            s(false);
        }
        return zQ2;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00c4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void p(int i10, View view) {
        Rect rectG;
        Rect rectG2;
        int i11;
        k0.d dVar = (k0.d) view.getLayoutParams();
        View view2 = dVar.f10008k;
        if (view2 == null && dVar.f10003f != -1) {
            throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
        }
        d dVar2 = z;
        if (view2 != null) {
            rectG = g();
            rectG2 = g();
            try {
                k(view2, rectG);
                k0.d dVar3 = (k0.d) view.getLayoutParams();
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight = view.getMeasuredHeight();
                l(i10, rectG, rectG2, dVar3, measuredWidth, measuredHeight);
                h(dVar3, rectG2, measuredWidth, measuredHeight);
                view.layout(rectG2.left, rectG2.top, rectG2.right, rectG2.bottom);
                return;
            } finally {
                rectG.setEmpty();
                dVar2.c(rectG);
                rectG2.setEmpty();
                dVar2.c(rectG2);
            }
        }
        int i12 = dVar.f10002e;
        if (i12 < 0) {
            k0.d dVar4 = (k0.d) view.getLayoutParams();
            rectG = g();
            rectG.set(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) dVar4).leftMargin, getPaddingTop() + ((ViewGroup.MarginLayoutParams) dVar4).topMargin, (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) dVar4).rightMargin, (getHeight() - getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) dVar4).bottomMargin);
            if (this.f1048n != null) {
                WeakHashMap weakHashMap = b1.f17953a;
                if (j0.b(this) && !j0.b(view)) {
                    rectG.left = this.f1048n.b() + rectG.left;
                    rectG.top = this.f1048n.d() + rectG.top;
                    rectG.right -= this.f1048n.c();
                    rectG.bottom -= this.f1048n.a();
                }
            }
            rectG2 = g();
            int i13 = dVar4.f10000c;
            if ((i13 & 7) == 0) {
                i13 |= 8388611;
            }
            if ((i13 & 112) == 0) {
                i13 |= 48;
            }
            n.b(i13, view.getMeasuredWidth(), view.getMeasuredHeight(), rectG, rectG2, i10);
            view.layout(rectG2.left, rectG2.top, rectG2.right, rectG2.bottom);
            return;
        }
        k0.d dVar5 = (k0.d) view.getLayoutParams();
        int i14 = dVar5.f10000c;
        if (i14 == 0) {
            i14 = 8388661;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(i14, i10);
        int i15 = absoluteGravity & 7;
        int i16 = absoluteGravity & 112;
        int width = getWidth();
        int height = getHeight();
        int measuredWidth2 = view.getMeasuredWidth();
        int measuredHeight2 = view.getMeasuredHeight();
        if (i10 == 1) {
            i12 = width - i12;
        }
        int[] iArr = this.f1044i;
        int i17 = 0;
        if (iArr == null || i12 < 0 || i12 >= iArr.length) {
            toString();
            i11 = 0;
            int i18 = i11 - measuredWidth2;
            if (i15 != 1) {
            }
            if (i16 != 16) {
            }
            int iMax = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) dVar5).leftMargin, Math.min(i18, ((width - getPaddingRight()) - measuredWidth2) - ((ViewGroup.MarginLayoutParams) dVar5).rightMargin));
            int iMax2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) dVar5).topMargin, Math.min(i17, ((height - getPaddingBottom()) - measuredHeight2) - ((ViewGroup.MarginLayoutParams) dVar5).bottomMargin));
            view.layout(iMax, iMax2, measuredWidth2 + iMax, measuredHeight2 + iMax2);
        }
        i11 = iArr[i12];
        int i182 = i11 - measuredWidth2;
        if (i15 != 1) {
            i182 += measuredWidth2 / 2;
        } else if (i15 == 5) {
            i182 += measuredWidth2;
        }
        if (i16 != 16) {
            i17 = measuredHeight2 / 2;
        } else if (i16 == 80) {
            i17 = measuredHeight2;
        }
        int iMax3 = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) dVar5).leftMargin, Math.min(i182, ((width - getPaddingRight()) - measuredWidth2) - ((ViewGroup.MarginLayoutParams) dVar5).rightMargin));
        int iMax22 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) dVar5).topMargin, Math.min(i17, ((height - getPaddingBottom()) - measuredHeight2) - ((ViewGroup.MarginLayoutParams) dVar5).bottomMargin));
        view.layout(iMax3, iMax22, measuredWidth2 + iMax3, measuredHeight2 + iMax22);
    }

    public final boolean q(MotionEvent motionEvent, int i10) {
        int actionMasked = motionEvent.getActionMasked();
        ArrayList arrayList = this.f1038c;
        arrayList.clear();
        boolean zIsChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i11 = childCount - 1; i11 >= 0; i11--) {
            arrayList.add(getChildAt(zIsChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i11) : i11));
        }
        a aVar = f1035y;
        if (aVar != null) {
            Collections.sort(arrayList, aVar);
        }
        int size = arrayList.size();
        MotionEvent motionEventObtain = null;
        boolean zF = false;
        for (int i12 = 0; i12 < size; i12++) {
            View view = (View) arrayList.get(i12);
            k0.a aVar2 = ((k0.d) view.getLayoutParams()).f9998a;
            if (zF && actionMasked != 0) {
                if (aVar2 != null) {
                    if (motionEventObtain == null) {
                        long jUptimeMillis = SystemClock.uptimeMillis();
                        motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                    }
                    if (i10 == 0) {
                        aVar2.f(this, view, motionEventObtain);
                    } else if (i10 == 1) {
                        aVar2.q(view, motionEventObtain);
                    }
                }
            } else if (!zF && aVar2 != null) {
                if (i10 == 0) {
                    zF = aVar2.f(this, view, motionEvent);
                } else if (i10 == 1) {
                    zF = aVar2.q(view, motionEvent);
                }
                if (zF) {
                    this.f1045j = view;
                }
            }
        }
        arrayList.clear();
        return zF;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0104  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void r() {
        d0.d dVar;
        View viewFindViewById;
        ArrayList arrayList = this.f1036a;
        arrayList.clear();
        w0 w0Var = this.f1037b;
        t tVar = (t) w0Var.f347c;
        int i10 = tVar.f65c;
        int i11 = 0;
        while (true) {
            dVar = (d0.d) w0Var.f346b;
            if (i11 >= i10) {
                break;
            }
            ArrayList arrayList2 = (ArrayList) tVar.j(i11);
            if (arrayList2 != null) {
                arrayList2.clear();
                dVar.c(arrayList2);
            }
            i11++;
        }
        tVar.clear();
        int childCount = getChildCount();
        int i12 = 0;
        loop1: while (true) {
            t tVar2 = (t) w0Var.f347c;
            if (i12 >= childCount) {
                ArrayList arrayList3 = (ArrayList) w0Var.f348d;
                arrayList3.clear();
                HashSet hashSet = (HashSet) w0Var.f349e;
                hashSet.clear();
                int i13 = tVar2.f65c;
                for (int i14 = 0; i14 < i13; i14++) {
                    w0Var.v(tVar2.f(i14), arrayList3, hashSet);
                }
                arrayList.addAll(arrayList3);
                Collections.reverse(arrayList);
                return;
            }
            View childAt = getChildAt(i12);
            k0.d dVarM = m(childAt);
            int i15 = dVarM.f10003f;
            if (i15 == -1) {
                dVarM.l = null;
                dVarM.f10008k = null;
            } else {
                View view = dVarM.f10008k;
                if (view == null || view.getId() != i15) {
                    viewFindViewById = findViewById(i15);
                    dVarM.f10008k = viewFindViewById;
                    if (viewFindViewById != null) {
                        if (!isInEditMode()) {
                            throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + getResources().getResourceName(i15) + " to anchor view " + childAt);
                        }
                        dVarM.l = null;
                        dVarM.f10008k = null;
                    } else if (viewFindViewById != this) {
                        for (ViewParent parent = viewFindViewById.getParent(); parent != this && parent != null; parent = parent.getParent()) {
                            if (parent != childAt) {
                                if (parent instanceof View) {
                                    viewFindViewById = parent;
                                }
                            } else {
                                if (!isInEditMode()) {
                                    throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
                                }
                                dVarM.l = null;
                                dVarM.f10008k = null;
                            }
                        }
                        dVarM.l = viewFindViewById;
                    } else {
                        if (!isInEditMode()) {
                            throw new IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
                        }
                        dVarM.l = null;
                        dVarM.f10008k = null;
                    }
                } else {
                    View view2 = dVarM.f10008k;
                    for (ViewParent parent2 = view2.getParent(); parent2 != this; parent2 = parent2.getParent()) {
                        if (parent2 == null || parent2 == childAt) {
                            dVarM.l = null;
                            dVarM.f10008k = null;
                            viewFindViewById = findViewById(i15);
                            dVarM.f10008k = viewFindViewById;
                            if (viewFindViewById != null) {
                            }
                        } else {
                            if (parent2 instanceof View) {
                                view2 = parent2;
                            }
                        }
                    }
                    dVarM.l = view2;
                }
            }
            if (!tVar2.containsKey(childAt)) {
                tVar2.put(childAt, null);
            }
            for (int i16 = 0; i16 < childCount; i16++) {
                if (i16 != i12) {
                    View childAt2 = getChildAt(i16);
                    if (childAt2 != dVarM.l) {
                        WeakHashMap weakHashMap = b1.f17953a;
                        int iD = k0.d(this);
                        int absoluteGravity = Gravity.getAbsoluteGravity(((k0.d) childAt2.getLayoutParams()).f10004g, iD);
                        if (absoluteGravity == 0 || (Gravity.getAbsoluteGravity(dVarM.f10005h, iD) & absoluteGravity) != absoluteGravity) {
                            k0.a aVar = dVarM.f9998a;
                            if (aVar != null) {
                                aVar.b(childAt);
                            }
                        } else {
                            if (!tVar2.containsKey(childAt2) && !tVar2.containsKey(childAt2)) {
                                tVar2.put(childAt2, null);
                            }
                            if (!tVar2.containsKey(childAt2) || !tVar2.containsKey(childAt)) {
                                break loop1;
                            }
                            ArrayList arrayList4 = (ArrayList) tVar2.get(childAt2);
                            if (arrayList4 == null) {
                                arrayList4 = (ArrayList) dVar.a();
                                if (arrayList4 == null) {
                                    arrayList4 = new ArrayList();
                                }
                                tVar2.put(childAt2, arrayList4);
                            }
                            arrayList4.add(childAt);
                        }
                    }
                }
            }
            i12++;
        }
        throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z4) {
        k0.a aVar = ((k0.d) view.getLayoutParams()).f9998a;
        if (aVar != null) {
            aVar.l(this, view);
        }
        return super.requestChildRectangleOnScreen(view, rect, z4);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z4) {
        super.requestDisallowInterceptTouchEvent(z4);
        if (!z4 || this.f1042g) {
            return;
        }
        s(false);
        this.f1042g = true;
    }

    public final void s(boolean z4) {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            k0.a aVar = ((k0.d) childAt.getLayoutParams()).f9998a;
            if (aVar != null) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                if (z4) {
                    aVar.f(this, childAt, motionEventObtain);
                } else {
                    aVar.q(childAt, motionEventObtain);
                }
                motionEventObtain.recycle();
            }
        }
        for (int i11 = 0; i11 < childCount; i11++) {
            ((k0.d) getChildAt(i11).getLayoutParams()).getClass();
        }
        this.f1045j = null;
        this.f1042g = false;
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z4) {
        super.setFitsSystemWindows(z4);
        v();
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.r = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(Drawable drawable) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Drawable drawable2 = this.f1050q;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.f1050q = drawableMutate;
            if (drawableMutate != null) {
                if (drawableMutate.isStateful()) {
                    this.f1050q.setState(getDrawableState());
                }
                Drawable drawable3 = this.f1050q;
                WeakHashMap weakHashMap = b1.f17953a;
                com.bumptech.glide.c.d0(drawable3, k0.d(this));
                this.f1050q.setVisible(getVisibility() == 0, false);
                this.f1050q.setCallback(this);
            }
            WeakHashMap weakHashMap2 = b1.f17953a;
            j0.k(this);
        }
    }

    public void setStatusBarBackgroundColor(int i10) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        setStatusBarBackground(new ColorDrawable(i10));
    }

    public void setStatusBarBackgroundResource(int i10) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        setStatusBarBackground(i10 != 0 ? g.e(getContext(), i10) : null);
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        boolean z4 = i10 == 0;
        Drawable drawable = this.f1050q;
        if (drawable == null || drawable.isVisible() == z4) {
            return;
        }
        this.f1050q.setVisible(z4, false);
    }

    public final void v() {
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        WeakHashMap weakHashMap = b1.f17953a;
        if (!j0.b(this)) {
            b1.C(this, null);
            return;
        }
        if (this.f1051s == null) {
            this.f1051s = new m(25, this);
        }
        b1.C(this, this.f1051s);
        setSystemUiVisibility(1280);
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f1050q;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof k0.d ? new k0.d((k0.d) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new k0.d((ViewGroup.MarginLayoutParams) layoutParams) : new k0.d(layoutParams);
    }
}
