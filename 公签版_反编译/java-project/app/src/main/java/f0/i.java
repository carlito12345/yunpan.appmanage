package f0;

import g0.n;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class i extends d {

    /* renamed from: q0, reason: collision with root package name */
    public d[] f5153q0 = new d[4];

    /* renamed from: r0, reason: collision with root package name */
    public int f5154r0 = 0;

    public final void R(int i10, n nVar, ArrayList arrayList) {
        for (int i11 = 0; i11 < this.f5154r0; i11++) {
            d dVar = this.f5153q0[i11];
            ArrayList arrayList2 = nVar.f5965a;
            if (!arrayList2.contains(dVar)) {
                arrayList2.add(dVar);
            }
        }
        for (int i12 = 0; i12 < this.f5154r0; i12++) {
            g0.h.b(this.f5153q0[i12], i10, arrayList, nVar);
        }
    }

    public void S() {
    }
}
