package h2;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import r1.s0;
import r1.u0;
import r1.v0;

/* loaded from: classes.dex */
public final class h extends u0 {
    public final boolean A;
    public final boolean B;
    public final boolean C;
    public final boolean D;
    public final SparseArray E;
    public final SparseBooleanArray F;

    /* renamed from: x, reason: collision with root package name */
    public final boolean f6359x;

    /* renamed from: y, reason: collision with root package name */
    public final boolean f6360y;
    public final boolean z;

    public h() {
        this.E = new SparseArray();
        this.F = new SparseBooleanArray();
        this.f6359x = true;
        this.f6360y = true;
        this.z = true;
        this.A = true;
        this.B = true;
        this.C = true;
        this.D = true;
    }

    @Override // r1.u0
    public final v0 a() {
        return new i(this);
    }

    @Override // r1.u0
    public final u0 b(int i10) {
        super.b(i10);
        return this;
    }

    @Override // r1.u0
    public final u0 d() {
        this.f13589u = -3;
        return this;
    }

    @Override // r1.u0
    public final u0 e(s0 s0Var) {
        super.e(s0Var);
        return this;
    }

    @Override // r1.u0
    public final u0 f() {
        super.f();
        return this;
    }

    @Override // r1.u0
    public final u0 g(String[] strArr) {
        super.g(strArr);
        return this;
    }

    @Override // r1.u0
    public final u0 h() {
        this.f13587s = false;
        return this;
    }

    @Override // r1.u0
    public final u0 i(int i10, boolean z) {
        super.i(i10, z);
        return this;
    }

    public final void j(Set set) {
        this.f13591w.clear();
        this.f13591w.addAll(set);
    }

    public h(i iVar) {
        super(iVar);
        this.f6359x = iVar.f6361x;
        this.f6360y = iVar.f6362y;
        this.z = iVar.z;
        this.A = iVar.A;
        this.B = iVar.B;
        this.C = iVar.C;
        this.D = iVar.D;
        SparseArray sparseArray = new SparseArray();
        int i10 = 0;
        while (true) {
            SparseArray sparseArray2 = iVar.E;
            if (i10 < sparseArray2.size()) {
                sparseArray.put(sparseArray2.keyAt(i10), new HashMap((Map) sparseArray2.valueAt(i10)));
                i10++;
            } else {
                this.E = sparseArray;
                this.F = iVar.F.clone();
                return;
            }
        }
    }
}
