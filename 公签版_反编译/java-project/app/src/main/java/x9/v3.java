package x9;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.NameContentSelectBean;
import com.yunpan.appmanage.ui.ActivityOuShangWhitelist;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final class v3 extends c6.g {

    /* renamed from: h, reason: collision with root package name */
    public final ActivityOuShangWhitelist f18356h;

    public v3(ActivityOuShangWhitelist activityOuShangWhitelist) {
        this.f18356h = activityOuShangWhitelist;
    }

    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_oushang_whitelist, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        Object objValueOf;
        h6.a aVar = (h6.a) viewHolder;
        NameContentSelectBean nameContentSelectBean = (NameContentSelectBean) obj;
        aVar.c(R.id.v_name, nameContentSelectBean.name);
        aVar.c(R.id.v_pack, nameContentSelectBean.content);
        ImageView imageView = (ImageView) aVar.a(R.id.v_ico);
        ActivityOuShangWhitelist activityOuShangWhitelist = this.f18356h;
        com.bumptech.glide.p pVarF = com.bumptech.glide.b.f(activityOuShangWhitelist);
        pVarF.getClass();
        pVarF.o(new com.bumptech.glide.n(imageView));
        com.bumptech.glide.p pVarF2 = com.bumptech.glide.b.f(activityOuShangWhitelist);
        if (nameContentSelectBean.isSelect) {
            StringBuilder sb2 = new StringBuilder("file://");
            sb2.append(com.yunpan.appmanage.util.v.f4106a.f4107a);
            objValueOf = g.b.l(nameContentSelectBean.content, ".png", sb2);
        } else {
            objValueOf = Integer.valueOf(R.drawable.tp_cj);
        }
        com.bumptech.glide.m mVarA = pVarF2.t(objValueOf).a(w5.e.z(new o5.x(8)));
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        int i11 = com.yunpan.appmanage.util.j.f4033a.R;
        ((com.bumptech.glide.m) ((com.bumptech.glide.m) mVarA.o(i11, i11)).g(R.drawable.tp_cj)).D(imageView);
    }
}
