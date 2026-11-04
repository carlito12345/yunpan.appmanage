package q;

import android.view.View;
import android.view.Window;
import java.lang.reflect.InvocationTargetException;
import w.k1;
import w.u1;
import x0.b1;
import x0.j2;

/* loaded from: classes.dex */
public final class p implements x0.x, u1, k1, v.w {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12889a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ a0 f12890b;

    public /* synthetic */ p(a0 a0Var, int i10) {
        this.f12889a = i10;
        this.f12890b = a0Var;
    }

    @Override // v.w
    public void a(v.k kVar, boolean z) {
        z zVar;
        switch (this.f12889a) {
            case 3:
                this.f12890b.p(kVar);
                break;
            default:
                v.k kVarK = kVar.k();
                int i10 = 0;
                boolean z4 = kVarK != kVar;
                if (z4) {
                    kVar = kVarK;
                }
                a0 a0Var = this.f12890b;
                z[] zVarArr = a0Var.O;
                int length = zVarArr != null ? zVarArr.length : 0;
                while (true) {
                    if (i10 >= length) {
                        zVar = null;
                    } else {
                        zVar = zVarArr[i10];
                        if (zVar == null || zVar.f12909h != kVar) {
                            i10++;
                        }
                    }
                }
                if (zVar != null) {
                    if (!z4) {
                        a0Var.q(zVar, z);
                        break;
                    } else {
                        a0Var.o(zVar.f12902a, zVar, kVarK);
                        a0Var.q(zVar, true);
                        break;
                    }
                }
                break;
        }
    }

    @Override // v.w
    public boolean d(v.k kVar) {
        Window.Callback callback;
        switch (this.f12889a) {
            case 3:
                Window.Callback callback2 = this.f12890b.l.getCallback();
                if (callback2 != null) {
                    callback2.onMenuOpened(108, kVar);
                    break;
                }
                break;
            default:
                if (kVar == kVar.k()) {
                    a0 a0Var = this.f12890b;
                    if (a0Var.H && (callback = a0Var.l.getCallback()) != null && !a0Var.V) {
                        callback.onMenuOpened(108, kVar);
                        break;
                    }
                }
                break;
        }
        return true;
    }

    @Override // x0.x
    public j2 z(View view, j2 j2Var) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        int iD = j2Var.d();
        int I = this.f12890b.I(j2Var, null);
        if (iD != I) {
            j2Var = j2Var.f(j2Var.b(), I, j2Var.c(), j2Var.a());
        }
        return b1.q(view, j2Var);
    }
}
