package x9;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class s3 extends c6.g {

    /* renamed from: h, reason: collision with root package name */
    public final Context f18332h;

    public s3(Context context) {
        this.f18332h = context;
    }

    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_open, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        t3 t3Var = (t3) obj;
        View viewA = aVar.a(R.id.v_root);
        viewA.setOnTouchListener(new q7.j(1, viewA));
        aVar.c(R.id.v_name, t3Var.f18338b);
        Drawable drawable = t3Var.f18337a;
        if (drawable != null) {
            com.bumptech.glide.b.f(this.f18332h).r(drawable).D((ImageView) aVar.a(R.id.v_ico));
        } else {
            aVar.b(R.id.v_ico, R.drawable.apk);
        }
    }
}
