package x9;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.RotationBean;
import com.yunpan.appmanage.ui.ActivityRotation;
import java.io.File;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final class o4 extends c6.g {

    /* renamed from: h, reason: collision with root package name */
    public final ActivityRotation f18318h;

    public o4(ActivityRotation activityRotation) {
        this.f18318h = activityRotation;
    }

    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_app, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        RotationBean rotationBean = (RotationBean) obj;
        ImageView imageView = (ImageView) aVar.a(R.id.v_ico);
        ActivityRotation activityRotation = this.f18318h;
        com.bumptech.glide.p pVarF = com.bumptech.glide.b.f(activityRotation);
        pVarF.getClass();
        pVarF.o(new com.bumptech.glide.n(imageView));
        com.bumptech.glide.p pVarF2 = com.bumptech.glide.b.f(activityRotation);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(com.yunpan.appmanage.util.v.f4106a.f4107a);
        com.bumptech.glide.m mVarS = pVarF2.s(new File(g.b.l(rotationBean.pack, ".png", sb2)));
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
        mVarS.a(kVar.f4051i).D(imageView);
        aVar.c(R.id.v_name, rotationBean.name);
        ImageView imageView2 = (ImageView) aVar.a(R.id.v_ico_state);
        TextView textView = (TextView) aVar.a(R.id.v_state);
        int i11 = rotationBean.mode;
        if (i11 == 1) {
            textView.setVisibility(0);
            textView.setTextColor(kVar.f4035a.getResources().getColor(R.color.color_2));
            textView.setText("横屏");
            imageView2.setVisibility(0);
            imageView2.setImageResource(R.drawable.tp_horizontal);
            return;
        }
        if (i11 != 2) {
            textView.setVisibility(8);
            imageView2.setVisibility(8);
            return;
        }
        textView.setVisibility(0);
        textView.setTextColor(kVar.f4035a.getResources().getColor(R.color.color_10));
        textView.setText("竖屏");
        imageView2.setVisibility(0);
        imageView2.setImageResource(R.drawable.tp_vertical);
    }
}
