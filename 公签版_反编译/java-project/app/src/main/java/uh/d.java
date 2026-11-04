package uh;

import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class d implements e {

    /* renamed from: a, reason: collision with root package name */
    public final e[] f16120a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f16121b;

    public d(ArrayList arrayList, boolean z) {
        this((e[]) arrayList.toArray(new e[arrayList.size()]), z);
    }

    @Override // uh.e
    public final boolean a(androidx.room.s sVar, StringBuilder sb2) {
        int length = sb2.length();
        boolean z = this.f16121b;
        if (z) {
            sVar.f2426b++;
        }
        try {
            for (e eVar : this.f16120a) {
                if (!eVar.a(sVar, sb2)) {
                    sb2.setLength(length);
                    return true;
                }
            }
            if (z) {
                sVar.f2426b--;
            }
            return true;
        } finally {
            if (z) {
                sVar.f2426b--;
            }
        }
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        e[] eVarArr = this.f16120a;
        if (eVarArr != null) {
            boolean z = this.f16121b;
            sb2.append(z ? "[" : "(");
            for (e eVar : eVarArr) {
                sb2.append(eVar);
            }
            sb2.append(z ? "]" : ")");
        }
        return sb2.toString();
    }

    public d(e[] eVarArr, boolean z) {
        this.f16120a = eVarArr;
        this.f16121b = z;
    }
}
