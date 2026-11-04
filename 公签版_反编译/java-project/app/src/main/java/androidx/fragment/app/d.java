package androidx.fragment.app;

import android.view.View;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1224a = 1;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ n f1225b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1226c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f1227d;

    public /* synthetic */ d(n nVar, View view, i iVar) {
        this.f1225b = nVar;
        this.f1226c = view;
        this.f1227d = iVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1224a) {
            case 0:
                ArrayList arrayList = (ArrayList) this.f1226c;
                z1 z1Var = (z1) this.f1227d;
                ue.d.e(this.f1225b, "this$0");
                if (arrayList.contains(z1Var)) {
                    arrayList.remove(z1Var);
                    View view = z1Var.f1438c.mView;
                    c2 c2Var = z1Var.f1436a;
                    ue.d.d(view, "view");
                    c2Var.a(view);
                    break;
                }
                break;
            default:
                n nVar = this.f1225b;
                ue.d.e(nVar, "this$0");
                i iVar = (i) this.f1227d;
                ue.d.e(iVar, "$animationInfo");
                nVar.f1350a.endViewTransition((View) this.f1226c);
                iVar.a();
                break;
        }
    }

    public /* synthetic */ d(ArrayList arrayList, z1 z1Var, n nVar) {
        this.f1226c = arrayList;
        this.f1227d = z1Var;
        this.f1225b = nVar;
    }
}
