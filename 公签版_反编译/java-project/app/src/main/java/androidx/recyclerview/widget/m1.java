package androidx.recyclerview.widget;

import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;

/* loaded from: classes.dex */
public abstract class m1 {

    /* renamed from: a, reason: collision with root package name */
    public final n1 f2188a = new n1();

    /* renamed from: b, reason: collision with root package name */
    public boolean f2189b = false;

    /* renamed from: c, reason: collision with root package name */
    public final int f2190c = 1;

    public abstract int b();

    public long c(int i10) {
        return -1L;
    }

    public int d(int i10) {
        return 0;
    }

    public final void e(int i10) {
        this.f2188a.d(i10, 1);
    }

    public void f(RecyclerView recyclerView) {
    }

    public abstract void g(RecyclerView.ViewHolder viewHolder, int i10);

    public void h(RecyclerView.ViewHolder viewHolder, int i10, List list) {
        g(viewHolder, i10);
    }

    public abstract RecyclerView.ViewHolder i(int i10, ViewGroup viewGroup);

    public void j(RecyclerView recyclerView) {
    }

    public boolean k(RecyclerView.ViewHolder viewHolder) {
        return false;
    }

    public void l(RecyclerView.ViewHolder viewHolder) {
    }

    public void m(RecyclerView.ViewHolder viewHolder) {
    }

    public void n(RecyclerView.ViewHolder viewHolder) {
    }

    public final void o(o1 o1Var) {
        this.f2188a.registerObserver(o1Var);
    }
}
