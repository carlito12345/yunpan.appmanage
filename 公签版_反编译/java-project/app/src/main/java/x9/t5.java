package x9;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class t5 extends c6.g {
    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_wp_down, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        u5 u5Var = (u5) obj;
        aVar.c(R.id.v_name, u5Var.f18345b);
        aVar.c(R.id.v_state, u5Var.f18346c);
        TextView textView = (TextView) aVar.a(R.id.v_error);
        if (u5Var.f18351h.isEmpty()) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
            textView.setText(u5Var.f18351h);
        }
    }
}
