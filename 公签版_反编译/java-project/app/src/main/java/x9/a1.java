package x9;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.NamePackBoolSelectBean;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final class a1 extends c6.g {

    /* renamed from: h, reason: collision with root package name */
    public final Context f18195h;

    public a1(Context context) {
        this.f18195h = context;
    }

    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_app, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        NamePackBoolSelectBean namePackBoolSelectBean = (NamePackBoolSelectBean) obj;
        ImageView imageView = (ImageView) aVar.a(R.id.v_ico);
        Context context = this.f18195h;
        com.bumptech.glide.p pVarF = com.bumptech.glide.b.f(context);
        pVarF.getClass();
        pVarF.o(new com.bumptech.glide.n(imageView));
        com.bumptech.glide.m mVarA = com.bumptech.glide.b.f(context).u("file://" + com.yunpan.appmanage.util.v.f4106a.f4107a + namePackBoolSelectBean.pack + ".png").a(w5.e.z(new o5.x(8)));
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        int i11 = com.yunpan.appmanage.util.j.f4033a.R;
        ((com.bumptech.glide.m) ((com.bumptech.glide.m) mVarA.o(i11, i11)).g(R.drawable.tp_cj)).D(imageView);
        aVar.d(R.id.v_ico_state, namePackBoolSelectBean.isSelected);
        aVar.c(R.id.v_name, namePackBoolSelectBean.name);
        aVar.c(R.id.v_state, "");
    }
}
