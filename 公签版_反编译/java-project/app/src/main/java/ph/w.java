package ph;

import j$.util.Objects;

/* loaded from: classes3.dex */
public final class w {

    /* renamed from: c, reason: collision with root package name */
    public static final w f12756c;

    /* renamed from: a, reason: collision with root package name */
    public final v f12757a;

    /* renamed from: b, reason: collision with root package name */
    public final v f12758b;

    static {
        v vVar = new v(-1, -1, -1);
        f12756c = new w(vVar, vVar);
    }

    public w(v vVar, v vVar2) {
        this.f12757a = vVar;
        this.f12758b = vVar2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || w.class != obj.getClass()) {
            return false;
        }
        w wVar = (w) obj;
        if (this.f12757a.equals(wVar.f12757a)) {
            return this.f12758b.equals(wVar.f12758b);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f12757a, this.f12758b);
    }

    public final String toString() {
        return this.f12757a + "-" + this.f12758b;
    }
}
