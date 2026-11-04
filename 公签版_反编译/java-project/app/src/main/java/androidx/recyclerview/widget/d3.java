package androidx.recyclerview.widget;

/* loaded from: classes.dex */
public final class d3 {

    /* renamed from: a, reason: collision with root package name */
    public int f2084a = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f2085b;

    /* renamed from: c, reason: collision with root package name */
    public int f2086c;

    /* renamed from: d, reason: collision with root package name */
    public int f2087d;

    /* renamed from: e, reason: collision with root package name */
    public int f2088e;

    public final boolean a() {
        int i10 = this.f2084a;
        int i11 = 2;
        if ((i10 & 7) != 0) {
            int i12 = this.f2087d;
            int i13 = this.f2085b;
            if (((i12 > i13 ? 1 : i12 == i13 ? 2 : 4) & i10) == 0) {
                return false;
            }
        }
        if ((i10 & 112) != 0) {
            int i14 = this.f2087d;
            int i15 = this.f2086c;
            if ((((i14 > i15 ? 1 : i14 == i15 ? 2 : 4) << 4) & i10) == 0) {
                return false;
            }
        }
        if ((i10 & 1792) != 0) {
            int i16 = this.f2088e;
            int i17 = this.f2085b;
            if ((((i16 > i17 ? 1 : i16 == i17 ? 2 : 4) << 8) & i10) == 0) {
                return false;
            }
        }
        if ((i10 & 28672) != 0) {
            int i18 = this.f2088e;
            int i19 = this.f2086c;
            if (i18 > i19) {
                i11 = 1;
            } else if (i18 != i19) {
                i11 = 4;
            }
            if ((i10 & (i11 << 12)) == 0) {
                return false;
            }
        }
        return true;
    }
}
