package u4;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class g0 extends x {

    /* renamed from: e, reason: collision with root package name */
    public final q f15370e;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f15371f;

    /* JADX WARN: Illegal instructions before constructor call */
    public g0(q qVar, ArrayList arrayList) {
        int iL = l(arrayList);
        x xVar = (x) arrayList.get(0);
        super(iL, l(arrayList) + (xVar.c() * arrayList.size()));
        if (qVar == null) {
            throw new NullPointerException("itemType == null");
        }
        this.f15371f = arrayList;
        this.f15370e = qVar;
    }

    public static int l(ArrayList arrayList) {
        try {
            return Math.max(4, ((x) arrayList.get(0)).f15407a);
        } catch (IndexOutOfBoundsException unused) {
            throw new IllegalArgumentException("items.size() == 0");
        } catch (NullPointerException unused2) {
            throw new NullPointerException("items == null");
        }
    }

    @Override // u4.p
    public final void a(f fVar) {
        Iterator it = this.f15371f.iterator();
        while (it.hasNext()) {
            ((x) it.next()).a(fVar);
        }
    }

    @Override // u4.p
    public final q b() {
        return this.f15370e;
    }

    @Override // u4.x
    public final void i(w wVar, int i10) {
        int iH = i10 + this.f15407a;
        Iterator it = this.f15371f.iterator();
        int i11 = -1;
        int i12 = -1;
        boolean z = true;
        while (it.hasNext()) {
            x xVar = (x) it.next();
            int iC = xVar.c();
            int i13 = xVar.f15407a;
            if (z) {
                i11 = iC;
                i12 = i13;
                z = false;
            } else {
                if (iC != i11) {
                    throw new UnsupportedOperationException("item size mismatch");
                }
                if (i13 != i12) {
                    throw new UnsupportedOperationException("item alignment mismatch");
                }
            }
            iH = xVar.h(wVar, iH) + iC;
        }
    }

    @Override // u4.x
    public final void k(f fVar, b5.b bVar) {
        ArrayList arrayList = this.f15371f;
        int size = arrayList.size();
        if (bVar.d()) {
            bVar.b(0, g() + " " + this.f15370e.f15395c);
            bVar.b(4, "  size: ".concat(qf.c.f0(size)));
        }
        bVar.j(size);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((x) it.next()).d(fVar, bVar);
        }
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder(100);
        sb2.append(g0.class.getName());
        sb2.append(this.f15371f);
        return sb2.toString();
    }
}
