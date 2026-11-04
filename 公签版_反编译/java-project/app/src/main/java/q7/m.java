package q7;

import android.text.Editable;

/* loaded from: classes.dex */
public final class m extends g7.k {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ p f13087a;

    public m(p pVar) {
        this.f13087a = pVar;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        this.f13087a.b().a();
    }

    @Override // g7.k, android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        this.f13087a.b().b();
    }
}
