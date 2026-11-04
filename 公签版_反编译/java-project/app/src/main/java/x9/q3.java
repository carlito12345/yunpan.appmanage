package x9;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.db.AppBean;
import java.io.File;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final class q3 extends c6.g {

    /* renamed from: h, reason: collision with root package name */
    public final Context f18326h;

    public q3(Context context) {
        this.f18326h = context;
    }

    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_app3, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        AppBean appBean = (AppBean) obj;
        aVar.c(R.id.v_name, appBean.name);
        ImageView imageView = (ImageView) aVar.a(R.id.v_ico);
        Context context = this.f18326h;
        com.bumptech.glide.p pVarF = com.bumptech.glide.b.f(context);
        pVarF.getClass();
        pVarF.o(new com.bumptech.glide.n(imageView));
        if (appBean.pack.startsWith("shortcut_")) {
            imageView.setImageResource(R.drawable.tp_nezha);
            return;
        }
        com.bumptech.glide.p pVarF2 = com.bumptech.glide.b.f(context);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(com.yunpan.appmanage.util.v.f4106a.f4107a);
        com.bumptech.glide.m mVarS = pVarF2.s(new File(g.b.l(appBean.pack, ".png", sb2)));
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        mVarS.a(com.yunpan.appmanage.util.j.f4033a.f4051i).D(imageView);
    }
}
