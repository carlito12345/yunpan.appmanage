package x9;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class n4 extends c6.g {
    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_root, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        w3 w3Var = (w3) obj;
        if (w3Var.f18364a.equals("展开") || w3Var.f18364a.equals("收起")) {
            aVar.c(R.id.v_pathName, "");
        } else {
            aVar.c(R.id.v_pathName, w3Var.f18364a);
        }
        if (w3Var.f18364a.equals("设置")) {
            aVar.b(R.id.v_ico, R.drawable.shezhi3);
            return;
        }
        if (w3Var.f18364a.equals("机型")) {
            aVar.b(R.id.v_ico, R.drawable.suo4);
            return;
        }
        if (w3Var.f18364a.equals("反馈")) {
            aVar.b(R.id.v_ico, R.drawable.fankui1);
            return;
        }
        if (w3Var.f18364a.equals("提权")) {
            aVar.b(R.id.v_ico, R.drawable.suo4);
            return;
        }
        if (w3Var.f18364a.contains("搜索")) {
            aVar.b(R.id.v_ico, R.drawable.search1);
            return;
        }
        if (w3Var.f18364a.contains("互传")) {
            aVar.b(R.id.v_ico, R.drawable.share1);
            return;
        }
        if (w3Var.f18364a.equals("新建")) {
            aVar.b(R.id.v_ico, R.drawable.add1);
            return;
        }
        if (w3Var.f18364a.equals("根")) {
            aVar.b(R.id.v_ico, R.drawable.root1);
            return;
        }
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
            return;
        }
        if (w3Var.f18364a.contains("批量")) {
            aVar.b(R.id.v_ico, R.drawable.tp_pl1);
            return;
        }
        if (w3Var.f18364a.contains("清理")) {
            aVar.b(R.id.v_ico, R.drawable.tp_cache3);
            return;
        }
        if (w3Var.f18364a.contains("删除") || w3Var.f18364a.contains("空目录")) {
            aVar.b(R.id.v_ico, R.drawable.delete1);
            return;
        }
        if (w3Var.f18364a.contains("Down")) {
            aVar.b(R.id.v_ico, R.drawable.tp_dir3);
            return;
        }
        if (w3Var.f18364a.contains("收藏")) {
            aVar.b(R.id.v_ico, R.drawable.tp_coll1);
            return;
        }
        if (w3Var.f18364a.contains("搜寻")) {
            aVar.b(R.id.v_ico, R.drawable.tp_scan2);
        } else if (w3Var.f18364a.startsWith("扫描") || w3Var.f18364a.startsWith("刷新") || w3Var.f18364a.startsWith("全盘")) {
            aVar.b(R.id.v_ico, R.drawable.tp_scan1);
        } else {
            aVar.b(R.id.v_ico, R.drawable.folder1);
        }
    }
}
