package androidx.lifecycle;

/* loaded from: classes.dex */
public final class k {
    public static m a(n nVar) {
        ue.d.e(nVar, "state");
        int iOrdinal = nVar.ordinal();
        if (iOrdinal == 1) {
            return m.ON_CREATE;
        }
        if (iOrdinal == 2) {
            return m.ON_START;
        }
        if (iOrdinal != 3) {
            return null;
        }
        return m.ON_RESUME;
    }
}
