package g0;

/* loaded from: classes.dex */
public final class m extends o {

    /* renamed from: k, reason: collision with root package name */
    public final f f5963k;
    public a l;

    public m(f0.d dVar) {
        super(dVar);
        f fVar = new f(this);
        this.f5963k = fVar;
        this.l = null;
        this.f5977h.f5951e = 6;
        this.f5978i.f5951e = 7;
        fVar.f5951e = 8;
        this.f5975f = 1;
    }

    @Override // g0.d
    public final void a(d dVar) {
        float f10;
        float f11;
        float f12;
        int i10;
        if (d0.f.c(this.f5979j) == 3) {
            f0.d dVar2 = this.f5971b;
            l(dVar2.J, dVar2.L, 1);
            return;
        }
        g gVar = this.f5974e;
        if (gVar.f5949c && !gVar.f5956j && this.f5973d == 3) {
            f0.d dVar3 = this.f5971b;
            int i11 = dVar3.f5107s;
            if (i11 == 2) {
                f0.d dVar4 = dVar3.T;
                if (dVar4 != null) {
                    if (dVar4.f5083e.f5974e.f5956j) {
                        gVar.d((int) ((r5.f5953g * dVar3.z) + 0.5f));
                    }
                }
            } else if (i11 == 3) {
                g gVar2 = dVar3.f5081d.f5974e;
                if (gVar2.f5956j) {
                    int i12 = dVar3.X;
                    if (i12 == -1) {
                        f10 = gVar2.f5953g;
                        f11 = dVar3.W;
                    } else if (i12 == 0) {
                        f12 = gVar2.f5953g * dVar3.W;
                        i10 = (int) (f12 + 0.5f);
                        gVar.d(i10);
                    } else if (i12 != 1) {
                        i10 = 0;
                        gVar.d(i10);
                    } else {
                        f10 = gVar2.f5953g;
                        f11 = dVar3.W;
                    }
                    f12 = f10 / f11;
                    i10 = (int) (f12 + 0.5f);
                    gVar.d(i10);
                }
            }
        }
        f fVar = this.f5977h;
        if (fVar.f5949c) {
            f fVar2 = this.f5978i;
            if (fVar2.f5949c) {
                if (fVar.f5956j && fVar2.f5956j && gVar.f5956j) {
                    return;
                }
                if (!gVar.f5956j && this.f5973d == 3) {
                    f0.d dVar5 = this.f5971b;
                    if (dVar5.r == 0 && !dVar5.y()) {
                        f fVar3 = (f) fVar.l.get(0);
                        f fVar4 = (f) fVar2.l.get(0);
                        int i13 = fVar3.f5953g + fVar.f5952f;
                        int i14 = fVar4.f5953g + fVar2.f5952f;
                        fVar.d(i13);
                        fVar2.d(i14);
                        gVar.d(i14 - i13);
                        return;
                    }
                }
                if (!gVar.f5956j && this.f5973d == 3 && this.f5970a == 1 && fVar.l.size() > 0 && fVar2.l.size() > 0) {
                    f fVar5 = (f) fVar.l.get(0);
                    int i15 = (((f) fVar2.l.get(0)).f5953g + fVar2.f5952f) - (fVar5.f5953g + fVar.f5952f);
                    int i16 = gVar.f5958m;
                    if (i15 < i16) {
                        gVar.d(i15);
                    } else {
                        gVar.d(i16);
                    }
                }
                if (gVar.f5956j && fVar.l.size() > 0 && fVar2.l.size() > 0) {
                    f fVar6 = (f) fVar.l.get(0);
                    f fVar7 = (f) fVar2.l.get(0);
                    int i17 = fVar6.f5953g;
                    int i18 = fVar.f5952f + i17;
                    int i19 = fVar7.f5953g;
                    int i20 = fVar2.f5952f + i19;
                    float f13 = this.f5971b.f5084e0;
                    if (fVar6 == fVar7) {
                        f13 = 0.5f;
                    } else {
                        i17 = i18;
                        i19 = i20;
                    }
                    fVar.d((int) ((((i19 - i17) - gVar.f5953g) * f13) + i17 + 0.5f));
                    fVar2.d(fVar.f5953g + gVar.f5953g);
                }
            }
        }
    }

    @Override // g0.o
    public final void d() {
        f0.d dVar;
        f0.d dVar2;
        f0.d dVar3;
        f0.d dVar4;
        f0.d dVar5 = this.f5971b;
        boolean z = dVar5.f5075a;
        g gVar = this.f5974e;
        if (z) {
            gVar.d(dVar5.k());
        }
        boolean z4 = gVar.f5956j;
        f fVar = this.f5978i;
        f fVar2 = this.f5977h;
        if (!z4) {
            f0.d dVar6 = this.f5971b;
            this.f5973d = dVar6.f5105p0[1];
            if (dVar6.E) {
                this.l = new a(this);
            }
            int i10 = this.f5973d;
            if (i10 != 3) {
                if (i10 == 4 && (dVar4 = this.f5971b.T) != null && dVar4.f5105p0[1] == 1) {
                    int iK = (dVar4.k() - this.f5971b.J.e()) - this.f5971b.L.e();
                    o.b(fVar2, dVar4.f5083e.f5977h, this.f5971b.J.e());
                    o.b(fVar, dVar4.f5083e.f5978i, -this.f5971b.L.e());
                    gVar.d(iK);
                    return;
                }
                if (i10 == 1) {
                    gVar.d(this.f5971b.k());
                }
            }
        } else if (this.f5973d == 4 && (dVar2 = (dVar = this.f5971b).T) != null && dVar2.f5105p0[1] == 1) {
            o.b(fVar2, dVar2.f5083e.f5977h, dVar.J.e());
            o.b(fVar, dVar2.f5083e.f5978i, -this.f5971b.L.e());
            return;
        }
        boolean z10 = gVar.f5956j;
        f fVar3 = this.f5963k;
        if (z10) {
            f0.d dVar7 = this.f5971b;
            if (dVar7.f5075a) {
                f0.c[] cVarArr = dVar7.Q;
                f0.c cVar = cVarArr[2];
                f0.c cVar2 = cVar.f5071f;
                if (cVar2 != null && cVarArr[3].f5071f != null) {
                    if (dVar7.y()) {
                        fVar2.f5952f = this.f5971b.Q[2].e();
                        fVar.f5952f = -this.f5971b.Q[3].e();
                    } else {
                        f fVarH = o.h(this.f5971b.Q[2]);
                        if (fVarH != null) {
                            o.b(fVar2, fVarH, this.f5971b.Q[2].e());
                        }
                        f fVarH2 = o.h(this.f5971b.Q[3]);
                        if (fVarH2 != null) {
                            o.b(fVar, fVarH2, -this.f5971b.Q[3].e());
                        }
                        fVar2.f5948b = true;
                        fVar.f5948b = true;
                    }
                    f0.d dVar8 = this.f5971b;
                    if (dVar8.E) {
                        o.b(fVar3, fVar2, dVar8.f5076a0);
                        return;
                    }
                    return;
                }
                if (cVar2 != null) {
                    f fVarH3 = o.h(cVar);
                    if (fVarH3 != null) {
                        o.b(fVar2, fVarH3, this.f5971b.Q[2].e());
                        o.b(fVar, fVar2, gVar.f5953g);
                        f0.d dVar9 = this.f5971b;
                        if (dVar9.E) {
                            o.b(fVar3, fVar2, dVar9.f5076a0);
                            return;
                        }
                        return;
                    }
                    return;
                }
                f0.c cVar3 = cVarArr[3];
                if (cVar3.f5071f != null) {
                    f fVarH4 = o.h(cVar3);
                    if (fVarH4 != null) {
                        o.b(fVar, fVarH4, -this.f5971b.Q[3].e());
                        o.b(fVar2, fVar, -gVar.f5953g);
                    }
                    f0.d dVar10 = this.f5971b;
                    if (dVar10.E) {
                        o.b(fVar3, fVar2, dVar10.f5076a0);
                        return;
                    }
                    return;
                }
                f0.c cVar4 = cVarArr[4];
                if (cVar4.f5071f != null) {
                    f fVarH5 = o.h(cVar4);
                    if (fVarH5 != null) {
                        o.b(fVar3, fVarH5, 0);
                        o.b(fVar2, fVar3, -this.f5971b.f5076a0);
                        o.b(fVar, fVar2, gVar.f5953g);
                        return;
                    }
                    return;
                }
                if ((dVar7 instanceof f0.i) || dVar7.T == null || dVar7.i(7).f5071f != null) {
                    return;
                }
                f0.d dVar11 = this.f5971b;
                o.b(fVar2, dVar11.T.f5083e.f5977h, dVar11.s());
                o.b(fVar, fVar2, gVar.f5953g);
                f0.d dVar12 = this.f5971b;
                if (dVar12.E) {
                    o.b(fVar3, fVar2, dVar12.f5076a0);
                    return;
                }
                return;
            }
        }
        if (z10 || this.f5973d != 3) {
            gVar.b(this);
        } else {
            f0.d dVar13 = this.f5971b;
            int i11 = dVar13.f5107s;
            if (i11 == 2) {
                f0.d dVar14 = dVar13.T;
                if (dVar14 != null) {
                    g gVar2 = dVar14.f5083e.f5974e;
                    gVar.l.add(gVar2);
                    gVar2.f5957k.add(gVar);
                    gVar.f5948b = true;
                    gVar.f5957k.add(fVar2);
                    gVar.f5957k.add(fVar);
                }
            } else if (i11 == 3 && !dVar13.y()) {
                f0.d dVar15 = this.f5971b;
                if (dVar15.r != 3) {
                    g gVar3 = dVar15.f5081d.f5974e;
                    gVar.l.add(gVar3);
                    gVar3.f5957k.add(gVar);
                    gVar.f5948b = true;
                    gVar.f5957k.add(fVar2);
                    gVar.f5957k.add(fVar);
                }
            }
        }
        f0.d dVar16 = this.f5971b;
        f0.c[] cVarArr2 = dVar16.Q;
        f0.c cVar5 = cVarArr2[2];
        f0.c cVar6 = cVar5.f5071f;
        if (cVar6 != null && cVarArr2[3].f5071f != null) {
            if (dVar16.y()) {
                fVar2.f5952f = this.f5971b.Q[2].e();
                fVar.f5952f = -this.f5971b.Q[3].e();
            } else {
                f fVarH6 = o.h(this.f5971b.Q[2]);
                f fVarH7 = o.h(this.f5971b.Q[3]);
                if (fVarH6 != null) {
                    fVarH6.b(this);
                }
                if (fVarH7 != null) {
                    fVarH7.b(this);
                }
                this.f5979j = 4;
            }
            if (this.f5971b.E) {
                c(fVar3, fVar2, 1, this.l);
            }
        } else if (cVar6 != null) {
            f fVarH8 = o.h(cVar5);
            if (fVarH8 != null) {
                o.b(fVar2, fVarH8, this.f5971b.Q[2].e());
                c(fVar, fVar2, 1, gVar);
                if (this.f5971b.E) {
                    c(fVar3, fVar2, 1, this.l);
                }
                if (this.f5973d == 3) {
                    f0.d dVar17 = this.f5971b;
                    if (dVar17.W > 0.0f) {
                        k kVar = dVar17.f5081d;
                        if (kVar.f5973d == 3) {
                            kVar.f5974e.f5957k.add(gVar);
                            gVar.l.add(this.f5971b.f5081d.f5974e);
                            gVar.f5947a = this;
                        }
                    }
                }
            }
        } else {
            f0.c cVar7 = cVarArr2[3];
            if (cVar7.f5071f != null) {
                f fVarH9 = o.h(cVar7);
                if (fVarH9 != null) {
                    o.b(fVar, fVarH9, -this.f5971b.Q[3].e());
                    c(fVar2, fVar, -1, gVar);
                    if (this.f5971b.E) {
                        c(fVar3, fVar2, 1, this.l);
                    }
                }
            } else {
                f0.c cVar8 = cVarArr2[4];
                if (cVar8.f5071f != null) {
                    f fVarH10 = o.h(cVar8);
                    if (fVarH10 != null) {
                        o.b(fVar3, fVarH10, 0);
                        c(fVar2, fVar3, -1, this.l);
                        c(fVar, fVar2, 1, gVar);
                    }
                } else if (!(dVar16 instanceof f0.i) && (dVar3 = dVar16.T) != null) {
                    o.b(fVar2, dVar3.f5083e.f5977h, dVar16.s());
                    c(fVar, fVar2, 1, gVar);
                    if (this.f5971b.E) {
                        c(fVar3, fVar2, 1, this.l);
                    }
                    if (this.f5973d == 3) {
                        f0.d dVar18 = this.f5971b;
                        if (dVar18.W > 0.0f) {
                            k kVar2 = dVar18.f5081d;
                            if (kVar2.f5973d == 3) {
                                kVar2.f5974e.f5957k.add(gVar);
                                gVar.l.add(this.f5971b.f5081d.f5974e);
                                gVar.f5947a = this;
                            }
                        }
                    }
                }
            }
        }
        if (gVar.l.size() == 0) {
            gVar.f5949c = true;
        }
    }

    @Override // g0.o
    public final void e() {
        f fVar = this.f5977h;
        if (fVar.f5956j) {
            this.f5971b.Z = fVar.f5953g;
        }
    }

    @Override // g0.o
    public final void f() {
        this.f5972c = null;
        this.f5977h.c();
        this.f5978i.c();
        this.f5963k.c();
        this.f5974e.c();
        this.f5976g = false;
    }

    @Override // g0.o
    public final boolean k() {
        return this.f5973d != 3 || this.f5971b.f5107s == 0;
    }

    public final void m() {
        this.f5976g = false;
        f fVar = this.f5977h;
        fVar.c();
        fVar.f5956j = false;
        f fVar2 = this.f5978i;
        fVar2.c();
        fVar2.f5956j = false;
        f fVar3 = this.f5963k;
        fVar3.c();
        fVar3.f5956j = false;
        this.f5974e.f5956j = false;
    }

    public final String toString() {
        return "VerticalRun " + this.f5971b.f5090h0;
    }
}
