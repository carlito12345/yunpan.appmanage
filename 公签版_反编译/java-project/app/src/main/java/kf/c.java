package kf;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final String f10283a;

    /* renamed from: b, reason: collision with root package name */
    public final String f10284b;

    public c(String str, String str2) {
        this.f10283a = str;
        this.f10284b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        String str = cVar.f10283a;
        String str2 = this.f10283a;
        if (str2 == null && str != null) {
            return false;
        }
        String str3 = this.f10284b;
        String str4 = cVar.f10284b;
        if (str3 == null && str4 != null) {
            return false;
        }
        if (str2 == null || str2.equals(str)) {
            return str3 == null || str3.equals(str4);
        }
        return false;
    }

    public final int hashCode() {
        return this.f10284b.hashCode() + (this.f10283a.hashCode() * 31);
    }
}
