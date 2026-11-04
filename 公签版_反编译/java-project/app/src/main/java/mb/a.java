package mb;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class a implements i {

    /* renamed from: a, reason: collision with root package name */
    public final g f11050a;

    /* renamed from: b, reason: collision with root package name */
    public final b f11051b;

    /* renamed from: c, reason: collision with root package name */
    public final b f11052c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f11053d;

    /* renamed from: e, reason: collision with root package name */
    public final int f11054e;

    /* renamed from: f, reason: collision with root package name */
    public final int f11055f;

    public a(g gVar) {
        b bVar = new b();
        bVar.f11058c = 0;
        bVar.f11057b = 0;
        bVar.f11056a = 0;
        this.f11051b = bVar;
        this.f11052c = new b();
        this.f11053d = new ArrayList();
        this.f11054e = 50;
        this.f11055f = 50;
        this.f11050a = gVar;
        C();
    }

    public static void s(b bVar, int i10, int i11) {
        if (bVar.f11057b != i10) {
            throw new IllegalArgumentException("can not find other lines with findInLine()");
        }
        bVar.f11056a = (bVar.f11056a - bVar.f11058c) + i11;
        bVar.f11058c = i11;
    }

    public final b A(int i10, int i11) {
        b bVar = new b();
        g gVar = this.f11050a;
        gVar.f(i10, i11, 2);
        gVar.u(false);
        try {
            b bVarY = y(i10);
            int i12 = bVarY.f11057b;
            if (i12 == i10) {
                bVar.f11056a = bVarY.f11056a;
                bVar.f11057b = i12;
                bVar.f11058c = bVarY.f11058c;
                if (bVarY.f11058c != i11) {
                    s(bVar, i10, i11);
                }
                gVar.E(false);
                return bVar;
            }
            if (i12 < i10) {
                w(bVarY, i10, i11, bVar);
            } else {
                v(bVarY, i10, i11, bVar);
            }
            if (Math.abs(bVarY.f11057b - i10) > 50) {
                B(bVar.a());
            }
            gVar.E(false);
            return bVar;
        } catch (Throwable th2) {
            gVar.E(false);
            throw th2;
        }
    }

    public final synchronized void B(b bVar) {
        if (this.f11055f <= 0) {
            return;
        }
        this.f11053d.add(bVar);
        if (this.f11053d.size() > this.f11055f) {
            this.f11053d.remove(0);
        }
    }

    public final void C() {
        g gVar = this.f11050a;
        int i10 = gVar.f11067d;
        b bVar = this.f11052c;
        bVar.f11056a = i10;
        int size = gVar.f11064a.size() - 1;
        bVar.f11057b = size;
        bVar.f11058c = gVar.o(size).f11076c;
    }

    @Override // mb.i
    public final /* synthetic */ void b(g gVar) {
    }

    @Override // mb.i
    public final synchronized void c(g gVar, int i10, int i11, int i12, int i13, CharSequence charSequence) {
        try {
            Iterator it = this.f11053d.iterator();
            while (it.hasNext()) {
                b bVar = (b) it.next();
                int i14 = bVar.f11057b;
                if (i14 == i10) {
                    if (bVar.f11058c >= i11) {
                        bVar.f11056a += charSequence.length();
                        bVar.f11057b = (i12 - i10) + bVar.f11057b;
                        bVar.f11058c = (bVar.f11058c + i13) - i11;
                    }
                } else if (i14 > i10) {
                    bVar.f11056a += charSequence.length();
                    bVar.f11057b = (i12 - i10) + bVar.f11057b;
                }
            }
            C();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // mb.i
    public final synchronized void k(g gVar, int i10, int i11, int i12, int i13, StringBuilder sb2) {
        try {
            ArrayList arrayList = new ArrayList();
            Iterator it = this.f11053d.iterator();
            while (it.hasNext()) {
                b bVar = (b) it.next();
                int i14 = bVar.f11057b;
                if (i14 == i10) {
                    if (bVar.f11058c >= i11) {
                        arrayList.add(bVar);
                    }
                } else if (i14 > i10) {
                    if (i14 < i12) {
                        arrayList.add(bVar);
                    } else if (i14 == i12) {
                        arrayList.add(bVar);
                    } else {
                        bVar.f11056a -= sb2.length();
                        bVar.f11057b -= i12 - i10;
                    }
                }
            }
            this.f11053d.removeAll(arrayList);
            C();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final void t(b bVar, int i10, b bVar2) {
        int i11 = bVar.f11056a;
        if (i11 < i10) {
            throw new IllegalArgumentException("Unable to find forward from method findIndexBackward()");
        }
        int i12 = bVar.f11057b;
        int iMax = bVar.f11058c;
        while (i11 > i10) {
            i11 -= iMax + 1;
            i12--;
            if (i12 == -1) {
                u(this.f11051b, i10, bVar2);
                return;
            } else {
                iMax = ((h) this.f11050a.f11064a.get(i12)).f11076c + Math.max(r5.d().f11098b - 1, 0);
            }
        }
        int i13 = i10 - i11;
        if (i13 > 0) {
            i12++;
            iMax = i13 - 1;
        }
        bVar2.f11058c = iMax;
        bVar2.f11057b = i12;
        bVar2.f11056a = i10;
    }

    public final void u(b bVar, int i10, b bVar2) {
        int i11 = bVar.f11056a;
        if (i11 > i10) {
            throw new IllegalArgumentException("Unable to find backward from method findIndexForward()");
        }
        int i12 = bVar.f11057b;
        int i13 = bVar.f11058c;
        g gVar = this.f11050a;
        int iMax = Math.max(((h) gVar.f11064a.get(i12)).d().f11098b - 1, 0);
        ArrayList arrayList = gVar.f11064a;
        int iMax2 = ((h) arrayList.get(i12)).f11076c + iMax;
        int i14 = (iMax2 - i13) + i11;
        while (i14 < i10) {
            i12++;
            iMax2 = ((h) arrayList.get(i12)).f11076c + Math.max(r0.d().f11098b - 1, 0);
            i14 += iMax2 + 1;
        }
        if (i14 > i10) {
            iMax2 -= i14 - i10;
        }
        bVar2.f11058c = iMax2;
        bVar2.f11057b = i12;
        bVar2.f11056a = i10;
    }

    public final void v(b bVar, int i10, int i11, b bVar2) {
        int i12 = bVar.f11057b;
        if (i12 < i10) {
            throw new IllegalArgumentException("can not find forward from findLiCoBackward()");
        }
        int i13 = bVar.f11056a - bVar.f11058c;
        while (i12 > i10) {
            h hVar = (h) this.f11050a.f11064a.get(i12 - 1);
            i13 -= hVar.f11076c + hVar.d().f11098b;
            i12--;
        }
        bVar2.f11058c = 0;
        bVar2.f11057b = i12;
        bVar2.f11056a = i13;
        s(bVar2, i10, i11);
    }

    public final void w(b bVar, int i10, int i11, b bVar2) {
        int i12 = bVar.f11057b;
        if (i12 > i10) {
            throw new IllegalArgumentException("can not find backward from findLiCoForward()");
        }
        int i13 = bVar.f11056a - bVar.f11058c;
        while (i12 < i10) {
            h hVar = (h) this.f11050a.f11064a.get(i12);
            i13 += hVar.f11076c + hVar.d().f11098b;
            i12++;
        }
        bVar2.f11058c = 0;
        bVar2.f11057b = i12;
        bVar2.f11056a = i13;
        s(bVar2, i10, i11);
    }

    public final synchronized b x(int i10) {
        b bVar;
        try {
            bVar = this.f11051b;
            int i11 = i10;
            int i12 = 0;
            for (int i13 = 0; i13 < this.f11053d.size(); i13++) {
                b bVar2 = (b) this.f11053d.get(i13);
                int iAbs = Math.abs(bVar2.f11056a - i10);
                if (iAbs < i11) {
                    i12 = i13;
                    bVar = bVar2;
                    i11 = iAbs;
                }
                if (iAbs <= this.f11054e) {
                    break;
                }
            }
            if (Math.abs(this.f11052c.f11056a - i10) < i11) {
                bVar = this.f11052c;
            }
            if (bVar != this.f11051b && bVar != this.f11052c) {
                Collections.swap(this.f11053d, i12, r7.size() - 1);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return bVar;
    }

    public final synchronized b y(int i10) {
        b bVar;
        try {
            bVar = this.f11051b;
            int i11 = i10;
            int i12 = 0;
            for (int i13 = 0; i13 < this.f11053d.size(); i13++) {
                b bVar2 = (b) this.f11053d.get(i13);
                int iAbs = Math.abs(bVar2.f11057b - i10);
                if (iAbs < i11) {
                    i12 = i13;
                    bVar = bVar2;
                    i11 = iAbs;
                }
                if (i11 <= 50) {
                    break;
                }
            }
            if (Math.abs(this.f11052c.f11057b - i10) < i11) {
                bVar = this.f11052c;
            }
            if (bVar != this.f11051b && bVar != this.f11052c) {
                Collections.swap(this.f11053d, i12, r7.size() - 1);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return bVar;
    }

    public final b z(int i10) {
        b bVar = new b();
        g gVar = this.f11050a;
        gVar.d(i10, 2);
        gVar.u(false);
        try {
            b bVarX = x(i10);
            int i11 = bVarX.f11056a;
            if (i11 == i10) {
                bVar.f11056a = i11;
                bVar.f11057b = bVarX.f11057b;
                bVar.f11058c = bVarX.f11058c;
            } else if (i11 < i10) {
                u(bVarX, i10, bVar);
            } else {
                t(bVarX, i10, bVar);
            }
            if (Math.abs(i10 - bVarX.f11056a) >= this.f11054e) {
                B(bVar.a());
            }
            gVar.E(false);
            return bVar;
        } catch (Throwable th2) {
            gVar.E(false);
            throw th2;
        }
    }

    @Override // mb.i
    public final void j(g gVar) {
    }
}
