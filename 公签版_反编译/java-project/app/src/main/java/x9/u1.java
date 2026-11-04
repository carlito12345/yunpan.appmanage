package x9;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class u1 extends c6.g {
    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_file_multi, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        w3 w3Var = (w3) obj;
        aVar.b(R.id.v_ico, w3Var.f18366c ? R.drawable.folder1 : R.drawable.tp_file1);
        aVar.c(R.id.v_name, w3Var.f18364a);
        aVar.c(R.id.v_state, w3Var.f18373j);
    }
}
