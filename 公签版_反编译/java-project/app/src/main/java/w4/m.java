package w4;

/* loaded from: classes.dex */
public final class m extends b5.f {

    /* renamed from: b, reason: collision with root package name */
    public final k[] f17469b;

    /* renamed from: c, reason: collision with root package name */
    public int f17470c;

    static {
        new m(0);
    }

    public m(int i10) {
        super(i10 != 0);
        this.f17469b = new k[i10];
        this.f17470c = 0;
    }

    public final k d(int i10) {
        try {
            return this.f17469b[i10];
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IllegalArgumentException("bogus reg");
        }
    }

    public final int e() {
        int i10 = this.f17470c;
        if (i10 >= 0) {
            return i10;
        }
        int i11 = 0;
        for (k kVar : this.f17469b) {
            if (kVar != null) {
                i11++;
            }
        }
        this.f17470c = i11;
        return i11;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        k[] kVarArr = mVar.f17469b;
        k[] kVarArr2 = this.f17469b;
        int length = kVarArr2.length;
        if (length != kVarArr.length || e() != mVar.e()) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            k kVar = kVarArr2[i10];
            Object obj2 = kVarArr[i10];
            if (kVar != obj2 && (kVar == null || !kVar.equals(obj2))) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        k[] kVarArr = this.f17469b;
        int length = kVarArr.length;
        int iHashCode = 0;
        for (int i10 = 0; i10 < length; i10++) {
            k kVar = kVarArr[i10];
            iHashCode = (iHashCode * 31) + (kVar == null ? 0 : kVar.hashCode());
        }
        return iHashCode;
    }

    public final String toString() {
        k[] kVarArr = this.f17469b;
        StringBuilder sb2 = new StringBuilder(kVarArr.length * 25);
        sb2.append('{');
        boolean z = false;
        for (k kVar : kVarArr) {
            if (kVar != null) {
                if (z) {
                    sb2.append(", ");
                } else {
                    z = true;
                }
                sb2.append(kVar);
            }
        }
        sb2.append('}');
        return sb2.toString();
    }
}
