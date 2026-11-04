package x9;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class s5 extends c6.g {

    /* renamed from: h, reason: collision with root package name */
    public long f18333h = -1;

    /* renamed from: i, reason: collision with root package name */
    public View.OnKeyListener f18334i;

    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_dir_gn, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        final h6.a aVar = (h6.a) viewHolder;
        String str = (String) obj;
        if (str.contains("新建")) {
            aVar.b(R.id.v_image_ico, R.drawable.tp_add5);
        } else if (str.contains("刷新")) {
            aVar.b(R.id.v_image_ico, R.drawable.tp_reload1);
        } else if (str.contains("多选")) {
            aVar.b(R.id.v_image_ico, R.drawable.tp_pl1);
        } else if (str.contains("切换")) {
            aVar.b(R.id.v_image_ico, R.drawable.tp_list1);
        }
        final TextView textView = (TextView) aVar.a(R.id.v_text_name);
        textView.setText(str);
        aVar.itemView.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: x9.r5
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                long bindingAdapterPosition;
                s5 s5Var = this.f18329a;
                if (z) {
                    s5Var.getClass();
                    bindingAdapterPosition = aVar.getBindingAdapterPosition();
                } else {
                    bindingAdapterPosition = -1;
                }
                s5Var.f18333h = bindingAdapterPosition;
                textView.setVisibility(z ? 0 : 8);
            }
        });
        aVar.itemView.setOnKeyListener(this.f18334i);
    }
}
