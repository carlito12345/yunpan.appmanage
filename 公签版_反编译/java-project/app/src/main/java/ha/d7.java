package ha;

import android.widget.EditText;
import com.yunpan.appmanage.bean.KeyCodeBean;

/* loaded from: classes.dex */
public final class d7 implements xb, ea.c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6894a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ EditText f6895b;

    public /* synthetic */ d7(int i10, EditText editText) {
        this.f6894a = i10;
        this.f6895b = editText;
    }

    @Override // ha.xb
    public void a(KeyCodeBean keyCodeBean) {
        switch (this.f6894a) {
            case 0:
                this.f6895b.setText(String.valueOf(keyCodeBean.keyCode));
                break;
            default:
                this.f6895b.setText(String.valueOf(keyCodeBean.keyCode));
                break;
        }
    }

    @Override // ea.c
    public void e(int i10) {
        switch (this.f6894a) {
            case 2:
                this.f6895b.setText(String.valueOf(i10));
                break;
            default:
                this.f6895b.setText(String.valueOf(i10));
                break;
        }
    }
}
