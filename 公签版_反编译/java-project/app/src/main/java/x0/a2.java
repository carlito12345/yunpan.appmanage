package x0;

/* loaded from: classes.dex */
public class a2 {

    /* renamed from: a, reason: collision with root package name */
    public final j2 f17951a;

    /* renamed from: b, reason: collision with root package name */
    public p0.c[] f17952b;

    public a2() {
        this(new j2());
    }

    public final void a() {
        p0.c[] cVarArr = this.f17952b;
        if (cVarArr != null) {
            p0.c cVarF = cVarArr[0];
            p0.c cVarF2 = cVarArr[1];
            j2 j2Var = this.f17951a;
            if (cVarF2 == null) {
                cVarF2 = j2Var.f18006a.f(2);
            }
            if (cVarF == null) {
                cVarF = j2Var.f18006a.f(1);
            }
            g(p0.c.a(cVarF, cVarF2));
            p0.c cVar = this.f17952b[4];
            if (cVar != null) {
                f(cVar);
            }
            p0.c cVar2 = this.f17952b[5];
            if (cVar2 != null) {
                d(cVar2);
            }
            p0.c cVar3 = this.f17952b[6];
            if (cVar3 != null) {
                h(cVar3);
            }
        }
    }

    public j2 b() {
        a();
        return this.f17951a;
    }

    public void c(int i10, p0.c cVar) {
        char c7;
        if (this.f17952b == null) {
            this.f17952b = new p0.c[9];
        }
        for (int i11 = 1; i11 <= 256; i11 <<= 1) {
            if ((i10 & i11) != 0) {
                p0.c[] cVarArr = this.f17952b;
                if (i11 != 1) {
                    c7 = 2;
                    if (i11 == 2) {
                        c7 = 1;
                    } else if (i11 != 4) {
                        c7 = '\b';
                        if (i11 == 8) {
                            c7 = 3;
                        } else if (i11 == 16) {
                            c7 = 4;
                        } else if (i11 == 32) {
                            c7 = 5;
                        } else if (i11 == 64) {
                            c7 = 6;
                        } else if (i11 == 128) {
                            c7 = 7;
                        } else if (i11 != 256) {
                            throw new IllegalArgumentException(da.b.a(i11, "type needs to be >= FIRST and <= LAST, type="));
                        }
                    }
                } else {
                    c7 = 0;
                }
                cVarArr[c7] = cVar;
            }
        }
    }

    public a2(j2 j2Var) {
        this.f17951a = j2Var;
    }

    public void d(p0.c cVar) {
    }

    public void e(p0.c cVar) {
    }

    public void f(p0.c cVar) {
    }

    public void g(p0.c cVar) {
    }

    public void h(p0.c cVar) {
    }
}
