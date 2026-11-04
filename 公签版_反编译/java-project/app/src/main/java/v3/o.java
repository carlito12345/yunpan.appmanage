package v3;

import android.os.Build;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class o extends RecyclerView.ViewHolder {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f16528a;

    /* renamed from: b, reason: collision with root package name */
    public final View f16529b;

    public o(View view) {
        super(view);
        if (Build.VERSION.SDK_INT < 26) {
            view.setFocusable(true);
        }
        this.f16528a = (TextView) view.findViewById(R.id.exo_text);
        this.f16529b = view.findViewById(R.id.exo_check);
    }
}
