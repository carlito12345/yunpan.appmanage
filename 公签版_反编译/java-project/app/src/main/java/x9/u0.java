package x9;

import android.content.Context;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.StrIntBoolBean;

/* loaded from: classes.dex */
public final class u0 extends c6.g {
    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_btn2, viewGroup);
    }

    public final void F(int i10) {
        int i11 = 0;
        while (i11 < b()) {
            ((StrIntBoolBean) t(i11)).boolValue = i10 == i11;
            e(i11);
            i11++;
        }
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        StrIntBoolBean strIntBoolBean = (StrIntBoolBean) obj;
        aVar.c(R.id.v_name, strIntBoolBean.strValue);
        aVar.d(R.id.v_state, strIntBoolBean.boolValue);
        ((ConstraintLayout) aVar.a(R.id.v_rrr)).setActivated(strIntBoolBean.boolValue);
    }
}
