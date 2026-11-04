package ha;

import android.view.KeyEvent;
import android.view.View;
import android.widget.TextView;
import com.yunpan.appmanage.ui.ActivityCodeEditor;

/* loaded from: classes.dex */
public final class uc implements View.OnKeyListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7876a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ KeyEvent.Callback f7877b;

    public /* synthetic */ uc(KeyEvent.Callback callback, int i10) {
        this.f7876a = i10;
        this.f7877b = callback;
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i10, KeyEvent keyEvent) {
        switch (this.f7876a) {
            case 0:
                if (keyEvent.getAction() == 0 && i10 == 66) {
                    ((TextView) this.f7877b).requestFocus();
                    break;
                }
                break;
            case 1:
                if (keyEvent.getAction() == 0 && i10 == 22) {
                    ((TextView) this.f7877b).requestFocus();
                    break;
                }
                break;
            case 2:
                if (keyEvent.getAction() == 0 && i10 == 21) {
                    ((TextView) this.f7877b).requestFocus();
                    break;
                }
                break;
            default:
                if (keyEvent.getAction() == 0) {
                    ActivityCodeEditor activityCodeEditor = (ActivityCodeEditor) this.f7877b;
                    if (i10 != 20 && i10 != 66) {
                        if (i10 == 19) {
                            activityCodeEditor.Z.requestFocus();
                            break;
                        }
                    } else {
                        activityCodeEditor.M0.requestFocus();
                        break;
                    }
                }
                break;
        }
        return true;
    }
}
