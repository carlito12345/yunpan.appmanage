package androidx.lifecycle;

/* loaded from: classes.dex */
public enum m {
    ON_CREATE,
    ON_START,
    ON_RESUME,
    ON_PAUSE,
    ON_STOP,
    ON_DESTROY,
    ON_ANY;

    public static final k Companion = new k();

    public final n a() {
        switch (l.f1781a[ordinal()]) {
            case 1:
            case 2:
                return n.CREATED;
            case 3:
            case 4:
                return n.STARTED;
            case 5:
                return n.RESUMED;
            case 6:
                return n.DESTROYED;
            default:
                throw new IllegalArgumentException(this + " has no target state");
        }
    }
}
