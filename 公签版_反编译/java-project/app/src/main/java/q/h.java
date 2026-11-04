package q;

import android.os.Build;
import android.view.LayoutInflater;

/* loaded from: classes.dex */
public final class h implements m.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f12841a;

    public h(i iVar) {
        this.f12841a = iVar;
    }

    @Override // m.a
    public final void a() throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        i iVar = this.f12841a;
        m mVarR = iVar.r();
        a0 a0Var = (a0) mVarR;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(a0Var.f12767k);
        if (layoutInflaterFrom.getFactory() == null) {
            layoutInflaterFrom.setFactory2(a0Var);
            if (Build.VERSION.SDK_INT < 21) {
                LayoutInflater.Factory factory = layoutInflaterFrom.getFactory();
                if (factory instanceof LayoutInflater.Factory2) {
                    com.bumptech.glide.c.v(layoutInflaterFrom, (LayoutInflater.Factory2) factory);
                } else {
                    com.bumptech.glide.c.v(layoutInflaterFrom, a0Var);
                }
            }
        } else {
            boolean z = layoutInflaterFrom.getFactory2() instanceof a0;
        }
        iVar.f807e.f2550b.a("androidx:appcompat");
        mVarR.b();
    }
}
