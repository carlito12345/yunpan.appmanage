package q1;

import a0.u;
import androidx.lifecycle.r0;
import ha.j2;

/* loaded from: classes.dex */
public final class b extends r0 {

    /* renamed from: e, reason: collision with root package name */
    public static final j2 f12929e = new j2(28);

    /* renamed from: d, reason: collision with root package name */
    public final u f12930d = new u();

    @Override // androidx.lifecycle.r0
    public final void b() {
        u uVar = this.f12930d;
        int i10 = uVar.f68c;
        if (i10 > 0) {
            uVar.e(0).getClass();
            throw new ClassCastException();
        }
        Object[] objArr = uVar.f67b;
        for (int i11 = 0; i11 < i10; i11++) {
            objArr[i11] = null;
        }
        uVar.f68c = 0;
    }
}
