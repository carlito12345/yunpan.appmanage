package x9;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import java.io.File;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final class y4 extends c6.g {

    /* renamed from: h, reason: collision with root package name */
    public final da.g f18401h;

    public y4(da.g gVar) {
        this.f18401h = gVar;
    }

    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_zqd, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        ResolveInfo resolveInfo = (ResolveInfo) obj;
        if (resolveInfo.activityInfo == null) {
            aVar.b(R.id.v_ico, R.drawable.suo2);
            aVar.c(R.id.v_name, "自启动的系统APP");
            aVar.c(R.id.v_class, "点击显示自启动的系统应用");
            aVar.c(R.id.v_state, "");
            aVar.c(R.id.v_btn, "显示");
            return;
        }
        ImageView imageView = (ImageView) aVar.a(R.id.v_ico);
        da.g gVar = this.f18401h;
        com.bumptech.glide.p pVarF = com.bumptech.glide.b.f(gVar);
        pVarF.getClass();
        pVarF.o(new com.bumptech.glide.n(imageView));
        com.bumptech.glide.p pVarF2 = com.bumptech.glide.b.f(gVar);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(com.yunpan.appmanage.util.v.f4106a.f4107a);
        com.bumptech.glide.m mVarS = pVarF2.s(new File(g.b.l(resolveInfo.activityInfo.packageName, ".png", sb2)));
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        mVarS.a(com.yunpan.appmanage.util.j.f4033a.f4051i).D(imageView);
        aVar.c(R.id.v_name, resolveInfo.activityInfo.loadLabel(AppStart.f3772h.getPackageManager()));
        aVar.c(R.id.v_class, resolveInfo.activityInfo.packageName + "/" + resolveInfo.activityInfo.name);
        ActivityInfo activityInfo = resolveInfo.activityInfo;
        ComponentName componentName = new ComponentName(activityInfo.packageName, activityInfo.name);
        TextView textView = (TextView) aVar.a(R.id.v_state);
        int componentEnabledSetting = AppStart.f3772h.getPackageManager().getComponentEnabledSetting(componentName);
        if (componentEnabledSetting == 0 || componentEnabledSetting == 1) {
            textView.setText("已启用");
            textView.setTextColor(AppStart.f3772h.getResources().getColor(R.color.color_9));
            aVar.c(R.id.v_btn, "禁止");
        } else {
            textView.setText("已禁止");
            textView.setTextColor(AppStart.f3772h.getResources().getColor(R.color.color_1));
            aVar.c(R.id.v_btn, "启用");
        }
    }
}
