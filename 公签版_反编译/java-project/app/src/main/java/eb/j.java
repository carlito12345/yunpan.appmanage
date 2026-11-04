package eb;

/* loaded from: classes.dex */
public final class j implements wh.l {

    /* renamed from: a, reason: collision with root package name */
    public int f4863a;

    /* renamed from: b, reason: collision with root package name */
    public int f4864b;

    public /* synthetic */ j(int i10, int i11) {
        this.f4863a = i10;
        this.f4864b = i11;
    }

    public int a() {
        int i10 = this.f4864b;
        if (i10 == 2) {
            return 10;
        }
        if (i10 == 5) {
            return 11;
        }
        if (i10 == 29) {
            return 12;
        }
        if (i10 == 42) {
            return 16;
        }
        if (i10 != 22) {
            return i10 != 23 ? 0 : 15;
        }
        return 1073741824;
    }

    @Override // wh.l
    public wh.j g(wh.j jVar) {
        int i10 = jVar.i(wh.a.DAY_OF_WEEK);
        int i11 = this.f4864b;
        int i12 = this.f4863a;
        if (i12 < 2 && i10 == i11) {
            return jVar;
        }
        if ((i12 & 1) == 0) {
            return jVar.j(i10 - i11 >= 0 ? 7 - r0 : -r0, wh.b.DAYS);
        }
        return jVar.l(i11 - i10 >= 0 ? 7 - r2 : -r2, wh.b.DAYS);
    }

    public j() {
    }

    public j(int i10, int i11, wb.i iVar, boolean z) {
        this.f4863a = i10;
        this.f4864b = i11;
    }

    public j(int i10, sh.b bVar) {
        p000if.a.t0(bVar, "dayOfWeek");
        this.f4863a = i10;
        this.f4864b = bVar.m();
    }

    public j(int i10) {
        this.f4863a = i10;
        this.f4864b = 0;
    }
}
