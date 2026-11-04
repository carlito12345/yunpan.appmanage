package ha;

import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final /* synthetic */ class y0 implements ea.b, ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g1 f8073a;

    public /* synthetic */ y0(g1 g1Var) {
        this.f8073a = g1Var;
    }

    @Override // ea.b
    public void f(boolean z) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        g1.a(this.f8073a, z);
    }

    @Override // ec.d
    public void g(mc.b bVar) {
        g1 g1Var = this.f8073a;
        g1Var.getClass();
        try {
            g1.c(g1Var.f6725b, g1Var.f7089x);
        } catch (Exception e7) {
            com.yunpan.appmanage.util.a0.u("报错：" + e7.getMessage());
        }
        bVar.b();
    }
}
