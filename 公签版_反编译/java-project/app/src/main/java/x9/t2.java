package x9;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class t2 extends c6.g implements e6.a {

    /* renamed from: h, reason: collision with root package name */
    public String f18336h = "";

    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_key_map_gn, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        z7.s sVar = (z7.s) obj;
        try {
            if (this.f18336h.isEmpty()) {
                int iE = sVar.o("keyType").e();
                String str = "";
                if (iE == 0) {
                    str = "单击操作：";
                } else if (iE == 1) {
                    str = "双击操作：";
                } else if (iE == 2) {
                    str = "长按操作：";
                } else if (iE == 3) {
                    str = "组合操作：";
                } else if (iE == -1) {
                    str = "映射操作：";
                }
                aVar.c(R.id.v_text_type, str);
            } else {
                aVar.c(R.id.v_text_type, this.f18336h);
            }
            aVar.c(R.id.v_text_content, sVar.o("name").i());
        } catch (Exception unused) {
        }
    }
}
