package androidx.emoji2.text;

import android.graphics.ImageDecoder;
import android.text.PrecomputedText;

/* loaded from: classes.dex */
public abstract /* synthetic */ class b {
    public static /* bridge */ /* synthetic */ ImageDecoder.Source g(Object obj) {
        return (ImageDecoder.Source) obj;
    }

    public static /* bridge */ /* synthetic */ void y(Object obj) {
    }

    public static /* bridge */ /* synthetic */ boolean z(CharSequence charSequence) {
        return charSequence instanceof PrecomputedText;
    }
}
