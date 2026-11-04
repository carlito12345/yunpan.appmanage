package x9;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.IntIntBean;

/* loaded from: classes.dex */
public final class i2 extends c6.g {
    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_get_key_code_acc, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        IntIntBean intIntBean = (IntIntBean) obj;
        TextView textView = (TextView) aVar.a(R.id.v_text_content1);
        if (intIntBean.int2 == 0) {
            textView.setText("按下");
            textView.setTextColor(-376320);
        } else {
            textView.setText("松开");
            textView.setTextColor(-16590999);
        }
        aVar.c(R.id.v_text_content2, String.valueOf(intIntBean.int1));
    }
}
