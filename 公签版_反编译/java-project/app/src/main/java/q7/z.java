package q7;

import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;
import w.b1;

/* loaded from: classes.dex */
public final class z extends x0.c {

    /* renamed from: d, reason: collision with root package name */
    public final TextInputLayout f13169d;

    public z(TextInputLayout textInputLayout) {
        this.f13169d = textInputLayout;
    }

    @Override // x0.c
    public final void d(View view, y0.n nVar) {
        View.AccessibilityDelegate accessibilityDelegate = this.f17971a;
        AccessibilityNodeInfo accessibilityNodeInfo = nVar.f18549a;
        accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        TextInputLayout textInputLayout = this.f13169d;
        EditText editText = textInputLayout.getEditText();
        CharSequence text = editText != null ? editText.getText() : null;
        CharSequence hint = textInputLayout.getHint();
        CharSequence error = textInputLayout.getError();
        CharSequence placeholderText = textInputLayout.getPlaceholderText();
        int counterMaxLength = textInputLayout.getCounterMaxLength();
        CharSequence counterOverflowDescription = textInputLayout.getCounterOverflowDescription();
        boolean zIsEmpty = TextUtils.isEmpty(text);
        boolean zIsEmpty2 = TextUtils.isEmpty(hint);
        boolean z = textInputLayout.f3691j1;
        boolean zIsEmpty3 = TextUtils.isEmpty(error);
        boolean z4 = (zIsEmpty3 && TextUtils.isEmpty(counterOverflowDescription)) ? false : true;
        String string = !zIsEmpty2 ? hint.toString() : "";
        y yVar = textInputLayout.f3674b;
        b1 b1Var = yVar.f13160b;
        if (b1Var.getVisibility() == 0) {
            accessibilityNodeInfo.setLabelFor(b1Var);
            if (Build.VERSION.SDK_INT >= 22) {
                accessibilityNodeInfo.setTraversalAfter(b1Var);
            }
        } else if (Build.VERSION.SDK_INT >= 22) {
            accessibilityNodeInfo.setTraversalAfter(yVar.f13162d);
        }
        if (!zIsEmpty) {
            nVar.o(text);
        } else if (!TextUtils.isEmpty(string)) {
            nVar.o(string);
            if (!z && placeholderText != null) {
                nVar.o(string + ", " + ((Object) placeholderText));
            }
        } else if (placeholderText != null) {
            nVar.o(placeholderText);
        }
        if (!TextUtils.isEmpty(string)) {
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 26) {
                nVar.m(string);
            } else {
                if (!zIsEmpty) {
                    string = ((Object) text) + ", " + string;
                }
                nVar.o(string);
            }
            if (i10 >= 26) {
                accessibilityNodeInfo.setShowingHintText(zIsEmpty);
            } else {
                nVar.i(4, zIsEmpty);
            }
        }
        if (text == null || text.length() != counterMaxLength) {
            counterMaxLength = -1;
        }
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 21) {
            accessibilityNodeInfo.setMaxTextLength(counterMaxLength);
        }
        if (z4) {
            if (zIsEmpty3) {
                error = counterOverflowDescription;
            }
            if (i11 >= 21) {
                accessibilityNodeInfo.setError(error);
            }
        }
        b1 b1Var2 = textInputLayout.f3690j.f13143y;
        if (b1Var2 != null) {
            accessibilityNodeInfo.setLabelFor(b1Var2);
        }
        textInputLayout.f3676c.b().n(nVar);
    }

    @Override // x0.c
    public final void e(View view, AccessibilityEvent accessibilityEvent) {
        super.e(view, accessibilityEvent);
        this.f13169d.f3676c.b().o(accessibilityEvent);
    }
}
