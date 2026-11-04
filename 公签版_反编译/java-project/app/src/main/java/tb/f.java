package tb;

import android.R;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.ExtractedTextRequest;
import android.view.inputmethod.SurroundingText;
import android.view.inputmethod.TextAttribute;
import android.view.inputmethod.TextSnapshot;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import io.github.rosemoe.sora.widget.CodeEditor;

/* loaded from: classes.dex */
public final class f extends BaseInputConnection {

    /* renamed from: d, reason: collision with root package name */
    public static final sb.d f14931d = sb.d.a("EditorInputConnection");

    /* renamed from: a, reason: collision with root package name */
    public final CodeEditor f14932a;

    /* renamed from: b, reason: collision with root package name */
    public final mb.d f14933b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f14934c;

    public f(CodeEditor codeEditor) {
        super(codeEditor, true);
        this.f14933b = new mb.d();
        this.f14934c = false;
        this.f14932a = codeEditor;
        codeEditor.l0(db.d.class, new db.m(1, this));
    }

    public final void a(CharSequence charSequence) {
        mb.d dVar = this.f14933b;
        boolean zA = dVar.a();
        CodeEditor codeEditor = this.f14932a;
        if (codeEditor.getProps().f14921m) {
            if (dVar.a()) {
                String string = ((mb.g) codeEditor.getText().subSequence(dVar.f11061a, dVar.f11063c)).toString();
                String string2 = charSequence.toString();
                if (dVar.f11063c != codeEditor.getCursor().f11081c.f11056a || codeEditor.getCursor().a() || !string2.startsWith(string) || string2.length() <= string.length()) {
                    b();
                } else {
                    charSequence = string2.substring(string.length());
                    dVar.f11063c = -1;
                    dVar.f11061a = -1;
                    dVar.f11062b = false;
                }
            }
        } else if (dVar.a()) {
            b();
        }
        codeEditor.u(charSequence, true, true);
        if (zA) {
            endBatchEdit();
        }
    }

    public final void b() {
        mb.d dVar = this.f14933b;
        if (dVar.a()) {
            try {
                this.f14932a.getText().g(dVar.f11061a, dVar.f11063c);
            } catch (IndexOutOfBoundsException e7) {
                e7.printStackTrace();
            }
            dVar.f11063c = -1;
            dVar.f11061a = -1;
            dVar.f11062b = false;
        }
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public final synchronized boolean beginBatchEdit() {
        this.f14932a.getProps().getClass();
        return this.f14932a.getText().b();
    }

    public final CharSequence c(int i10, int i11, int i12) {
        try {
            return d(i10, i11, i12, false);
        } catch (IndexOutOfBoundsException unused) {
            f14931d.getClass();
            return "";
        }
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public final boolean clearMetaKeyStates(int i10) {
        qb.a keyMetaStates = this.f14932a.getKeyMetaStates();
        keyMetaStates.clearMetaKeyState(keyMetaStates.f13183a, keyMetaStates.f13184b, i10);
        return true;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public final synchronized void closeConnection() {
        super.closeConnection();
        mb.g text = this.f14932a.getText();
        while (text.f11068e > 0) {
            text.k();
        }
        mb.d dVar = this.f14933b;
        dVar.f11063c = -1;
        dVar.f11061a = -1;
        dVar.f11062b = false;
        CodeEditor codeEditor = this.f14932a;
        codeEditor.setExtracting(null);
        codeEditor.invalidate();
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public final boolean commitText(CharSequence charSequence, int i10) {
        if (!this.f14932a.N() || charSequence == null) {
            return false;
        }
        if (!SignParameters.NEW_LINE.equals(charSequence.toString())) {
            a(charSequence);
            return true;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        sendKeyEvent(new KeyEvent(jUptimeMillis, jUptimeMillis, 0, 66, 0, 0, -1, 0, 6));
        sendKeyEvent(new KeyEvent(SystemClock.uptimeMillis(), jUptimeMillis, 1, 66, 0, 0, -1, 0, 6));
        return true;
    }

    public final CharSequence d(int i10, int i11, int i12, boolean z) {
        CodeEditor codeEditor = this.f14932a;
        mb.g text = codeEditor.getText();
        if (i10 > i11) {
            i11 = i10;
            i10 = i11;
        }
        int i13 = 0;
        if (i10 < 0) {
            i10 = 0;
        }
        int i14 = text.f11067d;
        if (i11 > i14) {
            i11 = i14;
        }
        if (i11 < i10) {
            i10 = 0;
            i11 = 0;
        }
        if (!z && i11 - i10 > codeEditor.getProps().f14916g) {
            i11 = Math.max(0, codeEditor.getProps().f14916g) + i10;
        }
        String string = ((mb.g) text.subSequence(i10, i11)).toString();
        if (i12 != 1) {
            return string;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string);
        mb.d dVar = this.f14933b;
        if (dVar.a()) {
            try {
                int i15 = dVar.f11061a;
                int i16 = dVar.f11063c;
                int i17 = i15 - i10;
                if (i17 >= spannableStringBuilder.length()) {
                    return spannableStringBuilder;
                }
                if (i17 >= 0) {
                    i13 = i17;
                }
                int length = i16 - i10;
                if (length <= 0) {
                    return spannableStringBuilder;
                }
                if (length >= spannableStringBuilder.length()) {
                    length = spannableStringBuilder.length();
                }
                spannableStringBuilder.setSpan(256, i13, length, 33);
            } catch (IndexOutOfBoundsException unused) {
            }
        }
        return spannableStringBuilder;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingText(int i10, int i11) {
        CodeEditor codeEditor = this.f14932a;
        if (!codeEditor.N() || i10 < 0 || i11 < 0) {
            return false;
        }
        mb.d dVar = this.f14933b;
        if (i10 == 1 && i11 == 0 && !dVar.a()) {
            codeEditor.A();
            return true;
        }
        if (i10 > 0 && i11 > 0) {
            beginBatchEdit();
        }
        boolean zA = dVar.a();
        int i12 = zA ? dVar.f11061a : 0;
        int i13 = zA ? dVar.f11063c : 0;
        int i14 = codeEditor.getCursor().f11081c.f11056a;
        int i15 = i14 - i10;
        if (i15 < 0) {
            i15 = 0;
        }
        codeEditor.getText().g(i15, i14);
        if (zA) {
            int iMax = Math.max(i15, i12);
            int iMax2 = i13 - Math.max(0, Math.min(i14, i13) - iMax);
            int iMax3 = Math.max(0, iMax - i15);
            i13 = iMax2 - iMax3;
            i12 -= iMax3;
        }
        int i16 = codeEditor.getCursor().f11082d.f11056a;
        int i17 = i16 + i11;
        if (i17 > codeEditor.getText().f11067d) {
            i17 = codeEditor.getText().f11067d;
        }
        codeEditor.getText().g(i16, i17);
        if (zA) {
            int iMax4 = Math.max(i16, i12);
            Math.max(0, Math.min(i17, i13) - iMax4);
            Math.max(0, iMax4 - i16);
        }
        if (i10 > 0 && i11 > 0) {
            endBatchEdit();
        }
        return true;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingTextInCodePoints(int i10, int i11) {
        return false;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public final synchronized boolean endBatchEdit() {
        boolean zK;
        zK = this.f14932a.getText().k();
        if (!zK) {
            this.f14932a.p0();
        }
        return zK;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public final boolean finishComposingText() {
        CodeEditor codeEditor = this.f14932a;
        if (!codeEditor.N()) {
            return false;
        }
        codeEditor.getProps().getClass();
        mb.d dVar = this.f14933b;
        dVar.f11063c = -1;
        dVar.f11061a = -1;
        dVar.f11062b = false;
        endBatchEdit();
        codeEditor.n0();
        codeEditor.invalidate();
        return true;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public final int getCursorCapsMode(int i10) {
        CodeEditor codeEditor = this.f14932a;
        return TextUtils.getCapsMode(codeEditor.getText(), codeEditor.getCursor().f11081c.f11056a, i10);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public final ExtractedText getExtractedText(ExtractedTextRequest extractedTextRequest, int i10) {
        CodeEditor codeEditor = this.f14932a;
        codeEditor.getProps().getClass();
        codeEditor.getProps().getClass();
        if ((i10 & 1) != 0) {
            codeEditor.setExtracting(extractedTextRequest);
        } else {
            codeEditor.setExtracting(null);
        }
        return codeEditor.G(extractedTextRequest);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public final Handler getHandler() {
        return this.f14932a.getHandler();
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public final CharSequence getSelectedText(int i10) {
        CodeEditor codeEditor = this.f14932a;
        codeEditor.getProps().getClass();
        int i11 = codeEditor.getCursor().f11081c.f11056a;
        int i12 = codeEditor.getCursor().f11082d.f11056a;
        if (i11 == i12) {
            return null;
        }
        return c(i11, i12, i10);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public final SurroundingText getSurroundingText(int i10, int i11, int i12) {
        CharSequence charSequenceD;
        CodeEditor codeEditor = this.f14932a;
        codeEditor.getProps().getClass();
        if ((i10 | i11) < 0) {
            throw new IllegalArgumentException("length < 0");
        }
        int iMin = Math.min(Math.max(0, codeEditor.getCursor().f11081c.f11056a - i10), codeEditor.getCursor().f11081c.f11056a);
        try {
            charSequenceD = d(iMin, Math.min(codeEditor.getText().f11067d, codeEditor.getCursor().f11082d.f11056a + i11), i12, true);
        } catch (IndexOutOfBoundsException unused) {
            f14931d.getClass();
            charSequenceD = "";
        }
        return new SurroundingText(charSequenceD, codeEditor.getCursor().f11081c.f11056a - iMin, codeEditor.getCursor().f11082d.f11056a - iMin, iMin);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public final CharSequence getTextAfterCursor(int i10, int i11) {
        CodeEditor codeEditor = this.f14932a;
        codeEditor.getProps().getClass();
        int i12 = codeEditor.getCursor().f11082d.f11056a;
        return c(i12, i10 + i12, i11);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public final CharSequence getTextBeforeCursor(int i10, int i11) {
        CodeEditor codeEditor = this.f14932a;
        codeEditor.getProps().getClass();
        int i12 = codeEditor.getCursor().f11081c.f11056a;
        return c(Math.max(i12 - i10, i12 - codeEditor.getProps().f14916g), i12, i11);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public final boolean performContextMenuAction(int i10) {
        CodeEditor codeEditor = this.f14932a;
        switch (i10) {
            case R.id.selectAll:
                codeEditor.d0();
                return true;
            case R.id.cut:
                codeEditor.v(true);
                if (codeEditor.getCursor().a()) {
                    codeEditor.A();
                }
                return true;
            case R.id.copy:
                codeEditor.v(true);
                return true;
            case R.id.paste:
                break;
            default:
                switch (i10) {
                    case R.id.undo:
                        codeEditor.m0();
                        break;
                    case R.id.redo:
                        codeEditor.a0();
                        break;
                }
                return true;
        }
        codeEditor.X();
        return true;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public final boolean performPrivateCommand(String str, Bundle bundle) {
        CodeEditor codeEditor = this.f14932a;
        codeEditor.f8717i.a(new db.a(codeEditor, str));
        return true;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public final boolean replaceText(int i10, int i11, CharSequence charSequence, int i12, TextAttribute textAttribute) {
        int i13 = this.f14932a.getText().f11067d;
        if (i10 < 0 || i11 < 0 || i10 > i11 || i10 > i13 || i11 > i13) {
            return false;
        }
        beginBatchEdit();
        finishComposingText();
        setSelection(i10, i11);
        commitText(charSequence, i12);
        endBatchEdit();
        return true;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public final boolean reportFullscreenMode(boolean z) {
        return false;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public final boolean requestCursorUpdates(int i10) {
        this.f14932a.o0();
        return true;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public final boolean setComposingRegion(int i10, int i11) {
        CodeEditor codeEditor = this.f14932a;
        if (codeEditor.N() && codeEditor.S == 0) {
            codeEditor.getProps().getClass();
            if (i10 == i11) {
                finishComposingText();
                return true;
            }
            if (i10 > i11) {
                i11 = i10;
                i10 = i11;
            }
            if (i10 < 0) {
                i10 = 0;
            }
            try {
                int i12 = codeEditor.getText().f11067d;
                if (i11 > i12) {
                    i11 = i12;
                }
                if (i10 >= i11) {
                    return false;
                }
                mb.d dVar = this.f14933b;
                dVar.f11061a = i10;
                dVar.f11063c = i11;
                codeEditor.invalidate();
                beginBatchEdit();
                return true;
            } catch (IndexOutOfBoundsException unused) {
                f14931d.getClass();
            }
        }
        return false;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public final boolean setComposingText(CharSequence charSequence, int i10) {
        CodeEditor codeEditor = this.f14932a;
        if (!codeEditor.N() || codeEditor.S != 0) {
            return false;
        }
        codeEditor.getProps().getClass();
        if (TextUtils.indexOf(charSequence, '\n') != -1) {
            return false;
        }
        mb.d dVar = this.f14933b;
        if (!dVar.a()) {
            dVar.f11062b = true;
            if (codeEditor.getCursor().a()) {
                codeEditor.A();
            }
            beginBatchEdit();
            codeEditor.u(charSequence, true, true);
            dVar.f11062b = false;
            int length = codeEditor.getCursor().f11081c.f11056a - charSequence.length();
            int i11 = codeEditor.getCursor().f11081c.f11056a;
            dVar.f11061a = length;
            dVar.f11063c = i11;
            codeEditor.n0();
        } else if (dVar.a()) {
            if (codeEditor.getProps().f14922n) {
                String string = charSequence.toString();
                mb.g text = codeEditor.getText();
                String strC = text.C(dVar.f11061a, dVar.f11063c);
                if (!strC.equals(string)) {
                    if (strC.length() < string.length() && string.startsWith(strC)) {
                        mb.b bVarZ = text.n().z(dVar.f11063c);
                        text.r(bVarZ.f11057b, bVarZ.f11058c, string.substring(strC.length()));
                    } else if (strC.length() <= string.length() || !strC.startsWith(string)) {
                        int i12 = dVar.f11061a;
                        int i13 = dVar.f11063c;
                        mb.b bVarZ2 = text.n().z(i12);
                        mb.b bVarZ3 = text.n().z(i13);
                        text.w(bVarZ2.f11057b, bVarZ2.f11058c, string, bVarZ3.f11057b, bVarZ3.f11058c);
                    } else {
                        text.g(dVar.f11063c - (strC.length() - string.length()), dVar.f11063c);
                    }
                }
            } else {
                mb.g text2 = codeEditor.getText();
                int i14 = dVar.f11061a;
                int i15 = dVar.f11063c;
                mb.b bVarZ4 = text2.n().z(i14);
                mb.b bVarZ5 = text2.n().z(i15);
                text2.w(bVarZ4.f11057b, bVarZ4.f11058c, charSequence, bVarZ5.f11057b, bVarZ5.f11058c);
            }
            dVar.f11063c = dVar.f11061a + charSequence.length();
        }
        if (charSequence.length() == 0) {
            finishComposingText();
        }
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean setImeConsumesInput(boolean z) {
        this.f14934c = z;
        this.f14932a.invalidate();
        return true;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public final boolean setSelection(int i10, int i11) {
        CodeEditor codeEditor = this.f14932a;
        boolean z = false;
        if (codeEditor.N()) {
            codeEditor.getProps().getClass();
            if (i10 < 0) {
                i10 = 0;
            } else if (i10 > codeEditor.getText().f11067d) {
                i10 = codeEditor.getText().f11067d;
            }
            if (i11 < 0) {
                i11 = 0;
            } else if (i11 > codeEditor.getText().f11067d) {
                i11 = codeEditor.getText().f11067d;
            }
            if (i10 > i11) {
                int i12 = i11;
                i11 = i10;
                i10 = i12;
            }
            z = true;
            if (i10 == codeEditor.getCursor().f11081c.f11056a && i11 == codeEditor.getCursor().f11082d.f11056a) {
                return true;
            }
            mb.g text = codeEditor.getText();
            mb.b bVarZ = text.n().z(i10);
            mb.b bVarZ2 = text.n().z(i11);
            this.f14932a.j0(bVarZ.f11057b, bVarZ.f11058c, bVarZ2.f11057b, bVarZ2.f11058c, 4, false);
        }
        return z;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public final TextSnapshot takeSnapshot() {
        int i10;
        int i11;
        mb.d dVar = this.f14933b;
        if (dVar.a()) {
            i10 = dVar.f11061a;
            i11 = dVar.f11063c;
        } else {
            i10 = -1;
            i11 = -1;
        }
        return new TextSnapshot(getSurroundingText(1024, 1024, 1), i10, i11, getCursorCapsMode(28672));
    }
}
