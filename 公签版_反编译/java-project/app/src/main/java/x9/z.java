package x9;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.AppTrafficBean;
import java.io.File;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final class z extends c6.g {

    /* renamed from: h, reason: collision with root package name */
    public final da.g f18404h;

    /* renamed from: i, reason: collision with root package name */
    public int f18405i;

    public z(da.g gVar, int i10) {
        this.f18404h = gVar;
        this.f18405i = i10;
    }

    public static String F(long j10) {
        DecimalFormat decimalFormat = new DecimalFormat("0.00");
        double d10 = j10;
        if (d10 < 1024.0d) {
            return j10 + " B";
        }
        if (d10 < 1048576.0d) {
            StringBuilder sb2 = new StringBuilder();
            Double.isNaN(d10);
            return ta.q.n(decimalFormat, (d10 / 1024.0d) / 1024.0d, sb2, " KB");
        }
        if (d10 < 1.073741824E9d) {
            StringBuilder sb3 = new StringBuilder();
            Double.isNaN(d10);
            return ta.q.n(decimalFormat, (d10 / 1024.0d) / 1024.0d, sb3, " MB");
        }
        StringBuilder sb4 = new StringBuilder();
        Double.isNaN(d10);
        return ta.q.n(decimalFormat, ((d10 / 1024.0d) / 1024.0d) / 1024.0d, sb4, " GB");
    }

    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_app_traffic, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        AppTrafficBean appTrafficBean = (AppTrafficBean) obj;
        ImageView imageView = (ImageView) aVar.a(R.id.v_ico);
        da.g gVar = this.f18404h;
        com.bumptech.glide.p pVarF = com.bumptech.glide.b.f(gVar);
        pVarF.getClass();
        pVarF.o(new com.bumptech.glide.n(imageView));
        if (appTrafficBean.packageName.isEmpty()) {
            aVar.b(R.id.v_ico, appTrafficBean.name.startsWith("已卸载") ? R.drawable.tp_zx1 : R.drawable.tp_gly1);
        } else {
            com.bumptech.glide.p pVarF2 = com.bumptech.glide.b.f(gVar);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(com.yunpan.appmanage.util.v.f4106a.f4107a);
            com.bumptech.glide.m mVarS = pVarF2.s(new File(g.b.l(appTrafficBean.packageName, ".png", sb2)));
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            mVarS.a(com.yunpan.appmanage.util.j.f4033a.f4051i).D(imageView);
        }
        aVar.c(R.id.v_name, appTrafficBean.name);
        aVar.c(R.id.v_count, F(appTrafficBean.count));
        if (this.f18405i == 0) {
            aVar.c(R.id.v_sim, "");
            aVar.c(R.id.v_wifi, "");
        } else {
            aVar.c(R.id.v_sim, F(appTrafficBean.sim));
            aVar.c(R.id.v_wifi, F(appTrafficBean.wifi));
        }
    }
}
