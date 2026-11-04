package v1;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class s implements Comparable {

    /* renamed from: b, reason: collision with root package name */
    public long f16407b = -9223372036854775807L;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f16406a = new ArrayList();

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return (this.f16407b > ((s) obj).f16407b ? 1 : (this.f16407b == ((s) obj).f16407b ? 0 : -1));
    }
}
