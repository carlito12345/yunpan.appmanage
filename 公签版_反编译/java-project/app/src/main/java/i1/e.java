package i1;

import android.text.InputFilter;
import android.text.Spanned;
import android.widget.TextView;
import androidx.emoji2.text.l;

/* loaded from: classes.dex */
public final class e implements InputFilter {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f8413a;

    /* renamed from: b, reason: collision with root package name */
    public d f8414b;

    public e(TextView textView) {
        this.f8413a = textView;
    }

    @Override // android.text.InputFilter
    public final CharSequence filter(CharSequence charSequence, int i10, int i11, Spanned spanned, int i12, int i13) {
        TextView textView = this.f8413a;
        if (textView.isInEditMode()) {
            return charSequence;
        }
        int iB = l.a().b();
        if (iB != 0) {
            if (iB == 1) {
                if ((i13 == 0 && i12 == 0 && spanned.length() == 0 && charSequence == textView.getText()) || charSequence == null) {
                    return charSequence;
                }
                if (i10 != 0 || i11 != charSequence.length()) {
                    charSequence = charSequence.subSequence(i10, i11);
                }
                return l.a().f(0, charSequence.length(), charSequence);
            }
            if (iB != 3) {
                return charSequence;
            }
        }
        l lVarA = l.a();
        if (this.f8414b == null) {
            this.f8414b = new d(textView, this);
        }
        lVarA.g(this.f8414b);
        return charSequence;
    }
}
