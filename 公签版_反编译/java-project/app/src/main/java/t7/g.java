package t7;

/* loaded from: classes.dex */
public enum g extends k {
    public g() {
        super("ALWAYS_TRUE", 0);
    }

    @Override // t7.e
    public final boolean apply(Object obj) {
        return true;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "Predicates.alwaysTrue()";
    }
}
