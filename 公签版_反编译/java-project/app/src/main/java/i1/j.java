package i1;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextWatcher;
import android.widget.EditText;
import androidx.emoji2.text.l;

/* loaded from: classes.dex */
public final class j implements TextWatcher {

    /* renamed from: a, reason: collision with root package name */
    public final EditText f8422a;

    /* renamed from: b, reason: collision with root package name */
    public i f8423b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f8424c = true;

    public j(EditText editText) {
        this.f8422a = editText;
    }

    public static void a(int i10, EditText editText) {
        int length;
        if (i10 == 1 && editText != null && editText.isAttachedToWindow()) {
            Editable editableText = editText.getEditableText();
            int selectionStart = Selection.getSelectionStart(editableText);
            int selectionEnd = Selection.getSelectionEnd(editableText);
            l lVarA = l.a();
            if (editableText == null) {
                length = 0;
            } else {
                lVarA.getClass();
                length = editableText.length();
            }
            lVarA.f(0, length, editableText);
            if (selectionStart >= 0 && selectionEnd >= 0) {
                Selection.setSelection(editableText, selectionStart, selectionEnd);
            } else if (selectionStart >= 0) {
                Selection.setSelection(editableText, selectionStart);
            } else if (selectionEnd >= 0) {
                Selection.setSelection(editableText, selectionEnd);
            }
        }
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        EditText editText = this.f8422a;
        if (editText.isInEditMode() || !this.f8424c || l.f1111j == null || i11 > i12 || !(charSequence instanceof Spannable)) {
            return;
        }
        int iB = l.a().b();
        if (iB != 0) {
            if (iB == 1) {
                l.a().f(i10, i12 + i10, (Spannable) charSequence);
                return;
            } else if (iB != 3) {
                return;
            }
        }
        l lVarA = l.a();
        if (this.f8423b == null) {
            this.f8423b = new i(editText);
        }
        lVarA.g(this.f8423b);
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
    }
}
