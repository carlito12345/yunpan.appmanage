package x9;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.SwitchAppBean;
import java.io.File;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final class z4 extends c6.g {

    /* renamed from: h, reason: collision with root package name */
    public final da.g f18414h;

    public z4(da.g gVar) {
        this.f18414h = gVar;
    }

    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_switch_app, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        SwitchAppBean switchAppBean = (SwitchAppBean) obj;
        aVar.c(R.id.v_from_name, switchAppBean.fromAppName);
        aVar.c(R.id.v_to_name, switchAppBean.toAppName);
        aVar.c(R.id.v_ts2, switchAppBean.toStartClass.isEmpty() ? "就关闭：" : "就打开：");
        ImageView imageView = (ImageView) aVar.a(R.id.v_from_ico);
        da.g gVar = this.f18414h;
        com.bumptech.glide.p pVarF = com.bumptech.glide.b.f(gVar);
        pVarF.getClass();
        pVarF.o(new com.bumptech.glide.n(imageView));
        com.bumptech.glide.p pVarF2 = com.bumptech.glide.b.f(gVar);
        StringBuilder sb2 = new StringBuilder();
        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
        sb2.append(wVar.f4107a);
        com.bumptech.glide.m mVarS = pVarF2.s(new File(g.b.l(switchAppBean.fromAppPack, ".png", sb2)));
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
        mVarS.a(kVar.f4051i).D(imageView);
        ImageView imageView2 = (ImageView) aVar.a(R.id.v_to_ico);
        com.bumptech.glide.p pVarF3 = com.bumptech.glide.b.f(gVar);
        pVarF3.getClass();
        pVarF3.o(new com.bumptech.glide.n(imageView2));
        com.bumptech.glide.p pVarF4 = com.bumptech.glide.b.f(gVar);
        StringBuilder sb3 = new StringBuilder();
        sb3.append(wVar.f4107a);
        pVarF4.s(new File(g.b.l(switchAppBean.toAppPack, ".png", sb3))).a(kVar.f4051i).D(imageView2);
    }
}
