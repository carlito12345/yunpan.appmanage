package j5;

import a6.m;
import h5.n;
import h5.z;

/* loaded from: classes.dex */
public final class g extends m {

    /* renamed from: e, reason: collision with root package name */
    public n f9760e;

    public g(long j10) {
        super(j10);
    }

    @Override // a6.m
    public final int b(Object obj) {
        z zVar = (z) obj;
        if (zVar == null) {
            return 1;
        }
        return zVar.getSize();
    }

    @Override // a6.m
    public final void c(Object obj, Object obj2) {
        z zVar = (z) obj2;
        n nVar = this.f9760e;
        if (nVar == null || zVar == null) {
            return;
        }
        nVar.f6617e.e(zVar, true);
    }

    public final void f(int i10) {
        long j10;
        if (i10 >= 40) {
            e(0L);
        } else if (i10 >= 20 || i10 == 15) {
            synchronized (this) {
                j10 = this.f439c;
            }
            e(j10 / 2);
        }
    }
}
