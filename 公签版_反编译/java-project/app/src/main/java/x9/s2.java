package x9;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class s2 extends c6.g implements e6.a {
    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_key_map, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        z7.s sVar = (z7.s) obj;
        boolean zB = sVar.f19480a.containsKey("isOpen") ? sVar.o("isOpen").b() : true;
        aVar.c(R.id.v_name, sVar.o("name").i());
        aVar.d(R.id.v_view, !zB);
    }
}
