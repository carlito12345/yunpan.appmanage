package x0;

import android.animation.ValueAnimator;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import j$.util.Objects;
import ua.i8;

/* loaded from: classes.dex */
public final class q1 implements View.OnApplyWindowInsetsListener {

    /* renamed from: a, reason: collision with root package name */
    public final g f18041a;

    /* renamed from: b, reason: collision with root package name */
    public j2 f18042b;

    public q1(View view, g gVar) {
        j2 j2VarB;
        this.f18041a = gVar;
        j2 j2VarJ = b1.j(view);
        if (j2VarJ != null) {
            int i10 = Build.VERSION.SDK_INT;
            j2VarB = (i10 >= 30 ? new z1(j2VarJ) : i10 >= 29 ? new y1(j2VarJ) : i10 >= 20 ? new x1(j2VarJ) : new a2(j2VarJ)).b();
        } else {
            j2VarB = null;
        }
        this.f18042b = j2VarB;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        g2 g2Var;
        if (!view.isLaidOut()) {
            this.f18042b = j2.h(view, windowInsets);
            return r1.i(view, windowInsets);
        }
        j2 j2VarH = j2.h(view, windowInsets);
        if (this.f18042b == null) {
            this.f18042b = b1.j(view);
        }
        if (this.f18042b == null) {
            this.f18042b = j2VarH;
            return r1.i(view, windowInsets);
        }
        g gVarJ = r1.j(view);
        if (gVarJ != null && Objects.equals((WindowInsets) gVarJ.f17983b, windowInsets)) {
            return r1.i(view, windowInsets);
        }
        j2 j2Var = this.f18042b;
        int i10 = 0;
        int i11 = 1;
        while (true) {
            g2Var = j2VarH.f18006a;
            if (i11 > 256) {
                break;
            }
            if (!g2Var.f(i11).equals(j2Var.f18006a.f(i11))) {
                i10 |= i11;
            }
            i11 <<= 1;
        }
        if (i10 == 0) {
            return r1.i(view, windowInsets);
        }
        j2 j2Var2 = this.f18042b;
        v1 v1Var = new v1(i10, (i10 & 8) != 0 ? g2Var.f(8).f12543d > j2Var2.f18006a.f(8).f12543d ? r1.f18043e : r1.f18044f : r1.f18045g, 160L);
        v1Var.f18060a.d(0.0f);
        ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(v1Var.f18060a.a());
        p0.c cVarF = g2Var.f(i10);
        p0.c cVarF2 = j2Var2.f18006a.f(i10);
        int iMin = Math.min(cVarF.f12540a, cVarF2.f12540a);
        int i12 = cVarF.f12541b;
        int i13 = cVarF2.f12541b;
        int iMin2 = Math.min(i12, i13);
        int i14 = cVarF.f12542c;
        int i15 = cVarF2.f12542c;
        int iMin3 = Math.min(i14, i15);
        int i16 = cVarF.f12543d;
        int i17 = i10;
        int i18 = cVarF2.f12543d;
        i8 i8Var = new i8(8, (Object) p0.c.b(iMin, iMin2, iMin3, Math.min(i16, i18)), (Object) p0.c.b(Math.max(cVarF.f12540a, cVarF2.f12540a), Math.max(i12, i13), Math.max(i14, i15), Math.max(i16, i18)), false);
        r1.f(view, windowInsets, false);
        duration.addUpdateListener(new p1(v1Var, j2VarH, j2Var2, i17, view));
        duration.addListener(new h4.p(v1Var, view, 2));
        a0.a(view, new com.yunpan.appmanage.util.l(view, v1Var, i8Var, duration));
        this.f18042b = j2VarH;
        return r1.i(view, windowInsets);
    }
}
