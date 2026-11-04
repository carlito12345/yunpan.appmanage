package v3;

import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.m1;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class n extends m1 {

    /* renamed from: d, reason: collision with root package name */
    public final String[] f16522d;

    /* renamed from: e, reason: collision with root package name */
    public final String[] f16523e;

    /* renamed from: f, reason: collision with root package name */
    public final Drawable[] f16524f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ t f16525g;

    public n(t tVar, String[] strArr, Drawable[] drawableArr) {
        this.f16525g = tVar;
        this.f16522d = strArr;
        this.f16523e = new String[strArr.length];
        this.f16524f = drawableArr;
    }

    @Override // androidx.recyclerview.widget.m1
    public final int b() {
        return this.f16522d.length;
    }

    @Override // androidx.recyclerview.widget.m1
    public final long c(int i10) {
        return i10;
    }

    @Override // androidx.recyclerview.widget.m1
    public final void g(RecyclerView.ViewHolder viewHolder, int i10) {
        m mVar = (m) viewHolder;
        if (p(i10)) {
            mVar.itemView.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
        } else {
            mVar.itemView.setLayoutParams(new RecyclerView.LayoutParams(0, 0));
        }
        mVar.f16518a.setText(this.f16522d[i10]);
        String str = this.f16523e[i10];
        TextView textView = mVar.f16519b;
        if (str == null) {
            textView.setVisibility(8);
        } else {
            textView.setText(str);
        }
        Drawable drawable = this.f16524f[i10];
        ImageView imageView = mVar.f16520c;
        if (drawable == null) {
            imageView.setVisibility(8);
        } else {
            imageView.setImageDrawable(drawable);
        }
    }

    @Override // androidx.recyclerview.widget.m1
    public final RecyclerView.ViewHolder i(int i10, ViewGroup viewGroup) {
        t tVar = this.f16525g;
        return new m(tVar, LayoutInflater.from(tVar.getContext()).inflate(R.layout.exo_styled_settings_list_item, viewGroup, false));
    }

    public final boolean p(int i10) {
        t tVar = this.f16525g;
        r1.m0 m0Var = tVar.g1;
        if (m0Var == null) {
            return false;
        }
        if (i10 == 0) {
            return ((a.b) m0Var).i(13);
        }
        if (i10 != 1) {
            return true;
        }
        return ((a.b) m0Var).i(30) && ((a.b) tVar.g1).i(29);
    }
}
