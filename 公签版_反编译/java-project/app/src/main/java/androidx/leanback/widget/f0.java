package androidx.leanback.widget;

import android.os.Handler;
import android.text.Editable;
import android.text.TextWatcher;

/* loaded from: classes.dex */
public final class f0 implements TextWatcher {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e0 f1640a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SearchBar f1641b;

    public f0(SearchBar searchBar, e0 e0Var) {
        this.f1641b = searchBar;
        this.f1640a = e0Var;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        SearchBar searchBar = this.f1641b;
        if (searchBar.f1568x) {
            return;
        }
        Handler handler = searchBar.f1556h;
        e0 e0Var = this.f1640a;
        handler.removeCallbacks(e0Var);
        handler.post(e0Var);
    }
}
