package x9;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class t4 extends c6.g {
    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_set_immersed, viewGroup);
    }

    public final void F(int i10) {
        for (int i11 = 0; i11 < b(); i11++) {
            u4 u4Var = (u4) t(i11);
            if (i11 == i10) {
                if (!u4Var.f18343b) {
                    u4Var.f18343b = true;
                    e(i11);
                }
            } else if (u4Var.f18343b) {
                u4Var.f18343b = false;
                e(i11);
            }
        }
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        u4 u4Var = (u4) obj;
        aVar.c(R.id.v_name, u4Var.f18342a);
        ImageView imageView = (ImageView) aVar.a(R.id.v_ico);
        if (u4Var.f18343b) {
            imageView.setVisibility(0);
        } else {
            imageView.setVisibility(8);
        }
    }
}
