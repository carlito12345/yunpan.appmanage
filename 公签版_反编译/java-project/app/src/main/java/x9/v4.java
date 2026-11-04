package x9;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import io.github.muntashirakon.adb.android.AdbMdns;

/* loaded from: classes.dex */
public final class v4 extends c6.g {
    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_shell, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        j1 j1Var = (j1) obj;
        aVar.c(R.id.v_name, j1Var.f18248a);
        if (j1Var.f18248a.contains("本机")) {
            aVar.b(R.id.v_ico, R.drawable.tp_wz23);
            return;
        }
        if (j1Var.f18248a.contains(AdbMdns.SERVICE_TYPE_ADB)) {
            aVar.b(R.id.v_ico, R.drawable.tp_shell);
            return;
        }
        if (j1Var.f18248a.contains("雫执行")) {
            aVar.b(R.id.v_ico, R.drawable.tp_shizuku2);
            return;
        }
        if (j1Var.f18248a.contains("扫码")) {
            aVar.b(R.id.v_ico, R.drawable.tp_sm1);
            return;
        }
        if (j1Var.f18248a.contains("历史")) {
            aVar.b(R.id.v_ico, R.drawable.tp_ls1);
            return;
        }
        if (j1Var.f18248a.contains("快捷指令")) {
            aVar.b(R.id.v_ico, R.drawable.tp_file3);
            return;
        }
        if (j1Var.f18248a.contains("激活")) {
            aVar.b(R.id.v_ico, R.drawable.suo3);
        } else if (j1Var.f18248a.contains("返回")) {
            aVar.b(R.id.v_ico, R.drawable.return1);
        } else if (j1Var.f18248a.contains("推送")) {
            aVar.b(R.id.v_ico, R.drawable.share3);
        }
    }
}
