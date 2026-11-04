package androidx.fragment.app;

import android.view.View;
import java.util.LinkedHashSet;

/* loaded from: classes.dex */
public abstract class j {

    /* renamed from: a, reason: collision with root package name */
    public final z1 f1305a;

    /* renamed from: b, reason: collision with root package name */
    public final t0.g f1306b;

    public j(z1 z1Var, t0.g gVar) {
        this.f1305a = z1Var;
        this.f1306b = gVar;
    }

    public final void a() {
        z1 z1Var = this.f1305a;
        t0.g gVar = this.f1306b;
        LinkedHashSet linkedHashSet = z1Var.f1440e;
        if (linkedHashSet.remove(gVar) && linkedHashSet.isEmpty()) {
            z1Var.b();
        }
    }

    public final boolean b() {
        c2 c2Var;
        z1 z1Var = this.f1305a;
        View view = z1Var.f1438c.mView;
        ue.d.d(view, "operation.fragment.mView");
        c2 c2VarF = com.bumptech.glide.d.f(view);
        c2 c2Var2 = z1Var.f1436a;
        return c2VarF == c2Var2 || !(c2VarF == (c2Var = c2.VISIBLE) || c2Var2 == c2Var);
    }
}
