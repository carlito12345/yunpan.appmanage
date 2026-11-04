package w;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.yunpan.appmanage.R;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public class t1 extends ListView {

    /* renamed from: a, reason: collision with root package name */
    public final Rect f17259a;

    /* renamed from: b, reason: collision with root package name */
    public int f17260b;

    /* renamed from: c, reason: collision with root package name */
    public int f17261c;

    /* renamed from: d, reason: collision with root package name */
    public int f17262d;

    /* renamed from: e, reason: collision with root package name */
    public int f17263e;

    /* renamed from: f, reason: collision with root package name */
    public int f17264f;

    /* renamed from: g, reason: collision with root package name */
    public r1 f17265g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f17266h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f17267i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f17268j;

    /* renamed from: k, reason: collision with root package name */
    public b1.g f17269k;
    public androidx.activity.h l;

    public t1(Context context, boolean z) {
        super(context, null, R.attr.dropDownListViewStyle);
        this.f17259a = new Rect();
        this.f17260b = 0;
        this.f17261c = 0;
        this.f17262d = 0;
        this.f17263e = 0;
        this.f17267i = z;
        setCacheColorHint(0);
    }

    public final int a(int i10, int i11) {
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        if (adapter == null) {
            return listPaddingTop + listPaddingBottom;
        }
        int measuredHeight = listPaddingTop + listPaddingBottom;
        if (dividerHeight <= 0 || divider == null) {
            dividerHeight = 0;
        }
        int count = adapter.getCount();
        View view = null;
        int i12 = 0;
        for (int i13 = 0; i13 < count; i13++) {
            int itemViewType = adapter.getItemViewType(i13);
            if (itemViewType != i12) {
                view = null;
                i12 = itemViewType;
            }
            view = adapter.getView(i13, view, this);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = generateDefaultLayoutParams();
                view.setLayoutParams(layoutParams);
            }
            int i14 = layoutParams.height;
            view.measure(i10, i14 > 0 ? View.MeasureSpec.makeMeasureSpec(i14, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0));
            view.forceLayout();
            if (i13 > 0) {
                measuredHeight += dividerHeight;
            }
            measuredHeight += view.getMeasuredHeight();
            if (measuredHeight >= i11) {
                return i11;
            }
        }
        return measuredHeight;
    }

    /* JADX WARN: Removed duplicated region for block: B:88:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean b(MotionEvent motionEvent, int i10) throws IllegalAccessException, IllegalArgumentException {
        boolean z;
        boolean zA;
        View childAt;
        View childAt2;
        int actionMasked = motionEvent.getActionMasked();
        boolean z4 = false;
        if (actionMasked == 1) {
            z = false;
        } else {
            if (actionMasked != 2) {
                z = actionMasked != 3;
                if (z || z4) {
                    this.f17268j = false;
                    setPressed(false);
                    drawableStateChanged();
                    childAt2 = getChildAt(this.f17264f - getFirstVisiblePosition());
                    if (childAt2 != null) {
                        childAt2.setPressed(false);
                    }
                }
                if (z) {
                    b1.g gVar = this.f17269k;
                    if (gVar != null) {
                        if (gVar.f2517q) {
                            gVar.d();
                        }
                        gVar.f2517q = false;
                    }
                } else {
                    if (this.f17269k == null) {
                        this.f17269k = new b1.g(this);
                    }
                    b1.g gVar2 = this.f17269k;
                    boolean z10 = gVar2.f2517q;
                    gVar2.f2517q = true;
                    gVar2.onTouch(this, motionEvent);
                }
                return z;
            }
            z = true;
        }
        int iFindPointerIndex = motionEvent.findPointerIndex(i10);
        if (iFindPointerIndex >= 0) {
            int x10 = (int) motionEvent.getX(iFindPointerIndex);
            int y6 = (int) motionEvent.getY(iFindPointerIndex);
            int iPointToPosition = pointToPosition(x10, y6);
            if (iPointToPosition == -1) {
                z4 = true;
            } else {
                View childAt3 = getChildAt(iPointToPosition - getFirstVisiblePosition());
                float f10 = x10;
                float f11 = y6;
                this.f17268j = true;
                int i11 = Build.VERSION.SDK_INT;
                if (i11 >= 21) {
                    o1.a(this, f10, f11);
                }
                if (!isPressed()) {
                    setPressed(true);
                }
                layoutChildren();
                int i12 = this.f17264f;
                if (i12 != -1 && (childAt = getChildAt(i12 - getFirstVisiblePosition())) != null && childAt != childAt3 && childAt.isPressed()) {
                    childAt.setPressed(false);
                }
                this.f17264f = iPointToPosition;
                float left = f10 - childAt3.getLeft();
                float top = f11 - childAt3.getTop();
                if (i11 >= 21) {
                    o1.a(childAt3, left, top);
                }
                if (!childAt3.isPressed()) {
                    childAt3.setPressed(true);
                }
                Drawable selector = getSelector();
                boolean z11 = (selector == null || iPointToPosition == -1) ? false : true;
                if (z11) {
                    selector.setVisible(false, false);
                }
                int left2 = childAt3.getLeft();
                int top2 = childAt3.getTop();
                int right = childAt3.getRight();
                int bottom = childAt3.getBottom();
                Rect rect = this.f17259a;
                rect.set(left2, top2, right, bottom);
                rect.left -= this.f17260b;
                rect.top -= this.f17261c;
                rect.right += this.f17262d;
                rect.bottom += this.f17263e;
                if (t0.b.a()) {
                    zA = q1.a(this);
                } else {
                    Field field = s1.f17256a;
                    if (field != null) {
                        try {
                            zA = field.getBoolean(this);
                        } catch (IllegalAccessException e7) {
                            e7.printStackTrace();
                        }
                    } else {
                        zA = false;
                    }
                }
                if (childAt3.isEnabled() != zA) {
                    boolean z12 = !zA;
                    if (t0.b.a()) {
                        q1.b(this, z12);
                    } else {
                        Field field2 = s1.f17256a;
                        if (field2 != null) {
                            try {
                                field2.set(this, Boolean.valueOf(z12));
                            } catch (IllegalAccessException e10) {
                                e10.printStackTrace();
                            }
                        }
                    }
                    if (iPointToPosition != -1) {
                        refreshDrawableState();
                    }
                }
                if (z11) {
                    float fExactCenterX = rect.exactCenterX();
                    float fExactCenterY = rect.exactCenterY();
                    selector.setVisible(getVisibility() == 0, false);
                    com.bumptech.glide.c.b0(selector, fExactCenterX, fExactCenterY);
                }
                Drawable selector2 = getSelector();
                if (selector2 != null && iPointToPosition != -1) {
                    com.bumptech.glide.c.b0(selector2, f10, f11);
                }
                r1 r1Var = this.f17265g;
                if (r1Var != null) {
                    r1Var.f17233b = false;
                }
                refreshDrawableState();
                if (actionMasked == 1) {
                    performItemClick(childAt3, iPointToPosition, getItemIdAtPosition(iPointToPosition));
                }
                z = true;
                z4 = false;
            }
        }
        if (z) {
            this.f17268j = false;
            setPressed(false);
            drawableStateChanged();
            childAt2 = getChildAt(this.f17264f - getFirstVisiblePosition());
            if (childAt2 != null) {
            }
        }
        if (z) {
        }
        return z;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        Drawable selector;
        Rect rect = this.f17259a;
        if (!rect.isEmpty() && (selector = getSelector()) != null) {
            selector.setBounds(rect);
            selector.draw(canvas);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        if (this.l != null) {
            return;
        }
        super.drawableStateChanged();
        r1 r1Var = this.f17265g;
        if (r1Var != null) {
            r1Var.f17233b = true;
        }
        Drawable selector = getSelector();
        if (selector != null && this.f17268j && isPressed()) {
            selector.setState(getDrawableState());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean hasFocus() {
        return this.f17267i || super.hasFocus();
    }

    @Override // android.view.View
    public final boolean hasWindowFocus() {
        return this.f17267i || super.hasWindowFocus();
    }

    @Override // android.view.View
    public final boolean isFocused() {
        return this.f17267i || super.isFocused();
    }

    @Override // android.view.View
    public final boolean isInTouchMode() {
        return (this.f17267i && this.f17266h) || super.isInTouchMode();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        this.l = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 26) {
            return super.onHoverEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.l == null) {
            androidx.activity.h hVar = new androidx.activity.h(17, this);
            this.l = hVar;
            post(hVar);
        }
        boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked == 9 || actionMasked == 7) {
            int iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (iPointToPosition != -1 && iPointToPosition != getSelectedItemPosition()) {
                View childAt = getChildAt(iPointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    requestFocus();
                    if (i10 < 30 || !p1.f17188d) {
                        setSelectionFromTop(iPointToPosition, childAt.getTop() - getTop());
                    } else {
                        try {
                            p1.f17185a.invoke(this, Integer.valueOf(iPointToPosition), childAt, Boolean.FALSE, -1, -1);
                            p1.f17186b.invoke(this, Integer.valueOf(iPointToPosition));
                            p1.f17187c.invoke(this, Integer.valueOf(iPointToPosition));
                        } catch (IllegalAccessException e7) {
                            e7.printStackTrace();
                        } catch (InvocationTargetException e10) {
                            e10.printStackTrace();
                        }
                    }
                }
                Drawable selector = getSelector();
                if (selector != null && this.f17268j && isPressed()) {
                    selector.setState(getDrawableState());
                }
            }
        } else {
            setSelection(-1);
        }
        return zOnHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f17264f = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        androidx.activity.h hVar = this.l;
        if (hVar != null) {
            t1 t1Var = (t1) hVar.f798b;
            t1Var.l = null;
            t1Var.removeCallbacks(hVar);
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setListSelectionHidden(boolean z) {
        this.f17266h = z;
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        r1 r1Var = drawable != null ? new r1(drawable) : null;
        this.f17265g = r1Var;
        super.setSelector(r1Var);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f17260b = rect.left;
        this.f17261c = rect.top;
        this.f17262d = rect.right;
        this.f17263e = rect.bottom;
    }
}
