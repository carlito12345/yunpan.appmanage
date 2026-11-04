package pg;

import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class b implements Iterable {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f12673a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public int f12674b;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return Objects.equals(this.f12673a, bVar.f12673a) && this.f12674b == bVar.f12674b;
    }

    public final int hashCode() {
        return Objects.hash(this.f12673a, Integer.valueOf(this.f12674b));
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return Collections.unmodifiableList(this.f12673a).iterator();
    }
}
