package x9;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import java.io.File;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final class o3 extends c6.g {

    /* renamed from: h, reason: collision with root package name */
    public final da.g f18316h;

    /* renamed from: i, reason: collision with root package name */
    public final w5.e f18317i;

    public o3(da.g gVar) {
        this.f18316h = gVar;
        w5.e eVar = (w5.e) new w5.e().w(new o5.x(8), true);
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        int i10 = com.yunpan.appmanage.util.j.f4033a.R;
        this.f18317i = (w5.e) ((w5.e) eVar.o(i10, i10)).g(R.drawable.tp_cj);
    }

    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_app, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        n3 n3Var = (n3) obj;
        ImageView imageView = (ImageView) aVar.a(R.id.v_ico);
        da.g gVar = this.f18316h;
        com.bumptech.glide.p pVarF = com.bumptech.glide.b.f(gVar);
        pVarF.getClass();
        pVarF.o(new com.bumptech.glide.n(imageView));
        com.bumptech.glide.p pVarF2 = com.bumptech.glide.b.f(gVar);
        StringBuilder sb2 = new StringBuilder();
        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
        sb2.append(wVar.f4107a);
        ((com.bumptech.glide.m) pVarF2.s(new File(g.b.l(n3Var.f18287b, ".png", sb2))).a(this.f18317i).t(new z5.d(Long.valueOf(wVar.f4122h0)))).D(imageView);
        aVar.c(R.id.v_state, "");
        aVar.c(R.id.v_name, n3Var.f18286a);
        ImageView imageView2 = (ImageView) aVar.a(R.id.v_ico_state);
        if (n3Var.f18289d) {
            imageView2.setImageResource(R.drawable.tp_radio_yes2);
        } else {
            imageView2.setImageDrawable(null);
        }
    }
}
