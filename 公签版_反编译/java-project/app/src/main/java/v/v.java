package v;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.Display;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import com.yunpan.appmanage.R;
import java.util.WeakHashMap;
import x0.b1;
import x0.k0;

/* loaded from: classes.dex */
public class v {

    /* renamed from: a, reason: collision with root package name */
    public final Context f16290a;

    /* renamed from: b, reason: collision with root package name */
    public final k f16291b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f16292c;

    /* renamed from: d, reason: collision with root package name */
    public final int f16293d;

    /* renamed from: e, reason: collision with root package name */
    public View f16294e;

    /* renamed from: g, reason: collision with root package name */
    public boolean f16296g;

    /* renamed from: h, reason: collision with root package name */
    public w f16297h;

    /* renamed from: i, reason: collision with root package name */
    public s f16298i;

    /* renamed from: j, reason: collision with root package name */
    public t f16299j;

    /* renamed from: f, reason: collision with root package name */
    public int f16295f = 8388611;

    /* renamed from: k, reason: collision with root package name */
    public final t f16300k = new t(this);

    public v(int i10, Context context, View view, k kVar, boolean z) {
        this.f16290a = context;
        this.f16291b = kVar;
        this.f16294e = view;
        this.f16292c = z;
        this.f16293d = i10;
    }

    public final s a() {
        s c0Var;
        if (this.f16298i == null) {
            Context context = this.f16290a;
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            u.a(defaultDisplay, point);
            if (Math.min(point.x, point.y) >= context.getResources().getDimensionPixelSize(R.dimen.abc_cascading_menus_min_smallest_width)) {
                c0Var = new e(context, this.f16294e, this.f16293d, this.f16292c);
            } else {
                View view = this.f16294e;
                Context context2 = this.f16290a;
                boolean z = this.f16292c;
                c0Var = new c0(this.f16293d, context2, view, this.f16291b, z);
            }
            c0Var.k(this.f16291b);
            c0Var.q(this.f16300k);
            c0Var.m(this.f16294e);
            c0Var.c(this.f16297h);
            c0Var.n(this.f16296g);
            c0Var.o(this.f16295f);
            this.f16298i = c0Var;
        }
        return this.f16298i;
    }

    public final boolean b() {
        s sVar = this.f16298i;
        return sVar != null && sVar.b();
    }

    public void c() {
        this.f16298i = null;
        t tVar = this.f16299j;
        if (tVar != null) {
            tVar.onDismiss();
        }
    }

    public final void d(int i10, int i11, boolean z, boolean z4) {
        s sVarA = a();
        sVarA.r(z4);
        if (z) {
            int i12 = this.f16295f;
            View view = this.f16294e;
            WeakHashMap weakHashMap = b1.f17953a;
            if ((Gravity.getAbsoluteGravity(i12, k0.d(view)) & 7) == 5) {
                i10 -= this.f16294e.getWidth();
            }
            sVarA.p(i10);
            sVarA.s(i11);
            int i13 = (int) ((this.f16290a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            sVarA.f16288a = new Rect(i10 - i13, i11 - i13, i10 + i13, i11 + i13);
        }
        sVarA.show();
    }
}
