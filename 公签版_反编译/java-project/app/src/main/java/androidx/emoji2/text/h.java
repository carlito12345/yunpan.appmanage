package androidx.emoji2.text;

import a2.g1;
import a2.w0;
import android.os.Bundle;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.view.inputmethod.EditorInfo;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class h extends a1.i {

    /* renamed from: c, reason: collision with root package name */
    public volatile g1 f1105c;

    /* renamed from: d, reason: collision with root package name */
    public volatile w0 f1106d;

    public h(l lVar) {
        super(4, lVar);
    }

    @Override // a1.i
    public final void J(EditorInfo editorInfo) {
        Bundle bundle = editorInfo.extras;
        h1.b bVar = (h1.b) this.f1106d.f346b;
        int iA = bVar.a(4);
        bundle.putInt("android.support.text.emoji.emojiCompat_metadataVersion", iA != 0 ? ((ByteBuffer) bVar.f6323d).getInt(iA + bVar.f6320a) : 0);
        Bundle bundle2 = editorInfo.extras;
        ((l) this.f76b).getClass();
        bundle2.putBoolean("android.support.text.emoji.emojiCompat_replaceAll", false);
    }

    @Override // a1.i
    public final void x() {
        l lVar = (l) this.f76b;
        try {
            lVar.f1117f.a(new g(this));
        } catch (Throwable th2) {
            lVar.d(th2);
        }
    }

    @Override // a1.i
    public final CharSequence z(CharSequence charSequence, int i10, int i11, boolean z) {
        a0 a0Var;
        int iCharCount;
        w[] wVarArr;
        g1 g1Var = this.f1105c;
        g1Var.getClass();
        boolean z4 = charSequence instanceof v;
        if (z4) {
            ((v) charSequence).a();
        }
        if (!z4) {
            try {
                a0Var = charSequence instanceof Spannable ? new a0((Spannable) charSequence) : (!(charSequence instanceof Spanned) || ((Spanned) charSequence).nextSpanTransition(i10 + (-1), i11 + 1, w.class) > i11) ? null : new a0(charSequence);
            } finally {
                if (z4) {
                    ((v) charSequence).b();
                }
            }
        }
        if (a0Var != null && (wVarArr = (w[]) a0Var.f1101b.getSpans(i10, i11, w.class)) != null && wVarArr.length > 0) {
            for (w wVar : wVarArr) {
                int spanStart = a0Var.f1101b.getSpanStart(wVar);
                int spanEnd = a0Var.f1101b.getSpanEnd(wVar);
                if (spanStart != i11) {
                    a0Var.removeSpan(wVar);
                }
                i10 = Math.min(spanStart, i10);
                i11 = Math.max(spanEnd, i11);
            }
        }
        if (i10 != i11 && i10 < charSequence.length()) {
            q qVar = new q((t) ((w0) g1Var.f175b).f348d);
            a0 a0Var2 = a0Var;
            int iCodePointAt = Character.codePointAt(charSequence, i10);
            int i12 = 0;
            loop1: while (true) {
                iCharCount = i10;
                while (i10 < i11 && i12 < Integer.MAX_VALUE) {
                    int iA = qVar.a(iCodePointAt);
                    if (iA == 1) {
                        iCharCount += Character.charCount(Character.codePointAt(charSequence, iCharCount));
                        if (iCharCount < i11) {
                            iCodePointAt = Character.codePointAt(charSequence, iCharCount);
                        }
                        i10 = iCharCount;
                    } else if (iA == 2) {
                        i10 += Character.charCount(iCodePointAt);
                        if (i10 < i11) {
                            iCodePointAt = Character.codePointAt(charSequence, i10);
                        }
                    } else if (iA == 3) {
                        if (z || !g1Var.U(charSequence, iCharCount, i10, ((t) qVar.f1134f).f1148b)) {
                            if (a0Var2 == null) {
                                a0Var2 = new a0((Spannable) new SpannableString(charSequence));
                            }
                            a0Var2.setSpan(new w(((t) qVar.f1134f).f1148b), iCharCount, i10, 33);
                            i12++;
                        }
                    }
                }
                break loop1;
            }
            if (qVar.f1129a == 2 && ((t) qVar.f1133e).f1148b != null && ((qVar.f1131c > 1 || qVar.c()) && i12 < Integer.MAX_VALUE && (z || !g1Var.U(charSequence, iCharCount, i10, ((t) qVar.f1133e).f1148b)))) {
                if (a0Var2 == null) {
                    a0Var2 = new a0(charSequence);
                }
                a0Var2.setSpan(new w(((t) qVar.f1133e).f1148b), iCharCount, i10, 33);
            }
            if (a0Var2 != null) {
                Spannable spannable = a0Var2.f1101b;
                if (z4) {
                    ((v) charSequence).b();
                }
                return spannable;
            }
            if (!z4) {
                return charSequence;
            }
        } else if (!z4) {
            return charSequence;
        }
        return charSequence;
    }
}
