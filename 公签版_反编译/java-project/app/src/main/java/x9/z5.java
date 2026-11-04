package x9;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class z5 extends c6.g {
    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_wp_menu, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        String str = (String) obj;
        aVar.c(R.id.v_name, str);
        if (str.contains("打开")) {
            aVar.b(R.id.v_ico, R.drawable.tp_open2);
            return;
        }
        if (str.contains("安装")) {
            aVar.b(R.id.v_ico, R.drawable.tp_install);
            return;
        }
        if (str.contains("删除")) {
            aVar.b(R.id.v_ico, R.drawable.delete1);
            return;
        }
        if (str.contains("剪切")) {
            aVar.b(R.id.v_ico, R.drawable.shear3);
            return;
        }
        if (str.contains("解压")) {
            aVar.b(R.id.v_ico, R.drawable.tp_open2);
            return;
        }
        if (str.contains("压缩")) {
            aVar.b(R.id.v_ico, R.drawable.tp_rar);
            return;
        }
        if (str.contains("改名")) {
            aVar.b(R.id.v_ico, R.drawable.tp_rename1);
            return;
        }
        if (str.contains("描述")) {
            aVar.b(R.id.v_ico, R.drawable.tp_rename3);
            return;
        }
        if (str.contains("返回") || str.contains("取消")) {
            aVar.b(R.id.v_ico, R.drawable.tp_fh1);
            return;
        }
        if (str.contains("分享")) {
            aVar.b(R.id.v_ico, R.drawable.share1);
            return;
        }
        if (str.contains("移动")) {
            aVar.b(R.id.v_ico, R.drawable.tp_move2);
            return;
        }
        if (str.contains("下载")) {
            aVar.b(R.id.v_ico, R.drawable.tp_download2);
            return;
        }
        if (str.contains("上传")) {
            aVar.b(R.id.v_ico, R.drawable.tp_upload1);
            return;
        }
        if (str.contains("复制")) {
            aVar.b(R.id.v_ico, R.drawable.tp_copy1);
        } else if (str.contains("播放")) {
            aVar.b(R.id.v_ico, R.drawable.tp_bf6);
        } else if (str.contains("看图")) {
            aVar.b(R.id.v_ico, R.drawable.tp_open2);
        }
    }
}
