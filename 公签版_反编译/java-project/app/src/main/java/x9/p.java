package x9;

import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.bean.AppHistoryLogBean;
import java.util.List;

/* loaded from: classes.dex */
public final class p implements c6.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ n f18319a;

    public p(n nVar) {
        this.f18319a = nVar;
    }

    @Override // c6.a
    public final /* synthetic */ void a(RecyclerView.ViewHolder viewHolder, int i10, Object obj, List list) {
        android.support.v4.media.session.a.a(this, viewHolder, i10, obj, list);
    }

    @Override // c6.a
    public final void b(RecyclerView.ViewHolder viewHolder) {
    }

    @Override // c6.a
    public final void c(RecyclerView.ViewHolder viewHolder) {
    }

    @Override // c6.a
    public final RecyclerView.ViewHolder d(ViewGroup viewGroup) {
        return new s(viewGroup);
    }

    @Override // c6.a
    public final /* synthetic */ void e(RecyclerView.ViewHolder viewHolder) {
        android.support.v4.media.session.a.b(viewHolder);
    }

    @Override // c6.a
    public final void f(RecyclerView.ViewHolder viewHolder) {
    }

    @Override // c6.a
    public final boolean g() {
        return true;
    }

    @Override // c6.a
    public final void h(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        this.f18319a.H((s) viewHolder, (AppHistoryLogBean) obj);
    }
}
