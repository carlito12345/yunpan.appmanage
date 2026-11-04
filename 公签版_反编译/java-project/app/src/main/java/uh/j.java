package uh;

/* loaded from: classes3.dex */
public enum j implements e {
    SENSITIVE,
    INSENSITIVE,
    /* JADX INFO: Fake field, exist only in values array */
    STRICT,
    LENIENT;

    @Override // uh.e
    public final boolean a(androidx.room.s sVar, StringBuilder sb2) {
        return true;
    }

    @Override // java.lang.Enum
    public final String toString() {
        int iOrdinal = ordinal();
        if (iOrdinal == 0) {
            return "ParseCaseSensitive(true)";
        }
        if (iOrdinal == 1) {
            return "ParseCaseSensitive(false)";
        }
        if (iOrdinal == 2) {
            return "ParseStrict(true)";
        }
        if (iOrdinal == 3) {
            return "ParseStrict(false)";
        }
        throw new IllegalStateException("Unreachable");
    }
}
