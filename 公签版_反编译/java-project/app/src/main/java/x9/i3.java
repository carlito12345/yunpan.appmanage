package x9;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class i3 extends c6.g {
    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_root, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        w3 w3Var = (w3) obj;
        aVar.c(R.id.v_pathName, w3Var.f18364a);
        if (w3Var.f18364a.equals("全选")) {
            aVar.b(R.id.v_ico, R.drawable.check2);
            return;
        }
        if (w3Var.f18364a.contains("不选")) {
            aVar.b(R.id.v_ico, R.drawable.check1);
            return;
        }
        if (w3Var.f18364a.contains("文件")) {
            aVar.b(R.id.v_ico, R.drawable.check2);
            return;
        }
        if (w3Var.f18364a.contains("目录")) {
            aVar.b(R.id.v_ico, R.drawable.check2);
            return;
        }
        if (w3Var.f18364a.contains("应用")) {
            aVar.b(R.id.v_ico, R.drawable.check2);
            return;
        }
        if (w3Var.f18364a.contains("删除")) {
            aVar.b(R.id.v_ico, R.drawable.delete1);
            return;
        }
        if (w3Var.f18364a.contains("复制")) {
            aVar.b(R.id.v_ico, R.drawable.copy1);
            return;
        }
        if (w3Var.f18364a.contains("剪切")) {
            aVar.b(R.id.v_ico, R.drawable.shear3);
            return;
        }
        if (w3Var.f18364a.contains("安装")) {
            aVar.b(R.id.v_ico, R.drawable.tp_install);
            return;
        }
        if (w3Var.f18364a.contains("退出")) {
            aVar.b(R.id.v_ico, R.drawable.return2);
            return;
        }
        if (w3Var.f18364a.contains("传送")) {
            aVar.b(R.id.v_ico, R.drawable.share3);
        } else if (w3Var.f18364a.contains("压缩")) {
            aVar.b(R.id.v_ico, R.drawable.tp_rar);
        } else {
            aVar.b(R.id.v_ico, R.drawable.folder1);
        }
    }
}
