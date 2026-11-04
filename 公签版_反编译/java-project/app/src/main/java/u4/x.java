package u4;

/* loaded from: classes.dex */
public abstract class x extends p implements Comparable {

    /* renamed from: a, reason: collision with root package name */
    public final int f15407a;

    /* renamed from: b, reason: collision with root package name */
    public int f15408b;

    /* renamed from: c, reason: collision with root package name */
    public w f15409c;

    /* renamed from: d, reason: collision with root package name */
    public int f15410d;

    public x(int i10, int i11) {
        if (i10 <= 0 || ((i10 - 1) & i10) != 0) {
            throw new IllegalArgumentException("invalid alignment");
        }
        if (i11 < -1) {
            throw new IllegalArgumentException("writeSize < -1");
        }
        this.f15407a = i10;
        this.f15408b = i11;
        this.f15409c = null;
        this.f15410d = -1;
    }

    @Override // u4.p
    public final int c() {
        int i10 = this.f15408b;
        if (i10 >= 0) {
            return i10;
        }
        throw new UnsupportedOperationException("writeSize is unknown");
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        x xVar = (x) obj;
        if (this == xVar) {
            return 0;
        }
        q qVarB = b();
        q qVarB2 = xVar.b();
        return qVarB != qVarB2 ? qVarB.compareTo(qVarB2) : e(xVar);
    }

    @Override // u4.p
    public final void d(f fVar, b5.b bVar) {
        bVar.a(this.f15407a);
        try {
            if (this.f15408b < 0) {
                throw new UnsupportedOperationException("writeSize is unknown");
            }
            int iF = f();
            if (bVar.f2555c == iF) {
                k(fVar, bVar);
                return;
            }
            throw new p4.a("expected cursor " + iF + "; actual value: " + bVar.f2555c, null);
        } catch (RuntimeException e7) {
            throw p4.a.a(e7, "...while writing " + this);
        }
    }

    public int e(x xVar) {
        throw new UnsupportedOperationException("unsupported");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        x xVar = (x) obj;
        return b() == xVar.b() && e(xVar) == 0;
    }

    public final int f() {
        int i10 = this.f15410d;
        if (i10 < 0) {
            throw new RuntimeException("offset not yet known");
        }
        w wVar = this.f15409c;
        if (i10 < 0) {
            wVar.getClass();
            throw new IllegalArgumentException("relative < 0");
        }
        int i11 = wVar.f15326d;
        if (i11 >= 0) {
            return i11 + i10;
        }
        throw new RuntimeException("fileOffset not yet set");
    }

    public final String g() {
        return "[" + Integer.toHexString(f()) + ']';
    }

    public final int h(w wVar, int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("offset < 0");
        }
        if (this.f15409c != null) {
            throw new RuntimeException("already written");
        }
        int i11 = this.f15407a - 1;
        int i12 = (i10 + i11) & (i11 ^ (-1));
        this.f15409c = wVar;
        this.f15410d = i12;
        i(wVar, i12);
        return i12;
    }

    public final void j(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("writeSize < 0");
        }
        if (this.f15408b >= 0) {
            throw new UnsupportedOperationException("writeSize already set");
        }
        this.f15408b = i10;
    }

    public abstract void k(f fVar, b5.b bVar);

    public void i(w wVar, int i10) {
    }
}
