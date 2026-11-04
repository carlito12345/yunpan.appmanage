package w;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.ActionMenuView;
import com.yunpan.appmanage.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class j implements v.x {

    /* renamed from: a, reason: collision with root package name */
    public final Context f17108a;

    /* renamed from: b, reason: collision with root package name */
    public Context f17109b;

    /* renamed from: c, reason: collision with root package name */
    public v.k f17110c;

    /* renamed from: d, reason: collision with root package name */
    public final LayoutInflater f17111d;

    /* renamed from: e, reason: collision with root package name */
    public v.w f17112e;

    /* renamed from: h, reason: collision with root package name */
    public v.z f17115h;

    /* renamed from: i, reason: collision with root package name */
    public h f17116i;

    /* renamed from: j, reason: collision with root package name */
    public Drawable f17117j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f17118k;
    public boolean l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f17119m;

    /* renamed from: n, reason: collision with root package name */
    public int f17120n;

    /* renamed from: p, reason: collision with root package name */
    public int f17121p;

    /* renamed from: q, reason: collision with root package name */
    public int f17122q;
    public boolean r;

    /* renamed from: t, reason: collision with root package name */
    public e f17124t;

    /* renamed from: v, reason: collision with root package name */
    public e f17125v;

    /* renamed from: w, reason: collision with root package name */
    public g f17126w;

    /* renamed from: x, reason: collision with root package name */
    public f f17127x;

    /* renamed from: f, reason: collision with root package name */
    public final int f17113f = R.layout.abc_action_menu_layout;

    /* renamed from: g, reason: collision with root package name */
    public final int f17114g = R.layout.abc_action_menu_item_layout;

    /* renamed from: s, reason: collision with root package name */
    public final SparseBooleanArray f17123s = new SparseBooleanArray();

    /* renamed from: y, reason: collision with root package name */
    public final i f17128y = new i(0, this);

    public j(Context context) {
        this.f17108a = context;
        this.f17111d = LayoutInflater.from(context);
    }

    @Override // v.x
    public final void a(v.k kVar, boolean z) {
        h();
        e eVar = this.f17125v;
        if (eVar != null && eVar.b()) {
            eVar.f16298i.dismiss();
        }
        v.w wVar = this.f17112e;
        if (wVar != null) {
            wVar.a(kVar, z);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r5v4, types: [v.y] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    public final View b(v.m mVar, View view, ViewGroup viewGroup) {
        View actionView = mVar.getActionView();
        if (actionView == null || mVar.e()) {
            ActionMenuItemView actionMenuItemView = view instanceof v.y ? (v.y) view : (v.y) this.f17111d.inflate(this.f17114g, viewGroup, false);
            actionMenuItemView.c(mVar);
            ActionMenuItemView actionMenuItemView2 = actionMenuItemView;
            actionMenuItemView2.setItemInvoker((ActionMenuView) this.f17115h);
            if (this.f17127x == null) {
                this.f17127x = new f(this);
            }
            actionMenuItemView2.setPopupCallback(this.f17127x);
            actionView = actionMenuItemView;
        }
        actionView.setVisibility(mVar.E ? 8 : 0);
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        ((ActionMenuView) viewGroup).getClass();
        if (!(layoutParams instanceof l)) {
            actionView.setLayoutParams(ActionMenuView.l(layoutParams));
        }
        return actionView;
    }

    @Override // v.x
    public final void c(v.w wVar) {
        throw null;
    }

    @Override // v.x
    public final boolean d() {
        ArrayList arrayListL;
        int size;
        int i10;
        boolean z;
        v.k kVar = this.f17110c;
        if (kVar != null) {
            arrayListL = kVar.l();
            size = arrayListL.size();
        } else {
            arrayListL = null;
            size = 0;
        }
        int i11 = this.f17122q;
        int i12 = this.f17121p;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) this.f17115h;
        int i13 = 0;
        boolean z4 = false;
        int i14 = 0;
        int i15 = 0;
        while (true) {
            i10 = 2;
            z = true;
            if (i13 >= size) {
                break;
            }
            v.m mVar = (v.m) arrayListL.get(i13);
            int i16 = mVar.A;
            if ((i16 & 2) == 2) {
                i14++;
            } else if ((i16 & 1) == 1) {
                i15++;
            } else {
                z4 = true;
            }
            if (this.r && mVar.E) {
                i11 = 0;
            }
            i13++;
        }
        if (this.l && (z4 || i15 + i14 > i11)) {
            i11--;
        }
        int i17 = i11 - i14;
        SparseBooleanArray sparseBooleanArray = this.f17123s;
        sparseBooleanArray.clear();
        int i18 = 0;
        int i19 = 0;
        while (i18 < size) {
            v.m mVar2 = (v.m) arrayListL.get(i18);
            int i20 = mVar2.A;
            boolean z10 = (i20 & 2) == i10;
            int i21 = mVar2.f16258b;
            if (z10) {
                View viewB = b(mVar2, null, viewGroup);
                viewB.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                int measuredWidth = viewB.getMeasuredWidth();
                i12 -= measuredWidth;
                if (i19 == 0) {
                    i19 = measuredWidth;
                }
                if (i21 != 0) {
                    sparseBooleanArray.put(i21, z);
                }
                mVar2.g(z);
            } else if ((i20 & 1) == z) {
                boolean z11 = sparseBooleanArray.get(i21);
                boolean z12 = (i17 > 0 || z11) && i12 > 0;
                if (z12) {
                    View viewB2 = b(mVar2, null, viewGroup);
                    viewB2.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                    int measuredWidth2 = viewB2.getMeasuredWidth();
                    i12 -= measuredWidth2;
                    if (i19 == 0) {
                        i19 = measuredWidth2;
                    }
                    z12 &= i12 + i19 > 0;
                }
                if (z12 && i21 != 0) {
                    sparseBooleanArray.put(i21, true);
                } else if (z11) {
                    sparseBooleanArray.put(i21, false);
                    for (int i22 = 0; i22 < i18; i22++) {
                        v.m mVar3 = (v.m) arrayListL.get(i22);
                        if (mVar3.f16258b == i21) {
                            if (mVar3.f()) {
                                i17++;
                            }
                            mVar3.g(false);
                        }
                    }
                }
                if (z12) {
                    i17--;
                }
                mVar2.g(z12);
            } else {
                mVar2.g(false);
                i18++;
                i10 = 2;
                z = true;
            }
            i18++;
            i10 = 2;
            z = true;
        }
        return true;
    }

    @Override // v.x
    public final boolean e(v.m mVar) {
        return false;
    }

    @Override // v.x
    public final void f(Context context, v.k kVar) {
        this.f17109b = context;
        LayoutInflater.from(context);
        this.f17110c = kVar;
        Resources resources = context.getResources();
        if (!this.f17119m) {
            this.l = Build.VERSION.SDK_INT < 19 ? true ^ ViewConfiguration.get(context).hasPermanentMenuKey() : true;
        }
        int i10 = 2;
        this.f17120n = context.getResources().getDisplayMetrics().widthPixels / 2;
        Configuration configuration = context.getResources().getConfiguration();
        int i11 = configuration.screenWidthDp;
        int i12 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp > 600 || i11 > 600 || ((i11 > 960 && i12 > 720) || (i11 > 720 && i12 > 960))) {
            i10 = 5;
        } else if (i11 >= 500 || ((i11 > 640 && i12 > 480) || (i11 > 480 && i12 > 640))) {
            i10 = 4;
        } else if (i11 >= 360) {
            i10 = 3;
        }
        this.f17122q = i10;
        int measuredWidth = this.f17120n;
        if (this.l) {
            if (this.f17116i == null) {
                h hVar = new h(this, this.f17108a);
                this.f17116i = hVar;
                if (this.f17118k) {
                    hVar.setImageDrawable(this.f17117j);
                    this.f17117j = null;
                    this.f17118k = false;
                }
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.f17116i.measure(iMakeMeasureSpec, iMakeMeasureSpec);
            }
            measuredWidth -= this.f17116i.getMeasuredWidth();
        } else {
            this.f17116i = null;
        }
        this.f17121p = measuredWidth;
        float f10 = resources.getDisplayMetrics().density;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // v.x
    public final void g() {
        int i10;
        ViewGroup viewGroup = (ViewGroup) this.f17115h;
        ArrayList arrayList = null;
        boolean z = false;
        if (viewGroup != null) {
            v.k kVar = this.f17110c;
            if (kVar != null) {
                kVar.i();
                ArrayList arrayListL = this.f17110c.l();
                int size = arrayListL.size();
                i10 = 0;
                for (int i11 = 0; i11 < size; i11++) {
                    v.m mVar = (v.m) arrayListL.get(i11);
                    if (mVar.f()) {
                        View childAt = viewGroup.getChildAt(i10);
                        v.m itemData = childAt instanceof v.y ? ((v.y) childAt).getItemData() : null;
                        View viewB = b(mVar, childAt, viewGroup);
                        if (mVar != itemData) {
                            viewB.setPressed(false);
                            viewB.jumpDrawablesToCurrentState();
                        }
                        if (viewB != childAt) {
                            ViewGroup viewGroup2 = (ViewGroup) viewB.getParent();
                            if (viewGroup2 != null) {
                                viewGroup2.removeView(viewB);
                            }
                            ((ViewGroup) this.f17115h).addView(viewB, i10);
                        }
                        i10++;
                    }
                }
            } else {
                i10 = 0;
            }
            while (i10 < viewGroup.getChildCount()) {
                if (viewGroup.getChildAt(i10) == this.f17116i) {
                    i10++;
                } else {
                    viewGroup.removeViewAt(i10);
                }
            }
        }
        ((View) this.f17115h).requestLayout();
        v.k kVar2 = this.f17110c;
        if (kVar2 != null) {
            kVar2.i();
            ArrayList arrayList2 = kVar2.f16241i;
            int size2 = arrayList2.size();
            for (int i12 = 0; i12 < size2; i12++) {
                v.n nVar = ((v.m) arrayList2.get(i12)).C;
            }
        }
        v.k kVar3 = this.f17110c;
        if (kVar3 != null) {
            kVar3.i();
            arrayList = kVar3.f16242j;
        }
        if (this.l && arrayList != null) {
            int size3 = arrayList.size();
            if (size3 == 1) {
                z = !((v.m) arrayList.get(0)).E;
            } else if (size3 > 0) {
                z = true;
            }
        }
        if (z) {
            if (this.f17116i == null) {
                this.f17116i = new h(this, this.f17108a);
            }
            ViewGroup viewGroup3 = (ViewGroup) this.f17116i.getParent();
            if (viewGroup3 != this.f17115h) {
                if (viewGroup3 != null) {
                    viewGroup3.removeView(this.f17116i);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.f17115h;
                h hVar = this.f17116i;
                actionMenuView.getClass();
                l lVar = new l();
                ((LinearLayout.LayoutParams) lVar).gravity = 16;
                lVar.f17138a = true;
                actionMenuView.addView(hVar, lVar);
            }
        } else {
            h hVar2 = this.f17116i;
            if (hVar2 != null) {
                Object parent = hVar2.getParent();
                Object obj = this.f17115h;
                if (parent == obj) {
                    ((ViewGroup) obj).removeView(this.f17116i);
                }
            }
        }
        ((ActionMenuView) this.f17115h).setOverflowReserved(this.l);
    }

    public final boolean h() {
        Object obj;
        g gVar = this.f17126w;
        if (gVar != null && (obj = this.f17115h) != null) {
            ((View) obj).removeCallbacks(gVar);
            this.f17126w = null;
            return true;
        }
        e eVar = this.f17124t;
        if (eVar == null) {
            return false;
        }
        if (eVar.b()) {
            eVar.f16298i.dismiss();
        }
        return true;
    }

    @Override // v.x
    public final boolean i(v.m mVar) {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // v.x
    public final boolean j(v.d0 d0Var) {
        boolean z;
        if (!d0Var.hasVisibleItems()) {
            return false;
        }
        v.d0 d0Var2 = d0Var;
        while (true) {
            v.k kVar = d0Var2.B;
            if (kVar == this.f17110c) {
                break;
            }
            d0Var2 = (v.d0) kVar;
        }
        ViewGroup viewGroup = (ViewGroup) this.f17115h;
        View view = null;
        if (viewGroup != null) {
            int childCount = viewGroup.getChildCount();
            int i10 = 0;
            while (true) {
                if (i10 >= childCount) {
                    break;
                }
                View childAt = viewGroup.getChildAt(i10);
                if ((childAt instanceof v.y) && ((v.y) childAt).getItemData() == d0Var2.C) {
                    view = childAt;
                    break;
                }
                i10++;
            }
        }
        if (view == null) {
            return false;
        }
        d0Var.C.getClass();
        int size = d0Var.f16238f.size();
        int i11 = 0;
        while (true) {
            if (i11 >= size) {
                z = false;
                break;
            }
            MenuItem item = d0Var.getItem(i11);
            if (item.isVisible() && item.getIcon() != null) {
                z = true;
                break;
            }
            i11++;
        }
        e eVar = new e(this, this.f17109b, d0Var, view);
        this.f17125v = eVar;
        eVar.f16296g = z;
        v.s sVar = eVar.f16298i;
        if (sVar != null) {
            sVar.n(z);
        }
        e eVar2 = this.f17125v;
        if (!eVar2.b()) {
            if (eVar2.f16294e == null) {
                throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
            }
            eVar2.d(0, 0, false, false);
        }
        v.w wVar = this.f17112e;
        if (wVar != null) {
            wVar.d(d0Var);
        }
        return true;
    }

    public final boolean k() {
        e eVar = this.f17124t;
        return eVar != null && eVar.b();
    }

    public final boolean l() {
        v.k kVar;
        if (!this.l || k() || (kVar = this.f17110c) == null || this.f17115h == null || this.f17126w != null) {
            return false;
        }
        kVar.i();
        if (kVar.f16242j.isEmpty()) {
            return false;
        }
        g gVar = new g(this, new e(this, this.f17109b, this.f17110c, this.f17116i));
        this.f17126w = gVar;
        ((View) this.f17115h).post(gVar);
        return true;
    }
}
