package s4;

/* loaded from: classes.dex */
public abstract class h {

    /* renamed from: a, reason: collision with root package name */
    public int f14306a;

    /* renamed from: b, reason: collision with root package name */
    public final j f14307b;

    /* renamed from: c, reason: collision with root package name */
    public final w4.p f14308c;

    /* renamed from: d, reason: collision with root package name */
    public final w4.l f14309d;

    public h(j jVar, w4.p pVar, w4.l lVar) {
        if (jVar == null) {
            throw new NullPointerException("opcode == null");
        }
        if (pVar == null) {
            throw new NullPointerException("position == null");
        }
        if (lVar == null) {
            throw new NullPointerException("registers == null");
        }
        this.f14306a = -1;
        this.f14307b = jVar;
        this.f14308c = pVar;
        this.f14309d = lVar;
    }

    public static u h(w4.p pVar, w4.k kVar, w4.k kVar2) {
        boolean z = kVar.c() == 1;
        y4.c cVar = kVar.f17467b;
        cVar.getClass();
        boolean z4 = cVar.f18964b == 9;
        int i10 = kVar2.f17466a;
        int i11 = kVar.f17466a;
        return new u((i10 | i11) < 16 ? z4 ? k.f14351j : z ? k.f14328d : k.f14340g : i11 < 256 ? z4 ? k.f14355k : z ? k.f14332e : k.f14343h : z4 ? k.l : z ? k.f14336f : k.f14347i, pVar, w4.l.h(kVar, kVar2));
    }

    public abstract String a();

    public abstract int b();

    public String c() {
        throw new UnsupportedOperationException("Not supported.");
    }

    public String d() {
        throw new UnsupportedOperationException("Not supported.");
    }

    public final int e() {
        int i10 = this.f14306a;
        if (i10 >= 0) {
            return i10;
        }
        throw new RuntimeException("address not yet known");
    }

    public final String f() {
        int i10 = this.f14306a;
        return i10 != -1 ? String.format("%04x", Integer.valueOf(i10)) : qf.c.f0(System.identityHashCode(this));
    }

    public abstract String g();

    public abstract h i(j jVar);

    public abstract h j(int i10);

    public abstract h k(w4.l lVar);

    public abstract void l(b5.b bVar);

    public final String toString() {
        boolean z;
        StringBuilder sb2 = new StringBuilder(100);
        sb2.append(f());
        sb2.append(' ');
        sb2.append(this.f14308c);
        sb2.append(": ");
        sb2.append(this.f14307b.a());
        w4.l lVar = this.f14309d;
        if (lVar.f2559b.length != 0) {
            z = true;
            sb2.append(lVar.f(" ", null, true));
        } else {
            z = false;
        }
        String strA = a();
        if (strA != null) {
            if (z) {
                sb2.append(',');
            }
            sb2.append(' ');
            sb2.append(strA);
        }
        return sb2.toString();
    }
}
