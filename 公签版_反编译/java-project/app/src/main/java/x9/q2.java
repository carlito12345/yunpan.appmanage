package x9;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.InstallerBean;
import java.io.File;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final class q2 extends c6.g {

    /* renamed from: h, reason: collision with root package name */
    public final Context f18325h;

    public q2(Context context) {
        this.f18325h = context;
    }

    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_installer, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        InstallerBean installerBean = (InstallerBean) obj;
        aVar.c(R.id.v_name, installerBean.name);
        aVar.c(R.id.v_class, installerBean.str_class);
        ImageView imageView = (ImageView) aVar.a(R.id.v_ico);
        Context context = this.f18325h;
        com.bumptech.glide.p pVarF = com.bumptech.glide.b.f(context);
        pVarF.getClass();
        pVarF.o(new com.bumptech.glide.n(imageView));
        com.bumptech.glide.p pVarF2 = com.bumptech.glide.b.f(context);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(com.yunpan.appmanage.util.v.f4106a.f4107a);
        com.bumptech.glide.m mVarS = pVarF2.s(new File(g.b.l(installerBean.str_pack, ".png", sb2)));
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        mVarS.a(com.yunpan.appmanage.util.j.f4033a.f4051i).D(imageView);
    }
}
