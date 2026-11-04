package androidx.recyclerview.widget;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewParent;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class u0 extends v1 implements a2 {
    public q0 A;
    public Rect C;
    public long D;

    /* renamed from: d, reason: collision with root package name */
    public float f2295d;

    /* renamed from: e, reason: collision with root package name */
    public float f2296e;

    /* renamed from: f, reason: collision with root package name */
    public float f2297f;

    /* renamed from: g, reason: collision with root package name */
    public float f2298g;

    /* renamed from: h, reason: collision with root package name */
    public float f2299h;

    /* renamed from: i, reason: collision with root package name */
    public float f2300i;

    /* renamed from: j, reason: collision with root package name */
    public float f2301j;

    /* renamed from: k, reason: collision with root package name */
    public float f2302k;

    /* renamed from: m, reason: collision with root package name */
    public final d6.a f2303m;

    /* renamed from: o, reason: collision with root package name */
    public int f2305o;

    /* renamed from: q, reason: collision with root package name */
    public int f2307q;
    public RecyclerView r;

    /* renamed from: t, reason: collision with root package name */
    public VelocityTracker f2309t;

    /* renamed from: u, reason: collision with root package name */
    public ArrayList f2310u;

    /* renamed from: v, reason: collision with root package name */
    public ArrayList f2311v;
    public w.i z;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f2292a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final float[] f2293b = new float[2];

    /* renamed from: c, reason: collision with root package name */
    public RecyclerView.ViewHolder f2294c = null;
    public int l = -1;

    /* renamed from: n, reason: collision with root package name */
    public int f2304n = 0;

    /* renamed from: p, reason: collision with root package name */
    public final ArrayList f2306p = new ArrayList();

    /* renamed from: s, reason: collision with root package name */
    public final k0 f2308s = new k0(this);

    /* renamed from: w, reason: collision with root package name */
    public c f2312w = null;

    /* renamed from: x, reason: collision with root package name */
    public View f2313x = null;

    /* renamed from: y, reason: collision with root package name */
    public int f2314y = -1;
    public final l0 B = new l0(this);

    public u0(d6.a aVar) {
        this.f2303m = aVar;
    }

    public static boolean k(View view, float f10, float f11, float f12, float f13) {
        return f10 >= f12 && f10 <= f12 + ((float) view.getWidth()) && f11 >= f13 && f11 <= f13 + ((float) view.getHeight());
    }

    @Override // androidx.recyclerview.widget.a2
    public final void a(View view) {
        m(view);
        RecyclerView.ViewHolder childViewHolder = this.r.getChildViewHolder(view);
        if (childViewHolder == null) {
            return;
        }
        RecyclerView.ViewHolder viewHolder = this.f2294c;
        if (viewHolder != null && childViewHolder == viewHolder) {
            n(null, 0);
            return;
        }
        h(childViewHolder, false);
        if (this.f2292a.remove(childViewHolder.itemView)) {
            this.f2303m.e(this.r, childViewHolder);
        }
    }

    @Override // androidx.recyclerview.widget.a2
    public final void b(View view) {
    }

    public final int e(int i10) {
        if ((i10 & 12) == 0) {
            return 0;
        }
        int i11 = this.f2299h > 0.0f ? 8 : 4;
        VelocityTracker velocityTracker = this.f2309t;
        d6.a aVar = this.f2303m;
        if (velocityTracker != null && this.l > -1) {
            float f10 = this.f2298g;
            aVar.getClass();
            velocityTracker.computeCurrentVelocity(1000, f10);
            float xVelocity = this.f2309t.getXVelocity(this.l);
            float yVelocity = this.f2309t.getYVelocity(this.l);
            int i12 = xVelocity > 0.0f ? 8 : 4;
            float fAbs = Math.abs(xVelocity);
            if ((i12 & i10) != 0 && i11 == i12 && fAbs >= this.f2297f && fAbs > Math.abs(yVelocity)) {
                return i12;
            }
        }
        float width = this.r.getWidth();
        aVar.getClass();
        float f11 = width * 0.5f;
        if ((i10 & i11) == 0 || Math.abs(this.f2299h) <= f11) {
            return 0;
        }
        return i11;
    }

    public final void f(int i10, int i11, MotionEvent motionEvent) {
        int i12;
        View viewI;
        if (this.f2294c == null && i10 == 2 && this.f2304n != 2) {
            d6.a aVar = this.f2303m;
            if (aVar.f4495g && this.r.getScrollState() != 1) {
                RecyclerView.LayoutManager layoutManager = this.r.getLayoutManager();
                int i13 = this.l;
                RecyclerView.ViewHolder childViewHolder = null;
                if (i13 != -1) {
                    int iFindPointerIndex = motionEvent.findPointerIndex(i13);
                    float x10 = motionEvent.getX(iFindPointerIndex) - this.f2295d;
                    float y6 = motionEvent.getY(iFindPointerIndex) - this.f2296e;
                    float fAbs = Math.abs(x10);
                    float fAbs2 = Math.abs(y6);
                    float f10 = this.f2307q;
                    if ((fAbs >= f10 || fAbs2 >= f10) && ((fAbs <= fAbs2 || !layoutManager.canScrollHorizontally()) && ((fAbs2 <= fAbs || !layoutManager.canScrollVertically()) && (viewI = i(motionEvent)) != null))) {
                        childViewHolder = this.r.getChildViewHolder(viewI);
                    }
                }
                if (childViewHolder == null) {
                    return;
                }
                RecyclerView recyclerView = this.r;
                aVar.getClass();
                ue.d.e(recyclerView, "recyclerView");
                if (childViewHolder instanceof h6.b) {
                    i12 = 0;
                } else {
                    int i14 = aVar.f4496h;
                    i12 = i14 | (i14 << 16);
                }
                WeakHashMap weakHashMap = x0.b1.f17953a;
                int iA = (p0.a(i12, x0.k0.d(recyclerView)) & 65280) >> 8;
                if (iA == 0) {
                    return;
                }
                float x11 = motionEvent.getX(i11);
                float y10 = motionEvent.getY(i11);
                float f11 = x11 - this.f2295d;
                float f12 = y10 - this.f2296e;
                float fAbs3 = Math.abs(f11);
                float fAbs4 = Math.abs(f12);
                float f13 = this.f2307q;
                if (fAbs3 >= f13 || fAbs4 >= f13) {
                    if (fAbs3 > fAbs4) {
                        if (f11 < 0.0f && (iA & 4) == 0) {
                            return;
                        }
                        if (f11 > 0.0f && (iA & 8) == 0) {
                            return;
                        }
                    } else {
                        if (f12 < 0.0f && (iA & 1) == 0) {
                            return;
                        }
                        if (f12 > 0.0f && (iA & 2) == 0) {
                            return;
                        }
                    }
                    this.f2300i = 0.0f;
                    this.f2299h = 0.0f;
                    this.l = motionEvent.getPointerId(0);
                    n(childViewHolder, 1);
                }
            }
        }
    }

    public final int g(int i10) {
        if ((i10 & 3) == 0) {
            return 0;
        }
        int i11 = this.f2300i > 0.0f ? 2 : 1;
        VelocityTracker velocityTracker = this.f2309t;
        d6.a aVar = this.f2303m;
        if (velocityTracker != null && this.l > -1) {
            float f10 = this.f2298g;
            aVar.getClass();
            velocityTracker.computeCurrentVelocity(1000, f10);
            float xVelocity = this.f2309t.getXVelocity(this.l);
            float yVelocity = this.f2309t.getYVelocity(this.l);
            int i12 = yVelocity > 0.0f ? 2 : 1;
            float fAbs = Math.abs(yVelocity);
            if ((i12 & i10) != 0 && i12 == i11 && fAbs >= this.f2297f && fAbs > Math.abs(xVelocity)) {
                return i12;
            }
        }
        float height = this.r.getHeight();
        aVar.getClass();
        float f11 = height * 0.5f;
        if ((i10 & i11) == 0 || Math.abs(this.f2300i) <= f11) {
            return 0;
        }
        return i11;
    }

    @Override // androidx.recyclerview.widget.v1
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, n2 n2Var) {
        rect.setEmpty();
    }

    public final void h(RecyclerView.ViewHolder viewHolder, boolean z) {
        ArrayList arrayList = this.f2306p;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            s0 s0Var = (s0) arrayList.get(size);
            if (s0Var.f2263e == viewHolder) {
                s0Var.f2269k |= z;
                if (!s0Var.l) {
                    s0Var.f2265g.cancel();
                }
                arrayList.remove(size);
                return;
            }
        }
    }

    public final View i(MotionEvent motionEvent) {
        float x10 = motionEvent.getX();
        float y6 = motionEvent.getY();
        RecyclerView.ViewHolder viewHolder = this.f2294c;
        if (viewHolder != null) {
            View view = viewHolder.itemView;
            if (k(view, x10, y6, this.f2301j + this.f2299h, this.f2302k + this.f2300i)) {
                return view;
            }
        }
        ArrayList arrayList = this.f2306p;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            s0 s0Var = (s0) arrayList.get(size);
            View view2 = s0Var.f2263e.itemView;
            if (k(view2, x10, y6, s0Var.f2267i, s0Var.f2268j)) {
                return view2;
            }
        }
        return this.r.findChildViewUnder(x10, y6);
    }

    public final void j(float[] fArr) {
        if ((this.f2305o & 12) != 0) {
            fArr[0] = (this.f2301j + this.f2299h) - this.f2294c.itemView.getLeft();
        } else {
            fArr[0] = this.f2294c.itemView.getTranslationX();
        }
        if ((this.f2305o & 3) != 0) {
            fArr[1] = (this.f2302k + this.f2300i) - this.f2294c.itemView.getTop();
        } else {
            fArr[1] = this.f2294c.itemView.getTranslationY();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void l(RecyclerView.ViewHolder viewHolder) {
        ArrayList arrayList;
        int i10;
        int bottom;
        int iAbs;
        int top;
        int iAbs2;
        int left;
        int iAbs3;
        int right;
        int iAbs4;
        int i11;
        int i12;
        int i13;
        if (!this.r.isLayoutRequested() && this.f2304n == 2) {
            d6.a aVar = this.f2303m;
            aVar.getClass();
            int i14 = (int) (this.f2301j + this.f2299h);
            int i15 = (int) (this.f2302k + this.f2300i);
            if (Math.abs(i15 - viewHolder.itemView.getTop()) >= viewHolder.itemView.getHeight() * 0.5f || Math.abs(i14 - viewHolder.itemView.getLeft()) >= viewHolder.itemView.getWidth() * 0.5f) {
                ArrayList arrayList2 = this.f2310u;
                if (arrayList2 == null) {
                    this.f2310u = new ArrayList();
                    this.f2311v = new ArrayList();
                } else {
                    arrayList2.clear();
                    this.f2311v.clear();
                }
                int iRound = Math.round(this.f2301j + this.f2299h);
                int iRound2 = Math.round(this.f2302k + this.f2300i);
                int width = viewHolder.itemView.getWidth() + iRound;
                int height = viewHolder.itemView.getHeight() + iRound2;
                int i16 = (iRound + width) / 2;
                int i17 = (iRound2 + height) / 2;
                RecyclerView.LayoutManager layoutManager = this.r.getLayoutManager();
                int childCount = layoutManager.getChildCount();
                int i18 = 0;
                while (i18 < childCount) {
                    View childAt = layoutManager.getChildAt(i18);
                    if (childAt != viewHolder.itemView && childAt.getBottom() >= iRound2 && childAt.getTop() <= height && childAt.getRight() >= iRound && childAt.getLeft() <= width) {
                        RecyclerView.ViewHolder childViewHolder = this.r.getChildViewHolder(childAt);
                        int iAbs5 = Math.abs(i16 - ((childAt.getRight() + childAt.getLeft()) / 2));
                        int iAbs6 = Math.abs(i17 - ((childAt.getBottom() + childAt.getTop()) / 2));
                        int i19 = (iAbs6 * iAbs6) + (iAbs5 * iAbs5);
                        i11 = iRound;
                        int size = this.f2310u.size();
                        i12 = iRound2;
                        i13 = width;
                        int i20 = 0;
                        int i21 = 0;
                        while (i20 < size) {
                            int i22 = size;
                            if (i19 <= ((Integer) this.f2311v.get(i20)).intValue()) {
                                break;
                            }
                            i21++;
                            i20++;
                            size = i22;
                        }
                        this.f2310u.add(i21, childViewHolder);
                        this.f2311v.add(i21, Integer.valueOf(i19));
                    } else {
                        i11 = iRound;
                        i12 = iRound2;
                        i13 = width;
                    }
                    i18++;
                    iRound = i11;
                    iRound2 = i12;
                    width = i13;
                }
                ArrayList arrayList3 = this.f2310u;
                if (arrayList3.size() == 0) {
                    return;
                }
                int width2 = viewHolder.itemView.getWidth() + i14;
                int height2 = viewHolder.itemView.getHeight() + i15;
                int left2 = i14 - viewHolder.itemView.getLeft();
                int top2 = i15 - viewHolder.itemView.getTop();
                int size2 = arrayList3.size();
                RecyclerView.ViewHolder viewHolder2 = null;
                int i23 = -1;
                int i24 = 0;
                while (i24 < size2) {
                    RecyclerView.ViewHolder viewHolder3 = (RecyclerView.ViewHolder) arrayList3.get(i24);
                    if (left2 <= 0 || (right = viewHolder3.itemView.getRight() - width2) >= 0) {
                        arrayList = arrayList3;
                        i10 = width2;
                    } else {
                        arrayList = arrayList3;
                        i10 = width2;
                        if (viewHolder3.itemView.getRight() > viewHolder.itemView.getRight() && (iAbs4 = Math.abs(right)) > i23) {
                            i23 = iAbs4;
                            viewHolder2 = viewHolder3;
                        }
                    }
                    if (left2 < 0 && (left = viewHolder3.itemView.getLeft() - i14) > 0 && viewHolder3.itemView.getLeft() < viewHolder.itemView.getLeft() && (iAbs3 = Math.abs(left)) > i23) {
                        i23 = iAbs3;
                        viewHolder2 = viewHolder3;
                    }
                    if (top2 < 0 && (top = viewHolder3.itemView.getTop() - i15) > 0 && viewHolder3.itemView.getTop() < viewHolder.itemView.getTop() && (iAbs2 = Math.abs(top)) > i23) {
                        i23 = iAbs2;
                        viewHolder2 = viewHolder3;
                    }
                    if (top2 > 0 && (bottom = viewHolder3.itemView.getBottom() - height2) < 0 && viewHolder3.itemView.getBottom() > viewHolder.itemView.getBottom() && (iAbs = Math.abs(bottom)) > i23) {
                        i23 = iAbs;
                        viewHolder2 = viewHolder3;
                    }
                    i24++;
                    arrayList3 = arrayList;
                    width2 = i10;
                }
                if (viewHolder2 == null) {
                    this.f2310u.clear();
                    this.f2311v.clear();
                    return;
                }
                int absoluteAdapterPosition = viewHolder2.getAbsoluteAdapterPosition();
                viewHolder.getAbsoluteAdapterPosition();
                ue.d.e(this.r, "recyclerView");
                if (viewHolder.getItemViewType() == viewHolder2.getItemViewType()) {
                    RecyclerView recyclerView = this.r;
                    ue.d.e(recyclerView, "recyclerView");
                    RecyclerView.LayoutManager layoutManager2 = recyclerView.getLayoutManager();
                    if (layoutManager2 instanceof t0) {
                        ((t0) layoutManager2).prepareForDrop(viewHolder.itemView, viewHolder2.itemView, i14, i15);
                    } else {
                        if (layoutManager2.canScrollHorizontally()) {
                            if (layoutManager2.getDecoratedLeft(viewHolder2.itemView) <= recyclerView.getPaddingLeft()) {
                                recyclerView.scrollToPosition(absoluteAdapterPosition);
                            }
                            if (layoutManager2.getDecoratedRight(viewHolder2.itemView) >= recyclerView.getWidth() - recyclerView.getPaddingRight()) {
                                recyclerView.scrollToPosition(absoluteAdapterPosition);
                            }
                        }
                        if (layoutManager2.canScrollVertically()) {
                            if (layoutManager2.getDecoratedTop(viewHolder2.itemView) <= recyclerView.getPaddingTop()) {
                                recyclerView.scrollToPosition(absoluteAdapterPosition);
                            }
                            if (layoutManager2.getDecoratedBottom(viewHolder2.itemView) >= recyclerView.getHeight() - recyclerView.getPaddingBottom()) {
                                recyclerView.scrollToPosition(absoluteAdapterPosition);
                            }
                        }
                    }
                    int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
                    int bindingAdapterPosition2 = viewHolder2.getBindingAdapterPosition();
                    if (bindingAdapterPosition == -1 || bindingAdapterPosition2 == -1) {
                        return;
                    }
                    e6.a aVar2 = aVar.f4498j;
                    if (aVar2 != null) {
                        aVar2.a(bindingAdapterPosition, bindingAdapterPosition2);
                    }
                    e6.b bVar = aVar.f4497i;
                    if (bVar != null) {
                        bVar.b(bindingAdapterPosition, bindingAdapterPosition2);
                    }
                }
            }
        }
    }

    public final void m(View view) {
        if (view == this.f2313x) {
            this.f2313x = null;
            if (this.f2312w != null) {
                this.r.setChildDrawingOrderCallback(null);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void n(RecyclerView.ViewHolder viewHolder, int i10) {
        String str;
        d6.a aVar;
        int i11;
        boolean z;
        int i12;
        int i13;
        RecyclerView.ViewHolder viewHolder2;
        boolean z4;
        int i14;
        int iB;
        int i15;
        float fSignum;
        float fSignum2;
        if (viewHolder == this.f2294c && i10 == this.f2304n) {
            return;
        }
        this.D = Long.MIN_VALUE;
        int i16 = this.f2304n;
        h(viewHolder, true);
        this.f2304n = i10;
        if (i10 == 2) {
            if (viewHolder == null) {
                throw new IllegalArgumentException("Must pass a ViewHolder when dragging");
            }
            this.f2313x = viewHolder.itemView;
            if (Build.VERSION.SDK_INT < 21) {
                if (this.f2312w == null) {
                    this.f2312w = new c(this);
                }
                this.r.setChildDrawingOrderCallback(this.f2312w);
            }
        }
        int i17 = (1 << ((i10 * 8) + 8)) - 1;
        RecyclerView.ViewHolder viewHolder3 = this.f2294c;
        d6.a aVar2 = this.f2303m;
        if (viewHolder3 != null) {
            if (viewHolder3.itemView.getParent() != null) {
                if (i16 == 2) {
                    i15 = 0;
                } else if (this.f2304n == 2) {
                    iB = 0;
                    i15 = iB;
                } else {
                    RecyclerView recyclerView = this.r;
                    aVar2.getClass();
                    ue.d.e(recyclerView, "recyclerView");
                    if (viewHolder3 instanceof h6.b) {
                        i14 = 0;
                    } else {
                        int i18 = aVar2.f4496h;
                        i14 = i18 | (i18 << 16);
                    }
                    RecyclerView recyclerView2 = this.r;
                    WeakHashMap weakHashMap = x0.b1.f17953a;
                    int iA = (p0.a(i14, x0.k0.d(recyclerView2)) & 65280) >> 8;
                    if (iA != 0) {
                        if (Math.abs(this.f2299h) > Math.abs(this.f2300i)) {
                            int iE = e(iA);
                            if (iE > 0) {
                                iB = p0.b(iE, x0.k0.d(this.r));
                            } else {
                                iB = g(iA);
                                if (iB <= 0) {
                                }
                            }
                            i15 = iB;
                        } else {
                            int iG = g(iA);
                            if (iG > 0) {
                                iB = iG;
                            } else {
                                int iE2 = e(iA);
                                if (iE2 > 0) {
                                    iB = p0.b(iE2, x0.k0.d(this.r));
                                }
                            }
                            i15 = iB;
                        }
                    }
                }
                VelocityTracker velocityTracker = this.f2309t;
                if (velocityTracker != null) {
                    velocityTracker.recycle();
                    this.f2309t = null;
                }
                if (i15 == 1 || i15 == 2) {
                    fSignum = Math.signum(this.f2300i) * this.r.getHeight();
                    fSignum2 = 0.0f;
                } else {
                    fSignum2 = (i15 == 4 || i15 == 8 || i15 == 16 || i15 == 32) ? Math.signum(this.f2299h) * this.r.getWidth() : 0.0f;
                    fSignum = 0.0f;
                }
                int i19 = i16 == 2 ? 8 : i15 > 0 ? 2 : 4;
                float[] fArr = this.f2293b;
                j(fArr);
                int i20 = i19;
                i11 = 0;
                str = "recyclerView";
                m0 m0Var = new m0(this, viewHolder3, i20, i16, fArr[0], fArr[1], fSignum2, fSignum, i15, viewHolder3);
                RecyclerView recyclerView3 = this.r;
                aVar2.getClass();
                t1 itemAnimator = recyclerView3.getItemAnimator();
                long j10 = itemAnimator == null ? i20 == 8 ? 200L : 250L : i20 == 8 ? itemAnimator.f2282e : itemAnimator.f2281d;
                ValueAnimator valueAnimator = m0Var.f2265g;
                valueAnimator.setDuration(j10);
                this.f2306p.add(m0Var);
                viewHolder3.setIsRecyclable(false);
                valueAnimator.start();
                aVar = aVar2;
                viewHolder2 = null;
                z4 = true;
            } else {
                str = "recyclerView";
                i11 = 0;
                m(viewHolder3.itemView);
                aVar = aVar2;
                aVar.e(this.r, viewHolder3);
                viewHolder2 = null;
                z4 = false;
            }
            this.f2294c = viewHolder2;
            z = z4;
        } else {
            str = "recyclerView";
            aVar = aVar2;
            i11 = 0;
            z = false;
        }
        if (viewHolder != null) {
            RecyclerView recyclerView4 = this.r;
            aVar.getClass();
            ue.d.e(recyclerView4, str);
            if (viewHolder instanceof h6.b) {
                i13 = 0;
            } else {
                int i21 = aVar.f4496h;
                i13 = i21 | (i21 << 16);
            }
            WeakHashMap weakHashMap2 = x0.b1.f17953a;
            this.f2305o = (p0.a(i13, x0.k0.d(recyclerView4)) & i17) >> (this.f2304n * 8);
            this.f2301j = viewHolder.itemView.getLeft();
            this.f2302k = viewHolder.itemView.getTop();
            this.f2294c = viewHolder;
            i12 = 2;
            if (i10 == 2) {
                viewHolder.itemView.performHapticFeedback(i11);
            }
        } else {
            i12 = 2;
        }
        ViewParent parent = this.r.getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(this.f2294c != null);
        }
        if (!z) {
            this.r.getLayoutManager().requestSimpleAnimationsInNextLayout();
        }
        RecyclerView.ViewHolder viewHolder4 = this.f2294c;
        int i22 = this.f2304n;
        if (i22 == 1) {
            aVar.l = true;
        } else if (i22 != i12) {
            aVar.getClass();
        } else {
            aVar.f4499k = true;
            e6.b bVar = aVar.f4497i;
            if (bVar != null) {
                bVar.c(viewHolder4 != null ? viewHolder4.getBindingAdapterPosition() : -1);
            }
        }
        this.r.invalidate();
    }

    public final void o(int i10, int i11, MotionEvent motionEvent) {
        float x10 = motionEvent.getX(i11);
        float y6 = motionEvent.getY(i11);
        float f10 = x10 - this.f2295d;
        this.f2299h = f10;
        this.f2300i = y6 - this.f2296e;
        if ((i10 & 4) == 0) {
            this.f2299h = Math.max(0.0f, f10);
        }
        if ((i10 & 8) == 0) {
            this.f2299h = Math.min(0.0f, this.f2299h);
        }
        if ((i10 & 1) == 0) {
            this.f2300i = Math.max(0.0f, this.f2300i);
        }
        if ((i10 & 2) == 0) {
            this.f2300i = Math.min(0.0f, this.f2300i);
        }
    }

    @Override // androidx.recyclerview.widget.v1
    public final void onDraw(Canvas canvas, RecyclerView recyclerView, n2 n2Var) {
        float f10;
        float f11;
        this.f2314y = -1;
        if (this.f2294c != null) {
            float[] fArr = this.f2293b;
            j(fArr);
            float f12 = fArr[0];
            f11 = fArr[1];
            f10 = f12;
        } else {
            f10 = 0.0f;
            f11 = 0.0f;
        }
        RecyclerView.ViewHolder viewHolder = this.f2294c;
        ArrayList arrayList = this.f2306p;
        d6.a aVar = this.f2303m;
        aVar.getClass();
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            s0 s0Var = (s0) arrayList.get(i10);
            RecyclerView.ViewHolder viewHolder2 = s0Var.f2263e;
            float f13 = s0Var.f2259a;
            float f14 = s0Var.f2261c;
            if (f13 == f14) {
                s0Var.f2267i = viewHolder2.itemView.getTranslationX();
            } else {
                s0Var.f2267i = g.b.b(f14, f13, s0Var.f2270m, f13);
            }
            float f15 = s0Var.f2260b;
            float f16 = s0Var.f2262d;
            if (f15 == f16) {
                s0Var.f2268j = viewHolder2.itemView.getTranslationY();
            } else {
                s0Var.f2268j = g.b.b(f16, f15, s0Var.f2270m, f15);
            }
            int iSave = canvas.save();
            aVar.f(canvas, recyclerView, s0Var.f2263e, s0Var.f2267i, s0Var.f2268j, false);
            canvas.restoreToCount(iSave);
        }
        if (viewHolder != null) {
            int iSave2 = canvas.save();
            aVar.f(canvas, recyclerView, viewHolder, f10, f11, true);
            canvas.restoreToCount(iSave2);
        }
    }

    @Override // androidx.recyclerview.widget.v1
    public final void onDrawOver(Canvas canvas, RecyclerView recyclerView, n2 n2Var) {
        boolean z = false;
        if (this.f2294c != null) {
            float[] fArr = this.f2293b;
            j(fArr);
            float f10 = fArr[0];
            float f11 = fArr[1];
        }
        RecyclerView.ViewHolder viewHolder = this.f2294c;
        ArrayList arrayList = this.f2306p;
        this.f2303m.getClass();
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            s0 s0Var = (s0) arrayList.get(i10);
            int iSave = canvas.save();
            View view = s0Var.f2263e.itemView;
            canvas.restoreToCount(iSave);
        }
        if (viewHolder != null) {
            canvas.restoreToCount(canvas.save());
        }
        for (int i11 = size - 1; i11 >= 0; i11--) {
            s0 s0Var2 = (s0) arrayList.get(i11);
            boolean z4 = s0Var2.l;
            if (z4 && !s0Var2.f2266h) {
                arrayList.remove(i11);
            } else if (!z4) {
                z = true;
            }
        }
        if (z) {
            recyclerView.invalidate();
        }
    }
}
