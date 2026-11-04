package j$.util.concurrent;

/* renamed from: j$.util.concurrent.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract class AbstractC0026a extends p {

    /* renamed from: i, reason: collision with root package name */
    final ConcurrentHashMap f9087i;

    /* renamed from: j, reason: collision with root package name */
    l f9088j;

    AbstractC0026a(l[] lVarArr, int i10, int i11, ConcurrentHashMap concurrentHashMap) {
        super(lVarArr, i10, 0, i11);
        this.f9087i = concurrentHashMap;
        a();
    }

    public final boolean hasNext() {
        return this.f9108b != null;
    }

    public final boolean hasMoreElements() {
        return this.f9108b != null;
    }

    public final void remove() {
        l lVar = this.f9088j;
        if (lVar == null) {
            throw new IllegalStateException();
        }
        this.f9088j = null;
        this.f9087i.g(lVar.f9100b, null, null);
    }
}
