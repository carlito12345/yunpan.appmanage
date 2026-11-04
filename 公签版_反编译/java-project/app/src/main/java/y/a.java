package y;

import java.util.HashMap;

/* loaded from: classes.dex */
public final class a extends f {

    /* renamed from: e, reason: collision with root package name */
    public final HashMap f18515e = new HashMap();

    @Override // y.f
    public final c a(Object obj) {
        return (c) this.f18515e.get(obj);
    }

    @Override // y.f
    public final Object b(Object obj) {
        Object objB = super.b(obj);
        this.f18515e.remove(obj);
        return objB;
    }
}
