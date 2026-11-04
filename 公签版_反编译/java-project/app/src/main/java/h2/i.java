package h2;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import f2.j1;
import j$.util.Objects;
import java.util.Map;
import r1.u0;
import r1.v0;
import u1.f0;

/* loaded from: classes.dex */
public final class i extends v0 {
    public static final i G = new i(new h());
    public final boolean A;
    public final boolean B;
    public final boolean C;
    public final boolean D;
    public final SparseArray E;
    public final SparseBooleanArray F;

    /* renamed from: x, reason: collision with root package name */
    public final boolean f6361x;

    /* renamed from: y, reason: collision with root package name */
    public final boolean f6362y;
    public final boolean z;

    static {
        org.bouncycastle.jcajce.provider.digest.a.m(1000, 1001, 1002, 1003, 1004);
        org.bouncycastle.jcajce.provider.digest.a.m(1005, 1006, 1007, 1008, 1009);
        org.bouncycastle.jcajce.provider.digest.a.m(1010, 1011, 1012, 1013, 1014);
        f0.B(1015);
        f0.B(1016);
        f0.B(1017);
        f0.B(1018);
    }

    public i(h hVar) {
        super(hVar);
        this.f6361x = hVar.f6359x;
        this.f6362y = hVar.f6360y;
        this.z = hVar.z;
        this.A = hVar.A;
        this.B = hVar.B;
        this.C = hVar.C;
        this.D = hVar.D;
        this.E = hVar.E;
        this.F = hVar.F;
    }

    @Override // r1.v0
    public final u0 a() {
        return new h(this);
    }

    @Override // r1.v0
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || i.class != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        if (super.equals(iVar) && this.f6361x == iVar.f6361x && this.f6362y == iVar.f6362y && this.z == iVar.z && this.A == iVar.A && this.B == iVar.B && this.C == iVar.C && this.D == iVar.D) {
            SparseBooleanArray sparseBooleanArray = this.F;
            int size = sparseBooleanArray.size();
            SparseBooleanArray sparseBooleanArray2 = iVar.F;
            if (sparseBooleanArray2.size() == size) {
                int i10 = 0;
                while (true) {
                    if (i10 >= size) {
                        SparseArray sparseArray = this.E;
                        int size2 = sparseArray.size();
                        SparseArray sparseArray2 = iVar.E;
                        if (sparseArray2.size() == size2) {
                            for (int i11 = 0; i11 < size2; i11++) {
                                int iIndexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i11));
                                if (iIndexOfKey >= 0) {
                                    Map map = (Map) sparseArray.valueAt(i11);
                                    Map map2 = (Map) sparseArray2.valueAt(iIndexOfKey);
                                    if (map2.size() == map.size()) {
                                        for (Map.Entry entry : map.entrySet()) {
                                            j1 j1Var = (j1) entry.getKey();
                                            if (!map2.containsKey(j1Var) || !Objects.equals(entry.getValue(), map2.get(j1Var))) {
                                            }
                                        }
                                    }
                                }
                            }
                            return true;
                        }
                    } else {
                        if (sparseBooleanArray2.indexOfKey(sparseBooleanArray.keyAt(i10)) < 0) {
                            break;
                        }
                        i10++;
                    }
                }
            }
        }
        return false;
    }

    @Override // r1.v0
    public final int hashCode() {
        return (((((((((((((((super.hashCode() + 31) * 31) + (this.f6361x ? 1 : 0)) * 961) + (this.f6362y ? 1 : 0)) * 961) + (this.z ? 1 : 0)) * 28629151) + (this.A ? 1 : 0)) * 31) + (this.B ? 1 : 0)) * 31) + (this.C ? 1 : 0)) * 961) + (this.D ? 1 : 0)) * 31;
    }
}
