package h4;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.v1;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class n extends v1 {
    @Override // androidx.fragment.app.v1
    public final void a(View view, Object obj) {
        ((t) obj).b(view);
    }

    @Override // androidx.fragment.app.v1
    public final void b(Object obj, ArrayList arrayList) {
        t tVar = (t) obj;
        if (tVar == null) {
            return;
        }
        int i10 = 0;
        if (tVar instanceof y) {
            y yVar = (y) tVar;
            int size = yVar.z.size();
            while (i10 < size) {
                b((i10 < 0 || i10 >= yVar.z.size()) ? null : (t) yVar.z.get(i10), arrayList);
                i10++;
            }
            return;
        }
        if (v1.h(tVar.f6489e) && v1.h(tVar.f6490f)) {
            int size2 = arrayList.size();
            while (i10 < size2) {
                tVar.b((View) arrayList.get(i10));
                i10++;
            }
        }
    }

    @Override // androidx.fragment.app.v1
    public final void c(ViewGroup viewGroup, Object obj) {
        x.a(viewGroup, (t) obj);
    }

    @Override // androidx.fragment.app.v1
    public final boolean e(Object obj) {
        return obj instanceof t;
    }

    @Override // androidx.fragment.app.v1
    public final Object f(Object obj) {
        if (obj != null) {
            return ((t) obj).clone();
        }
        return null;
    }

    @Override // androidx.fragment.app.v1
    public final Object i(Object obj, Object obj2, Object obj3) {
        t tVar = (t) obj;
        t tVar2 = (t) obj2;
        t tVar3 = (t) obj3;
        if (tVar != null && tVar2 != null) {
            y yVar = new y();
            yVar.H(tVar);
            yVar.H(tVar2);
            yVar.A = false;
            tVar = yVar;
        } else if (tVar == null) {
            tVar = tVar2 != null ? tVar2 : null;
        }
        if (tVar3 == null) {
            return tVar;
        }
        y yVar2 = new y();
        if (tVar != null) {
            yVar2.H(tVar);
        }
        yVar2.H(tVar3);
        return yVar2;
    }

    @Override // androidx.fragment.app.v1
    public final Object j(Object obj, Object obj2) {
        y yVar = new y();
        if (obj != null) {
            yVar.H((t) obj);
        }
        yVar.H((t) obj2);
        return yVar;
    }

    @Override // androidx.fragment.app.v1
    public final void k(Object obj, View view, ArrayList arrayList) {
        ((t) obj).a(new k(view, arrayList));
    }

    @Override // androidx.fragment.app.v1
    public final void l(Object obj, Object obj2, ArrayList arrayList, Object obj3, ArrayList arrayList2) {
        ((t) obj).a(new l(this, obj2, arrayList, obj3, arrayList2));
    }

    @Override // androidx.fragment.app.v1
    public final void m(View view, Object obj) {
        if (view != null) {
            v1.g(view, new Rect());
            ((t) obj).A(new j());
        }
    }

    @Override // androidx.fragment.app.v1
    public final void n(Object obj, Rect rect) {
        ((t) obj).A(new j());
    }

    @Override // androidx.fragment.app.v1
    public final void o(Object obj, t0.g gVar, androidx.fragment.app.h hVar) {
        t tVar = (t) obj;
        gVar.a(new a1.i(26, tVar));
        tVar.a(new m(hVar));
    }

    @Override // androidx.fragment.app.v1
    public final void p(Object obj, View view, ArrayList arrayList) {
        y yVar = (y) obj;
        ArrayList arrayList2 = yVar.f6490f;
        arrayList2.clear();
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            v1.d((View) arrayList.get(i10), arrayList2);
        }
        arrayList2.add(view);
        arrayList.add(view);
        b(yVar, arrayList);
    }

    @Override // androidx.fragment.app.v1
    public final void q(Object obj, ArrayList arrayList, ArrayList arrayList2) {
        y yVar = (y) obj;
        if (yVar != null) {
            ArrayList arrayList3 = yVar.f6490f;
            arrayList3.clear();
            arrayList3.addAll(arrayList2);
            s(yVar, arrayList, arrayList2);
        }
    }

    @Override // androidx.fragment.app.v1
    public final Object r(Object obj) {
        if (obj == null) {
            return null;
        }
        y yVar = new y();
        yVar.H((t) obj);
        return yVar;
    }

    public final void s(Object obj, ArrayList arrayList, ArrayList arrayList2) {
        t tVar = (t) obj;
        int i10 = 0;
        if (tVar instanceof y) {
            y yVar = (y) tVar;
            int size = yVar.z.size();
            while (i10 < size) {
                s((i10 < 0 || i10 >= yVar.z.size()) ? null : (t) yVar.z.get(i10), arrayList, arrayList2);
                i10++;
            }
            return;
        }
        if (v1.h(tVar.f6489e)) {
            ArrayList arrayList3 = tVar.f6490f;
            if (arrayList3.size() == arrayList.size() && arrayList3.containsAll(arrayList)) {
                int size2 = arrayList2 == null ? 0 : arrayList2.size();
                while (i10 < size2) {
                    tVar.b((View) arrayList2.get(i10));
                    i10++;
                }
                for (int size3 = arrayList.size() - 1; size3 >= 0; size3--) {
                    tVar.w((View) arrayList.get(size3));
                }
            }
        }
    }
}
