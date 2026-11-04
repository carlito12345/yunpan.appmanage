package ha;

import android.view.KeyEvent;
import android.view.View;
import android.widget.TextView;
import com.yunpan.appmanage.ui.ActivityOuShangWhitelist;

/* loaded from: classes.dex */
public final /* synthetic */ class x6 implements View.OnKeyListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8041a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TextView f8042b;

    public /* synthetic */ x6(TextView textView, int i10) {
        this.f8041a = i10;
        this.f8042b = textView;
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i10, KeyEvent keyEvent) {
        TextView textView = this.f8042b;
        switch (this.f8041a) {
            case 0:
                if (i10 != 20) {
                    return i10 == 19;
                }
                if (keyEvent.getAction() != 0) {
                    return true;
                }
                textView.requestFocus();
                return true;
            case 1:
                if (i10 != 20) {
                    return i10 == 19;
                }
                if (keyEvent.getAction() != 0) {
                    return true;
                }
                textView.requestFocus();
                return true;
            case 2:
                if (i10 != 20) {
                    return i10 == 19;
                }
                if (keyEvent.getAction() != 0) {
                    return true;
                }
                textView.requestFocus();
                return true;
            case 3:
                if (i10 != 20) {
                    return i10 == 19;
                }
                if (keyEvent.getAction() != 0) {
                    return true;
                }
                textView.requestFocus();
                return true;
            case 4:
                if (i10 != 20) {
                    return i10 == 19;
                }
                if (keyEvent.getAction() != 0) {
                    return true;
                }
                textView.requestFocus();
                return true;
            case 5:
                if (i10 != 20) {
                    return i10 == 19;
                }
                if (keyEvent.getAction() != 0) {
                    return true;
                }
                textView.requestFocus();
                return true;
            case 6:
                if (i10 != 20) {
                    return i10 == 19;
                }
                if (keyEvent.getAction() != 0) {
                    return true;
                }
                textView.requestFocus();
                return true;
            case 7:
                if (i10 != 20) {
                    return i10 == 19;
                }
                if (keyEvent.getAction() != 0) {
                    return true;
                }
                textView.requestFocus();
                return true;
            case 8:
                if (i10 != 20) {
                    return i10 == 19;
                }
                if (keyEvent.getAction() != 0) {
                    return true;
                }
                textView.requestFocus();
                return true;
            case 9:
                if (i10 != 20) {
                    return i10 == 19;
                }
                if (keyEvent.getAction() != 0) {
                    return true;
                }
                textView.requestFocus();
                return true;
            case 10:
                if (i10 == 20 && keyEvent.getAction() == 0) {
                    textView.requestFocus();
                }
                return false;
            default:
                int i11 = ActivityOuShangWhitelist.G;
                if (keyEvent.getAction() != 0 || i10 != 20) {
                    return false;
                }
                textView.requestFocus();
                return true;
        }
    }
}
