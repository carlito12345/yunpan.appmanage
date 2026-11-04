package v3;

import android.os.Build;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import ua.z6;

/* loaded from: classes.dex */
public final class m extends RecyclerView.ViewHolder {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f16518a;

    /* renamed from: b, reason: collision with root package name */
    public final TextView f16519b;

    /* renamed from: c, reason: collision with root package name */
    public final ImageView f16520c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ t f16521d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(t tVar, View view) {
        super(view);
        this.f16521d = tVar;
        if (Build.VERSION.SDK_INT < 26) {
            view.setFocusable(true);
        }
        this.f16518a = (TextView) view.findViewById(R.id.exo_main_text);
        this.f16519b = (TextView) view.findViewById(R.id.exo_sub_text);
        this.f16520c = (ImageView) view.findViewById(R.id.exo_icon);
        view.setOnClickListener(new z6(8, this));
    }
}
