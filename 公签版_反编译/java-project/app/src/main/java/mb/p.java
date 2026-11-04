package mb;

import j$.util.Objects;

/* loaded from: classes.dex */
public class p implements CharSequence {

    /* renamed from: a, reason: collision with root package name */
    public final CharSequence f11104a;

    /* renamed from: b, reason: collision with root package name */
    public final int f11105b;

    /* renamed from: c, reason: collision with root package name */
    public final int f11106c;

    /* renamed from: d, reason: collision with root package name */
    public vb.j f11107d;

    public p(int i10, int i11, CharSequence charSequence) {
        Objects.requireNonNull(charSequence);
        this.f11104a = charSequence;
        this.f11105b = i10;
        this.f11106c = i11;
        if (i10 > i11) {
            throw new IllegalArgumentException("start > end");
        }
        if (i10 < 0) {
            throw new StringIndexOutOfBoundsException(i10);
        }
        if (i11 > charSequence.length()) {
            throw new StringIndexOutOfBoundsException(i11);
        }
    }

    public final void a() {
        vb.j jVar = this.f11107d;
        if (jVar != null) {
            if (jVar.f16738e.r != jVar.f16736c || jVar.f16737d) {
                throw new hb.a();
            }
        }
    }

    @Override // java.lang.CharSequence
    public char charAt(int i10) {
        if (i10 < 0 || i10 >= length()) {
            throw new StringIndexOutOfBoundsException(i10);
        }
        a();
        return this.f11104a.charAt(this.f11105b + i10);
    }

    @Override // java.lang.CharSequence
    public final int length() {
        a();
        return this.f11106c - this.f11105b;
    }

    @Override // java.lang.CharSequence
    public final CharSequence subSequence(int i10, int i11) {
        if (i10 < 0 || i10 >= length()) {
            throw new StringIndexOutOfBoundsException(i10);
        }
        if (i11 < 0 || i11 >= length()) {
            throw new StringIndexOutOfBoundsException(i11);
        }
        a();
        int i12 = this.f11105b;
        p pVar = new p(i10 + i12, i12 + i11, this.f11104a);
        pVar.f11107d = this.f11107d;
        return pVar;
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        return this.f11104a.subSequence(this.f11105b, this.f11106c).toString();
    }
}
