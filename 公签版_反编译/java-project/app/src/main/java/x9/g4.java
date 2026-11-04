package x9;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.PsBean;
import java.io.File;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final class g4 extends c6.g {

    /* renamed from: h, reason: collision with root package name */
    public final da.g f18235h;

    public g4(da.g gVar) {
        this.f18235h = gVar;
    }

    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_ps, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        PsBean psBean = (PsBean) obj;
        ImageView imageView = (ImageView) aVar.a(R.id.v_ico);
        da.g gVar = this.f18235h;
        com.bumptech.glide.p pVarF = com.bumptech.glide.b.f(gVar);
        pVarF.getClass();
        pVarF.o(new com.bumptech.glide.n(imageView));
        String str = psBean.packageName;
        if (str == null || str.isEmpty()) {
            com.bumptech.glide.m mVarA = com.bumptech.glide.b.f(gVar).q().a(w5.e.z(new o5.x(12)));
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            int i11 = com.yunpan.appmanage.util.j.f4033a.R;
            ((com.bumptech.glide.m) mVarA.o(i11, i11)).D(imageView);
        } else {
            com.bumptech.glide.p pVarF2 = com.bumptech.glide.b.f(gVar);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(com.yunpan.appmanage.util.v.f4106a.f4107a);
            com.bumptech.glide.m mVarS = pVarF2.s(new File(g.b.l(psBean.packageName, ".png", sb2)));
            DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
            mVarS.a(com.yunpan.appmanage.util.j.f4033a.f4051i).D(imageView);
        }
        aVar.c(R.id.v_user, psBean.user);
        aVar.c(R.id.v_pid, psBean.pid);
        aVar.c(R.id.v_vsz, psBean.vsz_str);
        aVar.c(R.id.v_rss, psBean.rss_str);
        aVar.c(R.id.v_name, psBean.name);
    }
}
