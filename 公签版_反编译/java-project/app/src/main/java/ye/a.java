package ye;

import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class a implements Iterable, ve.a {

    /* renamed from: a, reason: collision with root package name */
    public final int f19142a;

    /* renamed from: b, reason: collision with root package name */
    public final int f19143b;

    /* renamed from: c, reason: collision with root package name */
    public final int f19144c;

    public a(int i10, int i11, int i12) {
        if (i12 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (i12 == Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
        this.f19142a = i10;
        if (i12 > 0) {
            if (i10 < i11) {
                int i13 = i11 % i12;
                int i14 = i10 % i12;
                int i15 = ((i13 < 0 ? i13 + i12 : i13) - (i14 < 0 ? i14 + i12 : i14)) % i12;
                i11 -= i15 < 0 ? i15 + i12 : i15;
            }
        } else {
            if (i12 >= 0) {
                throw new IllegalArgumentException("Step is zero.");
            }
            if (i10 > i11) {
                int i16 = -i12;
                int i17 = i10 % i16;
                int i18 = i11 % i16;
                int i19 = ((i17 < 0 ? i17 + i16 : i17) - (i18 < 0 ? i18 + i16 : i18)) % i16;
                i11 += i19 < 0 ? i19 + i16 : i19;
            }
        }
        this.f19143b = i11;
        this.f19144c = i12;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new b(this.f19142a, this.f19143b, this.f19144c);
    }
}
