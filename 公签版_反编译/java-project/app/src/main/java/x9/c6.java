package x9;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.WpTaskBean;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final class c6 extends c6.g {
    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_wp_task, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        WpTaskBean wpTaskBean = (WpTaskBean) obj;
        int i11 = wpTaskBean.type;
        if (i11 != 1 && i11 == 2) {
            if (p000if.a.X(wpTaskBean.bdPathInfo.f18364a)) {
                aVar.b(R.id.v_file_ico, R.drawable.tp_apk2);
            } else if (p000if.a.c0(wpTaskBean.bdPathInfo.f18364a)) {
                aVar.b(R.id.v_file_ico, R.drawable.tp);
            } else if (p000if.a.j0(wpTaskBean.bdPathInfo.f18364a)) {
                aVar.b(R.id.v_file_ico, R.drawable.tp_video1);
            } else if (p000if.a.f0(wpTaskBean.bdPathInfo.f18364a)) {
                aVar.b(R.id.v_file_ico, R.drawable.tp_music1);
            } else if (za.g.g(wpTaskBean.bdPathInfo.f18364a)) {
                aVar.b(R.id.v_file_ico, R.drawable.tp_rar);
            } else {
                aVar.b(R.id.v_file_ico, R.drawable.tp_file2);
            }
            aVar.c(R.id.v_file_name, wpTaskBean.bdPathInfo.f18364a);
            aVar.c(R.id.v_text_toDir, "上传到：" + wpTaskBean.userInfo.f18291b + "   大小：" + p000if.a.D0(wpTaskBean.bdPathInfo.f18367d));
            TextView textView = (TextView) aVar.a(R.id.v_text_state);
            if (wpTaskBean.str1.equals("上传完成") || wpTaskBean.str1.contains("下载完成")) {
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                textView.setTextColor(com.yunpan.appmanage.util.j.f4033a.f4035a.getResources().getColor(R.color.color_1));
            } else if (wpTaskBean.str1.startsWith("上传中") || wpTaskBean.str1.startsWith("下载中")) {
                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                textView.setTextColor(com.yunpan.appmanage.util.j.f4033a.f4035a.getResources().getColor(R.color.color_13));
            } else {
                DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                textView.setTextColor(com.yunpan.appmanage.util.j.f4033a.f4035a.getResources().getColor(R.color.color_2));
            }
            textView.setText(wpTaskBean.str1);
            TextView textView2 = (TextView) aVar.a(R.id.v_btn_state);
            if (wpTaskBean.str_state.isEmpty()) {
                textView2.setVisibility(8);
                return;
            }
            if (textView2.getVisibility() != 0) {
                textView2.setVisibility(0);
            }
            textView2.setText(wpTaskBean.str_state);
        }
    }
}
