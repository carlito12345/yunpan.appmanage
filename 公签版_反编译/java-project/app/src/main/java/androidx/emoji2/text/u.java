package androidx.emoji2.text;

import android.os.Build;
import android.text.Editable;
import android.text.SpanWatcher;
import android.text.Spannable;
import android.text.TextWatcher;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class u implements TextWatcher, SpanWatcher {

    /* renamed from: a, reason: collision with root package name */
    public final Object f1149a;

    /* renamed from: b, reason: collision with root package name */
    public final AtomicInteger f1150b = new AtomicInteger(0);

    public u(Object obj) {
        this.f1149a = obj;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        ((TextWatcher) this.f1149a).afterTextChanged(editable);
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        ((TextWatcher) this.f1149a).beforeTextChanged(charSequence, i10, i11, i12);
    }

    @Override // android.text.SpanWatcher
    public final void onSpanAdded(Spannable spannable, Object obj, int i10, int i11) {
        if (this.f1150b.get() <= 0 || !(obj instanceof w)) {
            ((SpanWatcher) this.f1149a).onSpanAdded(spannable, obj, i10, i11);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x001c A[PHI: r11
  0x001c: PHI (r11v1 int) = (r11v0 int), (r11v3 int) binds: [B:8:0x0011, B:12:0x0017] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.text.SpanWatcher
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onSpanChanged(Spannable spannable, Object obj, int i10, int i11, int i12, int i13) {
        int i14;
        int i15;
        if (this.f1150b.get() <= 0 || !(obj instanceof w)) {
            if (Build.VERSION.SDK_INT >= 28) {
                i14 = i10;
                i15 = i12;
            } else {
                if (i10 > i11) {
                    i10 = 0;
                }
                if (i12 > i13) {
                    i14 = i10;
                    i15 = 0;
                }
            }
            ((SpanWatcher) this.f1149a).onSpanChanged(spannable, obj, i14, i11, i15, i13);
        }
    }

    @Override // android.text.SpanWatcher
    public final void onSpanRemoved(Spannable spannable, Object obj, int i10, int i11) {
        if (this.f1150b.get() <= 0 || !(obj instanceof w)) {
            ((SpanWatcher) this.f1149a).onSpanRemoved(spannable, obj, i10, i11);
        }
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        ((TextWatcher) this.f1149a).onTextChanged(charSequence, i10, i11, i12);
    }
}
