package i1;

import android.os.Bundle;
import android.text.Editable;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.widget.EditText;
import androidx.emoji2.text.l;
import ha.l2;

/* loaded from: classes.dex */
public final class c extends InputConnectionWrapper {

    /* renamed from: a, reason: collision with root package name */
    public final EditText f8409a;

    /* renamed from: b, reason: collision with root package name */
    public final l2 f8410b;

    public c(EditText editText, InputConnection inputConnection, EditorInfo editorInfo) {
        l2 l2Var = new l2(7);
        super(inputConnection, false);
        this.f8409a = editText;
        this.f8410b = l2Var;
        if (l.f1111j != null) {
            l lVarA = l.a();
            if (lVarA.b() != 1 || editorInfo == null) {
                return;
            }
            if (editorInfo.extras == null) {
                editorInfo.extras = new Bundle();
            }
            lVarA.f1116e.J(editorInfo);
        }
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingText(int i10, int i11) {
        Editable editableText = this.f8409a.getEditableText();
        this.f8410b.getClass();
        return l2.I(this, editableText, i10, i11, false) || super.deleteSurroundingText(i10, i11);
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingTextInCodePoints(int i10, int i11) {
        Editable editableText = this.f8409a.getEditableText();
        this.f8410b.getClass();
        return l2.I(this, editableText, i10, i11, true) || super.deleteSurroundingTextInCodePoints(i10, i11);
    }
}
