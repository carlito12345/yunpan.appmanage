package androidx.fragment.app;

import android.graphics.Rect;
import android.util.Log;
import android.view.View;

/* loaded from: classes.dex */
public final /* synthetic */ class h implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1284a = 1;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1285b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1286c;

    public /* synthetic */ h(k kVar, z1 z1Var) {
        this.f1285b = kVar;
        this.f1286c = z1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1284a) {
            case 0:
                v1.g((View) this.f1285b, (Rect) this.f1286c);
                break;
            default:
                k kVar = (k) this.f1285b;
                ue.d.e(kVar, "$transitionInfo");
                z1 z1Var = (z1) this.f1286c;
                ue.d.e(z1Var, "$operation");
                kVar.a();
                if (Log.isLoggable("FragmentManager", 2)) {
                    z1Var.toString();
                    break;
                }
                break;
        }
    }

    public /* synthetic */ h(v1 v1Var, View view, Rect rect) {
        this.f1285b = view;
        this.f1286c = rect;
    }
}
