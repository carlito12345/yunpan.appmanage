package androidx.fragment.app;

import java.util.ArrayList;
import java.util.Map;

/* loaded from: classes.dex */
public final class t0 implements androidx.activity.result.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1398a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d1 f1399b;

    public /* synthetic */ t0(d1 d1Var, int i10) {
        this.f1398a = i10;
        this.f1399b = d1Var;
    }

    @Override // androidx.activity.result.b
    public final void a(Object obj) {
        switch (this.f1398a) {
            case 0:
                Map map = (Map) obj;
                String[] strArr = (String[]) map.keySet().toArray(new String[0]);
                ArrayList arrayList = new ArrayList(map.values());
                int[] iArr = new int[arrayList.size()];
                for (int i10 = 0; i10 < arrayList.size(); i10++) {
                    iArr[i10] = ((Boolean) arrayList.get(i10)).booleanValue() ? 0 : -1;
                }
                d1 d1Var = this.f1399b;
                a1 a1Var = (a1) d1Var.C.pollFirst();
                if (a1Var != null) {
                    Fragment fragmentC = d1Var.f1231c.c(a1Var.f1194a);
                    if (fragmentC != null) {
                        fragmentC.onRequestPermissionsResult(a1Var.f1195b, strArr, iArr);
                        break;
                    }
                }
                break;
            case 1:
                androidx.activity.result.a aVar = (androidx.activity.result.a) obj;
                d1 d1Var2 = this.f1399b;
                a1 a1Var2 = (a1) d1Var2.C.pollLast();
                if (a1Var2 != null) {
                    Fragment fragmentC2 = d1Var2.f1231c.c(a1Var2.f1194a);
                    if (fragmentC2 != null) {
                        fragmentC2.onActivityResult(a1Var2.f1195b, aVar.f833a, aVar.f834b);
                        break;
                    }
                }
                break;
            default:
                androidx.activity.result.a aVar2 = (androidx.activity.result.a) obj;
                d1 d1Var3 = this.f1399b;
                a1 a1Var3 = (a1) d1Var3.C.pollFirst();
                if (a1Var3 != null) {
                    Fragment fragmentC3 = d1Var3.f1231c.c(a1Var3.f1194a);
                    if (fragmentC3 != null) {
                        fragmentC3.onActivityResult(a1Var3.f1195b, aVar2.f833a, aVar2.f834b);
                        break;
                    }
                }
                break;
        }
    }
}
