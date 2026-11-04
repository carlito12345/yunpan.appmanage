package j$.time.format;

import java.util.ArrayList;

/* loaded from: classes2.dex */
final class f implements g {

    /* renamed from: a, reason: collision with root package name */
    private final g[] f8844a;

    /* renamed from: b, reason: collision with root package name */
    private final boolean f8845b;

    f(ArrayList arrayList, boolean z) {
        this((g[]) arrayList.toArray(new g[arrayList.size()]), z);
    }

    f(g[] gVarArr, boolean z) {
        this.f8844a = gVarArr;
        this.f8845b = z;
    }

    public final f a() {
        return !this.f8845b ? this : new f(this.f8844a, false);
    }

    @Override // j$.time.format.g
    public final boolean j(q qVar, StringBuilder sb2) {
        int length = sb2.length();
        boolean z = this.f8845b;
        if (z) {
            qVar.g();
        }
        try {
            for (g gVar : this.f8844a) {
                if (!gVar.j(qVar, sb2)) {
                    sb2.setLength(length);
                    return true;
                }
            }
            if (z) {
                qVar.a();
            }
            return true;
        } finally {
            if (z) {
                qVar.a();
            }
        }
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        g[] gVarArr = this.f8844a;
        if (gVarArr != null) {
            boolean z = this.f8845b;
            sb2.append(z ? "[" : "(");
            for (g gVar : gVarArr) {
                sb2.append(gVar);
            }
            sb2.append(z ? "]" : ")");
        }
        return sb2.toString();
    }
}
