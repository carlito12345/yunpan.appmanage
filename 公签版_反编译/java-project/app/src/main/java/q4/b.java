package q4;

import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import w4.l;
import w4.n;
import w4.o;
import w4.p;
import w4.q;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final i f12965a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f12966b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public g f12967c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f12968d;

    /* renamed from: e, reason: collision with root package name */
    public final h f12969e;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f12970f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f12971g;

    /* renamed from: h, reason: collision with root package name */
    public final p f12972h;

    /* renamed from: i, reason: collision with root package name */
    public final ArrayList f12973i;

    /* renamed from: j, reason: collision with root package name */
    public final y4.b f12974j;

    public b(d dVar) {
        ArrayList arrayList = new ArrayList();
        this.f12970f = arrayList;
        this.f12971g = new ArrayList();
        this.f12972h = p.f17564a;
        new ArrayList();
        this.f12973i = new ArrayList();
        this.f12974j = y4.b.f18928c;
        i iVar = dVar.f12977a;
        this.f12965a = iVar;
        if ((dVar.f12978b & 8) != 0) {
            this.f12969e = null;
        } else {
            h hVar = new h(this, iVar.f13003a);
            this.f12969e = hVar;
            arrayList.add(hVar);
        }
        j[] jVarArr = iVar.f13006d.f13022a;
        for (j jVar : jVarArr) {
            this.f12970f.add(new h(this, jVar));
        }
        g gVar = new g();
        this.f12967c = gVar;
        b(gVar);
        this.f12967c.f12994c = true;
    }

    public static void d(h hVar, j jVar) {
        if (hVar.f13000b.equals(jVar)) {
            return;
        }
        throw new IllegalArgumentException("requested " + jVar + " but was " + hVar.f13000b);
    }

    public final void a(w4.f fVar, g gVar) {
        g gVar2 = this.f12967c;
        if (gVar2 == null || !gVar2.f12994c) {
            throw new IllegalStateException("no current label");
        }
        gVar2.f12992a.add(fVar);
        int i10 = fVar.f17458a.f17475e;
        if (i10 == 1) {
            if (gVar == null) {
                return;
            }
            throw new IllegalArgumentException("unexpected branch: " + gVar);
        }
        if (i10 == 2) {
            if (gVar == null) {
                this.f12967c = null;
                return;
            } else {
                throw new IllegalArgumentException("unexpected branch: " + gVar);
            }
        }
        if (i10 == 3) {
            if (gVar == null) {
                throw new IllegalArgumentException("branch == null");
            }
            this.f12967c.f12996e = gVar;
            this.f12967c = null;
            return;
        }
        if (i10 == 4) {
            if (gVar == null) {
                throw new IllegalArgumentException("branch == null");
            }
            List listEmptyList = Collections.emptyList();
            g gVar3 = new g();
            b(gVar3);
            g gVar4 = this.f12967c;
            gVar4.f12996e = gVar3;
            gVar4.f12997f = gVar;
            gVar4.f12995d = listEmptyList;
            this.f12967c = gVar3;
            gVar3.f12994c = true;
            return;
        }
        if (i10 != 6) {
            throw new IllegalArgumentException();
        }
        if (gVar != null) {
            throw new IllegalArgumentException("unexpected branch: " + gVar);
        }
        ArrayList arrayList = new ArrayList(this.f12973i);
        g gVar5 = new g();
        b(gVar5);
        g gVar6 = this.f12967c;
        gVar6.f12996e = gVar5;
        gVar6.f12997f = null;
        gVar6.f12995d = arrayList;
        this.f12967c = gVar5;
        gVar5.f12994c = true;
    }

    public final void b(g gVar) {
        b bVar = gVar.f12993b;
        if (bVar == this) {
            return;
        }
        if (bVar != null) {
            throw new IllegalArgumentException("Cannot adopt label; it belongs to another Code");
        }
        gVar.f12993b = this;
        this.f12966b.add(gVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0066, code lost:
    
        if (r6 == 7) goto L30;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0053  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c(h hVar, h hVar2) {
        n nVar;
        y4.c cVar = hVar2.f13000b.f13020b;
        int i10 = cVar.f18964b;
        if (i10 == 9) {
            a(new q(o.L1, this.f12972h, l.g(hVar2.a()), this.f12974j, hVar.f13000b.f13021c), null);
            j(hVar, true);
            return;
        }
        y4.c cVar2 = hVar.f13000b.f13020b;
        if (i10 != 6) {
            n nVar2 = o.f17478a;
            int iB = cVar2.b();
            int iB2 = cVar.b();
            if (iB2 != 4) {
                if (iB2 != 5) {
                    if (iB2 == 6) {
                        if (iB == 4) {
                            nVar = o.U0;
                        } else if (iB == 5) {
                            nVar = o.R0;
                        } else if (iB == 7) {
                            nVar = o.O0;
                        }
                    }
                    if (iB == 4) {
                        nVar = o.V0;
                    } else if (iB == 5) {
                        nVar = o.S0;
                    } else if (iB == 6) {
                        nVar = o.L0;
                    }
                }
                if (iB == 4) {
                    nVar = o.W0;
                } else if (iB == 6) {
                    nVar = o.M0;
                } else if (iB == 7) {
                    nVar = o.P0;
                }
            }
            if (iB == 5) {
                nVar = o.T0;
            } else {
                if (iB != 6) {
                    if (iB == 7) {
                        nVar = o.Q0;
                    }
                    throw new IllegalArgumentException("bad types: " + y4.b.h(cVar2, cVar));
                }
                nVar = o.N0;
            }
        } else {
            int i11 = cVar2.f18964b;
            if (i11 == 2) {
                nVar = o.X0;
            } else if (i11 == 3) {
                nVar = o.Y0;
            } else if (i11 == 8) {
                nVar = o.Z0;
            }
        }
        a(new w4.i(nVar, this.f12972h, hVar.a(), l.g(hVar2.a())), null);
    }

    public final h e(int i10, j jVar) {
        if (this.f12969e != null) {
            i10++;
        }
        h hVar = (h) this.f12970f.get(i10);
        d(hVar, jVar);
        return hVar;
    }

    public final void f() {
        n nVar;
        if (this.f12968d) {
            throw new AssertionError();
        }
        this.f12968d = true;
        Iterator it = this.f12971g.iterator();
        int iC = 0;
        while (it.hasNext()) {
            h hVar = (h) it.next();
            hVar.f13001c = iC;
            j jVar = hVar.f13000b;
            hVar.f13002d = w4.k.d(iC, jVar.f13020b);
            iC += jVar.f13020b.c();
        }
        ArrayList arrayList = new ArrayList();
        Iterator it2 = this.f12970f.iterator();
        int iC2 = iC;
        while (it2.hasNext()) {
            h hVar2 = (h) it2.next();
            x4.j jVarH = x4.j.h(iC2 - iC);
            hVar2.f13001c = iC2;
            j jVar2 = hVar2.f13000b;
            hVar2.f13002d = w4.k.d(iC2, jVar2.f13020b);
            iC2 += jVar2.f13020b.c();
            y4.c cVar = jVar2.f13020b;
            n nVar2 = o.f17478a;
            int iB = cVar.b();
            if (iB == 4) {
                nVar = o.f17513j;
            } else if (iB == 5) {
                nVar = o.f17509i;
            } else if (iB == 6) {
                nVar = o.f17502g;
            } else if (iB == 7) {
                nVar = o.f17505h;
            } else {
                if (iB != 9) {
                    o.a(cVar);
                    throw null;
                }
                nVar = o.f17517k;
            }
            n nVar3 = nVar;
            arrayList.add(new w4.h(nVar3, this.f12972h, hVar2.a(), l.f17468c, jVarH));
        }
        ((g) this.f12966b.get(0)).f12992a.addAll(0, arrayList);
    }

    public final void g(n nVar, i iVar, h hVar, h hVar2, h... hVarArr) {
        int i10 = hVar2 != null ? 1 : 0;
        l lVar = new l(hVarArr.length + i10);
        if (hVar2 != null) {
            lVar.e(0, hVar2.a());
        }
        for (int i11 = 0; i11 < hVarArr.length; i11++) {
            lVar.e(i11 + i10, hVarArr[i11].a());
        }
        a(new q(nVar, this.f12972h, lVar, this.f12974j, iVar.f13007e), null);
        if (hVar != null) {
            j(hVar, false);
        }
    }

    public final void h(i iVar, h hVar, h hVar2, h... hVarArr) {
        String strA = iVar.a(true);
        if (strA == null) {
            ConcurrentHashMap concurrentHashMap = y4.a.f18923e;
            throw new NullPointerException("descriptor == null");
        }
        ConcurrentHashMap concurrentHashMap2 = y4.a.f18923e;
        y4.a aVar = (y4.a) concurrentHashMap2.get(strA);
        if (aVar == null) {
            y4.a aVarB = y4.a.b(strA);
            y4.a aVar2 = (y4.a) concurrentHashMap2.putIfAbsent(aVarB.f18924a, aVarB);
            aVar = aVar2 != null ? aVar2 : aVarB;
        }
        n nVar = o.f17478a;
        g(new n(51, aVar.c(), y4.b.f18935j), iVar, hVar, hVar2, hVarArr);
    }

    public final void i(h hVar, Object obj) {
        n nVar;
        if (obj == null) {
            nVar = o.f17537q;
        } else {
            y4.c cVar = hVar.f13000b.f13020b;
            n nVar2 = o.f17478a;
            cVar.getClass();
            if (cVar == y4.c.f18956q) {
                nVar = o.f17537q;
            } else {
                int iB = cVar.b();
                if (iB == 4) {
                    nVar = o.f17531o;
                } else if (iB == 5) {
                    nVar = o.f17528n;
                } else if (iB == 6) {
                    nVar = o.l;
                } else if (iB == 7) {
                    nVar = o.f17524m;
                } else {
                    if (iB != 9) {
                        o.a(cVar);
                        throw null;
                    }
                    nVar = o.f17534p;
                }
            }
        }
        n nVar3 = nVar;
        if (nVar3.f17475e == 1) {
            a(new w4.h(nVar3, this.f12972h, hVar.a(), l.f17468c, com.bumptech.glide.d.v(obj)), null);
            return;
        }
        a(new q(nVar3, this.f12972h, l.f17468c, this.f12974j, com.bumptech.glide.d.v(obj)), null);
        j(hVar, true);
    }

    public final void j(h hVar, boolean z) {
        n nVar;
        if (z) {
            y4.c cVar = hVar.f13000b.f13020b;
            n nVar2 = o.f17478a;
            cVar.getClass();
            nVar = new n(56, cVar, y4.b.f18928c, null);
        } else {
            y4.c cVar2 = hVar.f13000b.f13020b;
            n nVar3 = o.f17478a;
            cVar2.getClass();
            nVar = new n(55, cVar2, y4.b.f18928c, null);
        }
        a(new w4.i(nVar, this.f12972h, hVar.a(), l.f17468c), null);
    }

    public final h k(j jVar) {
        if (this.f12968d) {
            throw new IllegalStateException("Cannot allocate locals after adding instructions");
        }
        h hVar = new h(this, jVar);
        this.f12971g.add(hVar);
        return hVar;
    }

    public final void l(h hVar) {
        n nVar;
        j jVar = hVar.f13000b;
        i iVar = this.f12965a;
        boolean zEquals = jVar.equals(iVar.f13004b);
        j jVar2 = hVar.f13000b;
        if (!zEquals) {
            throw new IllegalArgumentException("declared " + iVar.f13004b + " but returned " + jVar2);
        }
        y4.c cVar = jVar2.f13020b;
        n nVar2 = o.f17478a;
        int iB = cVar.b();
        if (iB == 0) {
            nVar = o.f17480a1;
        } else if (iB == 9) {
            nVar = o.f17500f1;
        } else if (iB == 4) {
            nVar = o.f17496e1;
        } else if (iB == 5) {
            nVar = o.f17492d1;
        } else if (iB == 6) {
            nVar = o.f17484b1;
        } else {
            if (iB != 7) {
                o.a(cVar);
                throw null;
            }
            nVar = o.f17488c1;
        }
        a(new w4.i(nVar, this.f12972h, null, l.g(hVar.a())), null);
    }

    public final void m() {
        i iVar = this.f12965a;
        if (iVar.f13004b.equals(j.l)) {
            a(new w4.i(o.f17480a1, this.f12972h, null, l.f17468c), null);
            return;
        }
        throw new IllegalArgumentException("declared " + iVar.f13004b + " but returned void");
    }
}
