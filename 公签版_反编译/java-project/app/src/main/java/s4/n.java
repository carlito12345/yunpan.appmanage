package s4;

/* loaded from: classes.dex */
public final class n implements Comparable {
    public n(int i10, int i11, w4.k kVar) {
        if (i10 < 0) {
            throw new IllegalArgumentException("address < 0");
        }
        if (i11 == 0) {
            throw new NullPointerException("disposition == null");
        }
        try {
            kVar.getClass();
            throw new NullPointerException("spec.getLocalItem() == null");
        } catch (NullPointerException unused) {
            throw new NullPointerException("spec == null");
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        ((n) obj).getClass();
        throw null;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof n)) {
            return false;
        }
        ((n) obj).getClass();
        throw null;
    }

    public final String toString() {
        return Integer.toHexString(0) + " null null";
    }
}
