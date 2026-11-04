package androidx.recyclerview.widget;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class s extends u2 {

    /* renamed from: s, reason: collision with root package name */
    public static TimeInterpolator f2249s;

    /* renamed from: h, reason: collision with root package name */
    public final ArrayList f2250h = new ArrayList();

    /* renamed from: i, reason: collision with root package name */
    public final ArrayList f2251i = new ArrayList();

    /* renamed from: j, reason: collision with root package name */
    public final ArrayList f2252j = new ArrayList();

    /* renamed from: k, reason: collision with root package name */
    public final ArrayList f2253k = new ArrayList();
    public final ArrayList l = new ArrayList();

    /* renamed from: m, reason: collision with root package name */
    public final ArrayList f2254m = new ArrayList();

    /* renamed from: n, reason: collision with root package name */
    public final ArrayList f2255n = new ArrayList();

    /* renamed from: o, reason: collision with root package name */
    public final ArrayList f2256o = new ArrayList();

    /* renamed from: p, reason: collision with root package name */
    public final ArrayList f2257p = new ArrayList();

    /* renamed from: q, reason: collision with root package name */
    public final ArrayList f2258q = new ArrayList();
    public final ArrayList r = new ArrayList();

    public static void h(ArrayList arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((RecyclerView.ViewHolder) arrayList.get(size)).itemView.animate().cancel();
        }
    }

    @Override // androidx.recyclerview.widget.t1
    public final void d(RecyclerView.ViewHolder viewHolder) {
        View view = viewHolder.itemView;
        view.animate().cancel();
        ArrayList arrayList = this.f2252j;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (((r) arrayList.get(size)).f2241a == viewHolder) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                c(viewHolder);
                arrayList.remove(size);
            }
        }
        j(this.f2253k, viewHolder);
        if (this.f2250h.remove(viewHolder)) {
            view.setAlpha(1.0f);
            c(viewHolder);
        }
        if (this.f2251i.remove(viewHolder)) {
            view.setAlpha(1.0f);
            c(viewHolder);
        }
        ArrayList arrayList2 = this.f2255n;
        for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
            ArrayList arrayList3 = (ArrayList) arrayList2.get(size2);
            j(arrayList3, viewHolder);
            if (arrayList3.isEmpty()) {
                arrayList2.remove(size2);
            }
        }
        ArrayList arrayList4 = this.f2254m;
        for (int size3 = arrayList4.size() - 1; size3 >= 0; size3--) {
            ArrayList arrayList5 = (ArrayList) arrayList4.get(size3);
            int size4 = arrayList5.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                }
                if (((r) arrayList5.get(size4)).f2241a == viewHolder) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    c(viewHolder);
                    arrayList5.remove(size4);
                    if (arrayList5.isEmpty()) {
                        arrayList4.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        ArrayList arrayList6 = this.l;
        for (int size5 = arrayList6.size() - 1; size5 >= 0; size5--) {
            ArrayList arrayList7 = (ArrayList) arrayList6.get(size5);
            if (arrayList7.remove(viewHolder)) {
                view.setAlpha(1.0f);
                c(viewHolder);
                if (arrayList7.isEmpty()) {
                    arrayList6.remove(size5);
                }
            }
        }
        this.f2258q.remove(viewHolder);
        this.f2256o.remove(viewHolder);
        this.r.remove(viewHolder);
        this.f2257p.remove(viewHolder);
        i();
    }

    @Override // androidx.recyclerview.widget.t1
    public final void e() {
        ArrayList arrayList = this.f2252j;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            r rVar = (r) arrayList.get(size);
            View view = rVar.f2241a.itemView;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            c(rVar.f2241a);
            arrayList.remove(size);
        }
        ArrayList arrayList2 = this.f2250h;
        for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
            c((RecyclerView.ViewHolder) arrayList2.get(size2));
            arrayList2.remove(size2);
        }
        ArrayList arrayList3 = this.f2251i;
        int size3 = arrayList3.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            RecyclerView.ViewHolder viewHolder = (RecyclerView.ViewHolder) arrayList3.get(size3);
            viewHolder.itemView.setAlpha(1.0f);
            c(viewHolder);
            arrayList3.remove(size3);
        }
        ArrayList arrayList4 = this.f2253k;
        for (int size4 = arrayList4.size() - 1; size4 >= 0; size4--) {
            q qVar = (q) arrayList4.get(size4);
            RecyclerView.ViewHolder viewHolder2 = qVar.f2226a;
            if (viewHolder2 != null) {
                k(qVar, viewHolder2);
            }
            RecyclerView.ViewHolder viewHolder3 = qVar.f2227b;
            if (viewHolder3 != null) {
                k(qVar, viewHolder3);
            }
        }
        arrayList4.clear();
        if (f()) {
            ArrayList arrayList5 = this.f2254m;
            for (int size5 = arrayList5.size() - 1; size5 >= 0; size5--) {
                ArrayList arrayList6 = (ArrayList) arrayList5.get(size5);
                for (int size6 = arrayList6.size() - 1; size6 >= 0; size6--) {
                    r rVar2 = (r) arrayList6.get(size6);
                    View view2 = rVar2.f2241a.itemView;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    c(rVar2.f2241a);
                    arrayList6.remove(size6);
                    if (arrayList6.isEmpty()) {
                        arrayList5.remove(arrayList6);
                    }
                }
            }
            ArrayList arrayList7 = this.l;
            for (int size7 = arrayList7.size() - 1; size7 >= 0; size7--) {
                ArrayList arrayList8 = (ArrayList) arrayList7.get(size7);
                for (int size8 = arrayList8.size() - 1; size8 >= 0; size8--) {
                    RecyclerView.ViewHolder viewHolder4 = (RecyclerView.ViewHolder) arrayList8.get(size8);
                    viewHolder4.itemView.setAlpha(1.0f);
                    c(viewHolder4);
                    arrayList8.remove(size8);
                    if (arrayList8.isEmpty()) {
                        arrayList7.remove(arrayList8);
                    }
                }
            }
            ArrayList arrayList9 = this.f2255n;
            for (int size9 = arrayList9.size() - 1; size9 >= 0; size9--) {
                ArrayList arrayList10 = (ArrayList) arrayList9.get(size9);
                for (int size10 = arrayList10.size() - 1; size10 >= 0; size10--) {
                    q qVar2 = (q) arrayList10.get(size10);
                    RecyclerView.ViewHolder viewHolder5 = qVar2.f2226a;
                    if (viewHolder5 != null) {
                        k(qVar2, viewHolder5);
                    }
                    RecyclerView.ViewHolder viewHolder6 = qVar2.f2227b;
                    if (viewHolder6 != null) {
                        k(qVar2, viewHolder6);
                    }
                    if (arrayList10.isEmpty()) {
                        arrayList9.remove(arrayList10);
                    }
                }
            }
            h(this.f2258q);
            h(this.f2257p);
            h(this.f2256o);
            h(this.r);
            ArrayList arrayList11 = this.f2279b;
            if (arrayList11.size() > 0) {
                g.b.t(arrayList11.get(0));
                throw null;
            }
            arrayList11.clear();
        }
    }

    @Override // androidx.recyclerview.widget.t1
    public final boolean f() {
        return (this.f2251i.isEmpty() && this.f2253k.isEmpty() && this.f2252j.isEmpty() && this.f2250h.isEmpty() && this.f2257p.isEmpty() && this.f2258q.isEmpty() && this.f2256o.isEmpty() && this.r.isEmpty() && this.f2254m.isEmpty() && this.l.isEmpty() && this.f2255n.isEmpty()) ? false : true;
    }

    @Override // androidx.recyclerview.widget.u2
    public final boolean g(RecyclerView.ViewHolder viewHolder, int i10, int i11, int i12, int i13) {
        View view = viewHolder.itemView;
        int translationX = i10 + ((int) view.getTranslationX());
        int translationY = i11 + ((int) viewHolder.itemView.getTranslationY());
        l(viewHolder);
        int i14 = i12 - translationX;
        int i15 = i13 - translationY;
        if (i14 == 0 && i15 == 0) {
            c(viewHolder);
            return false;
        }
        if (i14 != 0) {
            view.setTranslationX(-i14);
        }
        if (i15 != 0) {
            view.setTranslationY(-i15);
        }
        this.f2252j.add(new r(viewHolder, translationX, translationY, i12, i13));
        return true;
    }

    public final void i() {
        if (f()) {
            return;
        }
        ArrayList arrayList = this.f2279b;
        if (arrayList.size() <= 0) {
            arrayList.clear();
        } else {
            g.b.t(arrayList.get(0));
            throw null;
        }
    }

    public final void j(ArrayList arrayList, RecyclerView.ViewHolder viewHolder) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            q qVar = (q) arrayList.get(size);
            if (k(qVar, viewHolder) && qVar.f2226a == null && qVar.f2227b == null) {
                arrayList.remove(qVar);
            }
        }
    }

    public final boolean k(q qVar, RecyclerView.ViewHolder viewHolder) {
        if (qVar.f2227b == viewHolder) {
            qVar.f2227b = null;
        } else {
            if (qVar.f2226a != viewHolder) {
                return false;
            }
            qVar.f2226a = null;
        }
        viewHolder.itemView.setAlpha(1.0f);
        viewHolder.itemView.setTranslationX(0.0f);
        viewHolder.itemView.setTranslationY(0.0f);
        c(viewHolder);
        return true;
    }

    public final void l(RecyclerView.ViewHolder viewHolder) {
        if (f2249s == null) {
            f2249s = new ValueAnimator().getInterpolator();
        }
        viewHolder.itemView.animate().setInterpolator(f2249s);
        d(viewHolder);
    }
}
