package androidx.emoji2.text;

import android.os.Build;
import android.text.Spannable;
import android.text.SpannableString;
import j$.util.stream.IntStream;
import java.util.stream.IntStream;

/* loaded from: classes.dex */
public final class a0 implements Spannable {

    /* renamed from: a, reason: collision with root package name */
    public boolean f1100a = false;

    /* renamed from: b, reason: collision with root package name */
    public Spannable f1101b;

    public a0(Spannable spannable) {
        this.f1101b = spannable;
    }

    public final void a() {
        Spannable spannable = this.f1101b;
        if (!this.f1100a) {
            if ((Build.VERSION.SDK_INT < 28 ? new m7.e(4) : new z()).j(spannable)) {
                this.f1101b = new SpannableString(spannable);
            }
        }
        this.f1100a = true;
    }

    @Override // java.lang.CharSequence
    public final char charAt(int i10) {
        return this.f1101b.charAt(i10);
    }

    @Override // java.lang.CharSequence
    public final IntStream chars() {
        return IntStream.Wrapper.convert(IntStream.VivifiedWrapper.convert(this.f1101b.chars()));
    }

    @Override // java.lang.CharSequence
    public final java.util.stream.IntStream codePoints() {
        return IntStream.Wrapper.convert(IntStream.VivifiedWrapper.convert(this.f1101b.codePoints()));
    }

    @Override // android.text.Spanned
    public final int getSpanEnd(Object obj) {
        return this.f1101b.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public final int getSpanFlags(Object obj) {
        return this.f1101b.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public final int getSpanStart(Object obj) {
        return this.f1101b.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    public final Object[] getSpans(int i10, int i11, Class cls) {
        return this.f1101b.getSpans(i10, i11, cls);
    }

    @Override // java.lang.CharSequence
    public final int length() {
        return this.f1101b.length();
    }

    @Override // android.text.Spanned
    public final int nextSpanTransition(int i10, int i11, Class cls) {
        return this.f1101b.nextSpanTransition(i10, i11, cls);
    }

    @Override // android.text.Spannable
    public final void removeSpan(Object obj) {
        a();
        this.f1101b.removeSpan(obj);
    }

    @Override // android.text.Spannable
    public final void setSpan(Object obj, int i10, int i11, int i12) {
        a();
        this.f1101b.setSpan(obj, i10, i11, i12);
    }

    @Override // java.lang.CharSequence
    public final CharSequence subSequence(int i10, int i11) {
        return this.f1101b.subSequence(i10, i11);
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        return this.f1101b.toString();
    }

    public a0(CharSequence charSequence) {
        this.f1101b = new SpannableString(charSequence);
    }

    @Override // java.lang.CharSequence
    public final j$.util.stream.IntStream chars() {
        return IntStream.VivifiedWrapper.convert(this.f1101b.chars());
    }

    @Override // java.lang.CharSequence
    public final j$.util.stream.IntStream codePoints() {
        return IntStream.VivifiedWrapper.convert(this.f1101b.codePoints());
    }
}
