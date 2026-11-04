package ph;

import j$.util.Objects;

/* loaded from: classes3.dex */
public final class u {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f12750c = 0;

    /* renamed from: a, reason: collision with root package name */
    public final w f12751a;

    /* renamed from: b, reason: collision with root package name */
    public final w f12752b;

    public u(w wVar, w wVar2) {
        this.f12751a = wVar;
        this.f12752b = wVar2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || u.class != obj.getClass()) {
            return false;
        }
        u uVar = (u) obj;
        if (this.f12751a.equals(uVar.f12751a)) {
            return this.f12752b.equals(uVar.f12752b);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f12751a, this.f12752b);
    }

    public final String toString() {
        StringBuilder sbB = oh.f.b();
        sbB.append(this.f12751a);
        sbB.append('=');
        sbB.append(this.f12752b);
        return oh.f.l(sbB);
    }
}
