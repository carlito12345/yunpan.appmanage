package z2;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class k extends i {

    /* renamed from: b, reason: collision with root package name */
    public final String f19418b;

    /* renamed from: c, reason: collision with root package name */
    public final String f19419c;

    /* renamed from: d, reason: collision with root package name */
    public final String f19420d;

    public k(String str, String str2, String str3) {
        super("----");
        this.f19418b = str;
        this.f19419c = str2;
        this.f19420d = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || k.class != obj.getClass()) {
            return false;
        }
        k kVar = (k) obj;
        return Objects.equals(this.f19419c, kVar.f19419c) && Objects.equals(this.f19418b, kVar.f19418b) && Objects.equals(this.f19420d, kVar.f19420d);
    }

    public final int hashCode() {
        String str = this.f19418b;
        int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f19419c;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f19420d;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @Override // z2.i
    public final String toString() {
        return this.f19416a + ": domain=" + this.f19418b + ", description=" + this.f19419c;
    }
}
