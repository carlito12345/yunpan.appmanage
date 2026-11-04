package x9;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.InputMethodBean;
import com.yunpan.appmanage.ui.ActivityInputMethod;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final class p2 extends c6.g {

    /* renamed from: h, reason: collision with root package name */
    public final ActivityInputMethod f18322h;

    public p2(ActivityInputMethod activityInputMethod) {
        this.f18322h = activityInputMethod;
    }

    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_input_method, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        InputMethodBean inputMethodBean = (InputMethodBean) obj;
        ImageView imageView = (ImageView) aVar.a(R.id.v_ico);
        ActivityInputMethod activityInputMethod = this.f18322h;
        com.bumptech.glide.p pVarF = com.bumptech.glide.b.f(activityInputMethod);
        pVarF.getClass();
        pVarF.o(new com.bumptech.glide.n(imageView));
        com.bumptech.glide.m mVarA = com.bumptech.glide.b.f(activityInputMethod).u("file://" + com.yunpan.appmanage.util.v.f4106a.f4107a + inputMethodBean.packageName + ".png").a(w5.e.z(new o5.x(8)));
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        int i11 = com.yunpan.appmanage.util.j.f4033a.R;
        ((com.bumptech.glide.m) ((com.bumptech.glide.m) mVarA.o(i11, i11)).g(R.drawable.tp_cj)).D(imageView);
        aVar.c(R.id.v_name, inputMethodBean.name);
        ((TextView) aVar.a(R.id.v_state)).setVisibility(inputMethodBean.isDefault ? 0 : 8);
        aVar.b(R.id.v_ico_state, inputMethodBean.isDefault ? R.drawable.tp_radio_yes7 : R.drawable.tp_radio_no1);
    }
}
