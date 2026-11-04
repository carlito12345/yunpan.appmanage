package w4;

/* loaded from: classes.dex */
public abstract class f implements b5.h {

    /* renamed from: a, reason: collision with root package name */
    public final n f17458a;

    /* renamed from: b, reason: collision with root package name */
    public final p f17459b;

    /* renamed from: c, reason: collision with root package name */
    public final k f17460c;

    /* renamed from: d, reason: collision with root package name */
    public final l f17461d;

    public f(n nVar, p pVar, k kVar, l lVar) {
        if (nVar == null) {
            throw new NullPointerException("opcode == null");
        }
        if (pVar == null) {
            throw new NullPointerException("position == null");
        }
        if (lVar == null) {
            throw new NullPointerException("sources == null");
        }
        this.f17458a = nVar;
        this.f17459b = pVar;
        this.f17460c = kVar;
        this.f17461d = lVar;
    }

    @Override // b5.h
    public final String a() {
        String strD = d();
        StringBuilder sb2 = new StringBuilder(80);
        sb2.append(this.f17459b);
        sb2.append(": ");
        n nVar = this.f17458a;
        String string = nVar.f17477g;
        if (string == null) {
            string = nVar.toString();
        }
        sb2.append(string);
        if (strD != null) {
            sb2.append("(");
            sb2.append(strD);
            sb2.append(")");
        }
        k kVar = this.f17460c;
        if (kVar == null) {
            sb2.append(" .");
        } else {
            sb2.append(" ");
            sb2.append(kVar.g(true));
        }
        sb2.append(" <-");
        l lVar = this.f17461d;
        int length = lVar.f2559b.length;
        if (length == 0) {
            sb2.append(" .");
        } else {
            for (int i10 = 0; i10 < length; i10++) {
                sb2.append(" ");
                sb2.append(((k) lVar.d(i10)).g(true));
            }
        }
        return sb2.toString();
    }

    public abstract void b(e eVar);

    public abstract y4.e c();

    public String d() {
        return null;
    }

    public final boolean equals(Object obj) {
        return this == obj;
    }

    public final int hashCode() {
        return System.identityHashCode(this);
    }

    public final String toString() {
        String strD = d();
        StringBuilder sb2 = new StringBuilder(80);
        sb2.append("Insn{");
        sb2.append(this.f17459b);
        sb2.append(' ');
        sb2.append(this.f17458a);
        if (strD != null) {
            sb2.append(' ');
            sb2.append(strD);
        }
        sb2.append(" :: ");
        k kVar = this.f17460c;
        if (kVar != null) {
            sb2.append(kVar);
            sb2.append(" <- ");
        }
        sb2.append(this.f17461d);
        sb2.append('}');
        return sb2.toString();
    }
}
