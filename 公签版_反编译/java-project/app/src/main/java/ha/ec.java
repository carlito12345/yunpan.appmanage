package ha;

import android.text.Editable;
import android.text.TextWatcher;

/* loaded from: classes.dex */
public final class ec implements TextWatcher {
    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        try {
            String strTrim = editable.toString().trim();
            if (strTrim.isEmpty()) {
                strTrim = "su";
            }
            com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
            if (strTrim.equals(wVar.f4110b0)) {
                return;
            }
            wVar.f4110b0 = strTrim;
            try {
                wVar.f4123i.m("SuCommand", strTrim);
            } catch (Exception unused) {
            }
            wVar.m();
        } catch (Exception unused2) {
        }
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
    }
}
