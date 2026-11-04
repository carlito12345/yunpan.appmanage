package v0;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: e, reason: collision with root package name */
    public static final byte[] f16301e = new byte[1792];

    /* renamed from: a, reason: collision with root package name */
    public final CharSequence f16302a;

    /* renamed from: b, reason: collision with root package name */
    public final int f16303b;

    /* renamed from: c, reason: collision with root package name */
    public int f16304c;

    /* renamed from: d, reason: collision with root package name */
    public char f16305d;

    static {
        for (int i10 = 0; i10 < 1792; i10++) {
            f16301e[i10] = Character.getDirectionality(i10);
        }
    }

    public a(CharSequence charSequence) {
        this.f16302a = charSequence;
        this.f16303b = charSequence.length();
    }

    public final byte a() {
        int i10 = this.f16304c - 1;
        CharSequence charSequence = this.f16302a;
        char cCharAt = charSequence.charAt(i10);
        this.f16305d = cCharAt;
        if (Character.isLowSurrogate(cCharAt)) {
            int iCodePointBefore = Character.codePointBefore(charSequence, this.f16304c);
            this.f16304c -= Character.charCount(iCodePointBefore);
            return Character.getDirectionality(iCodePointBefore);
        }
        this.f16304c--;
        char c7 = this.f16305d;
        return c7 < 1792 ? f16301e[c7] : Character.getDirectionality(c7);
    }
}
