package androidx.leanback.widget;

/* loaded from: classes.dex */
public final class x0 {

    /* renamed from: c, reason: collision with root package name */
    public int f1735c;

    /* renamed from: d, reason: collision with root package name */
    public int f1736d;

    /* renamed from: i, reason: collision with root package name */
    public int f1741i;

    /* renamed from: j, reason: collision with root package name */
    public int f1742j;

    /* renamed from: k, reason: collision with root package name */
    public int f1743k;
    public boolean l;

    /* renamed from: e, reason: collision with root package name */
    public int f1737e = 2;

    /* renamed from: f, reason: collision with root package name */
    public int f1738f = 3;

    /* renamed from: g, reason: collision with root package name */
    public int f1739g = 0;

    /* renamed from: h, reason: collision with root package name */
    public float f1740h = 50.0f;

    /* renamed from: b, reason: collision with root package name */
    public int f1734b = Integer.MIN_VALUE;

    /* renamed from: a, reason: collision with root package name */
    public int f1733a = Integer.MAX_VALUE;

    public final int a() {
        if (this.l) {
            int i10 = this.f1739g;
            int i11 = i10 >= 0 ? this.f1741i - i10 : -i10;
            float f10 = this.f1740h;
            return f10 != -1.0f ? i11 - ((int) ((this.f1741i * f10) / 100.0f)) : i11;
        }
        int i12 = this.f1739g;
        if (i12 < 0) {
            i12 += this.f1741i;
        }
        float f11 = this.f1740h;
        return f11 != -1.0f ? i12 + ((int) ((this.f1741i * f11) / 100.0f)) : i12;
    }

    public final int b(int i10) {
        int i11;
        int i12;
        int i13 = this.f1741i;
        int iA = a();
        int i14 = this.f1734b;
        boolean z = i14 == Integer.MIN_VALUE;
        int i15 = this.f1733a;
        boolean z4 = i15 == Integer.MAX_VALUE;
        if (!z) {
            int i16 = this.f1742j;
            int i17 = iA - i16;
            if (this.l ? (this.f1738f & 2) != 0 : (this.f1738f & 1) != 0) {
                if (i10 - i14 <= i17) {
                    int i18 = i14 - i16;
                    return (z4 || i18 <= (i12 = this.f1735c)) ? i18 : i12;
                }
            }
        }
        if (!z4) {
            int i19 = this.f1743k;
            int i20 = (i13 - iA) - i19;
            if (this.l ? (1 & this.f1738f) != 0 : (this.f1738f & 2) != 0) {
                if (i15 - i10 <= i20) {
                    int i21 = i15 - (i13 - i19);
                    return (z || i21 >= (i11 = this.f1736d)) ? i21 : i11;
                }
            }
        }
        return i10 - iA;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0035, code lost:
    
        r6.f1736d = r0 - r6.f1742j;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0051, code lost:
    
        r6.f1735c = (r4 - r6.f1742j) - r7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c(int i10, int i11, int i12, int i13) {
        this.f1734b = i10;
        this.f1733a = i11;
        int i14 = (this.f1741i - this.f1742j) - this.f1743k;
        int iA = a();
        int i15 = this.f1734b;
        boolean z = i15 == Integer.MIN_VALUE;
        int i16 = this.f1733a;
        boolean z4 = i16 == Integer.MAX_VALUE;
        if (!z) {
            if (this.l) {
                this.f1736d = i12 - iA;
            } else {
                this.f1736d = i12 - iA;
            }
        }
        if (!z4) {
            if (this.l) {
                this.f1735c = i13 - iA;
            } else {
                this.f1735c = i13 - iA;
            }
        }
        if (z4 || z) {
            return;
        }
        if (this.l) {
            int i17 = this.f1738f;
            if ((i17 & 1) != 0) {
                if ((this.f1737e & 1) != 0) {
                    this.f1735c = Math.max(this.f1735c, i12 - iA);
                }
                this.f1736d = Math.min(this.f1736d, this.f1735c);
                return;
            } else {
                if ((i17 & 2) != 0) {
                    if ((this.f1737e & 2) != 0) {
                        this.f1736d = Math.min(this.f1736d, i13 - iA);
                    }
                    this.f1735c = Math.max(this.f1736d, this.f1735c);
                    return;
                }
                return;
            }
        }
        int i18 = this.f1738f;
        if ((i18 & 1) != 0) {
            if ((this.f1737e & 1) != 0) {
                this.f1736d = Math.min(this.f1736d, i13 - iA);
            }
            this.f1735c = Math.max(this.f1736d, this.f1735c);
        } else if ((i18 & 2) != 0) {
            if ((this.f1737e & 2) != 0) {
                this.f1735c = Math.max(this.f1735c, i12 - iA);
            }
            this.f1736d = Math.min(this.f1736d, this.f1735c);
        }
    }

    public final String toString() {
        return " min:" + this.f1734b + " " + this.f1736d + " max:" + this.f1733a + " " + this.f1735c;
    }
}
