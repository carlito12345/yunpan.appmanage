package x9;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.PssBean;
import java.io.File;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final class h4 extends c6.g {

    /* renamed from: h, reason: collision with root package name */
    public final da.g f18238h;

    public h4(da.g gVar) {
        this.f18238h = gVar;
    }

    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_pss, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        PssBean pssBean = (PssBean) obj;
        ImageView imageView = (ImageView) aVar.a(R.id.v_ico);
        da.g gVar = this.f18238h;
        com.bumptech.glide.p pVarF = com.bumptech.glide.b.f(gVar);
        pVarF.getClass();
        pVarF.o(new com.bumptech.glide.n(imageView));
        String str = pssBean.pack;
        if (str == null || str.isEmpty()) {
            com.bumptech.glide.m mVarA = com.bumptech.glide.b.f(gVar).q().a(w5.e.z(new o5.x(8)));
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            int i11 = com.yunpan.appmanage.util.j.f4033a.R;
            ((com.bumptech.glide.m) mVarA.o(i11, i11)).D(imageView);
        } else {
            com.bumptech.glide.p pVarF2 = com.bumptech.glide.b.f(gVar);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(com.yunpan.appmanage.util.v.f4106a.f4107a);
            com.bumptech.glide.m mVarS = pVarF2.s(new File(g.b.l(pssBean.pack, ".png", sb2)));
            DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
            mVarS.a(com.yunpan.appmanage.util.j.f4033a.f4051i).D(imageView);
        }
        aVar.c(R.id.v_pid, pssBean.pid);
        aVar.c(R.id.v_pss, pssBean.pss_str);
        if (pssBean.name.isEmpty()) {
            aVar.c(R.id.v_name, pssBean.pack_str);
            return;
        }
        if (pssBean.process_name.isEmpty() || pssBean.process_name.equals("主程序")) {
            aVar.c(R.id.v_name, pssBean.name);
            return;
        }
        aVar.c(R.id.v_name, pssBean.name + "(" + pssBean.process_name + ")");
    }
}
