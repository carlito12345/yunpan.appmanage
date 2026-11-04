package u7;

import java.io.Serializable;

/* loaded from: classes.dex */
public final class c0 extends m implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final Object f15438a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f15439b;

    public c0(Object obj, Object obj2) {
        this.f15438a = obj;
        this.f15439b = obj2;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f15438a;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f15439b;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException();
    }
}
