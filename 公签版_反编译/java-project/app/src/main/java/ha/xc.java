package ha;

import android.view.View;
import android.widget.TextView;
import com.hjq.toast.Toaster;

/* loaded from: classes.dex */
public final class xc implements View.OnLongClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TextView f8062a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ad f8063b;

    public xc(ad adVar, TextView textView) {
        this.f8063b = adVar;
        this.f8062a = textView;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        this.f8063b.f6758c = "";
        this.f8062a.setText("");
        Toaster.show((CharSequence) "请重新输入");
        return true;
    }
}
