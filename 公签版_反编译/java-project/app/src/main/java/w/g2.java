package w;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class g2 implements v.b0 {
    public static final Method C;
    public static final Method D;
    public static final Method E;
    public boolean A;
    public final z B;

    /* renamed from: a, reason: collision with root package name */
    public final Context f17068a;

    /* renamed from: b, reason: collision with root package name */
    public ListAdapter f17069b;

    /* renamed from: c, reason: collision with root package name */
    public t1 f17070c;

    /* renamed from: f, reason: collision with root package name */
    public int f17073f;

    /* renamed from: g, reason: collision with root package name */
    public int f17074g;

    /* renamed from: i, reason: collision with root package name */
    public boolean f17076i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f17077j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f17078k;

    /* renamed from: n, reason: collision with root package name */
    public c1.b f17080n;

    /* renamed from: p, reason: collision with root package name */
    public View f17081p;

    /* renamed from: q, reason: collision with root package name */
    public AdapterView.OnItemClickListener f17082q;
    public AdapterView.OnItemSelectedListener r;

    /* renamed from: x, reason: collision with root package name */
    public final Handler f17087x;
    public Rect z;

    /* renamed from: d, reason: collision with root package name */
    public final int f17071d = -2;

    /* renamed from: e, reason: collision with root package name */
    public int f17072e = -2;

    /* renamed from: h, reason: collision with root package name */
    public final int f17075h = 1002;
    public int l = 0;

    /* renamed from: m, reason: collision with root package name */
    public final int f17079m = Integer.MAX_VALUE;

    /* renamed from: s, reason: collision with root package name */
    public final d2 f17083s = new d2(this, 1);

    /* renamed from: t, reason: collision with root package name */
    public final f2 f17084t = new f2(this);

    /* renamed from: v, reason: collision with root package name */
    public final e2 f17085v = new e2(this);

    /* renamed from: w, reason: collision with root package name */
    public final d2 f17086w = new d2(this, 0);

    /* renamed from: y, reason: collision with root package name */
    public final Rect f17088y = new Rect();

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                C = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException unused) {
            }
            try {
                E = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException unused2) {
            }
        }
        if (Build.VERSION.SDK_INT <= 23) {
            try {
                D = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, Boolean.TYPE);
            } catch (NoSuchMethodException unused3) {
            }
        }
    }

    public g2(Context context, AttributeSet attributeSet, int i10) {
        this.f17068a = context;
        this.f17087x = new Handler(context.getMainLooper());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p.a.f12528o, i10, 0);
        this.f17073f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(0, 0);
        int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, 0);
        this.f17074g = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.f17076i = true;
        }
        typedArrayObtainStyledAttributes.recycle();
        z zVar = new z(context, attributeSet, i10);
        this.B = zVar;
        zVar.setInputMethodMode(1);
    }

    public final int a() {
        return this.f17073f;
    }

    @Override // v.b0
    public final boolean b() {
        return this.B.isShowing();
    }

    public final void d(int i10) {
        this.f17073f = i10;
    }

    @Override // v.b0
    public final void dismiss() {
        z zVar = this.B;
        zVar.dismiss();
        zVar.setContentView(null);
        this.f17070c = null;
        this.f17087x.removeCallbacks(this.f17083s);
    }

    public final Drawable f() {
        return this.B.getBackground();
    }

    @Override // v.b0
    public final t1 h() {
        return this.f17070c;
    }

    public final void i(Drawable drawable) {
        this.B.setBackgroundDrawable(drawable);
    }

    public final void j(int i10) {
        this.f17074g = i10;
        this.f17076i = true;
    }

    public final int n() {
        if (this.f17076i) {
            return this.f17074g;
        }
        return 0;
    }

    public void o(ListAdapter listAdapter) {
        c1.b bVar = this.f17080n;
        if (bVar == null) {
            this.f17080n = new c1.b(3, this);
        } else {
            ListAdapter listAdapter2 = this.f17069b;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(bVar);
            }
        }
        this.f17069b = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.f17080n);
        }
        t1 t1Var = this.f17070c;
        if (t1Var != null) {
            t1Var.setAdapter(this.f17069b);
        }
    }

    public t1 p(Context context, boolean z) {
        return new t1(context, z);
    }

    public final void q(int i10) {
        Drawable background = this.B.getBackground();
        if (background == null) {
            this.f17072e = i10;
            return;
        }
        Rect rect = this.f17088y;
        background.getPadding(rect);
        this.f17072e = rect.left + rect.right + i10;
    }

    @Override // v.b0
    public final void show() {
        int i10;
        int iA;
        int paddingBottom;
        t1 t1Var;
        t1 t1Var2 = this.f17070c;
        z zVar = this.B;
        Context context = this.f17068a;
        if (t1Var2 == null) {
            t1 t1VarP = p(context, !this.A);
            this.f17070c = t1VarP;
            t1VarP.setAdapter(this.f17069b);
            this.f17070c.setOnItemClickListener(this.f17082q);
            this.f17070c.setFocusable(true);
            this.f17070c.setFocusableInTouchMode(true);
            this.f17070c.setOnItemSelectedListener(new a2(0, this));
            this.f17070c.setOnScrollListener(this.f17085v);
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.r;
            if (onItemSelectedListener != null) {
                this.f17070c.setOnItemSelectedListener(onItemSelectedListener);
            }
            zVar.setContentView(this.f17070c);
        }
        Drawable background = zVar.getBackground();
        Rect rect = this.f17088y;
        if (background != null) {
            background.getPadding(rect);
            int i11 = rect.top;
            i10 = rect.bottom + i11;
            if (!this.f17076i) {
                this.f17074g = -i11;
            }
        } else {
            rect.setEmpty();
            i10 = 0;
        }
        boolean z = zVar.getInputMethodMode() == 2;
        View view = this.f17081p;
        int i12 = this.f17074g;
        if (Build.VERSION.SDK_INT <= 23) {
            Method method = D;
            if (method != null) {
                try {
                    iA = ((Integer) method.invoke(zVar, view, Integer.valueOf(i12), Boolean.valueOf(z))).intValue();
                } catch (Exception unused) {
                }
            } else {
                iA = zVar.getMaxAvailableHeight(view, i12);
            }
        } else {
            iA = b2.a(zVar, view, i12, z);
        }
        int i13 = this.f17071d;
        if (i13 == -1) {
            paddingBottom = iA + i10;
        } else {
            int i14 = this.f17072e;
            int iA2 = this.f17070c.a(i14 != -2 ? i14 != -1 ? View.MeasureSpec.makeMeasureSpec(i14, 1073741824) : View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), 1073741824) : View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), Integer.MIN_VALUE), iA);
            paddingBottom = iA2 + (iA2 > 0 ? this.f17070c.getPaddingBottom() + this.f17070c.getPaddingTop() + i10 : 0);
        }
        boolean z4 = this.B.getInputMethodMode() == 2;
        com.bumptech.glide.d.g0(zVar, this.f17075h);
        if (zVar.isShowing()) {
            if (x0.b1.l(this.f17081p)) {
                int width = this.f17072e;
                if (width == -1) {
                    width = -1;
                } else if (width == -2) {
                    width = this.f17081p.getWidth();
                }
                if (i13 == -1) {
                    i13 = z4 ? paddingBottom : -1;
                    if (z4) {
                        zVar.setWidth(this.f17072e == -1 ? -1 : 0);
                        zVar.setHeight(0);
                    } else {
                        zVar.setWidth(this.f17072e == -1 ? -1 : 0);
                        zVar.setHeight(-1);
                    }
                } else if (i13 == -2) {
                    i13 = paddingBottom;
                }
                zVar.setOutsideTouchable(true);
                zVar.update(this.f17081p, this.f17073f, this.f17074g, width < 0 ? -1 : width, i13 < 0 ? -1 : i13);
                return;
            }
            return;
        }
        int width2 = this.f17072e;
        if (width2 == -1) {
            width2 = -1;
        } else if (width2 == -2) {
            width2 = this.f17081p.getWidth();
        }
        if (i13 == -1) {
            i13 = -1;
        } else if (i13 == -2) {
            i13 = paddingBottom;
        }
        zVar.setWidth(width2);
        zVar.setHeight(i13);
        if (Build.VERSION.SDK_INT <= 28) {
            Method method2 = C;
            if (method2 != null) {
                try {
                    method2.invoke(zVar, Boolean.TRUE);
                } catch (Exception unused2) {
                }
            }
        } else {
            c2.b(zVar, true);
        }
        zVar.setOutsideTouchable(true);
        zVar.setTouchInterceptor(this.f17084t);
        if (this.f17078k) {
            com.bumptech.glide.d.f0(zVar, this.f17077j);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            Method method3 = E;
            if (method3 != null) {
                try {
                    method3.invoke(zVar, this.z);
                } catch (Exception unused3) {
                }
            }
        } else {
            c2.a(zVar, this.z);
        }
        View view2 = this.f17081p;
        int width3 = this.f17073f;
        int i15 = this.f17074g;
        int i16 = this.l;
        if (Build.VERSION.SDK_INT >= 19) {
            b1.m.a(zVar, view2, width3, i15, i16);
        } else {
            WeakHashMap weakHashMap = x0.b1.f17953a;
            if ((Gravity.getAbsoluteGravity(i16, x0.k0.d(view2)) & 7) == 5) {
                width3 -= zVar.getWidth() - view2.getWidth();
            }
            zVar.showAsDropDown(view2, width3, i15);
        }
        this.f17070c.setSelection(-1);
        if ((!this.A || this.f17070c.isInTouchMode()) && (t1Var = this.f17070c) != null) {
            t1Var.setListSelectionHidden(true);
            t1Var.requestLayout();
        }
        if (this.A) {
            return;
        }
        this.f17087x.post(this.f17086w);
    }
}
