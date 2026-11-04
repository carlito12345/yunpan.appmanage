package q7;

import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import com.yunpan.appmanage.R;
import ha.g9;

/* loaded from: classes.dex */
public final class x extends q {

    /* renamed from: e, reason: collision with root package name */
    public final int f13156e;

    /* renamed from: f, reason: collision with root package name */
    public EditText f13157f;

    /* renamed from: g, reason: collision with root package name */
    public final g9 f13158g;

    public x(p pVar, int i10) {
        super(pVar);
        this.f13156e = R.drawable.design_password_eye;
        this.f13158g = new g9(23, this);
        if (i10 != 0) {
            this.f13156e = i10;
        }
    }

    @Override // q7.q
    public final void b() {
        q();
    }

    @Override // q7.q
    public final int c() {
        return R.string.password_toggle_content_description;
    }

    @Override // q7.q
    public final int d() {
        return this.f13156e;
    }

    @Override // q7.q
    public final View.OnClickListener f() {
        return this.f13158g;
    }

    @Override // q7.q
    public final boolean k() {
        return true;
    }

    @Override // q7.q
    public final boolean l() {
        EditText editText = this.f13157f;
        return !(editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod));
    }

    @Override // q7.q
    public final void m(EditText editText) {
        this.f13157f = editText;
        q();
    }

    @Override // q7.q
    public final void r() {
        EditText editText = this.f13157f;
        if (editText != null) {
            if (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224) {
                this.f13157f.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
        }
    }

    @Override // q7.q
    public final void s() {
        EditText editText = this.f13157f;
        if (editText != null) {
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }
}
