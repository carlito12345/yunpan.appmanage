package ic;

/* loaded from: classes.dex */
public enum b implements kc.a {
    INSTANCE,
    /* JADX INFO: Fake field, exist only in values array */
    NEVER;

    @Override // kc.a
    public final int a() {
        return 2;
    }

    @Override // kc.d
    public final boolean isEmpty() {
        return true;
    }

    @Override // kc.d
    public final boolean offer(Object obj) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // kc.d
    public final Object poll() {
        return null;
    }

    @Override // gc.b
    public final void c() {
    }

    @Override // kc.d
    public final void clear() {
    }
}
