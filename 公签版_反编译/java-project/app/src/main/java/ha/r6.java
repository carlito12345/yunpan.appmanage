package ha;

import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;

/* loaded from: classes.dex */
public final /* synthetic */ class r6 implements View.OnKeyListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7684a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ EditText f7685b;

    public /* synthetic */ r6(int i10, EditText editText) {
        this.f7684a = i10;
        this.f7685b = editText;
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i10, KeyEvent keyEvent) {
        switch (this.f7684a) {
            case 0:
                if (i10 == 20) {
                    if (keyEvent.getAction() == 0) {
                        this.f7685b.requestFocus();
                        break;
                    }
                } else if (i10 == 19) {
                }
                break;
            default:
                if (i10 == 20) {
                    if (keyEvent.getAction() == 0) {
                        this.f7685b.requestFocus();
                        break;
                    }
                } else if (i10 == 19) {
                }
                break;
        }
        return true;
    }
}
