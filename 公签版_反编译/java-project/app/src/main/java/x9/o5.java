package x9;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class o5 extends c6.g {
    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_wp_path, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        n5 n5Var = (n5) obj;
        aVar.c(R.id.v_name, n5Var.f18291b);
        int i11 = n5Var.f18290a;
        if (i11 == 0) {
            aVar.b(R.id.v_ico, R.drawable.add1);
            return;
        }
        if (i11 == 1) {
            aVar.b(R.id.v_ico, R.drawable.tp_lzy);
            return;
        }
        if (i11 == 2) {
            aVar.b(R.id.v_ico, R.drawable.tp_123);
            return;
        }
        if (i11 == 3) {
            aVar.b(R.id.v_ico, R.drawable.tp_smb1);
            return;
        }
        if (i11 == 4 || i11 == 5) {
            aVar.b(R.id.v_ico, R.drawable.tp_ftp1);
            return;
        }
        if (i11 == 6) {
            aVar.b(R.id.v_ico, R.drawable.tp_sftp1);
            return;
        }
        if (i11 == 7) {
            aVar.b(R.id.v_ico, R.drawable.tp_web1);
            return;
        }
        if (i11 == 20) {
            aVar.b(R.id.v_ico, R.drawable.tp_wp2);
        } else if (i11 == 21) {
            aVar.b(R.id.v_ico, R.drawable.tp_gy1);
        } else {
            aVar.b(R.id.v_ico, R.drawable.folder1);
        }
    }
}
