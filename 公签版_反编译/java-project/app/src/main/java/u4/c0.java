package u4;

/* loaded from: classes.dex */
public final class c0 extends o implements Comparable {

    /* renamed from: b, reason: collision with root package name */
    public final x4.t f15344b;

    /* renamed from: c, reason: collision with root package name */
    public b0 f15345c;

    public c0(x4.t tVar) {
        if (tVar == null) {
            throw new NullPointerException("value == null");
        }
        this.f15344b = tVar;
        this.f15345c = null;
    }

    @Override // u4.p
    public final void a(f fVar) {
        if (this.f15345c == null) {
            w wVar = fVar.f15357d;
            b0 b0Var = new b0(this.f15344b);
            this.f15345c = b0Var;
            wVar.k(b0Var);
        }
    }

    @Override // u4.p
    public final q b() {
        return q.TYPE_STRING_ID_ITEM;
    }

    @Override // u4.p
    public final int c() {
        return 4;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f15344b.compareTo(((c0) obj).f15344b);
    }

    @Override // u4.p
    public final void d(f fVar, b5.b bVar) {
        String str;
        int iF = this.f15345c.f();
        if (bVar.d()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(f());
            sb2.append(' ');
            String strA = this.f15344b.a();
            if (strA.length() <= 98) {
                str = "";
            } else {
                strA = strA.substring(0, 95);
                str = "...";
            }
            sb2.append("\"" + strA + str + '\"');
            bVar.b(0, sb2.toString());
            bVar.b(4, "  string_data_off: ".concat(qf.c.f0(iF)));
        }
        bVar.j(iF);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof c0) {
            return this.f15344b.equals(((c0) obj).f15344b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f15344b.f18136a.hashCode();
    }
}
