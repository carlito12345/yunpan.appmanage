package jg;

import j$.util.Objects;
import j$.util.stream.Stream;

/* loaded from: classes.dex */
public final class v {

    /* renamed from: a, reason: collision with root package name */
    public final u f9980a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f9981b;

    public v(u uVar, Object obj) {
        this.f9980a = uVar;
        this.f9981b = obj;
        if (obj == null || Stream.CC.of((Object[]) ((d) l.f9913a.get(uVar)).f9891a).anyMatch(new com.hierynomus.smbj.auth.a(4, obj))) {
            return;
        }
        throw new IllegalArgumentException("The " + uVar + " method doesn't support options of type " + obj.getClass());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || v.class != obj.getClass()) {
            return false;
        }
        v vVar = (v) obj;
        return Objects.equals(this.f9980a, vVar.f9980a) && Objects.equals(this.f9981b, vVar.f9981b);
    }

    public final int hashCode() {
        u uVar = this.f9980a;
        if (uVar == null) {
            return 0;
        }
        return uVar.hashCode();
    }
}
