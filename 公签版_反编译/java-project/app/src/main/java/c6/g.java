package c6;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.m1;
import androidx.recyclerview.widget.y2;
import com.yunpan.appmanage.R;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import je.j;
import je.r;
import ue.i;

/* loaded from: classes.dex */
public abstract class g extends m1 {

    /* renamed from: d, reason: collision with root package name */
    public List f2880d;

    /* renamed from: e, reason: collision with root package name */
    public e f2881e;

    /* renamed from: f, reason: collision with root package name */
    public f f2882f;

    /* renamed from: g, reason: collision with root package name */
    public final androidx.recyclerview.widget.f f2883g;

    public g() {
        this(null, 3);
    }

    public static void s(g gVar) {
        List listV = gVar.v();
        gVar.getClass();
        ue.d.e(listV, "list");
    }

    public void A(RecyclerView.ViewHolder viewHolder, int i10, Object obj, List list) {
        ue.d.e(list, "payloads");
        z(viewHolder, i10, obj);
    }

    public abstract RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10);

    public final void C(int i10) {
        if (i10 >= v().size()) {
            throw new IndexOutOfBoundsException(android.support.v4.media.session.a.o("position: ", i10, v().size(), ". size:"));
        }
        androidx.recyclerview.widget.f fVar = this.f2883g;
        if (fVar == null) {
            w().remove(i10);
            this.f2188a.f(i10, 1);
            s(this);
        } else {
            List list = fVar.f2104f;
            ue.d.d(list, "getCurrentList(...)");
            ArrayList arrayListN0 = j.n0(list);
            arrayListN0.remove(i10);
            fVar.b(arrayListN0, null);
        }
    }

    public final void D(int i10, Object obj) {
        ue.d.e(obj, "data");
        if (i10 >= v().size()) {
            throw new IndexOutOfBoundsException(android.support.v4.media.session.a.o("position: ", i10, v().size(), ". size:"));
        }
        androidx.recyclerview.widget.f fVar = this.f2883g;
        if (fVar == null) {
            w().set(i10, obj);
            this.f2188a.d(i10, 1);
            return;
        }
        List list = fVar.f2104f;
        ue.d.d(list, "getCurrentList(...)");
        ArrayList arrayListN0 = j.n0(list);
        arrayListN0.set(i10, obj);
        fVar.b(arrayListN0, null);
    }

    public final void E(List list) {
        androidx.recyclerview.widget.f fVar = this.f2883g;
        if (fVar != null) {
            fVar.b(list, null);
            return;
        }
        if (list == null) {
            list = r.f9870a;
        }
        s(this);
        List list2 = this.f2880d;
        this.f2880d = list;
        this.f2188a.b();
        List list3 = this.f2880d;
        ue.d.e(list2, "previousList");
        ue.d.e(list3, "currentList");
    }

    public void a(int i10, int i11) {
        y(i10, i11);
    }

    @Override // androidx.recyclerview.widget.m1
    public final int b() {
        s(this);
        List listV = v();
        ue.d.e(listV, "items");
        return listV.size();
    }

    @Override // androidx.recyclerview.widget.m1
    public final long c(int i10) {
        return i10;
    }

    @Override // androidx.recyclerview.widget.m1
    public final int d(int i10) {
        s(this);
        return u(i10, v());
    }

    @Override // androidx.recyclerview.widget.m1
    public final void f(RecyclerView recyclerView) {
        ue.d.e(recyclerView, "recyclerView");
    }

    @Override // androidx.recyclerview.widget.m1
    public final void g(RecyclerView.ViewHolder viewHolder, int i10) {
        if (viewHolder instanceof h6.b) {
            gf.g.x(((h6.b) viewHolder).f6681a);
            return;
        }
        List listV = v();
        ue.d.e(listV, "<this>");
        z(viewHolder, i10, (i10 < 0 || i10 >= listV.size()) ? null : listV.get(i10));
    }

    @Override // androidx.recyclerview.widget.m1
    public final void h(RecyclerView.ViewHolder viewHolder, int i10, List list) {
        ue.d.e(list, "payloads");
        if (list.isEmpty()) {
            g(viewHolder, i10);
        } else {
            if (viewHolder instanceof h6.b) {
                gf.g.x(((h6.b) viewHolder).f6681a);
                return;
            }
            List listV = v();
            ue.d.e(listV, "<this>");
            A(viewHolder, i10, (i10 < 0 || i10 >= listV.size()) ? null : listV.get(i10), list);
        }
    }

    @Override // androidx.recyclerview.widget.m1
    public final RecyclerView.ViewHolder i(int i10, ViewGroup viewGroup) {
        ue.d.e(viewGroup, "parent");
        if (i10 == R.id.BaseQuickAdapter_empty_view) {
            return new h6.b(viewGroup);
        }
        Context context = viewGroup.getContext();
        ue.d.d(context, "getContext(...)");
        final RecyclerView.ViewHolder viewHolderB = B(context, viewGroup, i10);
        if (this.f2881e != null) {
            viewHolderB.itemView.setOnClickListener(new c(viewHolderB, 0, this));
        }
        if (this.f2882f != null) {
            viewHolderB.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: c6.d
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    int bindingAdapterPosition = viewHolderB.getBindingAdapterPosition();
                    if (bindingAdapterPosition == -1) {
                        return false;
                    }
                    ue.d.b(view);
                    g gVar = this;
                    gVar.getClass();
                    f fVar = gVar.f2882f;
                    if (fVar != null) {
                        return fVar.c(bindingAdapterPosition, view);
                    }
                    return false;
                }
            });
        }
        return viewHolderB;
    }

    @Override // androidx.recyclerview.widget.m1
    public final void j(RecyclerView recyclerView) {
        ue.d.e(recyclerView, "recyclerView");
    }

    @Override // androidx.recyclerview.widget.m1
    public void l(RecyclerView.ViewHolder viewHolder) {
        if (((viewHolder instanceof h6.b) || x(d(viewHolder.getBindingAdapterPosition()))) && (viewHolder.itemView.getLayoutParams() instanceof y2)) {
            ViewGroup.LayoutParams layoutParams = viewHolder.itemView.getLayoutParams();
            ue.d.c(layoutParams, "null cannot be cast to non-null type androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams");
            ((y2) layoutParams).f2376b = true;
        }
    }

    public final void p(int i10, Object obj) {
        ue.d.e(obj, "data");
        if (i10 > v().size() || i10 < 0) {
            throw new IndexOutOfBoundsException(android.support.v4.media.session.a.o("position: ", i10, v().size(), ". size:"));
        }
        androidx.recyclerview.widget.f fVar = this.f2883g;
        if (fVar == null) {
            s(this);
            w().add(i10, obj);
            this.f2188a.e(i10, 1);
        } else {
            List list = fVar.f2104f;
            ue.d.d(list, "getCurrentList(...)");
            ArrayList arrayListN0 = j.n0(list);
            arrayListN0.add(obj);
            fVar.b(arrayListN0, null);
        }
    }

    public final void q(Object obj) {
        ue.d.e(obj, "data");
        androidx.recyclerview.widget.f fVar = this.f2883g;
        if (fVar == null) {
            s(this);
            if (w().add(obj)) {
                this.f2188a.e(this.f2880d.size() - 1, 1);
                return;
            }
            return;
        }
        List list = fVar.f2104f;
        ue.d.d(list, "getCurrentList(...)");
        ArrayList arrayListN0 = j.n0(list);
        arrayListN0.add(obj);
        fVar.b(arrayListN0, null);
    }

    public final void r(Collection collection) {
        ue.d.e(collection, "collection");
        if (collection.isEmpty()) {
            return;
        }
        androidx.recyclerview.widget.f fVar = this.f2883g;
        if (fVar != null) {
            List list = fVar.f2104f;
            ue.d.d(list, "getCurrentList(...)");
            ArrayList arrayListN0 = j.n0(list);
            arrayListN0.addAll(collection);
            fVar.b(arrayListN0, null);
            return;
        }
        s(this);
        int size = this.f2880d.size();
        if (w().addAll(collection)) {
            this.f2188a.e(size, collection.size());
        }
    }

    public final Object t(int i10) {
        return v().get(i10);
    }

    public int u(int i10, List list) {
        ue.d.e(list, "list");
        return 0;
    }

    public final List v() {
        List list;
        androidx.recyclerview.widget.f fVar = this.f2883g;
        return (fVar == null || (list = fVar.f2104f) == null) ? this.f2880d : list;
    }

    public final List w() {
        List list = this.f2880d;
        if (list instanceof AbstractList) {
            ue.d.c(list, "null cannot be cast to non-null type java.util.AbstractList<T of com.chad.library.adapter4.BaseQuickAdapter>");
            return (AbstractList) list;
        }
        if (!(list instanceof List) || ((list instanceof ve.a) && !(list instanceof ve.b))) {
            ArrayList arrayListN0 = j.n0(list);
            this.f2880d = arrayListN0;
            return arrayListN0;
        }
        ue.d.c(list, "null cannot be cast to non-null type kotlin.collections.MutableList<T of com.chad.library.adapter4.BaseQuickAdapter>");
        if (!(list instanceof ve.a) || (list instanceof ve.b)) {
            return list;
        }
        ClassCastException classCastException = new ClassCastException(g.b.k(list == null ? "null" : list.getClass().getName(), " cannot be cast to ", "kotlin.collections.MutableList"));
        ue.d.f(classCastException, i.class.getName());
        throw classCastException;
    }

    public boolean x(int i10) {
        return i10 == R.id.BaseQuickAdapter_empty_view;
    }

    public final void y(int i10, int i11) {
        androidx.recyclerview.widget.f fVar = this.f2883g;
        if (fVar == null) {
            if (i10 < 0 || i10 >= this.f2880d.size() || i11 < 0 || i11 >= this.f2880d.size()) {
                return;
            }
            w().add(i11, w().remove(i10));
            this.f2188a.c(i10, i11);
            return;
        }
        List list = fVar.f2104f;
        ue.d.d(list, "getCurrentList(...)");
        if ((i10 < 0 || i10 >= list.size()) && (i11 < 0 || i11 >= list.size())) {
            return;
        }
        ArrayList arrayListN0 = j.n0(list);
        arrayListN0.add(i11, arrayListN0.remove(i10));
        fVar.b(arrayListN0, null);
    }

    public abstract void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj);

    public g(List list, int i10) {
        list = (i10 & 1) != 0 ? r.f9870a : list;
        ue.d.e(list, "_items");
        this.f2880d = list;
        this.f2883g = null;
    }

    @Override // androidx.recyclerview.widget.m1
    public void m(RecyclerView.ViewHolder viewHolder) {
    }
}
