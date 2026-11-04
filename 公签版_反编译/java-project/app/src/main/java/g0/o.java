package g0;

/* loaded from: classes.dex */
public abstract class o implements d {

    /* renamed from: a, reason: collision with root package name */
    public int f5970a;

    /* renamed from: b, reason: collision with root package name */
    public f0.d f5971b;

    /* renamed from: c, reason: collision with root package name */
    public l f5972c;

    /* renamed from: d, reason: collision with root package name */
    public int f5973d;

    /* renamed from: e, reason: collision with root package name */
    public final g f5974e = new g(this);

    /* renamed from: f, reason: collision with root package name */
    public int f5975f = 0;

    /* renamed from: g, reason: collision with root package name */
    public boolean f5976g = false;

    /* renamed from: h, reason: collision with root package name */
    public final f f5977h = new f(this);

    /* renamed from: i, reason: collision with root package name */
    public final f f5978i = new f(this);

    /* renamed from: j, reason: collision with root package name */
    public int f5979j = 1;

    public o(f0.d dVar) {
        this.f5971b = dVar;
    }

    public static void b(f fVar, f fVar2, int i10) {
        fVar.l.add(fVar2);
        fVar.f5952f = i10;
        fVar2.f5957k.add(fVar);
    }

    public static f h(f0.c cVar) {
        f0.c cVar2 = cVar.f5071f;
        if (cVar2 == null) {
            return null;
        }
        int iC = d0.f.c(cVar2.f5070e);
        f0.d dVar = cVar2.f5069d;
        if (iC == 1) {
            return dVar.f5081d.f5977h;
        }
        if (iC == 2) {
            return dVar.f5083e.f5977h;
        }
        if (iC == 3) {
            return dVar.f5081d.f5978i;
        }
        if (iC == 4) {
            return dVar.f5083e.f5978i;
        }
        if (iC != 5) {
            return null;
        }
        return dVar.f5083e.f5963k;
    }

    public static f i(f0.c cVar, int i10) {
        f0.c cVar2 = cVar.f5071f;
        if (cVar2 == null) {
            return null;
        }
        f0.d dVar = cVar2.f5069d;
        o oVar = i10 == 0 ? dVar.f5081d : dVar.f5083e;
        int iC = d0.f.c(cVar2.f5070e);
        if (iC == 1 || iC == 2) {
            return oVar.f5977h;
        }
        if (iC == 3 || iC == 4) {
            return oVar.f5978i;
        }
        return null;
    }

    public final void c(f fVar, f fVar2, int i10, g gVar) {
        fVar.l.add(fVar2);
        fVar.l.add(this.f5974e);
        fVar.f5954h = i10;
        fVar.f5955i = gVar;
        fVar2.f5957k.add(fVar);
        gVar.f5957k.add(fVar);
    }

    public abstract void d();

    public abstract void e();

    public abstract void f();

    public final int g(int i10, int i11) {
        int iMax;
        if (i11 == 0) {
            f0.d dVar = this.f5971b;
            int i12 = dVar.f5110v;
            iMax = Math.max(dVar.f5109u, i10);
            if (i12 > 0) {
                iMax = Math.min(i12, i10);
            }
            if (iMax == i10) {
                return i10;
            }
        } else {
            f0.d dVar2 = this.f5971b;
            int i13 = dVar2.f5113y;
            iMax = Math.max(dVar2.f5112x, i10);
            if (i13 > 0) {
                iMax = Math.min(i13, i10);
            }
            if (iMax == i10) {
                return i10;
            }
        }
        return iMax;
    }

    public long j() {
        if (this.f5974e.f5956j) {
            return r0.f5953g;
        }
        return 0L;
    }

    public abstract boolean k();

    /* JADX WARN: Removed duplicated region for block: B:28:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void l(f0.c cVar, f0.c cVar2, int i10) {
        f fVarH = h(cVar);
        f fVarH2 = h(cVar2);
        if (fVarH.f5956j && fVarH2.f5956j) {
            int iE = cVar.e() + fVarH.f5953g;
            int iE2 = fVarH2.f5953g - cVar2.e();
            int i11 = iE2 - iE;
            g gVar = this.f5974e;
            if (!gVar.f5956j && this.f5973d == 3) {
                int i12 = this.f5970a;
                if (i12 == 0) {
                    gVar.d(g(i11, i10));
                } else if (i12 == 1) {
                    gVar.d(Math.min(g(gVar.f5958m, i10), i11));
                } else if (i12 == 2) {
                    f0.d dVar = this.f5971b;
                    f0.d dVar2 = dVar.T;
                    if (dVar2 != null) {
                        if ((i10 == 0 ? dVar2.f5081d : dVar2.f5083e).f5974e.f5956j) {
                            gVar.d(g((int) ((r6.f5953g * (i10 == 0 ? dVar.f5111w : dVar.z)) + 0.5f), i10));
                        }
                    }
                } else if (i12 == 3) {
                    f0.d dVar3 = this.f5971b;
                    o oVar = dVar3.f5081d;
                    if (oVar.f5973d == 3 && oVar.f5970a == 3) {
                        m mVar = dVar3.f5083e;
                        if (mVar.f5973d != 3 || mVar.f5970a != 3) {
                        }
                    } else {
                        if (i10 == 0) {
                            oVar = dVar3.f5083e;
                        }
                        if (oVar.f5974e.f5956j) {
                            float f10 = dVar3.W;
                            gVar.d(i10 == 1 ? (int) ((r6.f5953g / f10) + 0.5f) : (int) ((f10 * r6.f5953g) + 0.5f));
                        }
                    }
                }
            }
            if (gVar.f5956j) {
                int i13 = gVar.f5953g;
                f fVar = this.f5978i;
                f fVar2 = this.f5977h;
                if (i13 == i11) {
                    fVar2.d(iE);
                    fVar.d(iE2);
                    return;
                }
                f0.d dVar4 = this.f5971b;
                float f11 = i10 == 0 ? dVar4.f5082d0 : dVar4.f5084e0;
                if (fVarH == fVarH2) {
                    iE = fVarH.f5953g;
                    iE2 = fVarH2.f5953g;
                    f11 = 0.5f;
                }
                fVar2.d((int) ((((iE2 - iE) - i13) * f11) + iE + 0.5f));
                fVar.d(fVar2.f5953g + gVar.f5953g);
            }
        }
    }
}
