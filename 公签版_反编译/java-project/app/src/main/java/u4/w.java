package u4;

import com.alibaba.sdk.android.oss.signer.SignParameters;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class w extends a0 {

    /* renamed from: j, reason: collision with root package name */
    public static final a5.a f15402j = new a5.a(11);

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f15403f;

    /* renamed from: g, reason: collision with root package name */
    public final HashMap f15404g;

    /* renamed from: h, reason: collision with root package name */
    public final int f15405h;

    /* renamed from: i, reason: collision with root package name */
    public int f15406i;

    public w(String str, f fVar, int i10, int i11) {
        super(str, fVar, i10);
        this.f15403f = new ArrayList(100);
        this.f15404g = new HashMap(100);
        this.f15405h = i11;
        this.f15406i = -1;
    }

    @Override // u4.a0
    public final int a(p pVar) {
        return ((x) pVar).f();
    }

    @Override // u4.a0
    public final Collection c() {
        return this.f15403f;
    }

    @Override // u4.a0
    public final void e() {
        int i10 = 0;
        while (true) {
            ArrayList arrayList = this.f15403f;
            int size = arrayList.size();
            if (i10 >= size) {
                return;
            }
            while (i10 < size) {
                ((x) arrayList.get(i10)).a(this.f15324b);
                i10++;
            }
        }
    }

    @Override // u4.a0
    public final int h() {
        f();
        return this.f15406i;
    }

    @Override // u4.a0
    public final void j(b5.b bVar) {
        boolean zD = bVar.d();
        Iterator it = this.f15403f.iterator();
        int iC = 0;
        boolean z = true;
        while (it.hasNext()) {
            x xVar = (x) it.next();
            if (zD) {
                if (z) {
                    z = false;
                } else {
                    bVar.b(0, SignParameters.NEW_LINE);
                }
            }
            int i10 = xVar.f15407a - 1;
            int i11 = (i10 ^ (-1)) & (iC + i10);
            if (iC != i11) {
                bVar.n(i11 - iC);
                iC = i11;
            }
            xVar.d(this.f15324b, bVar);
            iC += xVar.c();
        }
        if (iC != this.f15406i) {
            throw new RuntimeException("output size mismatch");
        }
    }

    public final void k(x xVar) {
        g();
        try {
            if (xVar.f15407a > this.f15325c) {
                throw new IllegalArgumentException("incompatible item alignment");
            }
            this.f15403f.add(xVar);
        } catch (NullPointerException unused) {
            throw new NullPointerException("item == null");
        }
    }

    public final synchronized x l(x xVar) {
        g();
        x xVar2 = (x) this.f15404g.get(xVar);
        if (xVar2 != null) {
            return xVar2;
        }
        k(xVar);
        this.f15404g.put(xVar, xVar);
        return xVar;
    }

    public final void m() {
        f();
        int iC = d0.f.c(this.f15405h);
        ArrayList arrayList = this.f15403f;
        if (iC == 1) {
            Collections.sort(arrayList, f15402j);
        } else if (iC == 2) {
            Collections.sort(arrayList);
        }
        int size = arrayList.size();
        int iC2 = 0;
        for (int i10 = 0; i10 < size; i10++) {
            x xVar = (x) arrayList.get(i10);
            try {
                int iH = xVar.h(this, iC2);
                if (iH < iC2) {
                    throw new RuntimeException("bogus place() result for " + xVar);
                }
                iC2 = xVar.c() + iH;
            } catch (RuntimeException e7) {
                throw p4.a.a(e7, "...while placing " + xVar);
            }
        }
        this.f15406i = iC2;
    }
}
