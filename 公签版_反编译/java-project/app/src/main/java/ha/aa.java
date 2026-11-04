package ha;

import android.content.res.Resources;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import androidx.appcompat.widget.SearchView;
import com.google.android.material.textfield.TextInputLayout;
import com.yunpan.appmanage.ui.ActivityApps;
import com.yunpan.appmanage.ui.ActivityAppsPermissions;
import com.yunpan.appmanage.ui.ActivityCodeEditor;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class aa implements TextWatcher {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6747a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ KeyEvent.Callback f6748b;

    public /* synthetic */ aa(KeyEvent.Callback callback, int i10) {
        this.f6747a = i10;
        this.f6748b = callback;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) throws Resources.NotFoundException {
        KeyEvent.Callback callback = this.f6748b;
        switch (this.f6747a) {
            case 0:
                ba baVar = (ba) callback;
                baVar.f6817q.removeMessages(1);
                baVar.f6817q.sendEmptyMessageDelayed(1, 500L);
                break;
            case 1:
                if (editable.toString().trim().equals(com.yunpan.appmanage.util.v.f4106a.f4125j)) {
                    ((ad) callback).a();
                    break;
                }
                break;
            case 2:
                TextInputLayout textInputLayout = (TextInputLayout) callback;
                textInputLayout.u(true ^ textInputLayout.f3701p1, false);
                if (textInputLayout.f3692k) {
                    textInputLayout.n(editable);
                }
                if (textInputLayout.f3705t) {
                    textInputLayout.v(editable);
                    break;
                }
                break;
            case 5:
                int i10 = ActivityCodeEditor.f3967c1;
                ((ActivityCodeEditor) callback).z();
                break;
        }
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        int i13 = this.f6747a;
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        switch (this.f6747a) {
            case 0:
            case 1:
            case 2:
                break;
            case 3:
                ActivityApps activityApps = (ActivityApps) this.f6748b;
                activityApps.K = activityApps.I.getText().toString();
                activityApps.F.E(new ArrayList());
                activityApps.x(activityApps.K.isEmpty() ? 1 : 0);
                break;
            case 4:
                ActivityAppsPermissions activityAppsPermissions = (ActivityAppsPermissions) this.f6748b;
                activityAppsPermissions.I = activityAppsPermissions.H.getText().toString();
                activityAppsPermissions.F.E(new ArrayList());
                activityAppsPermissions.x(activityAppsPermissions.I.isEmpty() ? 1 : 0);
                break;
            case 5:
                break;
            default:
                SearchView searchView = (SearchView) this.f6748b;
                Editable text = searchView.f974q.getText();
                searchView.O0 = text;
                boolean zIsEmpty = TextUtils.isEmpty(text);
                searchView.x(!zIsEmpty);
                int i13 = 8;
                if (searchView.N0 && !searchView.R && zIsEmpty) {
                    searchView.f979w.setVisibility(8);
                    i13 = 0;
                }
                searchView.f981y.setVisibility(i13);
                searchView.t();
                searchView.w();
                charSequence.toString();
                break;
        }
    }

    private final void a(Editable editable) {
    }

    private final void b(Editable editable) {
    }

    private final void c(Editable editable) {
    }

    private final void d(int i10, int i11, int i12, CharSequence charSequence) {
    }

    private final void e(int i10, int i11, int i12, CharSequence charSequence) {
    }

    private final void f(int i10, int i11, int i12, CharSequence charSequence) {
    }

    private final void g(int i10, int i11, int i12, CharSequence charSequence) {
    }

    private final void h(int i10, int i11, int i12, CharSequence charSequence) {
    }

    private final void i(int i10, int i11, int i12, CharSequence charSequence) {
    }

    private final void j(int i10, int i11, int i12, CharSequence charSequence) {
    }

    private final void k(int i10, int i11, int i12, CharSequence charSequence) {
    }

    private final void l(int i10, int i11, int i12, CharSequence charSequence) {
    }

    private final void m(int i10, int i11, int i12, CharSequence charSequence) {
    }

    private final void n(int i10, int i11, int i12, CharSequence charSequence) {
    }
}
