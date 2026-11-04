package x9;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.SpecialPermissionsBean;
import com.yunpan.appmanage.ui.ActivityPermissions;
import java.io.File;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final class x4 extends c6.g {

    /* renamed from: h, reason: collision with root package name */
    public final ActivityPermissions f18387h;

    public x4(ActivityPermissions activityPermissions) {
        this.f18387h = activityPermissions;
    }

    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_app, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        SpecialPermissionsBean specialPermissionsBean = (SpecialPermissionsBean) obj;
        ImageView imageView = (ImageView) aVar.a(R.id.v_ico);
        ActivityPermissions activityPermissions = this.f18387h;
        com.bumptech.glide.p pVarF = com.bumptech.glide.b.f(activityPermissions);
        pVarF.getClass();
        pVarF.o(new com.bumptech.glide.n(imageView));
        com.bumptech.glide.p pVarF2 = com.bumptech.glide.b.f(activityPermissions);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(com.yunpan.appmanage.util.v.f4106a.f4107a);
        com.bumptech.glide.m mVarS = pVarF2.s(new File(g.b.l(specialPermissionsBean.pack, ".png", sb2)));
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        mVarS.a(com.yunpan.appmanage.util.j.f4033a.f4051i).D(imageView);
        aVar.d(R.id.v_ico_state, specialPermissionsBean.isGrant);
        aVar.c(R.id.v_name, specialPermissionsBean.name);
        aVar.c(R.id.v_state, specialPermissionsBean.str_state);
    }
}
