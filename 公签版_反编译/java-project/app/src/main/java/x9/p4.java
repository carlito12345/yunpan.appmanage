package x9;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.bean.PssBean;
import java.io.File;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final class p4 extends c6.g {

    /* renamed from: h, reason: collision with root package name */
    public final da.g f18323h;

    public p4(da.g gVar) {
        this.f18323h = gVar;
    }

    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_zqd, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        String strL;
        h6.a aVar = (h6.a) viewHolder;
        PssBean pssBean = (PssBean) obj;
        ImageView imageView = (ImageView) aVar.a(R.id.v_ico);
        da.g gVar = this.f18323h;
        com.bumptech.glide.p pVarF = com.bumptech.glide.b.f(gVar);
        pVarF.getClass();
        pVarF.o(new com.bumptech.glide.n(imageView));
        com.bumptech.glide.p pVarF2 = com.bumptech.glide.b.f(gVar);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(com.yunpan.appmanage.util.v.f4106a.f4107a);
        com.bumptech.glide.m mVarS = pVarF2.s(new File(g.b.l(pssBean.pack, ".png", sb2)));
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        mVarS.a(com.yunpan.appmanage.util.j.f4033a.f4051i).D(imageView);
        aVar.c(R.id.v_class, pssBean.pack_str);
        StringBuilder sb3 = new StringBuilder();
        sb3.append(pssBean.name);
        if (pssBean.process_name.isEmpty() || pssBean.process_name.equals("主程序")) {
            strL = "";
        } else {
            strL = g.b.l(pssBean.process_name, ")", new StringBuilder("("));
        }
        sb3.append(strL);
        aVar.c(R.id.v_name, sb3.toString());
        TextView textView = (TextView) aVar.a(R.id.v_state);
        textView.setText(pssBean.pss_str);
        textView.setTextColor(AppStart.f3772h.getResources().getColor(R.color.color_9));
        aVar.c(R.id.v_btn, "结束");
    }
}
