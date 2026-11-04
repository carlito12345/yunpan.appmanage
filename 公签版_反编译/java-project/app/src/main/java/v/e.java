package v;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.yunpan.appmanage.R;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import ua.c2;
import ua.i1;
import w.i2;
import w.j2;
import w.m2;
import w.t1;
import x0.b1;
import x0.k0;

/* loaded from: classes.dex */
public final class e extends s implements View.OnKeyListener, PopupWindow.OnDismissListener {
    public t A;
    public boolean B;

    /* renamed from: b, reason: collision with root package name */
    public final Context f16199b;

    /* renamed from: c, reason: collision with root package name */
    public final int f16200c;

    /* renamed from: d, reason: collision with root package name */
    public final int f16201d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f16202e;

    /* renamed from: f, reason: collision with root package name */
    public final Handler f16203f;

    /* renamed from: i, reason: collision with root package name */
    public final c2 f16206i;

    /* renamed from: j, reason: collision with root package name */
    public final q7.o f16207j;

    /* renamed from: n, reason: collision with root package name */
    public View f16210n;

    /* renamed from: p, reason: collision with root package name */
    public View f16211p;

    /* renamed from: q, reason: collision with root package name */
    public int f16212q;
    public boolean r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f16213s;

    /* renamed from: t, reason: collision with root package name */
    public int f16214t;

    /* renamed from: v, reason: collision with root package name */
    public int f16215v;

    /* renamed from: x, reason: collision with root package name */
    public boolean f16217x;

    /* renamed from: y, reason: collision with root package name */
    public w f16218y;
    public ViewTreeObserver z;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f16204g = new ArrayList();

    /* renamed from: h, reason: collision with root package name */
    public final ArrayList f16205h = new ArrayList();

    /* renamed from: k, reason: collision with root package name */
    public final i1 f16208k = new i1(26, this);
    public int l = 0;

    /* renamed from: m, reason: collision with root package name */
    public int f16209m = 0;

    /* renamed from: w, reason: collision with root package name */
    public boolean f16216w = false;

    public e(Context context, View view, int i10, boolean z) {
        this.f16206i = new c2(i, this);
        this.f16207j = new q7.o(i, this);
        this.f16199b = context;
        this.f16210n = view;
        this.f16201d = i10;
        this.f16202e = z;
        WeakHashMap weakHashMap = b1.f17953a;
        this.f16212q = k0.d(view) == 1 ? 0 : 1;
        Resources resources = context.getResources();
        this.f16200c = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.f16203f = new Handler();
    }

    @Override // v.x
    public final void a(k kVar, boolean z) {
        ArrayList arrayList = this.f16205h;
        int size = arrayList.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                i10 = -1;
                break;
            } else if (kVar == ((d) arrayList.get(i10)).f16197b) {
                break;
            } else {
                i10++;
            }
        }
        if (i10 < 0) {
            return;
        }
        int i11 = i10 + 1;
        if (i11 < arrayList.size()) {
            ((d) arrayList.get(i11)).f16197b.c(false);
        }
        d dVar = (d) arrayList.remove(i10);
        dVar.f16197b.r(this);
        boolean z4 = this.B;
        m2 m2Var = dVar.f16196a;
        if (z4) {
            if (Build.VERSION.SDK_INT >= 23) {
                i2.b(m2Var.B, null);
            }
            m2Var.B.setAnimationStyle(0);
        }
        m2Var.dismiss();
        int size2 = arrayList.size();
        if (size2 > 0) {
            this.f16212q = ((d) arrayList.get(size2 - 1)).f16198c;
        } else {
            View view = this.f16210n;
            WeakHashMap weakHashMap = b1.f17953a;
            this.f16212q = k0.d(view) == 1 ? 0 : 1;
        }
        if (size2 != 0) {
            if (z) {
                ((d) arrayList.get(0)).f16197b.c(false);
                return;
            }
            return;
        }
        dismiss();
        w wVar = this.f16218y;
        if (wVar != null) {
            wVar.a(kVar, true);
        }
        ViewTreeObserver viewTreeObserver = this.z;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.z.removeGlobalOnLayoutListener(this.f16206i);
            }
            this.z = null;
        }
        this.f16211p.removeOnAttachStateChangeListener(this.f16207j);
        this.A.onDismiss();
    }

    @Override // v.b0
    public final boolean b() {
        ArrayList arrayList = this.f16205h;
        return arrayList.size() > 0 && ((d) arrayList.get(0)).f16196a.B.isShowing();
    }

    @Override // v.x
    public final void c(w wVar) {
        this.f16218y = wVar;
    }

    @Override // v.x
    public final boolean d() {
        return false;
    }

    @Override // v.b0
    public final void dismiss() {
        ArrayList arrayList = this.f16205h;
        int size = arrayList.size();
        if (size > 0) {
            d[] dVarArr = (d[]) arrayList.toArray(new d[size]);
            for (int i10 = size - 1; i10 >= 0; i10--) {
                d dVar = dVarArr[i10];
                if (dVar.f16196a.B.isShowing()) {
                    dVar.f16196a.dismiss();
                }
            }
        }
    }

    @Override // v.x
    public final void g() {
        Iterator it = this.f16205h.iterator();
        while (it.hasNext()) {
            ListAdapter adapter = ((d) it.next()).f16196a.f17070c.getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                adapter = ((HeaderViewListAdapter) adapter).getWrappedAdapter();
            }
            ((h) adapter).notifyDataSetChanged();
        }
    }

    @Override // v.b0
    public final t1 h() {
        ArrayList arrayList = this.f16205h;
        if (arrayList.isEmpty()) {
            return null;
        }
        return ((d) ta.q.h(1, arrayList)).f16196a.f17070c;
    }

    @Override // v.x
    public final boolean j(d0 d0Var) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Iterator it = this.f16205h.iterator();
        while (it.hasNext()) {
            d dVar = (d) it.next();
            if (d0Var == dVar.f16197b) {
                dVar.f16196a.f17070c.requestFocus();
                return true;
            }
        }
        if (!d0Var.hasVisibleItems()) {
            return false;
        }
        k(d0Var);
        w wVar = this.f16218y;
        if (wVar != null) {
            wVar.d(d0Var);
        }
        return true;
    }

    @Override // v.s
    public final void k(k kVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        kVar.b(this, this.f16199b);
        if (b()) {
            u(kVar);
        } else {
            this.f16204g.add(kVar);
        }
    }

    @Override // v.s
    public final void m(View view) {
        if (this.f16210n != view) {
            this.f16210n = view;
            int i10 = this.l;
            WeakHashMap weakHashMap = b1.f17953a;
            this.f16209m = Gravity.getAbsoluteGravity(i10, k0.d(view));
        }
    }

    @Override // v.s
    public final void n(boolean z) {
        this.f16216w = z;
    }

    @Override // v.s
    public final void o(int i10) {
        if (this.l != i10) {
            this.l = i10;
            View view = this.f16210n;
            WeakHashMap weakHashMap = b1.f17953a;
            this.f16209m = Gravity.getAbsoluteGravity(i10, k0.d(view));
        }
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        d dVar;
        ArrayList arrayList = this.f16205h;
        int size = arrayList.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                dVar = null;
                break;
            }
            dVar = (d) arrayList.get(i10);
            if (!dVar.f16196a.B.isShowing()) {
                break;
            } else {
                i10++;
            }
        }
        if (dVar != null) {
            dVar.f16197b.c(false);
        }
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i10, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i10 != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // v.s
    public final void p(int i10) {
        this.r = true;
        this.f16214t = i10;
    }

    @Override // v.s
    public final void q(PopupWindow.OnDismissListener onDismissListener) {
        this.A = (t) onDismissListener;
    }

    @Override // v.s
    public final void r(boolean z) {
        this.f16217x = z;
    }

    @Override // v.s
    public final void s(int i10) {
        this.f16213s = true;
        this.f16215v = i10;
    }

    @Override // v.b0
    public final void show() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (b()) {
            return;
        }
        ArrayList arrayList = this.f16204g;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            u((k) it.next());
        }
        arrayList.clear();
        View view = this.f16210n;
        this.f16211p = view;
        if (view != null) {
            boolean z = this.z == null;
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            this.z = viewTreeObserver;
            if (z) {
                viewTreeObserver.addOnGlobalLayoutListener(this.f16206i);
            }
            this.f16211p.addOnAttachStateChangeListener(this.f16207j);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0091  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void u(k kVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        View childAt;
        d dVar;
        char c7;
        int i10;
        int i11;
        MenuItem item;
        h hVar;
        int headersCount;
        int i12;
        int firstVisiblePosition;
        Context context = this.f16199b;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        h hVar2 = new h(kVar, layoutInflaterFrom, this.f16202e, R.layout.abc_cascading_menu_item_layout);
        if (!b() && this.f16216w) {
            hVar2.f16229c = true;
        } else if (b()) {
            hVar2.f16229c = s.t(kVar);
        }
        int iL = s.l(hVar2, context, this.f16200c);
        m2 m2Var = new m2(context, this.f16201d);
        w.z zVar = m2Var.B;
        m2Var.F = this.f16208k;
        m2Var.f17082q = this;
        zVar.setOnDismissListener(this);
        m2Var.f17081p = this.f16210n;
        m2Var.l = this.f16209m;
        m2Var.A = true;
        zVar.setFocusable(true);
        zVar.setInputMethodMode(2);
        m2Var.o(hVar2);
        m2Var.q(iL);
        m2Var.l = this.f16209m;
        ArrayList arrayList = this.f16205h;
        if (arrayList.size() > 0) {
            dVar = (d) ta.q.h(1, arrayList);
            k kVar2 = dVar.f16197b;
            int size = kVar2.f16238f.size();
            int i13 = 0;
            while (true) {
                if (i13 >= size) {
                    item = null;
                    break;
                }
                item = kVar2.getItem(i13);
                if (item.hasSubMenu() && kVar == item.getSubMenu()) {
                    break;
                } else {
                    i13++;
                }
            }
            if (item == null) {
                childAt = null;
            } else {
                t1 t1Var = dVar.f16196a.f17070c;
                ListAdapter adapter = t1Var.getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    headersCount = headerViewListAdapter.getHeadersCount();
                    hVar = (h) headerViewListAdapter.getWrappedAdapter();
                } else {
                    hVar = (h) adapter;
                    headersCount = 0;
                }
                int count = hVar.getCount();
                int i14 = 0;
                while (true) {
                    if (i14 >= count) {
                        i12 = -1;
                        i14 = -1;
                        break;
                    } else {
                        if (item == hVar.getItem(i14)) {
                            i12 = -1;
                            break;
                        }
                        i14++;
                    }
                }
                if (i14 != i12 && (firstVisiblePosition = (i14 + headersCount) - t1Var.getFirstVisiblePosition()) >= 0 && firstVisiblePosition < t1Var.getChildCount()) {
                    childAt = t1Var.getChildAt(firstVisiblePosition);
                }
            }
        } else {
            childAt = null;
            dVar = null;
        }
        if (childAt != null) {
            if (Build.VERSION.SDK_INT <= 28) {
                Method method = m2.G;
                if (method != null) {
                    try {
                        method.invoke(zVar, Boolean.FALSE);
                    } catch (Exception unused) {
                    }
                }
            } else {
                j2.a(zVar, false);
            }
            int i15 = Build.VERSION.SDK_INT;
            if (i15 >= 23) {
                i2.a(zVar, null);
            }
            t1 t1Var2 = ((d) ta.q.h(1, arrayList)).f16196a.f17070c;
            int[] iArr = new int[2];
            t1Var2.getLocationOnScreen(iArr);
            Rect rect = new Rect();
            this.f16211p.getWindowVisibleDisplayFrame(rect);
            int i16 = (this.f16212q != 1 ? iArr[0] - iL >= 0 : (t1Var2.getWidth() + iArr[0]) + iL > rect.right) ? 0 : 1;
            boolean z = i16 == 1;
            this.f16212q = i16;
            if (i15 >= 26) {
                m2Var.f17081p = childAt;
                i11 = 0;
                i10 = 0;
            } else {
                int[] iArr2 = new int[2];
                this.f16210n.getLocationOnScreen(iArr2);
                int[] iArr3 = new int[2];
                childAt.getLocationOnScreen(iArr3);
                if ((this.f16209m & 7) == 5) {
                    c7 = 0;
                    iArr2[0] = this.f16210n.getWidth() + iArr2[0];
                    iArr3[0] = childAt.getWidth() + iArr3[0];
                } else {
                    c7 = 0;
                }
                i10 = iArr3[c7] - iArr2[c7];
                i11 = iArr3[1] - iArr2[1];
            }
            m2Var.f17073f = (this.f16209m & 5) == 5 ? z ? i10 + iL : i10 - childAt.getWidth() : z ? i10 + childAt.getWidth() : i10 - iL;
            m2Var.f17078k = true;
            m2Var.f17077j = true;
            m2Var.j(i11);
        } else {
            if (this.r) {
                m2Var.f17073f = this.f16214t;
            }
            if (this.f16213s) {
                m2Var.j(this.f16215v);
            }
            Rect rect2 = this.f16288a;
            m2Var.z = rect2 != null ? new Rect(rect2) : null;
        }
        arrayList.add(new d(m2Var, kVar, this.f16212q));
        m2Var.show();
        t1 t1Var3 = m2Var.f17070c;
        t1Var3.setOnKeyListener(this);
        if (dVar == null && this.f16217x && kVar.f16244m != null) {
            FrameLayout frameLayout = (FrameLayout) layoutInflaterFrom.inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) t1Var3, false);
            TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
            frameLayout.setEnabled(false);
            textView.setText(kVar.f16244m);
            t1Var3.addHeaderView(frameLayout, null, false);
            m2Var.show();
        }
    }
}
