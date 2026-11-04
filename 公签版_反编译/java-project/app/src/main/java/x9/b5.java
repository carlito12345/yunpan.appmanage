package x9;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class b5 extends c6.g {
    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_list_v, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        String str = (String) obj;
        aVar.c(R.id.v_pathName, str);
        if (str.equals("安装包")) {
            aVar.b(R.id.v_ico, R.drawable.apk);
            return;
        }
        if (str.equals("压缩包")) {
            aVar.b(R.id.v_ico, R.drawable.tp_rar);
            return;
        }
        if (str.equals("图片")) {
            aVar.b(R.id.v_ico, R.drawable.tp);
            return;
        }
        if (str.equals("视频")) {
            aVar.b(R.id.v_ico, R.drawable.tp_video1);
            return;
        }
        if (str.equals("音乐")) {
            aVar.b(R.id.v_ico, R.drawable.tp_music1);
            return;
        }
        if (str.contains("文档")) {
            aVar.b(R.id.v_ico, R.drawable.tp_txt);
            return;
        }
        if (str.contains("搜索")) {
            aVar.b(R.id.v_ico, R.drawable.search1);
            return;
        }
        if (str.equals("文件")) {
            aVar.b(R.id.v_ico, R.drawable.tp_file_wz);
            return;
        }
        if (str.equals("文件夹")) {
            aVar.b(R.id.v_ico, R.drawable.folder1);
            return;
        }
        if (str.contains(">")) {
            aVar.b(R.id.v_ico, R.drawable.search2);
        } else if (str.contains("天内")) {
            aVar.b(R.id.v_ico, R.drawable.tp_ls1);
        } else {
            aVar.b(R.id.v_ico, R.drawable.search1);
        }
    }
}
