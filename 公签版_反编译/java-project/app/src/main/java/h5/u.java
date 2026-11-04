package h5;

import java.io.IOException;

/* loaded from: classes.dex */
public final class u implements Appendable {

    /* renamed from: a, reason: collision with root package name */
    public final Appendable f6663a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f6664b = true;

    public u(Appendable appendable) {
        this.f6663a = appendable;
    }

    @Override // java.lang.Appendable
    public final Appendable append(char c7) throws IOException {
        boolean z = this.f6664b;
        Appendable appendable = this.f6663a;
        if (z) {
            this.f6664b = false;
            appendable.append("  ");
        }
        this.f6664b = c7 == '\n';
        appendable.append(c7);
        return this;
    }

    @Override // java.lang.Appendable
    public final Appendable append(CharSequence charSequence) throws IOException {
        if (charSequence == null) {
            charSequence = "";
        }
        append(charSequence, 0, charSequence.length());
        return this;
    }

    @Override // java.lang.Appendable
    public final Appendable append(CharSequence charSequence, int i10, int i11) throws IOException {
        if (charSequence == null) {
            charSequence = "";
        }
        boolean z = this.f6664b;
        Appendable appendable = this.f6663a;
        boolean z4 = false;
        if (z) {
            this.f6664b = false;
            appendable.append("  ");
        }
        if (charSequence.length() > 0 && charSequence.charAt(i11 - 1) == '\n') {
            z4 = true;
        }
        this.f6664b = z4;
        appendable.append(charSequence, i10, i11);
        return this;
    }
}
