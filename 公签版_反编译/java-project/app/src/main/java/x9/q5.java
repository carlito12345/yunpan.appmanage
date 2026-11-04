package x9;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.WpPathBean;

/* loaded from: classes.dex */
public final class q5 extends c6.g {
    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_dir_horizontal, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        ((h6.a) viewHolder).c(R.id.v_name, ((WpPathBean) obj).name);
    }
}
