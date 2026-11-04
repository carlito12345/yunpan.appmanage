package x9;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class s1 extends c6.g {
    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_file_copy_error, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        w3 w3Var = (w3) obj;
        String str = w3Var.f18365b;
        fa.h0 h0Var = fa.g0.f5682a;
        if (str.startsWith(h0Var.d())) {
            aVar.c(R.id.v_path, w3Var.f18365b.replace(h0Var.d(), ""));
        } else if (w3Var.f18365b.startsWith("/storage/emulated/0")) {
            aVar.c(R.id.v_path, w3Var.f18365b.replace("/storage/emulated/0", ""));
        } else if (w3Var.f18365b.startsWith("/sdcard")) {
            aVar.c(R.id.v_path, w3Var.f18365b.replace("/sdcard", ""));
        } else {
            aVar.c(R.id.v_path, w3Var.f18365b);
        }
        aVar.c(R.id.v_state, "失败原因：" + w3Var.f18373j);
    }
}
