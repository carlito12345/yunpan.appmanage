package x9;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import java.io.File;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final class m2 extends c6.g {

    /* renamed from: h, reason: collision with root package name */
    public final da.g f18274h;

    public m2(da.g gVar) {
        this.f18274h = gVar;
    }

    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_app, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        ua.p2 p2Var = (ua.p2) obj;
        ImageView imageView = (ImageView) aVar.a(R.id.v_ico);
        da.g gVar = this.f18274h;
        com.bumptech.glide.p pVarF = com.bumptech.glide.b.f(gVar);
        pVarF.getClass();
        pVarF.o(new com.bumptech.glide.n(imageView));
        com.bumptech.glide.p pVarF2 = com.bumptech.glide.b.f(gVar);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(com.yunpan.appmanage.util.v.f4106a.f4107a);
        com.bumptech.glide.m mVarS = pVarF2.s(new File(g.b.l(p2Var.f15876b, ".png", sb2)));
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        mVarS.a(com.yunpan.appmanage.util.j.f4033a.f4051i).D(imageView);
        aVar.d(R.id.v_ico_state, p2Var.f15877c);
        aVar.c(R.id.v_name, p2Var.f15875a);
        int i11 = p2Var.f15878d;
        String str = i11 == 1 ? "全屏模式" : i11 == 2 ? "隐藏状态栏" : i11 == 3 ? "隐藏导航栏" : "";
        if (str.isEmpty()) {
            aVar.d(R.id.v_state, false);
        } else {
            aVar.d(R.id.v_state, true);
            aVar.c(R.id.v_state, str);
        }
    }
}
