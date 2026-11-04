package x0;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import j$.util.Objects;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class b2 extends g2 {

    /* renamed from: h, reason: collision with root package name */
    public static boolean f17961h = false;

    /* renamed from: i, reason: collision with root package name */
    public static Method f17962i;

    /* renamed from: j, reason: collision with root package name */
    public static Class f17963j;

    /* renamed from: k, reason: collision with root package name */
    public static Field f17964k;
    public static Field l;

    /* renamed from: c, reason: collision with root package name */
    public final WindowInsets f17965c;

    /* renamed from: d, reason: collision with root package name */
    public p0.c[] f17966d;

    /* renamed from: e, reason: collision with root package name */
    public p0.c f17967e;

    /* renamed from: f, reason: collision with root package name */
    public j2 f17968f;

    /* renamed from: g, reason: collision with root package name */
    public p0.c f17969g;

    public b2(j2 j2Var, WindowInsets windowInsets) {
        super(j2Var);
        this.f17967e = null;
        this.f17965c = windowInsets;
    }

    @SuppressLint({"WrongConstant"})
    private p0.c r(int i10, boolean z) {
        p0.c cVarA = p0.c.f12539e;
        for (int i11 = 1; i11 <= 256; i11 <<= 1) {
            if ((i10 & i11) != 0) {
                cVarA = p0.c.a(cVarA, s(i11, z));
            }
        }
        return cVarA;
    }

    private p0.c t() {
        j2 j2Var = this.f17968f;
        return j2Var != null ? j2Var.f18006a.h() : p0.c.f12539e;
    }

    private p0.c u(View view) throws IllegalAccessException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (Build.VERSION.SDK_INT >= 30) {
            throw new UnsupportedOperationException("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
        }
        if (!f17961h) {
            v();
        }
        Method method = f17962i;
        if (method != null && f17963j != null && f17964k != null) {
            try {
                Object objInvoke = method.invoke(view, null);
                if (objInvoke == null) {
                    return null;
                }
                Rect rect = (Rect) f17964k.get(l.get(objInvoke));
                if (rect != null) {
                    return p0.c.b(rect.left, rect.top, rect.right, rect.bottom);
                }
                return null;
            } catch (ReflectiveOperationException e7) {
                e7.getMessage();
            }
        }
        return null;
    }

    @SuppressLint({"PrivateApi"})
    private static void v() throws ClassNotFoundException, SecurityException {
        try {
            f17962i = View.class.getDeclaredMethod("getViewRootImpl", null);
            Class<?> cls = Class.forName("android.view.View$AttachInfo");
            f17963j = cls;
            f17964k = cls.getDeclaredField("mVisibleInsets");
            l = Class.forName("android.view.ViewRootImpl").getDeclaredField("mAttachInfo");
            f17964k.setAccessible(true);
            l.setAccessible(true);
        } catch (ReflectiveOperationException e7) {
            e7.getMessage();
        }
        f17961h = true;
    }

    @Override // x0.g2
    public void d(View view) throws IllegalAccessException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        p0.c cVarU = u(view);
        if (cVarU == null) {
            cVarU = p0.c.f12539e;
        }
        w(cVarU);
    }

    @Override // x0.g2
    public boolean equals(Object obj) {
        if (super.equals(obj)) {
            return Objects.equals(this.f17969g, ((b2) obj).f17969g);
        }
        return false;
    }

    @Override // x0.g2
    public p0.c f(int i10) {
        return r(i10, false);
    }

    @Override // x0.g2
    public final p0.c j() {
        if (this.f17967e == null) {
            this.f17967e = p0.c.b(this.f17965c.getSystemWindowInsetLeft(), this.f17965c.getSystemWindowInsetTop(), this.f17965c.getSystemWindowInsetRight(), this.f17965c.getSystemWindowInsetBottom());
        }
        return this.f17967e;
    }

    @Override // x0.g2
    public j2 l(int i10, int i11, int i12, int i13) {
        j2 j2VarH = j2.h(null, this.f17965c);
        int i14 = Build.VERSION.SDK_INT;
        a2 z1Var = i14 >= 30 ? new z1(j2VarH) : i14 >= 29 ? new y1(j2VarH) : i14 >= 20 ? new x1(j2VarH) : new a2(j2VarH);
        z1Var.g(j2.e(j(), i10, i11, i12, i13));
        z1Var.e(j2.e(h(), i10, i11, i12, i13));
        return z1Var.b();
    }

    @Override // x0.g2
    public boolean n() {
        return this.f17965c.isRound();
    }

    @Override // x0.g2
    public void o(p0.c[] cVarArr) {
        this.f17966d = cVarArr;
    }

    @Override // x0.g2
    public void p(j2 j2Var) {
        this.f17968f = j2Var;
    }

    public p0.c s(int i10, boolean z) {
        p0.c cVarH;
        int i11;
        if (i10 == 1) {
            return z ? p0.c.b(0, Math.max(t().f12541b, j().f12541b), 0, 0) : p0.c.b(0, j().f12541b, 0, 0);
        }
        if (i10 == 2) {
            if (z) {
                p0.c cVarT = t();
                p0.c cVarH2 = h();
                return p0.c.b(Math.max(cVarT.f12540a, cVarH2.f12540a), 0, Math.max(cVarT.f12542c, cVarH2.f12542c), Math.max(cVarT.f12543d, cVarH2.f12543d));
            }
            p0.c cVarJ = j();
            j2 j2Var = this.f17968f;
            cVarH = j2Var != null ? j2Var.f18006a.h() : null;
            int iMin = cVarJ.f12543d;
            if (cVarH != null) {
                iMin = Math.min(iMin, cVarH.f12543d);
            }
            return p0.c.b(cVarJ.f12540a, 0, cVarJ.f12542c, iMin);
        }
        p0.c cVar = p0.c.f12539e;
        if (i10 == 8) {
            p0.c[] cVarArr = this.f17966d;
            cVarH = cVarArr != null ? cVarArr[3] : null;
            if (cVarH != null) {
                return cVarH;
            }
            p0.c cVarJ2 = j();
            p0.c cVarT2 = t();
            int i12 = cVarJ2.f12543d;
            if (i12 > cVarT2.f12543d) {
                return p0.c.b(0, 0, 0, i12);
            }
            p0.c cVar2 = this.f17969g;
            return (cVar2 == null || cVar2.equals(cVar) || (i11 = this.f17969g.f12543d) <= cVarT2.f12543d) ? cVar : p0.c.b(0, 0, 0, i11);
        }
        if (i10 == 16) {
            return i();
        }
        if (i10 == 32) {
            return g();
        }
        if (i10 == 64) {
            return k();
        }
        if (i10 != 128) {
            return cVar;
        }
        j2 j2Var2 = this.f17968f;
        k kVarE = j2Var2 != null ? j2Var2.f18006a.e() : e();
        if (kVarE == null) {
            return cVar;
        }
        int i13 = Build.VERSION.SDK_INT;
        return p0.c.b(i13 >= 28 ? j.d(kVarE.f18007a) : 0, i13 >= 28 ? j.f(kVarE.f18007a) : 0, i13 >= 28 ? j.e(kVarE.f18007a) : 0, i13 >= 28 ? j.c(kVarE.f18007a) : 0);
    }

    public void w(p0.c cVar) {
        this.f17969g = cVar;
    }
}
