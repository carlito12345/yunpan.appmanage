package g0;

import java.util.Iterator;

/* loaded from: classes.dex */
public class g extends f {

    /* renamed from: m, reason: collision with root package name */
    public int f5958m;

    public g(o oVar) {
        super(oVar);
        if (oVar instanceof k) {
            this.f5951e = 2;
        } else {
            this.f5951e = 3;
        }
    }

    @Override // g0.f
    public final void d(int i10) {
        if (this.f5956j) {
            return;
        }
        this.f5956j = true;
        this.f5953g = i10;
        Iterator it = this.f5957k.iterator();
        while (it.hasNext()) {
            d dVar = (d) it.next();
            dVar.a(dVar);
        }
    }
}
