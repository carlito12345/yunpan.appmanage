package x9;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class h0 extends c6.g {
    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_wp_path, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        w3 w3Var = (w3) obj;
        aVar.c(R.id.v_name, w3Var.f18364a);
        if (w3Var.f18364a.contains("TF") || w3Var.f18364a.equals("内部存储")) {
            aVar.b(R.id.v_ico, R.drawable.tf1);
            return;
        }
        if (w3Var.f18364a.contains("拔出U盘")) {
            aVar.b(R.id.v_ico, R.drawable.tp_close_usb);
            return;
        }
        if (w3Var.f18364a.contains("盘")) {
            aVar.b(R.id.v_ico, R.drawable.upan1);
        } else if (w3Var.f18364a.contains("批量")) {
            aVar.b(R.id.v_ico, R.drawable.tp_pl1);
        } else {
            aVar.b(R.id.v_ico, R.drawable.folder1);
        }
    }
}
