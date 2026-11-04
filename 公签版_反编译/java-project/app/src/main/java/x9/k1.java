package x9;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.DesktopBean;
import com.yunpan.appmanage.ui.ActivityDesktop;
import java.io.File;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final class k1 extends c6.g {

    /* renamed from: h, reason: collision with root package name */
    public final ActivityDesktop f18253h;

    public k1(ActivityDesktop activityDesktop) {
        this.f18253h = activityDesktop;
    }

    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_desktop, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        DesktopBean desktopBean = (DesktopBean) obj;
        ImageView imageView = (ImageView) aVar.a(R.id.v_ico);
        ActivityDesktop activityDesktop = this.f18253h;
        com.bumptech.glide.p pVarF = com.bumptech.glide.b.f(activityDesktop);
        pVarF.getClass();
        pVarF.o(new com.bumptech.glide.n(imageView));
        com.bumptech.glide.p pVarF2 = com.bumptech.glide.b.f(activityDesktop);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(com.yunpan.appmanage.util.v.f4106a.f4107a);
        com.bumptech.glide.m mVarS = pVarF2.s(new File(g.b.l(desktopBean.packageName, ".png", sb2)));
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        mVarS.a(com.yunpan.appmanage.util.j.f4033a.f4051i).D(imageView);
        StringBuilder sb3 = new StringBuilder();
        sb3.append(desktopBean.name);
        sb3.append((desktopBean.isSystemApp && desktopBean.packageName.contains("launcher")) ? "  (系统桌面)" : "");
        aVar.c(R.id.v_name, sb3.toString());
        if (desktopBean.isUninstall) {
            aVar.c(R.id.v_text, "已卸载");
            aVar.c(R.id.v_state, "恢复");
            return;
        }
        if (desktopBean.isDisable) {
            aVar.c(R.id.v_text, "已禁用");
            aVar.c(R.id.v_state, "恢复");
        } else if (desktopBean.isHide) {
            aVar.c(R.id.v_text, "已隐藏");
            aVar.c(R.id.v_state, "恢复");
        } else if (desktopBean.isDefaultDesktop) {
            aVar.c(R.id.v_text, "当前默认桌面");
            aVar.c(R.id.v_state, "禁用");
        } else {
            aVar.c(R.id.v_text, "正常");
            aVar.c(R.id.v_state, "禁用");
        }
    }
}
