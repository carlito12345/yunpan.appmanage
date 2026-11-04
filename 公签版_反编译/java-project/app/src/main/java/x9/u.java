package x9;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import java.io.File;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final class u extends c6.g {

    /* renamed from: h, reason: collision with root package name */
    public final da.g f18341h;

    public u(da.g gVar) {
        this.f18341h = gVar;
    }

    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_app_piliang, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        n3 n3Var = (n3) obj;
        aVar.c(R.id.v_name, n3Var.f18286a);
        ImageView imageView = (ImageView) aVar.a(R.id.v_ico);
        da.g gVar = this.f18341h;
        com.bumptech.glide.p pVarF = com.bumptech.glide.b.f(gVar);
        pVarF.getClass();
        pVarF.o(new com.bumptech.glide.n(imageView));
        com.bumptech.glide.p pVarF2 = com.bumptech.glide.b.f(gVar);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(com.yunpan.appmanage.util.v.f4106a.f4107a);
        com.bumptech.glide.m mVarS = pVarF2.s(new File(g.b.l(n3Var.f18287b, ".png", sb2)));
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        mVarS.a(com.yunpan.appmanage.util.j.f4033a.f4051i).D(imageView);
        if (n3Var.f18289d) {
            aVar.b(R.id.v_bs, R.drawable.tick0);
        } else {
            ((ImageView) aVar.a(R.id.v_bs)).setImageDrawable(null);
        }
    }
}
