package q4;

import java.util.Arrays;
import x4.q;
import x4.r;
import x4.t;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final j f13003a;

    /* renamed from: b, reason: collision with root package name */
    public final j f13004b;

    /* renamed from: c, reason: collision with root package name */
    public final String f13005c;

    /* renamed from: d, reason: collision with root package name */
    public final k f13006d;

    /* renamed from: e, reason: collision with root package name */
    public final q f13007e;

    public i(j jVar, j jVar2, String str, k kVar) {
        if (jVar == null || jVar2 == null || str == null) {
            throw null;
        }
        this.f13003a = jVar;
        this.f13004b = jVar2;
        this.f13005c = str;
        this.f13006d = kVar;
        this.f13007e = new q(jVar.f13021c, new r(new t(str), new t(a(false))));
    }

    public final String a(boolean z) {
        StringBuilder sb2 = new StringBuilder("(");
        if (z) {
            sb2.append(this.f13003a.f13019a);
        }
        for (j jVar : this.f13006d.f13022a) {
            sb2.append(jVar.f13019a);
        }
        sb2.append(")");
        sb2.append(this.f13004b.f13019a);
        return sb2.toString();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof i) {
            i iVar = (i) obj;
            if (iVar.f13003a.equals(this.f13003a) && iVar.f13005c.equals(this.f13005c) && iVar.f13006d.equals(this.f13006d) && iVar.f13004b.equals(this.f13004b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f13004b.f13019a.hashCode() + ((Arrays.hashCode(this.f13006d.f13022a) + org.bouncycastle.jcajce.provider.digest.a.c(org.bouncycastle.jcajce.provider.digest.a.c(527, 31, this.f13003a.f13019a), 31, this.f13005c)) * 31);
    }

    public final String toString() {
        return this.f13003a + "." + this.f13005c + "(" + this.f13006d + ")";
    }
}
