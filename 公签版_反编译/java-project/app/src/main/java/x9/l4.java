package x9;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import java.io.File;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final class l4 extends c6.g {

    /* renamed from: h, reason: collision with root package name */
    public final Context f18273h;

    public l4(Context context) {
        this.f18273h = context;
    }

    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_app_renwu, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        m4 m4Var = (m4) obj;
        ImageView imageView = (ImageView) aVar.a(R.id.v_ico);
        Context context = this.f18273h;
        com.bumptech.glide.p pVarF = com.bumptech.glide.b.f(context);
        pVarF.getClass();
        pVarF.o(new com.bumptech.glide.n(imageView));
        com.bumptech.glide.p pVarF2 = com.bumptech.glide.b.f(context);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(com.yunpan.appmanage.util.v.f4106a.f4107a);
        com.bumptech.glide.m mVarS = pVarF2.s(new File(g.b.l(m4Var.f18276a.f18287b, ".png", sb2)));
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        mVarS.a(com.yunpan.appmanage.util.j.f4033a.f4051i).D(imageView);
        aVar.c(R.id.v_name, m4Var.f18276a.f18286a);
        aVar.c(R.id.v_zt, m4Var.f18277b);
    }
}
