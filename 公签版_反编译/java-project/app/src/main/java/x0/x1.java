package x0;

import android.graphics.Rect;
import android.view.WindowInsets;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public final class x1 extends a2 {

    /* renamed from: e, reason: collision with root package name */
    public static Field f18065e = null;

    /* renamed from: f, reason: collision with root package name */
    public static boolean f18066f = false;

    /* renamed from: g, reason: collision with root package name */
    public static Constructor f18067g = null;

    /* renamed from: h, reason: collision with root package name */
    public static boolean f18068h = false;

    /* renamed from: c, reason: collision with root package name */
    public WindowInsets f18069c;

    /* renamed from: d, reason: collision with root package name */
    public p0.c f18070d;

    public x1() {
        this.f18069c = i();
    }

    private static WindowInsets i() {
        if (!f18066f) {
            try {
                f18065e = WindowInsets.class.getDeclaredField("CONSUMED");
            } catch (ReflectiveOperationException unused) {
            }
            f18066f = true;
        }
        Field field = f18065e;
        if (field != null) {
            try {
                WindowInsets windowInsets = (WindowInsets) field.get(null);
                if (windowInsets != null) {
                    return new WindowInsets(windowInsets);
                }
            } catch (ReflectiveOperationException unused2) {
            }
        }
        if (!f18068h) {
            try {
                f18067g = WindowInsets.class.getConstructor(Rect.class);
            } catch (ReflectiveOperationException unused3) {
            }
            f18068h = true;
        }
        Constructor constructor = f18067g;
        if (constructor != null) {
            try {
                return (WindowInsets) constructor.newInstance(new Rect());
            } catch (ReflectiveOperationException unused4) {
            }
        }
        return null;
    }

    @Override // x0.a2
    public j2 b() {
        a();
        j2 j2VarH = j2.h(null, this.f18069c);
        p0.c[] cVarArr = this.f17952b;
        g2 g2Var = j2VarH.f18006a;
        g2Var.o(cVarArr);
        g2Var.q(this.f18070d);
        return j2VarH;
    }

    @Override // x0.a2
    public void e(p0.c cVar) {
        this.f18070d = cVar;
    }

    @Override // x0.a2
    public void g(p0.c cVar) {
        WindowInsets windowInsets = this.f18069c;
        if (windowInsets != null) {
            this.f18069c = windowInsets.replaceSystemWindowInsets(cVar.f12540a, cVar.f12541b, cVar.f12542c, cVar.f12543d);
        }
    }

    public x1(j2 j2Var) {
        super(j2Var);
        this.f18069c = j2Var.g();
    }
}
