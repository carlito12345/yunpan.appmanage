package f0;

import g0.n;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: b, reason: collision with root package name */
    public int f5067b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f5068c;

    /* renamed from: d, reason: collision with root package name */
    public final d f5069d;

    /* renamed from: e, reason: collision with root package name */
    public final int f5070e;

    /* renamed from: f, reason: collision with root package name */
    public c f5071f;

    /* renamed from: i, reason: collision with root package name */
    public d0.g f5074i;

    /* renamed from: a, reason: collision with root package name */
    public HashSet f5066a = null;

    /* renamed from: g, reason: collision with root package name */
    public int f5072g = 0;

    /* renamed from: h, reason: collision with root package name */
    public int f5073h = Integer.MIN_VALUE;

    public c(d dVar, int i10) {
        this.f5069d = dVar;
        this.f5070e = i10;
    }

    public final void a(c cVar, int i10) {
        b(cVar, i10, Integer.MIN_VALUE, false);
    }

    public final boolean b(c cVar, int i10, int i11, boolean z) {
        if (cVar == null) {
            j();
            return true;
        }
        if (!z && !i(cVar)) {
            return false;
        }
        this.f5071f = cVar;
        if (cVar.f5066a == null) {
            cVar.f5066a = new HashSet();
        }
        HashSet hashSet = this.f5071f.f5066a;
        if (hashSet != null) {
            hashSet.add(this);
        }
        this.f5072g = i10;
        this.f5073h = i11;
        return true;
    }

    public final void c(int i10, n nVar, ArrayList arrayList) {
        HashSet hashSet = this.f5066a;
        if (hashSet != null) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                g0.h.b(((c) it.next()).f5069d, i10, arrayList, nVar);
            }
        }
    }

    public final int d() {
        if (this.f5068c) {
            return this.f5067b;
        }
        return 0;
    }

    public final int e() {
        c cVar;
        if (this.f5069d.f5088g0 == 8) {
            return 0;
        }
        int i10 = this.f5073h;
        return (i10 == Integer.MIN_VALUE || (cVar = this.f5071f) == null || cVar.f5069d.f5088g0 != 8) ? this.f5072g : i10;
    }

    public final c f() {
        int i10 = this.f5070e;
        int iC = d0.f.c(i10);
        d dVar = this.f5069d;
        switch (iC) {
            case 0:
            case 5:
            case 6:
            case 7:
            case 8:
                return null;
            case 1:
                return dVar.K;
            case 2:
                return dVar.L;
            case 3:
                return dVar.I;
            case 4:
                return dVar.J;
            default:
                throw new AssertionError(android.support.v4.media.session.a.F(i10));
        }
    }

    public final boolean g() {
        HashSet hashSet = this.f5066a;
        if (hashSet == null) {
            return false;
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            if (((c) it.next()).f().h()) {
                return true;
            }
        }
        return false;
    }

    public final boolean h() {
        return this.f5071f != null;
    }

    public final boolean i(c cVar) {
        if (cVar == null) {
            return false;
        }
        int i10 = this.f5070e;
        d dVar = cVar.f5069d;
        int i11 = cVar.f5070e;
        if (i11 == i10) {
            return i10 != 6 || (dVar.E && this.f5069d.E);
        }
        switch (d0.f.c(i10)) {
            case 0:
            case 7:
            case 8:
                return false;
            case 1:
            case 3:
                boolean z = i11 == 2 || i11 == 4;
                if (dVar instanceof h) {
                    return z || i11 == 8;
                }
                return z;
            case 2:
            case 4:
                boolean z4 = i11 == 3 || i11 == 5;
                if (dVar instanceof h) {
                    return z4 || i11 == 9;
                }
                return z4;
            case 5:
                return (i11 == 2 || i11 == 4) ? false : true;
            case 6:
                return (i11 == 6 || i11 == 8 || i11 == 9) ? false : true;
            default:
                throw new AssertionError(android.support.v4.media.session.a.F(i10));
        }
    }

    public final void j() {
        HashSet hashSet;
        c cVar = this.f5071f;
        if (cVar != null && (hashSet = cVar.f5066a) != null) {
            hashSet.remove(this);
            if (this.f5071f.f5066a.size() == 0) {
                this.f5071f.f5066a = null;
            }
        }
        this.f5066a = null;
        this.f5071f = null;
        this.f5072g = 0;
        this.f5073h = Integer.MIN_VALUE;
        this.f5068c = false;
        this.f5067b = 0;
    }

    public final void k() {
        d0.g gVar = this.f5074i;
        if (gVar == null) {
            this.f5074i = new d0.g(1);
        } else {
            gVar.c();
        }
    }

    public final void l(int i10) {
        this.f5067b = i10;
        this.f5068c = true;
    }

    public final String toString() {
        return this.f5069d.f5090h0 + ":" + android.support.v4.media.session.a.F(this.f5070e);
    }
}
