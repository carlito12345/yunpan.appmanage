package ea;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;

/* loaded from: classes.dex */
public final class a implements TextWatcher {

    /* renamed from: a, reason: collision with root package name */
    public final int f4820a;

    /* renamed from: b, reason: collision with root package name */
    public final EditText f4821b;

    /* renamed from: c, reason: collision with root package name */
    public final d f4822c;

    public a(int i10, EditText editText, d dVar) {
        this.f4820a = i10;
        this.f4821b = editText;
        this.f4822c = dVar;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        this.f4822c.a(this.f4820a, this.f4821b);
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
    }
}
