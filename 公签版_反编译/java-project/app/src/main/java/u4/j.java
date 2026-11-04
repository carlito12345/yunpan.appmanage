package u4;

import a2.w0;

/* loaded from: classes.dex */
public final class j extends i implements Comparable {

    /* renamed from: b, reason: collision with root package name */
    public final x4.q f15374b;

    /* renamed from: c, reason: collision with root package name */
    public final e f15375c;

    public j(x4.q qVar, int i10, w0 w0Var, y4.b bVar) {
        super(i10);
        if (qVar == null) {
            throw new NullPointerException("method == null");
        }
        this.f15374b = qVar;
        if (w0Var == null) {
            this.f15375c = null;
        } else {
            this.f15375c = new e(qVar, w0Var, (i10 & 8) != 0, bVar);
        }
    }

    @Override // b5.h
    public final String a() {
        return this.f15374b.a();
    }

    @Override // u4.i
    public final int b(f fVar, b5.b bVar, int i10, int i11) {
        v vVar = fVar.f15362i;
        x4.q qVar = this.f15374b;
        int iL = vVar.l(qVar);
        int i12 = iL - i10;
        e eVar = this.f15375c;
        int iF = eVar == null ? 0 : eVar.f();
        boolean z = iF != 0;
        int i13 = this.f15373a;
        if (z != ((i13 & 1280) == 0)) {
            throw new UnsupportedOperationException("code vs. access_flags mismatch");
        }
        if (bVar.d()) {
            bVar.b(0, String.format("  [%x] %s", Integer.valueOf(i11), qVar.a()));
            bVar.b(com.bumptech.glide.c.l0(i12), "    method_idx:   ".concat(qf.c.f0(iL)));
            bVar.b(com.bumptech.glide.c.l0(i13), "    access_flags: " + android.support.v4.media.session.b.r(i13, 204287, 3));
            bVar.b(com.bumptech.glide.c.l0(iF), "    code_off:     ".concat(qf.c.f0(iF)));
        }
        bVar.m(i12);
        bVar.m(i13);
        bVar.m(iF);
        return iL;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f15374b.compareTo(((j) obj).f15374b);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof j) && this.f15374b.compareTo(((j) obj).f15374b) == 0;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder(100);
        sb2.append(j.class.getName());
        sb2.append('{');
        sb2.append(qf.c.e0(this.f15373a));
        sb2.append(' ');
        sb2.append(this.f15374b);
        e eVar = this.f15375c;
        if (eVar != null) {
            sb2.append(' ');
            sb2.append(eVar);
        }
        sb2.append('}');
        return sb2.toString();
    }
}
