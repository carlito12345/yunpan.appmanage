package ha;

import android.widget.EditText;
import com.yunpan.appmanage.bean.KeyCodeBean;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final /* synthetic */ class l9 implements ga, ea.c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ m9 f7369a;

    @Override // ha.ga
    public void b(int i10) {
        m9 m9Var = this.f7369a;
        EditText editText = m9Var.f7430g;
        ArrayList arrayList = m9Var.f7436n;
        editText.setText(((KeyCodeBean) arrayList.get(i10)).keyName);
        m9Var.f7431h.setText(String.valueOf(((KeyCodeBean) arrayList.get(i10)).keyCode));
    }

    @Override // ea.c
    public void e(int i10) {
        this.f7369a.f7431h.setText(String.valueOf(i10));
    }
}
