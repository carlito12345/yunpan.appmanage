package x9;

import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.CodeEditorTopBean;
import java.util.List;

/* loaded from: classes.dex */
public final class d1 implements c6.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ t0 f18217a;

    public d1(t0 t0Var) {
        this.f18217a = t0Var;
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
        return new e1(viewGroup);
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
        e1 e1Var = (e1) viewHolder;
        CodeEditorTopBean codeEditorTopBean = (CodeEditorTopBean) obj;
        this.f18217a.getClass();
        if (codeEditorTopBean == null) {
            return;
        }
        int i11 = codeEditorTopBean.ico;
        if (i11 == -1) {
            e1Var.c(R.id.v_name, codeEditorTopBean.name);
        } else {
            e1Var.b(R.id.v_ico, i11);
        }
    }
}
