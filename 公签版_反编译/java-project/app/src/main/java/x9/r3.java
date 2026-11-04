package x9;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.ui.ActivityNezhaWallpaperL;
import java.io.File;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final class r3 extends c6.g implements e6.a {

    /* renamed from: h, reason: collision with root package name */
    public final int f18327h = 1;

    /* renamed from: i, reason: collision with root package name */
    public final da.g f18328i;

    public r3(da.g gVar) {
        this.f18328i = gVar;
    }

    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(this.f18327h == 0 ? R.layout.item_nezha_wallpaper_app : R.layout.item_nezha_wallpaper_app2, viewGroup);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0033  */
    @Override // c6.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        AppBean appBean = (AppBean) obj;
        aVar.c(R.id.v_name, appBean.name);
        if (appBean.isDisable) {
            aVar.b(R.id.v_ico_bs, R.drawable.tp_jy2);
        } else if (appBean.isUnInstall) {
            String str = appBean.pack;
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            if (!str.equals(com.yunpan.appmanage.util.j.f4033a.f4039c)) {
                aVar.b(R.id.v_ico_bs, R.drawable.tp_uninstall);
            } else if (appBean.isHide) {
                aVar.b(R.id.v_ico_bs, R.drawable.tp_hide1);
            } else {
                ((ImageView) aVar.a(R.id.v_ico_bs)).setImageDrawable(null);
            }
        }
        ImageView imageView = (ImageView) aVar.a(R.id.v_ico);
        da.g gVar = this.f18328i;
        com.bumptech.glide.p pVarF = com.bumptech.glide.b.f(gVar);
        pVarF.getClass();
        pVarF.o(new com.bumptech.glide.n(imageView));
        if (appBean.pack.equals("com.hozonauto.netahome.mini")) {
            imageView.setImageResource(R.drawable.tp_xcx1);
            return;
        }
        if (appBean.pack.isEmpty()) {
            imageView.setImageResource(R.drawable.tp_add6);
            return;
        }
        if (appBean.pack.startsWith("shortcut_")) {
            imageView.setImageResource(R.drawable.tp_nezha);
            return;
        }
        com.bumptech.glide.p pVarF2 = com.bumptech.glide.b.f(gVar);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(com.yunpan.appmanage.util.v.f4106a.f4107a);
        com.bumptech.glide.m mVarS = pVarF2.s(new File(g.b.l(appBean.pack, ".png", sb2)));
        DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
        mVarS.a(com.yunpan.appmanage.util.j.f4033a.f4051i).D(imageView);
    }

    public r3(ActivityNezhaWallpaperL activityNezhaWallpaperL) {
        this.f18328i = activityNezhaWallpaperL;
    }

    @Override // c6.g, e6.a
    public final void a(int i10, int i11) {
    }
}
