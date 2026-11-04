package androidx.leanback.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.KeyEvent;

/* loaded from: classes.dex */
public class SearchEditText extends u0 {

    /* renamed from: h, reason: collision with root package name */
    public l0 f1570h;

    public SearchEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onKeyPreIme(int i10, KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() != 4) {
            return super.onKeyPreIme(i10, keyEvent);
        }
        l0 l0Var = this.f1570h;
        if (l0Var == null) {
            return false;
        }
        ((SearchBar) ((a1.i) l0Var).f76b).getClass();
        return false;
    }

    @Override // androidx.leanback.widget.u0, android.widget.TextView
    public /* bridge */ /* synthetic */ void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(callback);
    }

    public void setFinalRecognizedText(CharSequence charSequence) {
        setText(charSequence);
        bringPointIntoView(length());
    }

    public void setOnKeyboardDismissListener(l0 l0Var) {
        this.f1570h = l0Var;
    }
}
