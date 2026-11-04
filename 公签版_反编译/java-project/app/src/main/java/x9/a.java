package x9;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import java.io.File;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final class a extends c6.g {

    /* renamed from: h, reason: collision with root package name */
    public final da.g f18193h;

    public a(da.g gVar) {
        this.f18193h = gVar;
    }

    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_accessibility, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        b bVar = (b) obj;
        ImageView imageView = (ImageView) aVar.a(R.id.v_ico);
        da.g gVar = this.f18193h;
        com.bumptech.glide.p pVarF = com.bumptech.glide.b.f(gVar);
        pVarF.getClass();
        pVarF.o(new com.bumptech.glide.n(imageView));
        com.bumptech.glide.p pVarF2 = com.bumptech.glide.b.f(gVar);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(com.yunpan.appmanage.util.v.f4106a.f4107a);
        com.bumptech.glide.m mVarS = pVarF2.s(new File(g.b.l(bVar.f18197b, ".png", sb2)));
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        mVarS.a(com.yunpan.appmanage.util.j.f4033a.f4051i).D(imageView);
        aVar.c(R.id.v_name, bVar.f18196a);
        aVar.c(R.id.v_class, bVar.f18198c);
        aVar.c(R.id.v_des, bVar.f18199d);
        TextView textView = (TextView) aVar.a(R.id.v_state);
        if (bVar.f18201f) {
            textView.setText("已开启");
            textView.setTextColor(AppStart.f3772h.getResources().getColor(R.color.color_1));
            aVar.c(R.id.v_btn, "关闭");
        } else if (bVar.f18202g) {
            textView.setText("异常");
            textView.setTextColor(AppStart.f3772h.getResources().getColor(R.color.color_17));
            aVar.c(R.id.v_btn, "开启");
        } else {
            textView.setText("已关闭");
            textView.setTextColor(AppStart.f3772h.getResources().getColor(R.color.color_10));
            aVar.c(R.id.v_btn, "开启");
        }
    }
}
