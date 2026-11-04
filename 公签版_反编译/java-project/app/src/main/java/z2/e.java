package z2;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class e extends i {

    /* renamed from: b, reason: collision with root package name */
    public final String f19407b;

    /* renamed from: c, reason: collision with root package name */
    public final String f19408c;

    /* renamed from: d, reason: collision with root package name */
    public final String f19409d;

    public e(String str, String str2, String str3) {
        super("COMM");
        this.f19407b = str;
        this.f19408c = str2;
        this.f19409d = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        return Objects.equals(this.f19408c, eVar.f19408c) && Objects.equals(this.f19407b, eVar.f19407b) && Objects.equals(this.f19409d, eVar.f19409d);
    }

    public final int hashCode() {
        String str = this.f19407b;
        int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f19408c;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f19409d;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @Override // z2.i
    public final String toString() {
        return this.f19416a + ": language=" + this.f19407b + ", description=" + this.f19408c + ", text=" + this.f19409d;
    }
}
