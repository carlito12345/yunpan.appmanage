package x9;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.AppAttribBean;
import java.io.File;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final class i extends c6.g {

    /* renamed from: h, reason: collision with root package name */
    public final da.g f18239h;

    public i(da.g gVar) {
        this.f18239h = gVar;
    }

    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_app_attrib, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        AppAttribBean appAttribBean = (AppAttribBean) obj;
        ImageView imageView = (ImageView) aVar.a(R.id.v_ico);
        da.g gVar = this.f18239h;
        com.bumptech.glide.p pVarF = com.bumptech.glide.b.f(gVar);
        pVarF.getClass();
        pVarF.o(new com.bumptech.glide.n(imageView));
        com.bumptech.glide.p pVarF2 = com.bumptech.glide.b.f(gVar);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(com.yunpan.appmanage.util.v.f4106a.f4107a);
        com.bumptech.glide.m mVarS = pVarF2.s(new File(g.b.l(appAttribBean.packageName, ".png", sb2)));
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        mVarS.a(com.yunpan.appmanage.util.j.f4033a.f4051i).D(imageView);
        aVar.c(R.id.v_name, appAttribBean.name);
        aVar.c(R.id.v_packageName, appAttribBean.packageName);
        aVar.c(R.id.v_version, "v" + appAttribBean.versionName);
        aVar.c(R.id.v_install_time, appAttribBean.installTime_str);
        aVar.c(R.id.v_update_time, appAttribBean.updateTime_str);
    }
}
