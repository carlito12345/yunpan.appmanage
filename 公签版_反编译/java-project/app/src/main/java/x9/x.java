package x9;

import android.content.Context;
import android.content.res.Resources;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.db.AppBean;
import java.io.File;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final class x extends c6.g {

    /* renamed from: h, reason: collision with root package name */
    public final da.g f18382h;

    public x(da.g gVar) {
        this.f18382h = gVar;
    }

    public static String F(long j10) {
        DecimalFormat decimalFormat = new DecimalFormat("0.00");
        double d10 = j10;
        if (d10 < 1024.0d) {
            return j10 + " B";
        }
        if (d10 < 1048576.0d) {
            StringBuilder sb2 = new StringBuilder();
            Double.isNaN(d10);
            return ta.q.n(decimalFormat, (d10 / 1024.0d) / 1024.0d, sb2, " KB");
        }
        if (d10 < 1.073741824E9d) {
            StringBuilder sb3 = new StringBuilder();
            Double.isNaN(d10);
            return ta.q.n(decimalFormat, (d10 / 1024.0d) / 1024.0d, sb3, " MB");
        }
        StringBuilder sb4 = new StringBuilder();
        Double.isNaN(d10);
        return ta.q.n(decimalFormat, ((d10 / 1024.0d) / 1024.0d) / 1024.0d, sb4, " GB");
    }

    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_app_storage, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        Resources resources;
        int i11;
        h6.a aVar = (h6.a) viewHolder;
        y yVar = (y) obj;
        ImageView imageView = (ImageView) aVar.a(R.id.v_ico);
        da.g gVar = this.f18382h;
        com.bumptech.glide.p pVarF = com.bumptech.glide.b.f(gVar);
        pVarF.getClass();
        pVarF.o(new com.bumptech.glide.n(imageView));
        com.bumptech.glide.p pVarF2 = com.bumptech.glide.b.f(gVar);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(com.yunpan.appmanage.util.v.f4106a.f4107a);
        com.bumptech.glide.m mVarS = pVarF2.s(new File(g.b.l(yVar.f18393a.pack, ".png", sb2)));
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        mVarS.a(com.yunpan.appmanage.util.j.f4033a.f4051i).D(imageView);
        TextView textView = (TextView) aVar.a(R.id.v_name);
        AppBean appBean = yVar.f18393a;
        textView.setText(appBean.name);
        if (appBean.isSystem) {
            resources = AppStart.f3772h.getResources();
            i11 = R.color.color_6;
        } else {
            resources = AppStart.f3772h.getResources();
            i11 = R.color.color_5;
        }
        textView.setTextColor(resources.getColor(i11));
        aVar.c(R.id.v_size, F(yVar.f18394b));
        aVar.c(R.id.v_size_cache, F(yVar.f18397e));
        aVar.c(R.id.v_size_code, F(yVar.f18395c));
        aVar.c(R.id.v_size_data, F(yVar.f18396d));
    }
}
