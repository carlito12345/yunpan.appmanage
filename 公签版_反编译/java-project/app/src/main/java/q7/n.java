package q7;

import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;

/* loaded from: classes.dex */
public final class n {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ p f13088a;

    public n(p pVar) {
        this.f13088a = pVar;
    }

    public final void a(TextInputLayout textInputLayout) {
        p pVar = this.f13088a;
        if (pVar.f13107t == textInputLayout.getEditText()) {
            return;
        }
        EditText editText = pVar.f13107t;
        m mVar = pVar.f13110x;
        if (editText != null) {
            editText.removeTextChangedListener(mVar);
            if (pVar.f13107t.getOnFocusChangeListener() == pVar.b().e()) {
                pVar.f13107t.setOnFocusChangeListener(null);
            }
        }
        EditText editText2 = textInputLayout.getEditText();
        pVar.f13107t = editText2;
        if (editText2 != null) {
            editText2.addTextChangedListener(mVar);
        }
        pVar.b().m(pVar.f13107t);
        pVar.j(pVar.b());
    }
}
