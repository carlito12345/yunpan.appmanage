package z2;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class o extends i {

    /* renamed from: b, reason: collision with root package name */
    public final String f19430b;

    /* renamed from: c, reason: collision with root package name */
    public final String f19431c;

    public o(String str, String str2, String str3) {
        super(str);
        this.f19430b = str2;
        this.f19431c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || o.class != obj.getClass()) {
            return false;
        }
        o oVar = (o) obj;
        return this.f19416a.equals(oVar.f19416a) && Objects.equals(this.f19430b, oVar.f19430b) && Objects.equals(this.f19431c, oVar.f19431c);
    }

    public final int hashCode() {
        int iC = org.bouncycastle.jcajce.provider.digest.a.c(527, 31, this.f19416a);
        String str = this.f19430b;
        int iHashCode = (iC + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f19431c;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    @Override // z2.i
    public final String toString() {
        return this.f19416a + ": url=" + this.f19431c;
    }
}
